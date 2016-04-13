; ModuleID = 'irs-onlybc/tupleobject.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.tupleiterobject = type { %struct._object, i64, %struct.PyTupleObject* }

@.str = private unnamed_addr constant [28 x i8] c"free %d-sized PyTupleObject\00", align 1
@numfree = internal global [20 x i32] zeroinitializer, align 16
@PyTuple_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 24, i64 8, void (%struct._object*)* bitcast (void (%struct.PyTupleObject*)* @tupledealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @tuplerepr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @tuple_as_sequence, %struct.PyMappingMethods* @tuple_as_mapping, i64 (%struct._object*)* bitcast (i64 (%struct.PyTupleObject*)* @tuplehash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 67388416, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @tuple_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyTupleObject*, i32 (%struct._object*, i8*)*, i8*)* @tupletraverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @tuplerichcompare, i64 0, %struct._object* (%struct._object*)* @tuple_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @tuple_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tuple_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Objects/tupleobject.c\00", align 1
@free_list = internal global [20 x %struct.PyTupleObject*] zeroinitializer, align 16
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
  %out.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !453, metadata !983), !dbg !984
  %0 = bitcast i32* %i to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !985
  call void @llvm.dbg.declare(metadata i32* %i, metadata !454, metadata !983), !dbg !986
  %1 = bitcast [128 x i8]* %buf to i8*, !dbg !987
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !987
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !455, metadata !983), !dbg !988
  store i32 1, i32* %i, align 4, !dbg !989, !tbaa !991
  br label %for.cond, !dbg !993

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !994, !tbaa !991
  %cmp = icmp slt i32 %2, 20, !dbg !998
  br i1 %cmp, label %for.body, label %for.end, !dbg !999

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !1000
  %3 = load i32, i32* %i, align 4, !dbg !1002, !tbaa !991
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %3), !dbg !1003
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !1004, !tbaa !979
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !1005
  %5 = load i32, i32* %i, align 4, !dbg !1006, !tbaa !991
  %idxprom = sext i32 %5 to i64, !dbg !1007
  %arrayidx = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom, !dbg !1007
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1007, !tbaa !991
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 2), align 8, !dbg !1008, !tbaa !1009
  %8 = load i32, i32* %i, align 4, !dbg !1014, !tbaa !991
  %conv = sext i32 %8 to i64, !dbg !1015
  %9 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 3), align 8, !dbg !1016, !tbaa !1017
  %mul = mul i64 %conv, %9, !dbg !1018
  %add = add i64 %7, %mul, !dbg !1019
  %add2 = add i64 %add, 7, !dbg !1020
  %and = and i64 %add2, -8, !dbg !1021
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %4, i8* %arraydecay1, i32 %6, i64 %and), !dbg !1022
  br label %for.inc, !dbg !1023

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !1024, !tbaa !991
  %inc = add i32 %10, 1, !dbg !1024
  store i32 %inc, i32* %i, align 4, !dbg !1024, !tbaa !991
  br label %for.cond, !dbg !1025

for.end:                                          ; preds = %for.cond
  %11 = bitcast [128 x i8]* %buf to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 128, i8* %11) #2, !dbg !1026
  %12 = bitcast i32* %i to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !1026
  ret void, !dbg !1026
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
  %retval = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %op = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !463, metadata !983), !dbg !1028
  %0 = bitcast %struct.PyTupleObject** %op to i8*, !dbg !1029
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1029
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %op, metadata !464, metadata !983), !dbg !1030
  %1 = bitcast i64* %i to i8*, !dbg !1031
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1031
  call void @llvm.dbg.declare(metadata i64* %i, metadata !465, metadata !983), !dbg !1032
  %2 = load i64, i64* %size.addr, align 8, !dbg !1033, !tbaa !1027
  %cmp = icmp slt i64 %2, 0, !dbg !1035
  br i1 %cmp, label %if.then, label %if.end, !dbg !1036

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 71), !dbg !1037
  store %struct._object* null, %struct._object** %retval, !dbg !1039
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1039

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !1040, !tbaa !1027
  %cmp1 = icmp eq i64 %3, 0, !dbg !1042
  br i1 %cmp1, label %land.lhs.true, label %if.end.3, !dbg !1043

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8, !dbg !1044, !tbaa !979
  %tobool = icmp ne %struct.PyTupleObject* %4, null, !dbg !1044
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !1046

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8, !dbg !1047, !tbaa !979
  store %struct.PyTupleObject* %5, %struct.PyTupleObject** %op, align 8, !dbg !1049, !tbaa !979
  %6 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1050, !tbaa !979
  %7 = bitcast %struct.PyTupleObject* %6 to %struct._object*, !dbg !1051
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1052
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1053, !tbaa !1054
  %inc = add i64 %8, 1, !dbg !1053
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1053, !tbaa !1054
  %9 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1055, !tbaa !979
  %10 = bitcast %struct.PyTupleObject* %9 to %struct._object*, !dbg !1056
  store %struct._object* %10, %struct._object** %retval, !dbg !1057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1057

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %11 = load i64, i64* %size.addr, align 8, !dbg !1058, !tbaa !1027
  %cmp4 = icmp slt i64 %11, 20, !dbg !1060
  br i1 %cmp4, label %land.lhs.true.5, label %if.else, !dbg !1061

land.lhs.true.5:                                  ; preds = %if.end.3
  %12 = load i64, i64* %size.addr, align 8, !dbg !1062, !tbaa !1027
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %12, !dbg !1064
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8, !dbg !1064, !tbaa !979
  store %struct.PyTupleObject* %13, %struct.PyTupleObject** %op, align 8, !dbg !1065, !tbaa !979
  %cmp6 = icmp ne %struct.PyTupleObject* %13, null, !dbg !1066
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1067

if.then.7:                                        ; preds = %land.lhs.true.5
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1068, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1, !dbg !1070
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1068
  %15 = load %struct._object*, %struct._object** %arrayidx8, align 8, !dbg !1068, !tbaa !979
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !1071
  %17 = load i64, i64* %size.addr, align 8, !dbg !1072, !tbaa !1027
  %arrayidx9 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %17, !dbg !1073
  store %struct.PyTupleObject* %16, %struct.PyTupleObject** %arrayidx9, align 8, !dbg !1074, !tbaa !979
  %18 = load i64, i64* %size.addr, align 8, !dbg !1075, !tbaa !1027
  %arrayidx10 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %18, !dbg !1076
  %19 = load i32, i32* %arrayidx10, align 4, !dbg !1077, !tbaa !991
  %dec = add i32 %19, -1, !dbg !1077
  store i32 %dec, i32* %arrayidx10, align 4, !dbg !1077, !tbaa !991
  %20 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1078, !tbaa !979
  %21 = bitcast %struct.PyTupleObject* %20 to %struct._object*, !dbg !1079
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1080
  store i64 1, i64* %ob_refcnt11, align 8, !dbg !1081, !tbaa !1054
  br label %if.end.19, !dbg !1082

if.else:                                          ; preds = %land.lhs.true.5, %if.end.3
  %22 = load i64, i64* %size.addr, align 8, !dbg !1083, !tbaa !1027
  %cmp12 = icmp ugt i64 %22, 1152921504606846970, !dbg !1086
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1087

if.then.13:                                       ; preds = %if.else
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !1088
  store %struct._object* %call, %struct._object** %retval, !dbg !1090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1090

if.end.14:                                        ; preds = %if.else
  %23 = load i64, i64* %size.addr, align 8, !dbg !1091, !tbaa !1027
  %call15 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyTuple_Type, i64 %23), !dbg !1092
  %24 = bitcast %struct.PyVarObject* %call15 to %struct.PyTupleObject*, !dbg !1093
  store %struct.PyTupleObject* %24, %struct.PyTupleObject** %op, align 8, !dbg !1094, !tbaa !979
  %25 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1095, !tbaa !979
  %cmp16 = icmp eq %struct.PyTupleObject* %25, null, !dbg !1097
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1098

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval, !dbg !1099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1099

if.end.18:                                        ; preds = %if.end.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.7
  store i64 0, i64* %i, align 8, !dbg !1100, !tbaa !1027
  br label %for.cond, !dbg !1102

for.cond:                                         ; preds = %for.inc, %if.end.19
  %26 = load i64, i64* %i, align 8, !dbg !1103, !tbaa !1027
  %27 = load i64, i64* %size.addr, align 8, !dbg !1107, !tbaa !1027
  %cmp20 = icmp slt i64 %26, %27, !dbg !1108
  br i1 %cmp20, label %for.body, label %for.end, !dbg !1109

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %i, align 8, !dbg !1110, !tbaa !1027
  %29 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1111, !tbaa !979
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !1112
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 %28, !dbg !1111
  store %struct._object* null, %struct._object** %arrayidx22, align 8, !dbg !1113, !tbaa !979
  br label %for.inc, !dbg !1111

for.inc:                                          ; preds = %for.body
  %30 = load i64, i64* %i, align 8, !dbg !1114, !tbaa !1027
  %inc23 = add i64 %30, 1, !dbg !1114
  store i64 %inc23, i64* %i, align 8, !dbg !1114, !tbaa !1027
  br label %for.cond, !dbg !1115

for.end:                                          ; preds = %for.cond
  %31 = load i64, i64* %size.addr, align 8, !dbg !1116, !tbaa !1027
  %cmp24 = icmp eq i64 %31, 0, !dbg !1118
  br i1 %cmp24, label %if.then.25, label %if.end.29, !dbg !1119

if.then.25:                                       ; preds = %for.end
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1120, !tbaa !979
  store %struct.PyTupleObject* %32, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8, !dbg !1122, !tbaa !979
  %33 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i32 0, i64 0), align 4, !dbg !1123, !tbaa !991
  %inc26 = add i32 %33, 1, !dbg !1123
  store i32 %inc26, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i32 0, i64 0), align 4, !dbg !1123, !tbaa !991
  %34 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1124, !tbaa !979
  %35 = bitcast %struct.PyTupleObject* %34 to %struct._object*, !dbg !1125
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1126
  %36 = load i64, i64* %ob_refcnt27, align 8, !dbg !1127, !tbaa !1054
  %inc28 = add i64 %36, 1, !dbg !1127
  store i64 %inc28, i64* %ob_refcnt27, align 8, !dbg !1127, !tbaa !1054
  br label %if.end.29, !dbg !1128

if.end.29:                                        ; preds = %if.then.25, %for.end
  br label %do.body, !dbg !1129

do.body:                                          ; preds = %if.end.29
  %37 = bitcast %union._gc_head** %g to i8*, !dbg !1130
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1130
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !466, metadata !983), !dbg !1132
  %38 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1133, !tbaa !979
  %39 = bitcast %struct.PyTupleObject* %38 to %union._gc_head*, !dbg !1134
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %39, i64 -1, !dbg !1135
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1132, !tbaa !979
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1136, !tbaa !979
  %gc = bitcast %union._gc_head* %40 to %struct.anon*, !dbg !1138
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1139
  %41 = load i64, i64* %gc_refs, align 8, !dbg !1139, !tbaa !1140
  %shr = ashr i64 %41, 1, !dbg !1142
  %cmp30 = icmp ne i64 %shr, -2, !dbg !1143
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !1144

if.then.31:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !1145
  unreachable, !dbg !1145

if.end.32:                                        ; preds = %do.body
  br label %do.body.33, !dbg !1147

do.body.33:                                       ; preds = %if.end.32
  %42 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1149, !tbaa !979
  %gc34 = bitcast %union._gc_head* %42 to %struct.anon*, !dbg !1152
  %gc_refs35 = getelementptr inbounds %struct.anon, %struct.anon* %gc34, i32 0, i32 2, !dbg !1153
  %43 = load i64, i64* %gc_refs35, align 8, !dbg !1153, !tbaa !1140
  %and = and i64 %43, 1, !dbg !1154
  %or = or i64 %and, -6, !dbg !1155
  %44 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1156, !tbaa !979
  %gc36 = bitcast %union._gc_head* %44 to %struct.anon*, !dbg !1157
  %gc_refs37 = getelementptr inbounds %struct.anon, %struct.anon* %gc36, i32 0, i32 2, !dbg !1158
  store i64 %or, i64* %gc_refs37, align 8, !dbg !1159, !tbaa !1140
  br label %do.cond, !dbg !1160

do.cond:                                          ; preds = %do.body.33
  br label %do.end, !dbg !1161

do.end:                                           ; preds = %do.cond
  %45 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1163, !tbaa !979
  %46 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1165, !tbaa !979
  %gc38 = bitcast %union._gc_head* %46 to %struct.anon*, !dbg !1166
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc38, i32 0, i32 0, !dbg !1167
  store %union._gc_head* %45, %union._gc_head** %gc_next, align 8, !dbg !1168, !tbaa !1169
  %47 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1170, !tbaa !979
  %gc39 = bitcast %union._gc_head* %47 to %struct.anon*, !dbg !1171
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc39, i32 0, i32 1, !dbg !1172
  %48 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1172, !tbaa !1173
  %49 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1174, !tbaa !979
  %gc40 = bitcast %union._gc_head* %49 to %struct.anon*, !dbg !1175
  %gc_prev41 = getelementptr inbounds %struct.anon, %struct.anon* %gc40, i32 0, i32 1, !dbg !1176
  store %union._gc_head* %48, %union._gc_head** %gc_prev41, align 8, !dbg !1177, !tbaa !1173
  %50 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1178, !tbaa !979
  %51 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1179, !tbaa !979
  %gc42 = bitcast %union._gc_head* %51 to %struct.anon*, !dbg !1180
  %gc_prev43 = getelementptr inbounds %struct.anon, %struct.anon* %gc42, i32 0, i32 1, !dbg !1181
  %52 = load %union._gc_head*, %union._gc_head** %gc_prev43, align 8, !dbg !1181, !tbaa !1173
  %gc44 = bitcast %union._gc_head* %52 to %struct.anon*, !dbg !1182
  %gc_next45 = getelementptr inbounds %struct.anon, %struct.anon* %gc44, i32 0, i32 0, !dbg !1183
  store %union._gc_head* %50, %union._gc_head** %gc_next45, align 8, !dbg !1184, !tbaa !1169
  %53 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1185, !tbaa !979
  %54 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1186, !tbaa !979
  %gc46 = bitcast %union._gc_head* %54 to %struct.anon*, !dbg !1187
  %gc_prev47 = getelementptr inbounds %struct.anon, %struct.anon* %gc46, i32 0, i32 1, !dbg !1188
  store %union._gc_head* %53, %union._gc_head** %gc_prev47, align 8, !dbg !1189, !tbaa !1173
  %55 = bitcast %union._gc_head** %g to i8*, !dbg !1190
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !1190
  br label %do.cond.48, !dbg !1191

do.cond.48:                                       ; preds = %do.end
  br label %do.end.49, !dbg !1192

do.end.49:                                        ; preds = %do.cond.48
  %56 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8, !dbg !1194, !tbaa !979
  %57 = bitcast %struct.PyTupleObject* %56 to %struct._object*, !dbg !1195
  store %struct._object* %57, %struct._object** %retval, !dbg !1196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1196

cleanup:                                          ; preds = %do.end.49, %if.then.17, %if.then.13, %if.then.2, %if.then
  %58 = bitcast i64* %i to i8*, !dbg !1197
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1197
  %59 = bitcast %struct.PyTupleObject** %op to i8*, !dbg !1197
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1197
  %60 = load %struct._object*, %struct._object** %retval, !dbg !1197
  ret %struct._object* %60, !dbg !1197
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define i64 @PyTuple_Size(%struct._object* %op) #0 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !470, metadata !983), !dbg !1198
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1199, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1201
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1201, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !1203
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1203, !tbaa !1204
  %and = and i64 %2, 67108864, !dbg !1205
  %cmp = icmp ne i64 %and, 0, !dbg !1206
  br i1 %cmp, label %if.else, label %if.then, !dbg !1207

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 128), !dbg !1208
  store i64 -1, i64* %retval, !dbg !1210
  br label %return, !dbg !1210

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1211, !tbaa !979
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*, !dbg !1212
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !1213
  %5 = load i64, i64* %ob_size, align 8, !dbg !1213, !tbaa !1214
  store i64 %5, i64* %retval, !dbg !1215
  br label %return, !dbg !1215

return:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %retval, !dbg !1216
  ret i64 %6, !dbg !1216
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetItem(%struct._object* %op, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !473, metadata !983), !dbg !1217
  store i64 %i, i64* %i.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !474, metadata !983), !dbg !1218
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1219, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1221
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1221, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !1222
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1222, !tbaa !1204
  %and = and i64 %2, 67108864, !dbg !1223
  %cmp = icmp ne i64 %and, 0, !dbg !1224
  br i1 %cmp, label %if.end, label %if.then, !dbg !1225

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 139), !dbg !1226
  store %struct._object* null, %struct._object** %retval, !dbg !1228
  br label %return, !dbg !1228

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %i.addr, align 8, !dbg !1229, !tbaa !1027
  %cmp1 = icmp slt i64 %3, 0, !dbg !1231
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !1232

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %i.addr, align 8, !dbg !1233, !tbaa !1027
  %5 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1235, !tbaa !979
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*, !dbg !1236
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1, !dbg !1237
  %7 = load i64, i64* %ob_size, align 8, !dbg !1237, !tbaa !1214
  %cmp2 = icmp sge i64 %4, %7, !dbg !1238
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1239

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1240, !tbaa !979
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)), !dbg !1242
  store %struct._object* null, %struct._object** %retval, !dbg !1243
  br label %return, !dbg !1243

if.end.4:                                         ; preds = %lor.lhs.false
  %9 = load i64, i64* %i.addr, align 8, !dbg !1244, !tbaa !1027
  %10 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1245, !tbaa !979
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !1246
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !1247
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9, !dbg !1248
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1248, !tbaa !979
  store %struct._object* %12, %struct._object** %retval, !dbg !1249
  br label %return, !dbg !1249

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval, !dbg !1250
  ret %struct._object* %13, !dbg !1250
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyTuple_SetItem(%struct._object* %op, i64 %i, %struct._object* %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %newitem.addr = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %p = alloca %struct._object**, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !477, metadata !983), !dbg !1251
  store i64 %i, i64* %i.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !478, metadata !983), !dbg !1252
  store %struct._object* %newitem, %struct._object** %newitem.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %newitem.addr, metadata !479, metadata !983), !dbg !1253
  %0 = bitcast %struct._object** %olditem to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct._object** %olditem, metadata !480, metadata !983), !dbg !1255
  %1 = bitcast %struct._object*** %p to i8*, !dbg !1256
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1256
  call void @llvm.dbg.declare(metadata %struct._object*** %p, metadata !481, metadata !983), !dbg !1257
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1258, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1259
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1259, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1260
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1260, !tbaa !1204
  %and = and i64 %4, 67108864, !dbg !1261
  %cmp = icmp ne i64 %and, 0, !dbg !1262
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1263

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1264, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1266
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1266, !tbaa !1054
  %cmp1 = icmp ne i64 %6, 1, !dbg !1267
  br i1 %cmp1, label %if.then, label %if.end.12, !dbg !1268

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !1269

do.body:                                          ; preds = %if.then
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1270
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1270
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !483, metadata !983), !dbg !1272
  %8 = load %struct._object*, %struct._object** %newitem.addr, align 8, !dbg !1273, !tbaa !979
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1272, !tbaa !979
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1274, !tbaa !979
  %cmp2 = icmp ne %struct._object* %9, null, !dbg !1275
  br i1 %cmp2, label %if.then.3, label %if.end.9, !dbg !1276

if.then.3:                                        ; preds = %do.body
  br label %do.body.4, !dbg !1277

do.body.4:                                        ; preds = %if.then.3
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !487, metadata !983), !dbg !1281
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1282, !tbaa !979
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1281, !tbaa !979
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1283, !tbaa !979
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1285
  %13 = load i64, i64* %ob_refcnt5, align 8, !dbg !1286, !tbaa !1054
  %dec = add i64 %13, -1, !dbg !1286
  store i64 %dec, i64* %ob_refcnt5, align 8, !dbg !1286, !tbaa !1054
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1287
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1288

if.then.7:                                        ; preds = %do.body.4
  br label %if.end, !dbg !1289

if.else:                                          ; preds = %do.body.4
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1291, !tbaa !979
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1293
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1293, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1294
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1294, !tbaa !1295
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1296, !tbaa !979
  call void %16(%struct._object* %17), !dbg !1297
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1298
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1298
  br label %do.cond, !dbg !1300

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1301

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !1303

if.end.9:                                         ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1305
  br label %do.cond.10, !dbg !1308

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !1309

do.end.11:                                        ; preds = %do.cond.10
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 156), !dbg !1311
  store i32 -1, i32* %retval, !dbg !1312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1312

if.end.12:                                        ; preds = %lor.lhs.false
  %20 = load i64, i64* %i.addr, align 8, !dbg !1313, !tbaa !1027
  %cmp13 = icmp slt i64 %20, 0, !dbg !1314
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14, !dbg !1315

lor.lhs.false.14:                                 ; preds = %if.end.12
  %21 = load i64, i64* %i.addr, align 8, !dbg !1316, !tbaa !1027
  %22 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1318, !tbaa !979
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !1319
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !1320
  %24 = load i64, i64* %ob_size, align 8, !dbg !1320, !tbaa !1214
  %cmp15 = icmp sge i64 %21, %24, !dbg !1321
  br i1 %cmp15, label %if.then.16, label %if.end.36, !dbg !1322

if.then.16:                                       ; preds = %lor.lhs.false.14, %if.end.12
  br label %do.body.17, !dbg !1323

do.body.17:                                       ; preds = %if.then.16
  %25 = bitcast %struct._object** %_py_xdecref_tmp18 to i8*, !dbg !1324
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !1324
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp18, metadata !490, metadata !983), !dbg !1326
  %26 = load %struct._object*, %struct._object** %newitem.addr, align 8, !dbg !1327, !tbaa !979
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !1326, !tbaa !979
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !1328, !tbaa !979
  %cmp19 = icmp ne %struct._object* %27, null, !dbg !1329
  br i1 %cmp19, label %if.then.20, label %if.end.33, !dbg !1330

if.then.20:                                       ; preds = %do.body.17
  br label %do.body.21, !dbg !1331

do.body.21:                                       ; preds = %if.then.20
  %28 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1333
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !1333
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !494, metadata !983), !dbg !1335
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !1336, !tbaa !979
  store %struct._object* %29, %struct._object** %_py_decref_tmp22, align 8, !dbg !1335, !tbaa !979
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1337, !tbaa !979
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1339
  %31 = load i64, i64* %ob_refcnt23, align 8, !dbg !1340, !tbaa !1054
  %dec24 = add i64 %31, -1, !dbg !1340
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1340, !tbaa !1054
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !1341
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !1342

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30, !dbg !1343

if.else.27:                                       ; preds = %do.body.21
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1345, !tbaa !979
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1347
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1347, !tbaa !1202
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1348
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1348, !tbaa !1295
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1349, !tbaa !979
  call void %34(%struct._object* %35), !dbg !1350
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %36 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1351
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1351
  br label %do.cond.31, !dbg !1353

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !1354

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !1356

if.end.33:                                        ; preds = %do.end.32, %do.body.17
  %37 = bitcast %struct._object** %_py_xdecref_tmp18 to i8*, !dbg !1358
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1358
  br label %do.cond.34, !dbg !1361

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1362

do.end.35:                                        ; preds = %do.cond.34
  %38 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1364, !tbaa !979
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)), !dbg !1365
  store i32 -1, i32* %retval, !dbg !1366
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1366

if.end.36:                                        ; preds = %lor.lhs.false.14
  %39 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1367, !tbaa !979
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*, !dbg !1368
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1, !dbg !1369
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !1370
  %41 = load i64, i64* %i.addr, align 8, !dbg !1371, !tbaa !1027
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %41, !dbg !1372
  store %struct._object** %add.ptr, %struct._object*** %p, align 8, !dbg !1373, !tbaa !979
  %42 = load %struct._object**, %struct._object*** %p, align 8, !dbg !1374, !tbaa !979
  %43 = load %struct._object*, %struct._object** %42, align 8, !dbg !1375, !tbaa !979
  store %struct._object* %43, %struct._object** %olditem, align 8, !dbg !1376, !tbaa !979
  %44 = load %struct._object*, %struct._object** %newitem.addr, align 8, !dbg !1377, !tbaa !979
  %45 = load %struct._object**, %struct._object*** %p, align 8, !dbg !1378, !tbaa !979
  store %struct._object* %44, %struct._object** %45, align 8, !dbg !1379, !tbaa !979
  br label %do.body.37, !dbg !1380

do.body.37:                                       ; preds = %if.end.36
  %46 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1381
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !1381
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp38, metadata !497, metadata !983), !dbg !1383
  %47 = load %struct._object*, %struct._object** %olditem, align 8, !dbg !1384, !tbaa !979
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1383, !tbaa !979
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1385, !tbaa !979
  %cmp39 = icmp ne %struct._object* %48, null, !dbg !1386
  br i1 %cmp39, label %if.then.40, label %if.end.53, !dbg !1387

if.then.40:                                       ; preds = %do.body.37
  br label %do.body.41, !dbg !1388

do.body.41:                                       ; preds = %if.then.40
  %49 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1390
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !499, metadata !983), !dbg !1392
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1393, !tbaa !979
  store %struct._object* %50, %struct._object** %_py_decref_tmp42, align 8, !dbg !1392, !tbaa !979
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1394, !tbaa !979
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !1396
  %52 = load i64, i64* %ob_refcnt43, align 8, !dbg !1397, !tbaa !1054
  %dec44 = add i64 %52, -1, !dbg !1397
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1397, !tbaa !1054
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !1398
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !1399

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !1400

if.else.47:                                       ; preds = %do.body.41
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1402, !tbaa !979
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !1404
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !1404, !tbaa !1202
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !1405
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !1405, !tbaa !1295
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1406, !tbaa !979
  call void %55(%struct._object* %56), !dbg !1407
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %57 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !1408
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1408
  br label %do.cond.51, !dbg !1410

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !1411

do.end.52:                                        ; preds = %do.cond.51
  br label %if.end.53, !dbg !1413

if.end.53:                                        ; preds = %do.end.52, %do.body.37
  %58 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1415
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1415
  br label %do.cond.54, !dbg !1418

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !1419

do.end.55:                                        ; preds = %do.cond.54
  store i32 0, i32* %retval, !dbg !1421
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1421

cleanup:                                          ; preds = %do.end.55, %do.end.35, %do.end.11
  %59 = bitcast %struct._object*** %p to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1422
  %60 = bitcast %struct._object** %olditem to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !1422
  %61 = load i32, i32* %retval, !dbg !1422
  ret i32 %61, !dbg !1422
}

; Function Attrs: nounwind uwtable
define void @_PyTuple_MaybeUntrack(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %t = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %elt = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !504, metadata !983), !dbg !1423
  %0 = bitcast %struct.PyTupleObject** %t to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1424
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %t, metadata !505, metadata !983), !dbg !1425
  %1 = bitcast i64* %i to i8*, !dbg !1426
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1426
  call void @llvm.dbg.declare(metadata i64* %i, metadata !506, metadata !983), !dbg !1427
  %2 = bitcast i64* %n to i8*, !dbg !1426
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1426
  call void @llvm.dbg.declare(metadata i64* %n, metadata !507, metadata !983), !dbg !1428
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1429, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1431
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1431, !tbaa !1202
  %cmp = icmp eq %struct._typeobject* %4, @PyTuple_Type, !dbg !1432
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1433

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1434, !tbaa !979
  %6 = bitcast %struct._object* %5 to %union._gc_head*, !dbg !1436
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 -1, !dbg !1437
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*, !dbg !1438
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1439
  %7 = load i64, i64* %gc_refs, align 8, !dbg !1439, !tbaa !1140
  %shr = ashr i64 %7, 1, !dbg !1440
  %cmp1 = icmp ne i64 %shr, -2, !dbg !1441
  br i1 %cmp1, label %if.end, label %if.then, !dbg !1442

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44, !dbg !1443

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1444, !tbaa !979
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*, !dbg !1445
  store %struct.PyTupleObject* %9, %struct.PyTupleObject** %t, align 8, !dbg !1446, !tbaa !979
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %t, align 8, !dbg !1447, !tbaa !979
  %11 = bitcast %struct.PyTupleObject* %10 to %struct.PyVarObject*, !dbg !1448
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1, !dbg !1449
  %12 = load i64, i64* %ob_size, align 8, !dbg !1449, !tbaa !1214
  store i64 %12, i64* %n, align 8, !dbg !1450, !tbaa !1027
  store i64 0, i64* %i, align 8, !dbg !1451, !tbaa !1027
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8, !dbg !1453, !tbaa !1027
  %14 = load i64, i64* %n, align 8, !dbg !1456, !tbaa !1027
  %cmp2 = icmp slt i64 %13, %14, !dbg !1457
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1458

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._object** %elt to i8*, !dbg !1459
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1459
  call void @llvm.dbg.declare(metadata %struct._object** %elt, metadata !508, metadata !983), !dbg !1460
  %16 = load i64, i64* %i, align 8, !dbg !1461, !tbaa !1027
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %t, align 8, !dbg !1462, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1, !dbg !1463
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16, !dbg !1464
  %18 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1464, !tbaa !979
  store %struct._object* %18, %struct._object** %elt, align 8, !dbg !1460, !tbaa !979
  %19 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1465, !tbaa !979
  %tobool = icmp ne %struct._object* %19, null, !dbg !1465
  br i1 %tobool, label %lor.lhs.false.3, label %if.then.21, !dbg !1467

lor.lhs.false.3:                                  ; preds = %for.body
  %20 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1468, !tbaa !979
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1469
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1469, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !1470
  %22 = load i64, i64* %tp_flags, align 8, !dbg !1470, !tbaa !1204
  %and = and i64 %22, 16384, !dbg !1471
  %cmp5 = icmp ne i64 %and, 0, !dbg !1472
  br i1 %cmp5, label %land.lhs.true, label %if.end.22, !dbg !1473

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %23 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1474, !tbaa !979
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1476
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1476, !tbaa !1202
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 39, !dbg !1477
  %25 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !1477, !tbaa !1478
  %cmp7 = icmp eq i32 (%struct._object*)* %25, null, !dbg !1479
  br i1 %cmp7, label %land.lhs.true.12, label %lor.lhs.false.8, !dbg !1480

lor.lhs.false.8:                                  ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1481, !tbaa !979
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1483
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !1483, !tbaa !1202
  %tp_is_gc10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 39, !dbg !1484
  %28 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc10, align 8, !dbg !1484, !tbaa !1478
  %29 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1485, !tbaa !979
  %call = call i32 %28(%struct._object* %29), !dbg !1486
  %tobool11 = icmp ne i32 %call, 0, !dbg !1486
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.22, !dbg !1487

land.lhs.true.12:                                 ; preds = %lor.lhs.false.8, %land.lhs.true
  %30 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1488, !tbaa !979
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1491
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !1491, !tbaa !1202
  %cmp14 = icmp eq %struct._typeobject* %31, @PyTuple_Type, !dbg !1492
  br i1 %cmp14, label %lor.lhs.false.15, label %if.then.21, !dbg !1493

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %32 = load %struct._object*, %struct._object** %elt, align 8, !dbg !1494, !tbaa !979
  %33 = bitcast %struct._object* %32 to %union._gc_head*, !dbg !1496
  %add.ptr16 = getelementptr %union._gc_head, %union._gc_head* %33, i64 -1, !dbg !1497
  %gc17 = bitcast %union._gc_head* %add.ptr16 to %struct.anon*, !dbg !1498
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2, !dbg !1499
  %34 = load i64, i64* %gc_refs18, align 8, !dbg !1499, !tbaa !1140
  %shr19 = ashr i64 %34, 1, !dbg !1500
  %cmp20 = icmp ne i64 %shr19, -2, !dbg !1501
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !1502

if.then.21:                                       ; preds = %lor.lhs.false.15, %land.lhs.true.12, %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1503

if.end.22:                                        ; preds = %lor.lhs.false.15, %lor.lhs.false.8, %lor.lhs.false.3
  store i32 0, i32* %cleanup.dest.slot, !dbg !1504
  br label %cleanup, !dbg !1504

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %35 = bitcast %struct._object** %elt to i8*, !dbg !1505
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1505
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1506

for.inc:                                          ; preds = %cleanup.cont
  %36 = load i64, i64* %i, align 8, !dbg !1507, !tbaa !1027
  %inc = add i64 %36, 1, !dbg !1507
  store i64 %inc, i64* %i, align 8, !dbg !1507, !tbaa !1027
  br label %for.cond, !dbg !1508

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1509

do.body:                                          ; preds = %for.end
  %37 = bitcast %union._gc_head** %g to i8*, !dbg !1510
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1510
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !512, metadata !983), !dbg !1512
  %38 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1513, !tbaa !979
  %39 = bitcast %struct._object* %38 to %union._gc_head*, !dbg !1514
  %add.ptr23 = getelementptr %union._gc_head, %union._gc_head* %39, i64 -1, !dbg !1515
  store %union._gc_head* %add.ptr23, %union._gc_head** %g, align 8, !dbg !1512, !tbaa !979
  br label %do.body.24, !dbg !1516

do.body.24:                                       ; preds = %do.body
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1517, !tbaa !979
  %gc25 = bitcast %union._gc_head* %40 to %struct.anon*, !dbg !1520
  %gc_refs26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 2, !dbg !1521
  %41 = load i64, i64* %gc_refs26, align 8, !dbg !1521, !tbaa !1140
  %and27 = and i64 %41, 1, !dbg !1522
  %or = or i64 %and27, -4, !dbg !1523
  %42 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1524, !tbaa !979
  %gc28 = bitcast %union._gc_head* %42 to %struct.anon*, !dbg !1525
  %gc_refs29 = getelementptr inbounds %struct.anon, %struct.anon* %gc28, i32 0, i32 2, !dbg !1526
  store i64 %or, i64* %gc_refs29, align 8, !dbg !1527, !tbaa !1140
  br label %do.cond, !dbg !1528

do.cond:                                          ; preds = %do.body.24
  br label %do.end, !dbg !1529

do.end:                                           ; preds = %do.cond
  %43 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1531, !tbaa !979
  %gc30 = bitcast %union._gc_head* %43 to %struct.anon*, !dbg !1533
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 0, !dbg !1534
  %44 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1534, !tbaa !1169
  %45 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1535, !tbaa !979
  %gc31 = bitcast %union._gc_head* %45 to %struct.anon*, !dbg !1536
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 1, !dbg !1537
  %46 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1537, !tbaa !1173
  %gc32 = bitcast %union._gc_head* %46 to %struct.anon*, !dbg !1538
  %gc_next33 = getelementptr inbounds %struct.anon, %struct.anon* %gc32, i32 0, i32 0, !dbg !1539
  store %union._gc_head* %44, %union._gc_head** %gc_next33, align 8, !dbg !1540, !tbaa !1169
  %47 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1541, !tbaa !979
  %gc34 = bitcast %union._gc_head* %47 to %struct.anon*, !dbg !1542
  %gc_prev35 = getelementptr inbounds %struct.anon, %struct.anon* %gc34, i32 0, i32 1, !dbg !1543
  %48 = load %union._gc_head*, %union._gc_head** %gc_prev35, align 8, !dbg !1543, !tbaa !1173
  %49 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1544, !tbaa !979
  %gc36 = bitcast %union._gc_head* %49 to %struct.anon*, !dbg !1545
  %gc_next37 = getelementptr inbounds %struct.anon, %struct.anon* %gc36, i32 0, i32 0, !dbg !1546
  %50 = load %union._gc_head*, %union._gc_head** %gc_next37, align 8, !dbg !1546, !tbaa !1169
  %gc38 = bitcast %union._gc_head* %50 to %struct.anon*, !dbg !1547
  %gc_prev39 = getelementptr inbounds %struct.anon, %struct.anon* %gc38, i32 0, i32 1, !dbg !1548
  store %union._gc_head* %48, %union._gc_head** %gc_prev39, align 8, !dbg !1549, !tbaa !1173
  %51 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1550, !tbaa !979
  %gc40 = bitcast %union._gc_head* %51 to %struct.anon*, !dbg !1551
  %gc_next41 = getelementptr inbounds %struct.anon, %struct.anon* %gc40, i32 0, i32 0, !dbg !1552
  store %union._gc_head* null, %union._gc_head** %gc_next41, align 8, !dbg !1553, !tbaa !1169
  %52 = bitcast %union._gc_head** %g to i8*, !dbg !1554
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1554
  br label %do.cond.42, !dbg !1555

do.cond.42:                                       ; preds = %do.end
  br label %do.end.43, !dbg !1556

do.end.43:                                        ; preds = %do.cond.42
  store i32 0, i32* %cleanup.dest.slot, !dbg !1558
  br label %cleanup.44, !dbg !1558

cleanup.44:                                       ; preds = %do.end.43, %cleanup, %if.then
  %53 = bitcast i64* %n to i8*, !dbg !1559
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1559
  %54 = bitcast i64* %i to i8*, !dbg !1559
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !1559
  %55 = bitcast %struct.PyTupleObject** %t to i8*, !dbg !1559
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !1559
  %cleanup.dest.47 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.47, label %unreachable [
    i32 0, label %cleanup.cont.48
    i32 1, label %cleanup.cont.48
  ]

cleanup.cont.48:                                  ; preds = %cleanup.44, %cleanup.44
  ret void, !dbg !1558

unreachable:                                      ; preds = %cleanup.44
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_Pack(i64 %n, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %items = alloca %struct._object**, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32
  store i64 %n, i64* %n.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !518, metadata !983), !dbg !1561
  %0 = bitcast i64* %i to i8*, !dbg !1562
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1562
  call void @llvm.dbg.declare(metadata i64* %i, metadata !519, metadata !983), !dbg !1563
  %1 = bitcast %struct._object** %o to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1564
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !520, metadata !983), !dbg !1565
  %2 = bitcast %struct._object** %result to i8*, !dbg !1566
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !521, metadata !983), !dbg !1567
  %3 = bitcast %struct._object*** %items to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1568
  call void @llvm.dbg.declare(metadata %struct._object*** %items, metadata !522, metadata !983), !dbg !1569
  %4 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1570
  call void @llvm.lifetime.start(i64 24, i8* %4) #2, !dbg !1570
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !523, metadata !983), !dbg !1571
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1572
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1573
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1573
  %5 = load i64, i64* %n.addr, align 8, !dbg !1574, !tbaa !1027
  %call = call %struct._object* @PyTuple_New(i64 %5), !dbg !1575
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !1576, !tbaa !979
  %6 = load %struct._object*, %struct._object** %result, align 8, !dbg !1577, !tbaa !979
  %cmp = icmp eq %struct._object* %6, null, !dbg !1579
  br i1 %cmp, label %if.then, label %if.end, !dbg !1580

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1581
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*, !dbg !1583
  call void @llvm.va_end(i8* %arraydecay23), !dbg !1583
  store %struct._object* null, %struct._object** %retval, !dbg !1584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1584

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !1585, !tbaa !979
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*, !dbg !1586
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !1587
  %arraydecay4 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !1588
  store %struct._object** %arraydecay4, %struct._object*** %items, align 8, !dbg !1589, !tbaa !979
  store i64 0, i64* %i, align 8, !dbg !1590, !tbaa !1027
  br label %for.cond, !dbg !1592

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %i, align 8, !dbg !1593, !tbaa !1027
  %10 = load i64, i64* %n.addr, align 8, !dbg !1597, !tbaa !1027
  %cmp5 = icmp slt i64 %9, %10, !dbg !1598
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1599

for.body:                                         ; preds = %for.cond
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1600
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 0, !dbg !1602
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !1602
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1602
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1602

vaarg.in_reg:                                     ; preds = %for.body
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 3, !dbg !1603
  %reg_save_area = load i8*, i8** %11, !dbg !1603
  %12 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !1603
  %13 = bitcast i8* %12 to %struct._object**, !dbg !1603
  %14 = add i32 %gp_offset, 8, !dbg !1603
  store i32 %14, i32* %gp_offset_p, !dbg !1603
  br label %vaarg.end, !dbg !1603

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 2, !dbg !1605
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !1605
  %15 = bitcast i8* %overflow_arg_area to %struct._object**, !dbg !1605
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !1605
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !1605
  br label %vaarg.end, !dbg !1605

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._object** [ %13, %vaarg.in_reg ], [ %15, %vaarg.in_mem ], !dbg !1602
  %16 = load %struct._object*, %struct._object** %vaarg.addr, !dbg !1607
  store %struct._object* %16, %struct._object** %o, align 8, !dbg !1610, !tbaa !979
  %17 = load %struct._object*, %struct._object** %o, align 8, !dbg !1611, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1612
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !1613, !tbaa !1054
  %inc = add i64 %18, 1, !dbg !1613
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1613, !tbaa !1054
  %19 = load %struct._object*, %struct._object** %o, align 8, !dbg !1614, !tbaa !979
  %20 = load i64, i64* %i, align 8, !dbg !1615, !tbaa !1027
  %21 = load %struct._object**, %struct._object*** %items, align 8, !dbg !1616, !tbaa !979
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 %20, !dbg !1616
  store %struct._object* %19, %struct._object** %arrayidx, align 8, !dbg !1617, !tbaa !979
  br label %for.inc, !dbg !1618

for.inc:                                          ; preds = %vaarg.end
  %22 = load i64, i64* %i, align 8, !dbg !1619, !tbaa !1027
  %inc7 = add i64 %22, 1, !dbg !1619
  store i64 %inc7, i64* %i, align 8, !dbg !1619, !tbaa !1027
  br label %for.cond, !dbg !1620

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1621
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*, !dbg !1622
  call void @llvm.va_end(i8* %arraydecay89), !dbg !1622
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !1623, !tbaa !979
  store %struct._object* %23, %struct._object** %retval, !dbg !1624
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1624

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1625
  call void @llvm.lifetime.end(i64 24, i8* %24) #2, !dbg !1625
  %25 = bitcast %struct._object*** %items to i8*, !dbg !1625
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1625
  %26 = bitcast %struct._object** %result to i8*, !dbg !1625
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1625
  %27 = bitcast %struct._object** %o to i8*, !dbg !1625
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1625
  %28 = bitcast i64* %i to i8*, !dbg !1625
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1625
  %29 = load %struct._object*, %struct._object** %retval, !dbg !1625
  ret %struct._object* %29, !dbg !1625
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetSlice(%struct._object* %op, i64 %i, i64 %j) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !540, metadata !983), !dbg !1626
  store i64 %i, i64* %i.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !541, metadata !983), !dbg !1627
  store i64 %j, i64* %j.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %j.addr, metadata !542, metadata !983), !dbg !1628
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1629, !tbaa !979
  %cmp = icmp eq %struct._object* %0, null, !dbg !1631
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1632

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1633, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1635
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1635, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19, !dbg !1636
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1636, !tbaa !1204
  %and = and i64 %3, 67108864, !dbg !1637
  %cmp1 = icmp ne i64 %and, 0, !dbg !1638
  br i1 %cmp1, label %if.end, label %if.then, !dbg !1639

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 429), !dbg !1640
  store %struct._object* null, %struct._object** %retval, !dbg !1642
  br label %return, !dbg !1642

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1643, !tbaa !979
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*, !dbg !1644
  %6 = load i64, i64* %i.addr, align 8, !dbg !1645, !tbaa !1027
  %7 = load i64, i64* %j.addr, align 8, !dbg !1646, !tbaa !1027
  %call = call %struct._object* @tupleslice(%struct.PyTupleObject* %5, i64 %6, i64 %7), !dbg !1647
  store %struct._object* %call, %struct._object** %retval, !dbg !1648
  br label %return, !dbg !1648

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !1649
  ret %struct._object* %8, !dbg !1649
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleslice(%struct.PyTupleObject* %a, i64 %ilow, i64 %ihigh) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %np = alloca %struct.PyTupleObject*, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !603, metadata !983), !dbg !1650
  store i64 %ilow, i64* %ilow.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %ilow.addr, metadata !604, metadata !983), !dbg !1651
  store i64 %ihigh, i64* %ihigh.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %ihigh.addr, metadata !605, metadata !983), !dbg !1652
  %0 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !1653
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1653
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %np, metadata !606, metadata !983), !dbg !1654
  %1 = bitcast %struct._object*** %src to i8*, !dbg !1655
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1655
  call void @llvm.dbg.declare(metadata %struct._object*** %src, metadata !607, metadata !983), !dbg !1656
  %2 = bitcast %struct._object*** %dest to i8*, !dbg !1655
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1655
  call void @llvm.dbg.declare(metadata %struct._object*** %dest, metadata !608, metadata !983), !dbg !1657
  %3 = bitcast i64* %i to i8*, !dbg !1658
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1658
  call void @llvm.dbg.declare(metadata i64* %i, metadata !609, metadata !983), !dbg !1659
  %4 = bitcast i64* %len to i8*, !dbg !1660
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %len, metadata !610, metadata !983), !dbg !1661
  %5 = load i64, i64* %ilow.addr, align 8, !dbg !1662, !tbaa !1027
  %cmp = icmp slt i64 %5, 0, !dbg !1664
  br i1 %cmp, label %if.then, label %if.end, !dbg !1665

if.then:                                          ; preds = %entry
  store i64 0, i64* %ilow.addr, align 8, !dbg !1666, !tbaa !1027
  br label %if.end, !dbg !1667

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %ihigh.addr, align 8, !dbg !1668, !tbaa !1027
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1670, !tbaa !979
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*, !dbg !1671
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1, !dbg !1672
  %9 = load i64, i64* %ob_size, align 8, !dbg !1672, !tbaa !1214
  %cmp1 = icmp sgt i64 %6, %9, !dbg !1673
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !1674

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1675, !tbaa !979
  %11 = bitcast %struct.PyTupleObject* %10 to %struct.PyVarObject*, !dbg !1676
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1, !dbg !1677
  %12 = load i64, i64* %ob_size3, align 8, !dbg !1677, !tbaa !1214
  store i64 %12, i64* %ihigh.addr, align 8, !dbg !1678, !tbaa !1027
  br label %if.end.4, !dbg !1679

if.end.4:                                         ; preds = %if.then.2, %if.end
  %13 = load i64, i64* %ihigh.addr, align 8, !dbg !1680, !tbaa !1027
  %14 = load i64, i64* %ilow.addr, align 8, !dbg !1682, !tbaa !1027
  %cmp5 = icmp slt i64 %13, %14, !dbg !1683
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1684

if.then.6:                                        ; preds = %if.end.4
  %15 = load i64, i64* %ilow.addr, align 8, !dbg !1685, !tbaa !1027
  store i64 %15, i64* %ihigh.addr, align 8, !dbg !1686, !tbaa !1027
  br label %if.end.7, !dbg !1687

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %16 = load i64, i64* %ilow.addr, align 8, !dbg !1688, !tbaa !1027
  %cmp8 = icmp eq i64 %16, 0, !dbg !1690
  br i1 %cmp8, label %land.lhs.true, label %if.end.14, !dbg !1691

land.lhs.true:                                    ; preds = %if.end.7
  %17 = load i64, i64* %ihigh.addr, align 8, !dbg !1692, !tbaa !1027
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1694, !tbaa !979
  %19 = bitcast %struct.PyTupleObject* %18 to %struct.PyVarObject*, !dbg !1695
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1, !dbg !1696
  %20 = load i64, i64* %ob_size9, align 8, !dbg !1696, !tbaa !1214
  %cmp10 = icmp eq i64 %17, %20, !dbg !1697
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14, !dbg !1698

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %21 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1699, !tbaa !979
  %22 = bitcast %struct.PyTupleObject* %21 to %struct._object*, !dbg !1701
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1702
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1702, !tbaa !1202
  %cmp12 = icmp eq %struct._typeobject* %23, @PyTuple_Type, !dbg !1703
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1704

if.then.13:                                       ; preds = %land.lhs.true.11
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1705, !tbaa !979
  %25 = bitcast %struct.PyTupleObject* %24 to %struct._object*, !dbg !1707
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1708
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !1709, !tbaa !1054
  %inc = add i64 %26, 1, !dbg !1709
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1709, !tbaa !1054
  %27 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1710, !tbaa !979
  %28 = bitcast %struct.PyTupleObject* %27 to %struct._object*, !dbg !1711
  store %struct._object* %28, %struct._object** %retval, !dbg !1712
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1712

if.end.14:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.7
  %29 = load i64, i64* %ihigh.addr, align 8, !dbg !1713, !tbaa !1027
  %30 = load i64, i64* %ilow.addr, align 8, !dbg !1714, !tbaa !1027
  %sub = sub i64 %29, %30, !dbg !1715
  store i64 %sub, i64* %len, align 8, !dbg !1716, !tbaa !1027
  %31 = load i64, i64* %len, align 8, !dbg !1717, !tbaa !1027
  %call = call %struct._object* @PyTuple_New(i64 %31), !dbg !1718
  %32 = bitcast %struct._object* %call to %struct.PyTupleObject*, !dbg !1719
  store %struct.PyTupleObject* %32, %struct.PyTupleObject** %np, align 8, !dbg !1720, !tbaa !979
  %33 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !1721, !tbaa !979
  %cmp15 = icmp eq %struct.PyTupleObject* %33, null, !dbg !1723
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1724

if.then.16:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval, !dbg !1725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1725

if.end.17:                                        ; preds = %if.end.14
  %34 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !1726, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1, !dbg !1727
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !1726
  %35 = load i64, i64* %ilow.addr, align 8, !dbg !1728, !tbaa !1027
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %35, !dbg !1729
  store %struct._object** %add.ptr, %struct._object*** %src, align 8, !dbg !1730, !tbaa !979
  %36 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !1731, !tbaa !979
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !1732
  %arraydecay19 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i32 0, !dbg !1731
  store %struct._object** %arraydecay19, %struct._object*** %dest, align 8, !dbg !1733, !tbaa !979
  store i64 0, i64* %i, align 8, !dbg !1734, !tbaa !1027
  br label %for.cond, !dbg !1735

for.cond:                                         ; preds = %for.inc, %if.end.17
  %37 = load i64, i64* %i, align 8, !dbg !1736, !tbaa !1027
  %38 = load i64, i64* %len, align 8, !dbg !1739, !tbaa !1027
  %cmp20 = icmp slt i64 %37, %38, !dbg !1740
  br i1 %cmp20, label %for.body, label %for.end, !dbg !1741

for.body:                                         ; preds = %for.cond
  %39 = bitcast %struct._object** %v to i8*, !dbg !1742
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1742
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !611, metadata !983), !dbg !1743
  %40 = load i64, i64* %i, align 8, !dbg !1744, !tbaa !1027
  %41 = load %struct._object**, %struct._object*** %src, align 8, !dbg !1745, !tbaa !979
  %arrayidx = getelementptr %struct._object*, %struct._object** %41, i64 %40, !dbg !1745
  %42 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1745, !tbaa !979
  store %struct._object* %42, %struct._object** %v, align 8, !dbg !1743, !tbaa !979
  %43 = load %struct._object*, %struct._object** %v, align 8, !dbg !1746, !tbaa !979
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !1747
  %44 = load i64, i64* %ob_refcnt21, align 8, !dbg !1748, !tbaa !1054
  %inc22 = add i64 %44, 1, !dbg !1748
  store i64 %inc22, i64* %ob_refcnt21, align 8, !dbg !1748, !tbaa !1054
  %45 = load %struct._object*, %struct._object** %v, align 8, !dbg !1749, !tbaa !979
  %46 = load i64, i64* %i, align 8, !dbg !1750, !tbaa !1027
  %47 = load %struct._object**, %struct._object*** %dest, align 8, !dbg !1751, !tbaa !979
  %arrayidx23 = getelementptr %struct._object*, %struct._object** %47, i64 %46, !dbg !1751
  store %struct._object* %45, %struct._object** %arrayidx23, align 8, !dbg !1752, !tbaa !979
  %48 = bitcast %struct._object** %v to i8*, !dbg !1753
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1753
  br label %for.inc, !dbg !1754

for.inc:                                          ; preds = %for.body
  %49 = load i64, i64* %i, align 8, !dbg !1755, !tbaa !1027
  %inc24 = add i64 %49, 1, !dbg !1755
  store i64 %inc24, i64* %i, align 8, !dbg !1755, !tbaa !1027
  br label %for.cond, !dbg !1756

for.end:                                          ; preds = %for.cond
  %50 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !1757, !tbaa !979
  %51 = bitcast %struct.PyTupleObject* %50 to %struct._object*, !dbg !1758
  store %struct._object* %51, %struct._object** %retval, !dbg !1759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1759

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.13
  %52 = bitcast i64* %len to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1760
  %53 = bitcast i64* %i to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1760
  %54 = bitcast %struct._object*** %dest to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !1760
  %55 = bitcast %struct._object*** %src to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !1760
  %56 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !1760
  %57 = load %struct._object*, %struct._object** %retval, !dbg !1760
  ret %struct._object* %57, !dbg !1760
}

; Function Attrs: nounwind uwtable
define internal void @tupledealloc(%struct.PyTupleObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %op, %struct.PyTupleObject** %op.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %op.addr, metadata !619, metadata !983), !dbg !1761
  %0 = bitcast i64* %i to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1762
  call void @llvm.dbg.declare(metadata i64* %i, metadata !620, metadata !983), !dbg !1763
  %1 = bitcast i64* %len to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1764
  call void @llvm.dbg.declare(metadata i64* %len, metadata !621, metadata !983), !dbg !1765
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1766, !tbaa !979
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*, !dbg !1767
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1, !dbg !1768
  %4 = load i64, i64* %ob_size, align 8, !dbg !1768, !tbaa !1214
  store i64 %4, i64* %len, align 8, !dbg !1765, !tbaa !1027
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1769, !tbaa !979
  %6 = bitcast %struct.PyTupleObject* %5 to i8*, !dbg !1769
  call void @PyObject_GC_UnTrack(i8* %6), !dbg !1770
  br label %do.body, !dbg !1771

do.body:                                          ; preds = %entry
  %7 = bitcast %struct._ts** %_tstate to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1772
  call void @llvm.dbg.declare(metadata %struct._ts** %_tstate, metadata !622, metadata !983), !dbg !1774
  %8 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1775
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1775
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !624, metadata !983), !dbg !1776
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1776, !tbaa !979
  %9 = bitcast i8** %result to i8*, !dbg !1777
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1777
  call void @llvm.dbg.declare(metadata i8** %result, metadata !631, metadata !983), !dbg !1778
  %10 = bitcast i8*** %volatile_data to i8*, !dbg !1779
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1779
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !632, metadata !983), !dbg !1780
  %11 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1781, !tbaa !979
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %11, i32 0, i32 0, !dbg !1782
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1780, !tbaa !979
  %12 = bitcast i32* %order to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !1783
  call void @llvm.dbg.declare(metadata i32* %order, metadata !635, metadata !983), !dbg !1784
  store i32 0, i32* %order, align 4, !dbg !1784, !tbaa !1785
  %13 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1786, !tbaa !979
  %14 = bitcast %struct._Py_atomic_address* %13 to i8*, !dbg !1786
  %15 = load i32, i32* %order, align 4, !dbg !1787, !tbaa !1785
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %14, i32 %15), !dbg !1788
  %16 = load i32, i32* %order, align 4, !dbg !1789, !tbaa !1785
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1790

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1791
  br label %sw.epilog, !dbg !1796

sw.default:                                       ; preds = %do.body
  br label %sw.epilog, !dbg !1797

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %17 = load i8**, i8*** %volatile_data, align 8, !dbg !1799, !tbaa !979
  %18 = load volatile i8*, i8** %17, align 8, !dbg !1802, !tbaa !979
  store i8* %18, i8** %result, align 8, !dbg !1803, !tbaa !979
  %19 = load i32, i32* %order, align 4, !dbg !1804, !tbaa !1785
  switch i32 %19, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1805

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1806
  br label %sw.epilog.3, !dbg !1811

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1812

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %20 = load i8*, i8** %result, align 8, !dbg !1814, !tbaa !979
  store i8* %20, i8** %tmp, !dbg !1817, !tbaa !979
  %21 = bitcast i32* %order to i8*, !dbg !1818
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !1818
  %22 = bitcast i8*** %volatile_data to i8*, !dbg !1818
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1818
  %23 = bitcast i8** %result to i8*, !dbg !1818
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1818
  %24 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1818
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1818
  %25 = load i8*, i8** %tmp, !dbg !1819, !tbaa !979
  %26 = bitcast i8* %25 to %struct._ts*, !dbg !1820
  store %struct._ts* %26, %struct._ts** %_tstate, align 8, !dbg !1774, !tbaa !979
  %27 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !1821, !tbaa !979
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 23, !dbg !1822
  %28 = load i32, i32* %trash_delete_nesting, align 4, !dbg !1822, !tbaa !1823
  %cmp = icmp slt i32 %28, 50, !dbg !1825
  br i1 %cmp, label %if.then, label %if.else.43, !dbg !1826

if.then:                                          ; preds = %sw.epilog.3
  %29 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !1827, !tbaa !979
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %29, i32 0, i32 23, !dbg !1829
  %30 = load i32, i32* %trash_delete_nesting4, align 4, !dbg !1830, !tbaa !1823
  %inc = add i32 %30, 1, !dbg !1830
  store i32 %inc, i32* %trash_delete_nesting4, align 4, !dbg !1830, !tbaa !1823
  %31 = load i64, i64* %len, align 8, !dbg !1831, !tbaa !1027
  %cmp5 = icmp sgt i64 %31, 0, !dbg !1832
  br i1 %cmp5, label %if.then.6, label %if.end.34, !dbg !1833

if.then.6:                                        ; preds = %if.then
  %32 = load i64, i64* %len, align 8, !dbg !1834, !tbaa !1027
  store i64 %32, i64* %i, align 8, !dbg !1835, !tbaa !1027
  br label %while.cond, !dbg !1836

while.cond:                                       ; preds = %do.end.19, %if.then.6
  %33 = load i64, i64* %i, align 8, !dbg !1837, !tbaa !1027
  %dec = add i64 %33, -1, !dbg !1837
  store i64 %dec, i64* %i, align 8, !dbg !1837, !tbaa !1027
  %cmp7 = icmp sge i64 %dec, 0, !dbg !1840
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1836

while.body:                                       ; preds = %while.cond
  br label %do.body.8, !dbg !1841

do.body.8:                                        ; preds = %while.body
  %34 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1842
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1842
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !637, metadata !983), !dbg !1844
  %35 = load i64, i64* %i, align 8, !dbg !1845, !tbaa !1027
  %36 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1846, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !1847
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %35, !dbg !1846
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1846, !tbaa !979
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1844, !tbaa !979
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1848, !tbaa !979
  %cmp10 = icmp ne %struct._object* %38, null, !dbg !1849
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !1850

if.then.11:                                       ; preds = %do.body.8
  br label %do.body.12, !dbg !1851

do.body.12:                                       ; preds = %if.then.11
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1853
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !643, metadata !983), !dbg !1855
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1856, !tbaa !979
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8, !dbg !1855, !tbaa !979
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1857, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1859
  %42 = load i64, i64* %ob_refcnt, align 8, !dbg !1860, !tbaa !1054
  %dec14 = add i64 %42, -1, !dbg !1860
  store i64 %dec14, i64* %ob_refcnt, align 8, !dbg !1860, !tbaa !1054
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !1861
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !1862

if.then.16:                                       ; preds = %do.body.12
  br label %if.end, !dbg !1863

if.else:                                          ; preds = %do.body.12
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1865, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !1867
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1867, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !1868
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1868, !tbaa !1295
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1869, !tbaa !979
  call void %45(%struct._object* %46), !dbg !1870
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  %47 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1871
  br label %do.cond, !dbg !1873

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1874

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !1876

if.end.17:                                        ; preds = %do.end, %do.body.8
  %48 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1878
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1878
  br label %do.cond.18, !dbg !1881

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !1882

do.end.19:                                        ; preds = %do.cond.18
  br label %while.cond, !dbg !1836

while.end:                                        ; preds = %while.cond
  %49 = load i64, i64* %len, align 8, !dbg !1884, !tbaa !1027
  %cmp20 = icmp slt i64 %49, 20, !dbg !1886
  br i1 %cmp20, label %land.lhs.true, label %if.end.33, !dbg !1887

land.lhs.true:                                    ; preds = %while.end
  %50 = load i64, i64* %len, align 8, !dbg !1888, !tbaa !1027
  %arrayidx21 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %50, !dbg !1889
  %51 = load i32, i32* %arrayidx21, align 4, !dbg !1889, !tbaa !991
  %cmp22 = icmp slt i32 %51, 2000, !dbg !1890
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.33, !dbg !1891

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %52 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1892, !tbaa !979
  %53 = bitcast %struct.PyTupleObject* %52 to %struct._object*, !dbg !1893
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !1894
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1894, !tbaa !1202
  %cmp25 = icmp eq %struct._typeobject* %54, @PyTuple_Type, !dbg !1895
  br i1 %cmp25, label %if.then.26, label %if.end.33, !dbg !1896

if.then.26:                                       ; preds = %land.lhs.true.23
  %55 = load i64, i64* %len, align 8, !dbg !1897, !tbaa !1027
  %arrayidx27 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %55, !dbg !1899
  %56 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx27, align 8, !dbg !1899, !tbaa !979
  %57 = bitcast %struct.PyTupleObject* %56 to %struct._object*, !dbg !1900
  %58 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1901, !tbaa !979
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %58, i32 0, i32 1, !dbg !1902
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 0, !dbg !1901
  store %struct._object* %57, %struct._object** %arrayidx29, align 8, !dbg !1903, !tbaa !979
  %59 = load i64, i64* %len, align 8, !dbg !1904, !tbaa !1027
  %arrayidx30 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %59, !dbg !1905
  %60 = load i32, i32* %arrayidx30, align 4, !dbg !1906, !tbaa !991
  %inc31 = add i32 %60, 1, !dbg !1906
  store i32 %inc31, i32* %arrayidx30, align 4, !dbg !1906, !tbaa !991
  %61 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1907, !tbaa !979
  %62 = load i64, i64* %len, align 8, !dbg !1908, !tbaa !1027
  %arrayidx32 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %62, !dbg !1909
  store %struct.PyTupleObject* %61, %struct.PyTupleObject** %arrayidx32, align 8, !dbg !1910, !tbaa !979
  br label %done, !dbg !1911

if.end.33:                                        ; preds = %land.lhs.true.23, %land.lhs.true, %while.end
  br label %if.end.34, !dbg !1912

if.end.34:                                        ; preds = %if.end.33, %if.then
  %63 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1913, !tbaa !979
  %64 = bitcast %struct.PyTupleObject* %63 to %struct._object*, !dbg !1914
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !1915
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1915, !tbaa !1202
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 38, !dbg !1916
  %66 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1916, !tbaa !1917
  %67 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1918, !tbaa !979
  %68 = bitcast %struct.PyTupleObject* %67 to %struct._object*, !dbg !1919
  %69 = bitcast %struct._object* %68 to i8*, !dbg !1919
  call void %66(i8* %69), !dbg !1920
  br label %done, !dbg !1920

done:                                             ; preds = %if.end.34, %if.then.26
  %70 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !1921, !tbaa !979
  %trash_delete_nesting36 = getelementptr inbounds %struct._ts, %struct._ts* %70, i32 0, i32 23, !dbg !1922
  %71 = load i32, i32* %trash_delete_nesting36, align 4, !dbg !1923, !tbaa !1823
  %dec37 = add i32 %71, -1, !dbg !1923
  store i32 %dec37, i32* %trash_delete_nesting36, align 4, !dbg !1923, !tbaa !1823
  %72 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !1924, !tbaa !979
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %72, i32 0, i32 24, !dbg !1926
  %73 = load %struct._object*, %struct._object** %trash_delete_later, align 8, !dbg !1926, !tbaa !1927
  %tobool = icmp ne %struct._object* %73, null, !dbg !1924
  br i1 %tobool, label %land.lhs.true.38, label %if.end.42, !dbg !1928

land.lhs.true.38:                                 ; preds = %done
  %74 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !1929, !tbaa !979
  %trash_delete_nesting39 = getelementptr inbounds %struct._ts, %struct._ts* %74, i32 0, i32 23, !dbg !1931
  %75 = load i32, i32* %trash_delete_nesting39, align 4, !dbg !1931, !tbaa !1823
  %cmp40 = icmp sle i32 %75, 0, !dbg !1932
  br i1 %cmp40, label %if.then.41, label %if.end.42, !dbg !1933

if.then.41:                                       ; preds = %land.lhs.true.38
  call void @_PyTrash_thread_destroy_chain(), !dbg !1934
  br label %if.end.42, !dbg !1934

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.38, %done
  br label %if.end.44, !dbg !1936

if.else.43:                                       ; preds = %sw.epilog.3
  %76 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8, !dbg !1940, !tbaa !979
  %77 = bitcast %struct.PyTupleObject* %76 to %struct._object*, !dbg !1941
  call void @_PyTrash_thread_deposit_object(%struct._object* %77), !dbg !1942
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.end.42
  %78 = bitcast %struct._ts** %_tstate to i8*, !dbg !1943
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !1943
  br label %do.cond.45, !dbg !1945

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1946

do.end.46:                                        ; preds = %do.cond.45
  %79 = bitcast i64* %len to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1948
  %80 = bitcast i64* %i to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !1948
  ret void, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerepr(%struct.PyTupleObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val43 = alloca %struct._Py_atomic_address*, align 8
  %result45 = alloca i8*, align 8
  %volatile_data47 = alloca i8**, align 8
  %order50 = alloca i32, align 4
  %tmp57 = alloca i8*, align 8
  %atomic_val71 = alloca %struct._Py_atomic_address*, align 8
  %result73 = alloca i8*, align 8
  %volatile_data75 = alloca i8**, align 8
  %order78 = alloca i32, align 4
  %tmp85 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %v.addr, metadata !667, metadata !983), !dbg !1949
  %0 = bitcast i64* %i to i8*, !dbg !1950
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1950
  call void @llvm.dbg.declare(metadata i64* %i, metadata !668, metadata !983), !dbg !1951
  %1 = bitcast i64* %n to i8*, !dbg !1950
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1950
  call void @llvm.dbg.declare(metadata i64* %n, metadata !669, metadata !983), !dbg !1952
  %2 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 56, i8* %2) #2, !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter* %writer, metadata !670, metadata !983), !dbg !1954
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !1955, !tbaa !979
  %4 = bitcast %struct.PyTupleObject* %3 to %struct.PyVarObject*, !dbg !1956
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !1957
  %5 = load i64, i64* %ob_size, align 8, !dbg !1957, !tbaa !1214
  store i64 %5, i64* %n, align 8, !dbg !1958, !tbaa !1027
  %6 = load i64, i64* %n, align 8, !dbg !1959, !tbaa !1027
  %cmp = icmp eq i64 %6, 0, !dbg !1961
  br i1 %cmp, label %if.then, label %if.end, !dbg !1962

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !1963
  store %struct._object* %call, %struct._object** %retval, !dbg !1964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138, !dbg !1964

if.end:                                           ; preds = %entry
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !1965, !tbaa !979
  %8 = bitcast %struct.PyTupleObject* %7 to %struct._object*, !dbg !1966
  %call1 = call i32 @Py_ReprEnter(%struct._object* %8), !dbg !1967
  %conv = sext i32 %call1 to i64, !dbg !1967
  store i64 %conv, i64* %i, align 8, !dbg !1968, !tbaa !1027
  %9 = load i64, i64* %i, align 8, !dbg !1969, !tbaa !1027
  %cmp2 = icmp ne i64 %9, 0, !dbg !1971
  br i1 %cmp2, label %if.then.4, label %if.end.8, !dbg !1972

if.then.4:                                        ; preds = %if.end
  %10 = load i64, i64* %i, align 8, !dbg !1973, !tbaa !1027
  %cmp5 = icmp sgt i64 %10, 0, !dbg !1975
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1973

cond.true:                                        ; preds = %if.then.4
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)), !dbg !1976
  br label %cond.end, !dbg !1973

cond.false:                                       ; preds = %if.then.4
  br label %cond.end, !dbg !1978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call7, %cond.true ], [ null, %cond.false ], !dbg !1973
  store %struct._object* %cond, %struct._object** %retval, !dbg !1980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138, !dbg !1983

if.end.8:                                         ; preds = %if.end
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer), !dbg !1984
  %overallocate = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8, !dbg !1985
  store i8 1, i8* %overallocate, align 1, !dbg !1986, !tbaa !1987
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !1989, !tbaa !979
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*, !dbg !1991
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !1992
  %13 = load i64, i64* %ob_size9, align 8, !dbg !1992, !tbaa !1214
  %cmp10 = icmp sgt i64 %13, 1, !dbg !1993
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !1994

if.then.12:                                       ; preds = %if.end.8
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !1995, !tbaa !979
  %15 = bitcast %struct.PyTupleObject* %14 to %struct.PyVarObject*, !dbg !1997
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1, !dbg !1998
  %16 = load i64, i64* %ob_size13, align 8, !dbg !1998, !tbaa !1214
  %sub = sub i64 %16, 1, !dbg !1999
  %mul = mul i64 3, %sub, !dbg !2000
  %add = add i64 2, %mul, !dbg !2001
  %add14 = add i64 %add, 1, !dbg !2002
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6, !dbg !2003
  store i64 %add14, i64* %min_length, align 8, !dbg !2004, !tbaa !2005
  br label %if.end.16, !dbg !2006

if.else:                                          ; preds = %if.end.8
  %min_length15 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6, !dbg !2007
  store i64 4, i64* %min_length15, align 8, !dbg !2009, !tbaa !2005
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %call17 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 40), !dbg !2010
  %cmp18 = icmp slt i32 %call17, 0, !dbg !2012
  br i1 %cmp18, label %if.then.20, label %if.end.21, !dbg !2013

if.then.20:                                       ; preds = %if.end.16
  br label %error, !dbg !2014

if.end.21:                                        ; preds = %if.end.16
  store i64 0, i64* %i, align 8, !dbg !2015, !tbaa !1027
  br label %for.cond, !dbg !2016

for.cond:                                         ; preds = %for.inc, %if.end.21
  %17 = load i64, i64* %i, align 8, !dbg !2017, !tbaa !1027
  %18 = load i64, i64* %n, align 8, !dbg !2020, !tbaa !1027
  %cmp22 = icmp slt i64 %17, %18, !dbg !2021
  br i1 %cmp22, label %for.body, label %for.end, !dbg !2022

for.body:                                         ; preds = %for.cond
  %19 = bitcast %struct._object** %s to i8*, !dbg !2023
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !2023
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !686, metadata !983), !dbg !2024
  %20 = load i64, i64* %i, align 8, !dbg !2025, !tbaa !1027
  %cmp24 = icmp sgt i64 %20, 0, !dbg !2027
  br i1 %cmp24, label %if.then.26, label %if.end.32, !dbg !2028

if.then.26:                                       ; preds = %for.body
  %call27 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2), !dbg !2029
  %cmp28 = icmp slt i32 %call27, 0, !dbg !2032
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !2033

if.then.30:                                       ; preds = %if.then.26
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2034

if.end.31:                                        ; preds = %if.then.26
  br label %if.end.32, !dbg !2035

if.end.32:                                        ; preds = %if.end.31, %for.body
  %21 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2036
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !2036
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !690, metadata !983), !dbg !2037
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2037, !tbaa !979
  %22 = bitcast i8** %result to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !2038
  call void @llvm.dbg.declare(metadata i8** %result, metadata !693, metadata !983), !dbg !2039
  %23 = bitcast i8*** %volatile_data to i8*, !dbg !2040
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !2040
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !694, metadata !983), !dbg !2041
  %24 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2042, !tbaa !979
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %24, i32 0, i32 0, !dbg !2043
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2041, !tbaa !979
  %25 = bitcast i32* %order to i8*, !dbg !2044
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !2044
  call void @llvm.dbg.declare(metadata i32* %order, metadata !695, metadata !983), !dbg !2045
  store i32 0, i32* %order, align 4, !dbg !2045, !tbaa !1785
  %26 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2046, !tbaa !979
  %27 = bitcast %struct._Py_atomic_address* %26 to i8*, !dbg !2046
  %28 = load i32, i32* %order, align 4, !dbg !2047, !tbaa !1785
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %27, i32 %28), !dbg !2048
  %29 = load i32, i32* %order, align 4, !dbg !2049, !tbaa !1785
  switch i32 %29, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2050

sw.bb:                                            ; preds = %if.end.32, %if.end.32, %if.end.32
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2051
  br label %sw.epilog, !dbg !2056

sw.default:                                       ; preds = %if.end.32
  br label %sw.epilog, !dbg !2057

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %30 = load i8**, i8*** %volatile_data, align 8, !dbg !2059, !tbaa !979
  %31 = load volatile i8*, i8** %30, align 8, !dbg !2062, !tbaa !979
  store i8* %31, i8** %result, align 8, !dbg !2063, !tbaa !979
  %32 = load i32, i32* %order, align 4, !dbg !2064, !tbaa !1785
  switch i32 %32, label %sw.default.34 [
    i32 1, label %sw.bb.33
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.33
  ], !dbg !2065

sw.bb.33:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2066
  br label %sw.epilog.35, !dbg !2071

sw.default.34:                                    ; preds = %sw.epilog
  br label %sw.epilog.35, !dbg !2072

sw.epilog.35:                                     ; preds = %sw.default.34, %sw.bb.33
  %33 = load i8*, i8** %result, align 8, !dbg !2074, !tbaa !979
  store i8* %33, i8** %tmp, !dbg !2077, !tbaa !979
  %34 = bitcast i32* %order to i8*, !dbg !2078
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !2078
  %35 = bitcast i8*** %volatile_data to i8*, !dbg !2078
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2078
  %36 = bitcast i8** %result to i8*, !dbg !2078
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !2078
  %37 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2078
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !2078
  %38 = load i8*, i8** %tmp, !dbg !2079, !tbaa !979
  %39 = bitcast i8* %38 to %struct._ts*, !dbg !2080
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %39, i32 0, i32 4, !dbg !2081
  %40 = load i32, i32* %recursion_depth, align 4, !dbg !2082, !tbaa !2083
  %inc = add i32 %40, 1, !dbg !2082
  store i32 %inc, i32* %recursion_depth, align 4, !dbg !2082, !tbaa !2083
  %41 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !2084, !tbaa !991
  %cmp36 = icmp sgt i32 %inc, %41, !dbg !2085
  br i1 %cmp36, label %land.lhs.true, label %if.end.40, !dbg !2086

land.lhs.true:                                    ; preds = %sw.epilog.35
  %call38 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)), !dbg !2087
  %tobool = icmp ne i32 %call38, 0, !dbg !2087
  br i1 %tobool, label %if.then.39, label %if.end.40, !dbg !2089

if.then.39:                                       ; preds = %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2090

if.end.40:                                        ; preds = %land.lhs.true, %sw.epilog.35
  %42 = load i64, i64* %i, align 8, !dbg !2091, !tbaa !1027
  %43 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !2092, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1, !dbg !2093
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %42, !dbg !2092
  %44 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2092, !tbaa !979
  %call41 = call %struct._object* @PyObject_Repr(%struct._object* %44), !dbg !2094
  store %struct._object* %call41, %struct._object** %s, align 8, !dbg !2095, !tbaa !979
  br label %do.body, !dbg !2096

do.body:                                          ; preds = %if.end.40
  %45 = bitcast %struct._Py_atomic_address** %atomic_val43 to i8*, !dbg !2097
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2097
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val43, metadata !696, metadata !983), !dbg !2099
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val43, align 8, !dbg !2099, !tbaa !979
  %46 = bitcast i8** %result45 to i8*, !dbg !2100
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !2100
  call void @llvm.dbg.declare(metadata i8** %result45, metadata !700, metadata !983), !dbg !2101
  %47 = bitcast i8*** %volatile_data47 to i8*, !dbg !2102
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !2102
  call void @llvm.dbg.declare(metadata i8*** %volatile_data47, metadata !701, metadata !983), !dbg !2103
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val43, align 8, !dbg !2104, !tbaa !979
  %_value48 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %48, i32 0, i32 0, !dbg !2105
  store i8** %_value48, i8*** %volatile_data47, align 8, !dbg !2103, !tbaa !979
  %49 = bitcast i32* %order50 to i8*, !dbg !2106
  call void @llvm.lifetime.start(i64 4, i8* %49) #2, !dbg !2106
  call void @llvm.dbg.declare(metadata i32* %order50, metadata !702, metadata !983), !dbg !2107
  store i32 0, i32* %order50, align 4, !dbg !2107, !tbaa !1785
  %50 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val43, align 8, !dbg !2108, !tbaa !979
  %51 = bitcast %struct._Py_atomic_address* %50 to i8*, !dbg !2108
  %52 = load i32, i32* %order50, align 4, !dbg !2109, !tbaa !1785
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %51, i32 %52), !dbg !2110
  %53 = load i32, i32* %order50, align 4, !dbg !2111, !tbaa !1785
  switch i32 %53, label %sw.default.52 [
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.51
    i32 4, label %sw.bb.51
  ], !dbg !2112

sw.bb.51:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2113
  br label %sw.epilog.53, !dbg !2118

sw.default.52:                                    ; preds = %do.body
  br label %sw.epilog.53, !dbg !2119

sw.epilog.53:                                     ; preds = %sw.default.52, %sw.bb.51
  %54 = load i8**, i8*** %volatile_data47, align 8, !dbg !2121, !tbaa !979
  %55 = load volatile i8*, i8** %54, align 8, !dbg !2124, !tbaa !979
  store i8* %55, i8** %result45, align 8, !dbg !2125, !tbaa !979
  %56 = load i32, i32* %order50, align 4, !dbg !2126, !tbaa !1785
  switch i32 %56, label %sw.default.55 [
    i32 1, label %sw.bb.54
    i32 3, label %sw.bb.54
    i32 4, label %sw.bb.54
  ], !dbg !2127

sw.bb.54:                                         ; preds = %sw.epilog.53, %sw.epilog.53, %sw.epilog.53
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2128
  br label %sw.epilog.56, !dbg !2133

sw.default.55:                                    ; preds = %sw.epilog.53
  br label %sw.epilog.56, !dbg !2134

sw.epilog.56:                                     ; preds = %sw.default.55, %sw.bb.54
  %57 = load i8*, i8** %result45, align 8, !dbg !2136, !tbaa !979
  store i8* %57, i8** %tmp57, !dbg !2139, !tbaa !979
  %58 = bitcast i32* %order50 to i8*, !dbg !2140
  call void @llvm.lifetime.end(i64 4, i8* %58) #2, !dbg !2140
  %59 = bitcast i8*** %volatile_data47 to i8*, !dbg !2140
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !2140
  %60 = bitcast i8** %result45 to i8*, !dbg !2140
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !2140
  %61 = bitcast %struct._Py_atomic_address** %atomic_val43 to i8*, !dbg !2140
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2140
  %62 = load i8*, i8** %tmp57, !dbg !2141, !tbaa !979
  %63 = bitcast i8* %62 to %struct._ts*, !dbg !2142
  %recursion_depth58 = getelementptr inbounds %struct._ts, %struct._ts* %63, i32 0, i32 4, !dbg !2143
  %64 = load i32, i32* %recursion_depth58, align 4, !dbg !2144, !tbaa !2083
  %dec = add i32 %64, -1, !dbg !2144
  store i32 %dec, i32* %recursion_depth58, align 4, !dbg !2144, !tbaa !2083
  %65 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !2145, !tbaa !991
  %cmp59 = icmp sgt i32 %65, 100, !dbg !2146
  br i1 %cmp59, label %cond.true.61, label %cond.false.63, !dbg !2147

cond.true.61:                                     ; preds = %sw.epilog.56
  %66 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !2148, !tbaa !991
  %sub62 = sub i32 %66, 50, !dbg !2150
  br label %cond.end.65, !dbg !2147

cond.false.63:                                    ; preds = %sw.epilog.56
  %67 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !2151, !tbaa !991
  %shr = ashr i32 %67, 2, !dbg !2153
  %mul64 = mul i32 3, %shr, !dbg !2154
  br label %cond.end.65, !dbg !2147

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i32 [ %sub62, %cond.true.61 ], [ %mul64, %cond.false.63 ], !dbg !2147
  %cmp67 = icmp slt i32 %dec, %cond66, !dbg !2155
  br i1 %cmp67, label %if.then.69, label %if.end.86, !dbg !2158

if.then.69:                                       ; preds = %cond.end.65
  %68 = bitcast %struct._Py_atomic_address** %atomic_val71 to i8*, !dbg !2159
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2159
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val71, metadata !703, metadata !983), !dbg !2161
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val71, align 8, !dbg !2161, !tbaa !979
  %69 = bitcast i8** %result73 to i8*, !dbg !2162
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !2162
  call void @llvm.dbg.declare(metadata i8** %result73, metadata !705, metadata !983), !dbg !2163
  %70 = bitcast i8*** %volatile_data75 to i8*, !dbg !2164
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !2164
  call void @llvm.dbg.declare(metadata i8*** %volatile_data75, metadata !706, metadata !983), !dbg !2165
  %71 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val71, align 8, !dbg !2166, !tbaa !979
  %_value76 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %71, i32 0, i32 0, !dbg !2167
  store i8** %_value76, i8*** %volatile_data75, align 8, !dbg !2165, !tbaa !979
  %72 = bitcast i32* %order78 to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 4, i8* %72) #2, !dbg !2168
  call void @llvm.dbg.declare(metadata i32* %order78, metadata !707, metadata !983), !dbg !2169
  store i32 0, i32* %order78, align 4, !dbg !2169, !tbaa !1785
  %73 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val71, align 8, !dbg !2170, !tbaa !979
  %74 = bitcast %struct._Py_atomic_address* %73 to i8*, !dbg !2170
  %75 = load i32, i32* %order78, align 4, !dbg !2171, !tbaa !1785
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %74, i32 %75), !dbg !2172
  %76 = load i32, i32* %order78, align 4, !dbg !2173, !tbaa !1785
  switch i32 %76, label %sw.default.80 [
    i32 2, label %sw.bb.79
    i32 3, label %sw.bb.79
    i32 4, label %sw.bb.79
  ], !dbg !2174

sw.bb.79:                                         ; preds = %if.then.69, %if.then.69, %if.then.69
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2175
  br label %sw.epilog.81, !dbg !2180

sw.default.80:                                    ; preds = %if.then.69
  br label %sw.epilog.81, !dbg !2181

sw.epilog.81:                                     ; preds = %sw.default.80, %sw.bb.79
  %77 = load i8**, i8*** %volatile_data75, align 8, !dbg !2183, !tbaa !979
  %78 = load volatile i8*, i8** %77, align 8, !dbg !2186, !tbaa !979
  store i8* %78, i8** %result73, align 8, !dbg !2187, !tbaa !979
  %79 = load i32, i32* %order78, align 4, !dbg !2188, !tbaa !1785
  switch i32 %79, label %sw.default.83 [
    i32 1, label %sw.bb.82
    i32 3, label %sw.bb.82
    i32 4, label %sw.bb.82
  ], !dbg !2189

sw.bb.82:                                         ; preds = %sw.epilog.81, %sw.epilog.81, %sw.epilog.81
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2190
  br label %sw.epilog.84, !dbg !2195

sw.default.83:                                    ; preds = %sw.epilog.81
  br label %sw.epilog.84, !dbg !2196

sw.epilog.84:                                     ; preds = %sw.default.83, %sw.bb.82
  %80 = load i8*, i8** %result73, align 8, !dbg !2198, !tbaa !979
  store i8* %80, i8** %tmp85, !dbg !2201, !tbaa !979
  %81 = bitcast i32* %order78 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 4, i8* %81) #2, !dbg !2202
  %82 = bitcast i8*** %volatile_data75 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !2202
  %83 = bitcast i8** %result73 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !2202
  %84 = bitcast %struct._Py_atomic_address** %atomic_val71 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !2202
  %85 = load i8*, i8** %tmp85, !dbg !2203, !tbaa !979
  %86 = bitcast i8* %85 to %struct._ts*, !dbg !2204
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %86, i32 0, i32 5, !dbg !2205
  store i8 0, i8* %overflowed, align 1, !dbg !2206, !tbaa !2207
  br label %if.end.86, !dbg !2208

if.end.86:                                        ; preds = %sw.epilog.84, %cond.end.65
  br label %do.cond, !dbg !2209

do.cond:                                          ; preds = %if.end.86
  br label %do.end, !dbg !2212

do.end:                                           ; preds = %do.cond
  %87 = load %struct._object*, %struct._object** %s, align 8, !dbg !2214, !tbaa !979
  %cmp87 = icmp eq %struct._object* %87, null, !dbg !2216
  br i1 %cmp87, label %if.then.89, label %if.end.90, !dbg !2217

if.then.89:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2218

if.end.90:                                        ; preds = %do.end
  %88 = load %struct._object*, %struct._object** %s, align 8, !dbg !2219, !tbaa !979
  %call91 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %88), !dbg !2220
  %cmp92 = icmp slt i32 %call91, 0, !dbg !2221
  br i1 %cmp92, label %if.then.94, label %if.end.105, !dbg !2222

if.then.94:                                       ; preds = %if.end.90
  br label %do.body.95, !dbg !2223

do.body.95:                                       ; preds = %if.then.94
  %89 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2224
  call void @llvm.lifetime.start(i64 8, i8* %89) #2, !dbg !2224
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !708, metadata !983), !dbg !2226
  %90 = load %struct._object*, %struct._object** %s, align 8, !dbg !2227, !tbaa !979
  store %struct._object* %90, %struct._object** %_py_decref_tmp, align 8, !dbg !2226, !tbaa !979
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2228, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !2230
  %92 = load i64, i64* %ob_refcnt, align 8, !dbg !2231, !tbaa !1054
  %dec97 = add i64 %92, -1, !dbg !2231
  store i64 %dec97, i64* %ob_refcnt, align 8, !dbg !2231, !tbaa !1054
  %cmp98 = icmp ne i64 %dec97, 0, !dbg !2232
  br i1 %cmp98, label %if.then.100, label %if.else.101, !dbg !2233

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.102, !dbg !2234

if.else.101:                                      ; preds = %do.body.95
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2236, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !2238
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2238, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !2239
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2239, !tbaa !1295
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2240, !tbaa !979
  call void %95(%struct._object* %96), !dbg !2241
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  %97 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2242
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2242
  br label %do.cond.103, !dbg !2244

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !2245

do.end.104:                                       ; preds = %do.cond.103
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2247

if.end.105:                                       ; preds = %if.end.90
  br label %do.body.106, !dbg !2248

do.body.106:                                      ; preds = %if.end.105
  %98 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 8, i8* %98) #2, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp108, metadata !712, metadata !983), !dbg !2251
  %99 = load %struct._object*, %struct._object** %s, align 8, !dbg !2252, !tbaa !979
  store %struct._object* %99, %struct._object** %_py_decref_tmp108, align 8, !dbg !2251, !tbaa !979
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !2253, !tbaa !979
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0, !dbg !2255
  %101 = load i64, i64* %ob_refcnt109, align 8, !dbg !2256, !tbaa !1054
  %dec110 = add i64 %101, -1, !dbg !2256
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !2256, !tbaa !1054
  %cmp111 = icmp ne i64 %dec110, 0, !dbg !2257
  br i1 %cmp111, label %if.then.113, label %if.else.114, !dbg !2258

if.then.113:                                      ; preds = %do.body.106
  br label %if.end.117, !dbg !2259

if.else.114:                                      ; preds = %do.body.106
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !2261, !tbaa !979
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1, !dbg !2263
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8, !dbg !2263, !tbaa !1202
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4, !dbg !2264
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8, !dbg !2264, !tbaa !1295
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !2265, !tbaa !979
  call void %104(%struct._object* %105), !dbg !2266
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  %106 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !2267
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !2267
  br label %do.cond.118, !dbg !2269

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119, !dbg !2270

do.end.119:                                       ; preds = %do.cond.118
  store i32 0, i32* %cleanup.dest.slot, !dbg !2272
  br label %cleanup, !dbg !2272

cleanup:                                          ; preds = %do.end.104, %if.then.89, %if.then.39, %if.then.30, %do.end.119
  %107 = bitcast %struct._object** %s to i8*, !dbg !2273
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !2273
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.138 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2274

for.inc:                                          ; preds = %cleanup.cont
  %108 = load i64, i64* %i, align 8, !dbg !2275, !tbaa !1027
  %inc120 = add i64 %108, 1, !dbg !2275
  store i64 %inc120, i64* %i, align 8, !dbg !2275, !tbaa !1027
  br label %for.cond, !dbg !2276

for.end:                                          ; preds = %for.cond
  %overallocate121 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8, !dbg !2277
  store i8 0, i8* %overallocate121, align 1, !dbg !2278, !tbaa !1987
  %109 = load i64, i64* %n, align 8, !dbg !2279, !tbaa !1027
  %cmp122 = icmp sgt i64 %109, 1, !dbg !2281
  br i1 %cmp122, label %if.then.124, label %if.else.130, !dbg !2282

if.then.124:                                      ; preds = %for.end
  %call125 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 41), !dbg !2283
  %cmp126 = icmp slt i32 %call125, 0, !dbg !2286
  br i1 %cmp126, label %if.then.128, label %if.end.129, !dbg !2287

if.then.128:                                      ; preds = %if.then.124
  br label %error, !dbg !2288

if.end.129:                                       ; preds = %if.then.124
  br label %if.end.136, !dbg !2289

if.else.130:                                      ; preds = %for.end
  %call131 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64 2), !dbg !2290
  %cmp132 = icmp slt i32 %call131, 0, !dbg !2293
  br i1 %cmp132, label %if.then.134, label %if.end.135, !dbg !2294

if.then.134:                                      ; preds = %if.else.130
  br label %error, !dbg !2295

if.end.135:                                       ; preds = %if.else.130
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.129
  %110 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !2296, !tbaa !979
  %111 = bitcast %struct.PyTupleObject* %110 to %struct._object*, !dbg !2297
  call void @Py_ReprLeave(%struct._object* %111), !dbg !2298
  %call137 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer), !dbg !2299
  store %struct._object* %call137, %struct._object** %retval, !dbg !2300
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138, !dbg !2300

error:                                            ; preds = %cleanup, %if.then.134, %if.then.128, %if.then.20
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer), !dbg !2301
  %112 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !2302, !tbaa !979
  %113 = bitcast %struct.PyTupleObject* %112 to %struct._object*, !dbg !2303
  call void @Py_ReprLeave(%struct._object* %113), !dbg !2304
  store %struct._object* null, %struct._object** %retval, !dbg !2305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138, !dbg !2305

cleanup.138:                                      ; preds = %error, %if.end.136, %cleanup, %cond.end, %if.then
  %114 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 56, i8* %114) #2, !dbg !2306
  %115 = bitcast i64* %n to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 8, i8* %115) #2, !dbg !2306
  %116 = bitcast i64* %i to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 8, i8* %116) #2, !dbg !2306
  %117 = load %struct._object*, %struct._object** %retval, !dbg !2306
  ret %struct._object* %117, !dbg !2306
}

; Function Attrs: nounwind uwtable
define internal i64 @tuplehash(%struct.PyTupleObject* %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca %struct.PyTupleObject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %len = alloca i64, align 8
  %p = alloca %struct._object**, align 8
  %mult = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %v.addr, metadata !785, metadata !983), !dbg !2307
  %0 = bitcast i64* %x to i8*, !dbg !2308
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2308
  call void @llvm.dbg.declare(metadata i64* %x, metadata !786, metadata !983), !dbg !2309
  %1 = bitcast i64* %y to i8*, !dbg !2310
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2310
  call void @llvm.dbg.declare(metadata i64* %y, metadata !787, metadata !983), !dbg !2311
  %2 = bitcast i64* %len to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2312
  call void @llvm.dbg.declare(metadata i64* %len, metadata !788, metadata !983), !dbg !2313
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !2314, !tbaa !979
  %4 = bitcast %struct.PyTupleObject* %3 to %struct.PyVarObject*, !dbg !2315
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !2316
  %5 = load i64, i64* %ob_size, align 8, !dbg !2316, !tbaa !1214
  store i64 %5, i64* %len, align 8, !dbg !2313, !tbaa !1027
  %6 = bitcast %struct._object*** %p to i8*, !dbg !2317
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2317
  call void @llvm.dbg.declare(metadata %struct._object*** %p, metadata !789, metadata !983), !dbg !2318
  %7 = bitcast i64* %mult to i8*, !dbg !2319
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2319
  call void @llvm.dbg.declare(metadata i64* %mult, metadata !790, metadata !983), !dbg !2320
  store i64 1000003, i64* %mult, align 8, !dbg !2320, !tbaa !1027
  store i64 3430008, i64* %x, align 8, !dbg !2321, !tbaa !1027
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !2322, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !2323
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !2322
  store %struct._object** %arraydecay, %struct._object*** %p, align 8, !dbg !2324, !tbaa !979
  br label %while.cond, !dbg !2325

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i64, i64* %len, align 8, !dbg !2326, !tbaa !1027
  %dec = add i64 %9, -1, !dbg !2326
  store i64 %dec, i64* %len, align 8, !dbg !2326, !tbaa !1027
  %cmp = icmp sge i64 %dec, 0, !dbg !2329
  br i1 %cmp, label %while.body, label %while.end, !dbg !2325

while.body:                                       ; preds = %while.cond
  %10 = load %struct._object**, %struct._object*** %p, align 8, !dbg !2330, !tbaa !979
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %10, i32 1, !dbg !2330
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8, !dbg !2330, !tbaa !979
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !2332, !tbaa !979
  %call = call i64 @PyObject_Hash(%struct._object* %11), !dbg !2333
  store i64 %call, i64* %y, align 8, !dbg !2334, !tbaa !1027
  %12 = load i64, i64* %y, align 8, !dbg !2335, !tbaa !1027
  %cmp1 = icmp eq i64 %12, -1, !dbg !2337
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2338

if.then:                                          ; preds = %while.body
  store i64 -1, i64* %retval, !dbg !2339
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2339

if.end:                                           ; preds = %while.body
  %13 = load i64, i64* %x, align 8, !dbg !2340, !tbaa !1027
  %14 = load i64, i64* %y, align 8, !dbg !2341, !tbaa !1027
  %xor = xor i64 %13, %14, !dbg !2342
  %15 = load i64, i64* %mult, align 8, !dbg !2343, !tbaa !1027
  %mul = mul i64 %xor, %15, !dbg !2344
  store i64 %mul, i64* %x, align 8, !dbg !2345, !tbaa !1027
  %16 = load i64, i64* %len, align 8, !dbg !2346, !tbaa !1027
  %add = add i64 82520, %16, !dbg !2347
  %17 = load i64, i64* %len, align 8, !dbg !2348, !tbaa !1027
  %add2 = add i64 %add, %17, !dbg !2349
  %18 = load i64, i64* %mult, align 8, !dbg !2350, !tbaa !1027
  %add3 = add i64 %18, %add2, !dbg !2350
  store i64 %add3, i64* %mult, align 8, !dbg !2350, !tbaa !1027
  br label %while.cond, !dbg !2325

while.end:                                        ; preds = %while.cond
  %19 = load i64, i64* %x, align 8, !dbg !2351, !tbaa !1027
  %add4 = add i64 %19, 97531, !dbg !2351
  store i64 %add4, i64* %x, align 8, !dbg !2351, !tbaa !1027
  %20 = load i64, i64* %x, align 8, !dbg !2352, !tbaa !1027
  %cmp5 = icmp eq i64 %20, -1, !dbg !2354
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2355

if.then.6:                                        ; preds = %while.end
  store i64 -2, i64* %x, align 8, !dbg !2356, !tbaa !1027
  br label %if.end.7, !dbg !2357

if.end.7:                                         ; preds = %if.then.6, %while.end
  %21 = load i64, i64* %x, align 8, !dbg !2358, !tbaa !1027
  store i64 %21, i64* %retval, !dbg !2359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2359

cleanup:                                          ; preds = %if.end.7, %if.then
  %22 = bitcast i64* %mult to i8*, !dbg !2360
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !2360
  %23 = bitcast %struct._object*** %p to i8*, !dbg !2360
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !2360
  %24 = bitcast i64* %len to i8*, !dbg !2360
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2360
  %25 = bitcast i64* %y to i8*, !dbg !2360
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2360
  %26 = bitcast i64* %x to i8*, !dbg !2360
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2360
  %27 = load i64, i64* %retval, !dbg !2360
  ret i64 %27, !dbg !2360
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tupletraverse(%struct.PyTupleObject* %o, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.PyTupleObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyTupleObject* %o, %struct.PyTupleObject** %o.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %o.addr, metadata !795, metadata !983), !dbg !2361
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !796, metadata !983), !dbg !2362
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !797, metadata !983), !dbg !2363
  %0 = bitcast i64* %i to i8*, !dbg !2364
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2364
  call void @llvm.dbg.declare(metadata i64* %i, metadata !798, metadata !983), !dbg !2365
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8, !dbg !2366, !tbaa !979
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*, !dbg !2367
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1, !dbg !2368
  %3 = load i64, i64* %ob_size, align 8, !dbg !2368, !tbaa !1214
  store i64 %3, i64* %i, align 8, !dbg !2369, !tbaa !1027
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %do.end, %entry
  %4 = load i64, i64* %i, align 8, !dbg !2371, !tbaa !1027
  %dec = add i64 %4, -1, !dbg !2371
  store i64 %dec, i64* %i, align 8, !dbg !2371, !tbaa !1027
  %cmp = icmp sge i64 %dec, 0, !dbg !2374
  br i1 %cmp, label %for.body, label %for.end, !dbg !2375

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !2376

do.body:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !2377, !tbaa !1027
  %6 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8, !dbg !2379, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1, !dbg !2380
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %5, !dbg !2379
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2379, !tbaa !979
  %tobool = icmp ne %struct._object* %7, null, !dbg !2379
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !2381

if.then:                                          ; preds = %do.body
  %8 = bitcast i32* %vret to i8*, !dbg !2382
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !2382
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !799, metadata !983), !dbg !2384
  %9 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2385, !tbaa !979
  %10 = load i64, i64* %i, align 8, !dbg !2386, !tbaa !1027
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8, !dbg !2387, !tbaa !979
  %ob_item1 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !2388
  %arrayidx2 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item1, i32 0, i64 %10, !dbg !2387
  %12 = load %struct._object*, %struct._object** %arrayidx2, align 8, !dbg !2387, !tbaa !979
  %13 = load i8*, i8** %arg.addr, align 8, !dbg !2389, !tbaa !979
  %call = call i32 %9(%struct._object* %12, i8* %13), !dbg !2385
  store i32 %call, i32* %vret, align 4, !dbg !2384, !tbaa !991
  %14 = load i32, i32* %vret, align 4, !dbg !2390, !tbaa !991
  %tobool3 = icmp ne i32 %14, 0, !dbg !2390
  br i1 %tobool3, label %if.then.4, label %if.end, !dbg !2392

if.then.4:                                        ; preds = %if.then
  %15 = load i32, i32* %vret, align 4, !dbg !2393, !tbaa !991
  store i32 %15, i32* %retval, !dbg !2395
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2395

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2396
  br label %cleanup, !dbg !2396

cleanup:                                          ; preds = %if.end, %if.then.4
  %16 = bitcast i32* %vret to i8*, !dbg !2398
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !2398
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5, !dbg !2401

if.end.5:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !2402

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !2405

do.end:                                           ; preds = %do.cond
  br label %for.cond, !dbg !2407

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6, !dbg !2408

cleanup.6:                                        ; preds = %for.end, %cleanup
  %17 = bitcast i64* %i to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2409
  %18 = load i32, i32* %retval, !dbg !2409
  ret i32 %18, !dbg !2409
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerichcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %vt = alloca %struct.PyTupleObject*, align 8
  %wt = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %vlen = alloca i64, align 8
  %wlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %k = alloca i32, align 4
  %cmp20 = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !807, metadata !983), !dbg !2410
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !808, metadata !983), !dbg !2411
  store i32 %op, i32* %op.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !809, metadata !983), !dbg !2412
  %0 = bitcast %struct.PyTupleObject** %vt to i8*, !dbg !2413
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %vt, metadata !810, metadata !983), !dbg !2414
  %1 = bitcast %struct.PyTupleObject** %wt to i8*, !dbg !2413
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %wt, metadata !811, metadata !983), !dbg !2415
  %2 = bitcast i64* %i to i8*, !dbg !2416
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2416
  call void @llvm.dbg.declare(metadata i64* %i, metadata !812, metadata !983), !dbg !2417
  %3 = bitcast i64* %vlen to i8*, !dbg !2418
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2418
  call void @llvm.dbg.declare(metadata i64* %vlen, metadata !813, metadata !983), !dbg !2419
  %4 = bitcast i64* %wlen to i8*, !dbg !2418
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2418
  call void @llvm.dbg.declare(metadata i64* %wlen, metadata !814, metadata !983), !dbg !2420
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2421, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2423
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2423, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !2424
  %7 = load i64, i64* %tp_flags, align 8, !dbg !2424, !tbaa !1204
  %and = and i64 %7, 67108864, !dbg !2425
  %cmp = icmp ne i64 %and, 0, !dbg !2426
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2427

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2428, !tbaa !979
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2430
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2430, !tbaa !1202
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !2431
  %10 = load i64, i64* %tp_flags2, align 8, !dbg !2431, !tbaa !1204
  %and3 = and i64 %10, 67108864, !dbg !2432
  %cmp4 = icmp ne i64 %and3, 0, !dbg !2433
  br i1 %cmp4, label %if.end, label %if.then, !dbg !2434

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2435, !tbaa !1054
  %inc = add i64 %11, 1, !dbg !2435
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2435, !tbaa !1054
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !2436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !2436

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2437, !tbaa !979
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*, !dbg !2438
  store %struct.PyTupleObject* %13, %struct.PyTupleObject** %vt, align 8, !dbg !2439, !tbaa !979
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2440, !tbaa !979
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*, !dbg !2441
  store %struct.PyTupleObject* %15, %struct.PyTupleObject** %wt, align 8, !dbg !2442, !tbaa !979
  %16 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8, !dbg !2443, !tbaa !979
  %17 = bitcast %struct.PyTupleObject* %16 to %struct.PyVarObject*, !dbg !2444
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1, !dbg !2445
  %18 = load i64, i64* %ob_size, align 8, !dbg !2445, !tbaa !1214
  store i64 %18, i64* %vlen, align 8, !dbg !2446, !tbaa !1027
  %19 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8, !dbg !2447, !tbaa !979
  %20 = bitcast %struct.PyTupleObject* %19 to %struct.PyVarObject*, !dbg !2448
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1, !dbg !2449
  %21 = load i64, i64* %ob_size5, align 8, !dbg !2449, !tbaa !1214
  store i64 %21, i64* %wlen, align 8, !dbg !2450, !tbaa !1027
  store i64 0, i64* %i, align 8, !dbg !2451, !tbaa !1027
  br label %for.cond, !dbg !2452

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i64, i64* %i, align 8, !dbg !2453, !tbaa !1027
  %23 = load i64, i64* %vlen, align 8, !dbg !2456, !tbaa !1027
  %cmp6 = icmp slt i64 %22, %23, !dbg !2457
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !2458

land.rhs:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8, !dbg !2459, !tbaa !1027
  %25 = load i64, i64* %wlen, align 8, !dbg !2461, !tbaa !1027
  %cmp7 = icmp slt i64 %24, %25, !dbg !2462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %26, label %for.body, label %for.end, !dbg !2463

for.body:                                         ; preds = %land.end
  %27 = bitcast i32* %k to i8*, !dbg !2465
  call void @llvm.lifetime.start(i64 4, i8* %27) #2, !dbg !2465
  call void @llvm.dbg.declare(metadata i32* %k, metadata !815, metadata !983), !dbg !2466
  %28 = load i64, i64* %i, align 8, !dbg !2467, !tbaa !1027
  %29 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8, !dbg !2468, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !2469
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %28, !dbg !2468
  %30 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2468, !tbaa !979
  %31 = load i64, i64* %i, align 8, !dbg !2470, !tbaa !1027
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8, !dbg !2471, !tbaa !979
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1, !dbg !2472
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 %31, !dbg !2471
  %33 = load %struct._object*, %struct._object** %arrayidx9, align 8, !dbg !2471, !tbaa !979
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %30, %struct._object* %33, i32 2), !dbg !2473
  store i32 %call, i32* %k, align 4, !dbg !2466, !tbaa !991
  %34 = load i32, i32* %k, align 4, !dbg !2474, !tbaa !991
  %cmp10 = icmp slt i32 %34, 0, !dbg !2476
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !2477

if.then.11:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval, !dbg !2478
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2478

if.end.12:                                        ; preds = %for.body
  %35 = load i32, i32* %k, align 4, !dbg !2479, !tbaa !991
  %tobool = icmp ne i32 %35, 0, !dbg !2479
  br i1 %tobool, label %if.end.14, label %if.then.13, !dbg !2481

if.then.13:                                       ; preds = %if.end.12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2482

if.end.14:                                        ; preds = %if.end.12
  store i32 0, i32* %cleanup.dest.slot, !dbg !2483
  br label %cleanup, !dbg !2483

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.11
  %36 = bitcast i32* %k to i8*, !dbg !2484
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !2484
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2485

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i64, i64* %i, align 8, !dbg !2486, !tbaa !1027
  %inc15 = add i64 %37, 1, !dbg !2486
  store i64 %inc15, i64* %i, align 8, !dbg !2486, !tbaa !1027
  br label %for.cond, !dbg !2487

for.end:                                          ; preds = %cleanup, %land.end
  %38 = load i64, i64* %i, align 8, !dbg !2488, !tbaa !1027
  %39 = load i64, i64* %vlen, align 8, !dbg !2489, !tbaa !1027
  %cmp16 = icmp sge i64 %38, %39, !dbg !2490
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17, !dbg !2491

lor.lhs.false.17:                                 ; preds = %for.end
  %40 = load i64, i64* %i, align 8, !dbg !2492, !tbaa !1027
  %41 = load i64, i64* %wlen, align 8, !dbg !2494, !tbaa !1027
  %cmp18 = icmp sge i64 %40, %41, !dbg !2495
  br i1 %cmp18, label %if.then.19, label %if.end.43, !dbg !2496

if.then.19:                                       ; preds = %lor.lhs.false.17, %for.end
  %42 = bitcast i32* %cmp20 to i8*, !dbg !2497
  call void @llvm.lifetime.start(i64 4, i8* %42) #2, !dbg !2497
  call void @llvm.dbg.declare(metadata i32* %cmp20, metadata !819, metadata !983), !dbg !2498
  %43 = bitcast %struct._object** %res to i8*, !dbg !2499
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2499
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !822, metadata !983), !dbg !2500
  %44 = load i32, i32* %op.addr, align 4, !dbg !2501, !tbaa !991
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.31
    i32 5, label %sw.bb.34
  ], !dbg !2502

sw.bb:                                            ; preds = %if.then.19
  %45 = load i64, i64* %vlen, align 8, !dbg !2503, !tbaa !1027
  %46 = load i64, i64* %wlen, align 8, !dbg !2505, !tbaa !1027
  %cmp21 = icmp slt i64 %45, %46, !dbg !2506
  %conv = zext i1 %cmp21 to i32, !dbg !2506
  store i32 %conv, i32* %cmp20, align 4, !dbg !2507, !tbaa !991
  br label %sw.epilog, !dbg !2508

sw.bb.22:                                         ; preds = %if.then.19
  %47 = load i64, i64* %vlen, align 8, !dbg !2509, !tbaa !1027
  %48 = load i64, i64* %wlen, align 8, !dbg !2510, !tbaa !1027
  %cmp23 = icmp sle i64 %47, %48, !dbg !2511
  %conv24 = zext i1 %cmp23 to i32, !dbg !2511
  store i32 %conv24, i32* %cmp20, align 4, !dbg !2512, !tbaa !991
  br label %sw.epilog, !dbg !2513

sw.bb.25:                                         ; preds = %if.then.19
  %49 = load i64, i64* %vlen, align 8, !dbg !2514, !tbaa !1027
  %50 = load i64, i64* %wlen, align 8, !dbg !2515, !tbaa !1027
  %cmp26 = icmp eq i64 %49, %50, !dbg !2516
  %conv27 = zext i1 %cmp26 to i32, !dbg !2516
  store i32 %conv27, i32* %cmp20, align 4, !dbg !2517, !tbaa !991
  br label %sw.epilog, !dbg !2518

sw.bb.28:                                         ; preds = %if.then.19
  %51 = load i64, i64* %vlen, align 8, !dbg !2519, !tbaa !1027
  %52 = load i64, i64* %wlen, align 8, !dbg !2520, !tbaa !1027
  %cmp29 = icmp ne i64 %51, %52, !dbg !2521
  %conv30 = zext i1 %cmp29 to i32, !dbg !2521
  store i32 %conv30, i32* %cmp20, align 4, !dbg !2522, !tbaa !991
  br label %sw.epilog, !dbg !2523

sw.bb.31:                                         ; preds = %if.then.19
  %53 = load i64, i64* %vlen, align 8, !dbg !2524, !tbaa !1027
  %54 = load i64, i64* %wlen, align 8, !dbg !2525, !tbaa !1027
  %cmp32 = icmp sgt i64 %53, %54, !dbg !2526
  %conv33 = zext i1 %cmp32 to i32, !dbg !2526
  store i32 %conv33, i32* %cmp20, align 4, !dbg !2527, !tbaa !991
  br label %sw.epilog, !dbg !2528

sw.bb.34:                                         ; preds = %if.then.19
  %55 = load i64, i64* %vlen, align 8, !dbg !2529, !tbaa !1027
  %56 = load i64, i64* %wlen, align 8, !dbg !2530, !tbaa !1027
  %cmp35 = icmp sge i64 %55, %56, !dbg !2531
  %conv36 = zext i1 %cmp35 to i32, !dbg !2531
  store i32 %conv36, i32* %cmp20, align 4, !dbg !2532, !tbaa !991
  br label %sw.epilog, !dbg !2533

sw.default:                                       ; preds = %if.then.19
  store %struct._object* null, %struct._object** %retval, !dbg !2534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2534

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.22, %sw.bb
  %57 = load i32, i32* %cmp20, align 4, !dbg !2535, !tbaa !991
  %tobool37 = icmp ne i32 %57, 0, !dbg !2535
  br i1 %tobool37, label %if.then.38, label %if.else, !dbg !2537

if.then.38:                                       ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !2538, !tbaa !979
  br label %if.end.39, !dbg !2539

if.else:                                          ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !2540, !tbaa !979
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  %58 = load %struct._object*, %struct._object** %res, align 8, !dbg !2541, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !2542
  %59 = load i64, i64* %ob_refcnt, align 8, !dbg !2543, !tbaa !1054
  %inc40 = add i64 %59, 1, !dbg !2543
  store i64 %inc40, i64* %ob_refcnt, align 8, !dbg !2543, !tbaa !1054
  %60 = load %struct._object*, %struct._object** %res, align 8, !dbg !2544, !tbaa !979
  store %struct._object* %60, %struct._object** %retval, !dbg !2545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2545

cleanup.41:                                       ; preds = %if.end.39, %sw.default
  %61 = bitcast %struct._object** %res to i8*, !dbg !2546
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2546
  %62 = bitcast i32* %cmp20 to i8*, !dbg !2546
  call void @llvm.lifetime.end(i64 4, i8* %62) #2, !dbg !2546
  br label %cleanup.59

if.end.43:                                        ; preds = %lor.lhs.false.17
  %63 = load i32, i32* %op.addr, align 4, !dbg !2547, !tbaa !991
  %cmp44 = icmp eq i32 %63, 2, !dbg !2549
  br i1 %cmp44, label %if.then.46, label %if.end.48, !dbg !2550

if.then.46:                                       ; preds = %if.end.43
  %64 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2551, !tbaa !1054
  %inc47 = add i64 %64, 1, !dbg !2551
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2551, !tbaa !1054
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !2553

if.end.48:                                        ; preds = %if.end.43
  %65 = load i32, i32* %op.addr, align 4, !dbg !2554, !tbaa !991
  %cmp49 = icmp eq i32 %65, 3, !dbg !2556
  br i1 %cmp49, label %if.then.51, label %if.end.53, !dbg !2557

if.then.51:                                       ; preds = %if.end.48
  %66 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2558, !tbaa !1054
  %inc52 = add i64 %66, 1, !dbg !2558
  store i64 %inc52, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2558, !tbaa !1054
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2560
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !2560

if.end.53:                                        ; preds = %if.end.48
  %67 = load i64, i64* %i, align 8, !dbg !2561, !tbaa !1027
  %68 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8, !dbg !2562, !tbaa !979
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %68, i32 0, i32 1, !dbg !2563
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 %67, !dbg !2562
  %69 = load %struct._object*, %struct._object** %arrayidx55, align 8, !dbg !2562, !tbaa !979
  %70 = load i64, i64* %i, align 8, !dbg !2564, !tbaa !1027
  %71 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8, !dbg !2565, !tbaa !979
  %ob_item56 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1, !dbg !2566
  %arrayidx57 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item56, i32 0, i64 %70, !dbg !2565
  %72 = load %struct._object*, %struct._object** %arrayidx57, align 8, !dbg !2565, !tbaa !979
  %73 = load i32, i32* %op.addr, align 4, !dbg !2567, !tbaa !991
  %call58 = call %struct._object* @PyObject_RichCompare(%struct._object* %69, %struct._object* %72, i32 %73), !dbg !2568
  store %struct._object* %call58, %struct._object** %retval, !dbg !2569
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !2569

cleanup.59:                                       ; preds = %if.end.53, %if.then.51, %if.then.46, %cleanup.41, %cleanup, %if.then
  %74 = bitcast i64* %wlen to i8*, !dbg !2570
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !2570
  %75 = bitcast i64* %vlen to i8*, !dbg !2570
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !2570
  %76 = bitcast i64* %i to i8*, !dbg !2570
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !2570
  %77 = bitcast %struct.PyTupleObject** %wt to i8*, !dbg !2570
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !2570
  %78 = bitcast %struct.PyTupleObject** %vt to i8*, !dbg !2570
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2570
  %79 = load %struct._object*, %struct._object** %retval, !dbg !2570
  ret %struct._object* %79, !dbg !2570
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.tupleiterobject*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !922, metadata !983), !dbg !2571
  %0 = bitcast %struct.tupleiterobject** %it to i8*, !dbg !2572
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2572
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it, metadata !923, metadata !983), !dbg !2573
  %1 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !2574, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2576
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2576, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19, !dbg !2577
  %3 = load i64, i64* %tp_flags, align 8, !dbg !2577, !tbaa !1204
  %and = and i64 %3, 67108864, !dbg !2578
  %cmp = icmp ne i64 %and, 0, !dbg !2579
  br i1 %cmp, label %if.end, label %if.then, !dbg !2580

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1070), !dbg !2581
  store %struct._object* null, %struct._object** %retval, !dbg !2583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2583

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyTupleIter_Type), !dbg !2584
  %4 = bitcast %struct._object* %call to %struct.tupleiterobject*, !dbg !2585
  store %struct.tupleiterobject* %4, %struct.tupleiterobject** %it, align 8, !dbg !2586, !tbaa !979
  %5 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8, !dbg !2587, !tbaa !979
  %cmp1 = icmp eq %struct.tupleiterobject* %5, null, !dbg !2589
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2590

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2591
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2591

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8, !dbg !2592, !tbaa !979
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %6, i32 0, i32 1, !dbg !2593
  store i64 0, i64* %it_index, align 8, !dbg !2594, !tbaa !2595
  %7 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !2597, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2598
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2599, !tbaa !1054
  %inc = add i64 %8, 1, !dbg !2599
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2599, !tbaa !1054
  %9 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !2600, !tbaa !979
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*, !dbg !2601
  %11 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8, !dbg !2602, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %11, i32 0, i32 2, !dbg !2603
  store %struct.PyTupleObject* %10, %struct.PyTupleObject** %it_seq, align 8, !dbg !2604, !tbaa !2605
  br label %do.body, !dbg !2606

do.body:                                          ; preds = %if.end.3
  %12 = bitcast %union._gc_head** %g to i8*, !dbg !2607
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !2607
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !924, metadata !983), !dbg !2609
  %13 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8, !dbg !2610, !tbaa !979
  %14 = bitcast %struct.tupleiterobject* %13 to %union._gc_head*, !dbg !2611
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %14, i64 -1, !dbg !2612
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2609, !tbaa !979
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2613, !tbaa !979
  %gc = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !2615
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2616
  %16 = load i64, i64* %gc_refs, align 8, !dbg !2616, !tbaa !1140
  %shr = ashr i64 %16, 1, !dbg !2617
  %cmp4 = icmp ne i64 %shr, -2, !dbg !2618
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2619

if.then.5:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !2620
  unreachable, !dbg !2620

if.end.6:                                         ; preds = %do.body
  br label %do.body.7, !dbg !2622

do.body.7:                                        ; preds = %if.end.6
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2624, !tbaa !979
  %gc8 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !2627
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !2628
  %18 = load i64, i64* %gc_refs9, align 8, !dbg !2628, !tbaa !1140
  %and10 = and i64 %18, 1, !dbg !2629
  %or = or i64 %and10, -6, !dbg !2630
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2631, !tbaa !979
  %gc11 = bitcast %union._gc_head* %19 to %struct.anon*, !dbg !2632
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2, !dbg !2633
  store i64 %or, i64* %gc_refs12, align 8, !dbg !2634, !tbaa !1140
  br label %do.cond, !dbg !2635

do.cond:                                          ; preds = %do.body.7
  br label %do.end, !dbg !2636

do.end:                                           ; preds = %do.cond
  %20 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2638, !tbaa !979
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2640, !tbaa !979
  %gc13 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !2641
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0, !dbg !2642
  store %union._gc_head* %20, %union._gc_head** %gc_next, align 8, !dbg !2643, !tbaa !1169
  %22 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2644, !tbaa !979
  %gc14 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !2645
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !2646
  %23 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2646, !tbaa !1173
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2647, !tbaa !979
  %gc15 = bitcast %union._gc_head* %24 to %struct.anon*, !dbg !2648
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1, !dbg !2649
  store %union._gc_head* %23, %union._gc_head** %gc_prev16, align 8, !dbg !2650, !tbaa !1173
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2651, !tbaa !979
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2652, !tbaa !979
  %gc17 = bitcast %union._gc_head* %26 to %struct.anon*, !dbg !2653
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1, !dbg !2654
  %27 = load %union._gc_head*, %union._gc_head** %gc_prev18, align 8, !dbg !2654, !tbaa !1173
  %gc19 = bitcast %union._gc_head* %27 to %struct.anon*, !dbg !2655
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0, !dbg !2656
  store %union._gc_head* %25, %union._gc_head** %gc_next20, align 8, !dbg !2657, !tbaa !1169
  %28 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2658, !tbaa !979
  %29 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2659, !tbaa !979
  %gc21 = bitcast %union._gc_head* %29 to %struct.anon*, !dbg !2660
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1, !dbg !2661
  store %union._gc_head* %28, %union._gc_head** %gc_prev22, align 8, !dbg !2662, !tbaa !1173
  %30 = bitcast %union._gc_head** %g to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2663
  br label %do.cond.23, !dbg !2664

do.cond.23:                                       ; preds = %do.end
  br label %do.end.24, !dbg !2665

do.end.24:                                        ; preds = %do.cond.23
  %31 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8, !dbg !2667, !tbaa !979
  %32 = bitcast %struct.tupleiterobject* %31 to %struct._object*, !dbg !2668
  store %struct._object* %32, %struct._object** %retval, !dbg !2669
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2669

cleanup:                                          ; preds = %do.end.24, %if.then.2, %if.then
  %33 = bitcast %struct.tupleiterobject** %it to i8*, !dbg !2670
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !2670
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2670
  ret %struct._object* %34, !dbg !2670
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !858, metadata !983), !dbg !2671
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !859, metadata !983), !dbg !2672
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !860, metadata !983), !dbg !2673
  %0 = bitcast %struct._object** %arg to i8*, !dbg !2674
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2674
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !861, metadata !983), !dbg !2675
  store %struct._object* null, %struct._object** %arg, align 8, !dbg !2675, !tbaa !979
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2676, !tbaa !979
  %cmp = icmp ne %struct._typeobject* %1, @PyTuple_Type, !dbg !2678
  br i1 %cmp, label %if.then, label %if.end, !dbg !2679

if.then:                                          ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2680, !tbaa !979
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2681, !tbaa !979
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2682, !tbaa !979
  %call = call %struct._object* @tuple_subtype_new(%struct._typeobject* %2, %struct._object* %3, %struct._object* %4), !dbg !2683
  store %struct._object* %call, %struct._object** %retval, !dbg !2684
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2684

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2685, !tbaa !979
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2687, !tbaa !979
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @tuple_new.kwlist, i32 0, i32 0), %struct._object** %arg), !dbg !2688
  %tobool = icmp ne i32 %call1, 0, !dbg !2688
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2689

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2690

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2691, !tbaa !979
  %cmp4 = icmp eq %struct._object* %7, null, !dbg !2693
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2694

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyTuple_New(i64 0), !dbg !2695
  store %struct._object* %call6, %struct._object** %retval, !dbg !2696
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2696

if.else:                                          ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2697, !tbaa !979
  %call7 = call %struct._object* @PySequence_Tuple(%struct._object* %8), !dbg !2698
  store %struct._object* %call7, %struct._object** %retval, !dbg !2699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2699

cleanup:                                          ; preds = %if.else, %if.then.5, %if.then.2, %if.then
  %9 = bitcast %struct._object** %arg to i8*, !dbg !2700
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2700
  %10 = load %struct._object*, %struct._object** %retval, !dbg !2700
  ret %struct._object* %10, !dbg !2700
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyTuple_Resize(%struct._object** %pv, i64 %newsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pv.addr = alloca %struct._object**, align 8
  %newsize.addr = alloca i64, align 8
  %v = alloca %struct.PyTupleObject*, align 8
  %sv = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %oldsize = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %g94 = alloca %union._gc_head*, align 8
  store %struct._object** %pv, %struct._object*** %pv.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object*** %pv.addr, metadata !547, metadata !983), !dbg !2701
  store i64 %newsize, i64* %newsize.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %newsize.addr, metadata !548, metadata !983), !dbg !2702
  %0 = bitcast %struct.PyTupleObject** %v to i8*, !dbg !2703
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2703
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %v, metadata !549, metadata !983), !dbg !2704
  %1 = bitcast %struct.PyTupleObject** %sv to i8*, !dbg !2705
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2705
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %sv, metadata !550, metadata !983), !dbg !2706
  %2 = bitcast i64* %i to i8*, !dbg !2707
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2707
  call void @llvm.dbg.declare(metadata i64* %i, metadata !551, metadata !983), !dbg !2708
  %3 = bitcast i64* %oldsize to i8*, !dbg !2709
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2709
  call void @llvm.dbg.declare(metadata i64* %oldsize, metadata !552, metadata !983), !dbg !2710
  %4 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2711, !tbaa !979
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2712, !tbaa !979
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*, !dbg !2713
  store %struct.PyTupleObject* %6, %struct.PyTupleObject** %v, align 8, !dbg !2714, !tbaa !979
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2715, !tbaa !979
  %cmp = icmp eq %struct.PyTupleObject* %7, null, !dbg !2716
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2717

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2718, !tbaa !979
  %9 = bitcast %struct.PyTupleObject* %8 to %struct._object*, !dbg !2720
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2721
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2721, !tbaa !1202
  %cmp1 = icmp ne %struct._typeobject* %10, @PyTuple_Type, !dbg !2722
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2, !dbg !2723

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2724, !tbaa !979
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*, !dbg !2725
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !2726
  %13 = load i64, i64* %ob_size, align 8, !dbg !2726, !tbaa !1214
  %cmp3 = icmp ne i64 %13, 0, !dbg !2727
  br i1 %cmp3, label %land.lhs.true, label %if.end.15, !dbg !2728

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2729, !tbaa !979
  %15 = bitcast %struct.PyTupleObject* %14 to %struct._object*, !dbg !2730
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2731
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2731, !tbaa !1054
  %cmp4 = icmp ne i64 %16, 1, !dbg !2732
  br i1 %cmp4, label %if.then, label %if.end.15, !dbg !2733

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %17 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2734, !tbaa !979
  store %struct._object* null, %struct._object** %17, align 8, !dbg !2735, !tbaa !979
  br label %do.body, !dbg !2736

do.body:                                          ; preds = %if.then
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2737
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !2737
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !553, metadata !983), !dbg !2739
  %19 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2740, !tbaa !979
  %20 = bitcast %struct.PyTupleObject* %19 to %struct._object*, !dbg !2741
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2739, !tbaa !979
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2742, !tbaa !979
  %cmp5 = icmp ne %struct._object* %21, null, !dbg !2743
  br i1 %cmp5, label %if.then.6, label %if.end.12, !dbg !2744

if.then.6:                                        ; preds = %do.body
  br label %do.body.7, !dbg !2745

do.body.7:                                        ; preds = %if.then.6
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !557, metadata !983), !dbg !2749
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2750, !tbaa !979
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2749, !tbaa !979
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2751, !tbaa !979
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2753
  %25 = load i64, i64* %ob_refcnt8, align 8, !dbg !2754, !tbaa !1054
  %dec = add i64 %25, -1, !dbg !2754
  store i64 %dec, i64* %ob_refcnt8, align 8, !dbg !2754, !tbaa !1054
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2755
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2756

if.then.10:                                       ; preds = %do.body.7
  br label %if.end, !dbg !2757

if.else:                                          ; preds = %do.body.7
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2759, !tbaa !979
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2761
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !2761, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2762
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2762, !tbaa !1295
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2763, !tbaa !979
  call void %28(%struct._object* %29), !dbg !2764
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2765
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2765
  br label %do.cond, !dbg !2767

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2768

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2770

if.end.12:                                        ; preds = %do.end, %do.body
  %31 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2772
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2772
  br label %do.cond.13, !dbg !2775

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2776

do.end.14:                                        ; preds = %do.cond.13
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 859), !dbg !2778
  store i32 -1, i32* %retval, !dbg !2779
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2779

if.end.15:                                        ; preds = %land.lhs.true, %lor.lhs.false.2
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2780, !tbaa !979
  %33 = bitcast %struct.PyTupleObject* %32 to %struct.PyVarObject*, !dbg !2781
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1, !dbg !2782
  %34 = load i64, i64* %ob_size16, align 8, !dbg !2782, !tbaa !1214
  store i64 %34, i64* %oldsize, align 8, !dbg !2783, !tbaa !1027
  %35 = load i64, i64* %oldsize, align 8, !dbg !2784, !tbaa !1027
  %36 = load i64, i64* %newsize.addr, align 8, !dbg !2786, !tbaa !1027
  %cmp17 = icmp eq i64 %35, %36, !dbg !2787
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2788

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %retval, !dbg !2789
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2789

if.end.19:                                        ; preds = %if.end.15
  %37 = load i64, i64* %oldsize, align 8, !dbg !2790, !tbaa !1027
  %cmp20 = icmp eq i64 %37, 0, !dbg !2791
  br i1 %cmp20, label %if.then.21, label %if.end.35, !dbg !2792

if.then.21:                                       ; preds = %if.end.19
  br label %do.body.22, !dbg !2793

do.body.22:                                       ; preds = %if.then.21
  %38 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2794
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !2794
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !560, metadata !983), !dbg !2796
  %39 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2797, !tbaa !979
  %40 = bitcast %struct.PyTupleObject* %39 to %struct._object*, !dbg !2798
  store %struct._object* %40, %struct._object** %_py_decref_tmp23, align 8, !dbg !2796, !tbaa !979
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2799, !tbaa !979
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2801
  %42 = load i64, i64* %ob_refcnt24, align 8, !dbg !2802, !tbaa !1054
  %dec25 = add i64 %42, -1, !dbg !2802
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2802, !tbaa !1054
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !2803
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !2804

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !2805

if.else.28:                                       ; preds = %do.body.22
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2807, !tbaa !979
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2809
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2809, !tbaa !1202
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2810
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2810, !tbaa !1295
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2811, !tbaa !979
  call void %45(%struct._object* %46), !dbg !2812
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %47 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2813
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !2813
  br label %do.cond.32, !dbg !2815

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !2816

do.end.33:                                        ; preds = %do.cond.32
  %48 = load i64, i64* %newsize.addr, align 8, !dbg !2818, !tbaa !1027
  %call = call %struct._object* @PyTuple_New(i64 %48), !dbg !2819
  %49 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2820, !tbaa !979
  store %struct._object* %call, %struct._object** %49, align 8, !dbg !2821, !tbaa !979
  %50 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2822, !tbaa !979
  %51 = load %struct._object*, %struct._object** %50, align 8, !dbg !2823, !tbaa !979
  %cmp34 = icmp eq %struct._object* %51, null, !dbg !2824
  %cond = select i1 %cmp34, i32 -1, i32 0, !dbg !2823
  store i32 %cond, i32* %retval, !dbg !2825
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2825

if.end.35:                                        ; preds = %if.end.19
  %52 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2826, !tbaa !979
  %53 = bitcast %struct.PyTupleObject* %52 to %union._gc_head*, !dbg !2827
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %53, i64 -1, !dbg !2828
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*, !dbg !2829
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2830
  %54 = load i64, i64* %gc_refs, align 8, !dbg !2830, !tbaa !1140
  %shr = ashr i64 %54, 1, !dbg !2831
  %cmp36 = icmp ne i64 %shr, -2, !dbg !2832
  br i1 %cmp36, label %if.then.37, label %if.end.61, !dbg !2833

if.then.37:                                       ; preds = %if.end.35
  br label %do.body.38, !dbg !2834

do.body.38:                                       ; preds = %if.then.37
  %55 = bitcast %union._gc_head** %g to i8*, !dbg !2835
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !2835
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !564, metadata !983), !dbg !2837
  %56 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2838, !tbaa !979
  %57 = bitcast %struct.PyTupleObject* %56 to %union._gc_head*, !dbg !2839
  %add.ptr39 = getelementptr %union._gc_head, %union._gc_head* %57, i64 -1, !dbg !2840
  store %union._gc_head* %add.ptr39, %union._gc_head** %g, align 8, !dbg !2837, !tbaa !979
  br label %do.body.40, !dbg !2841

do.body.40:                                       ; preds = %do.body.38
  %58 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2842, !tbaa !979
  %gc41 = bitcast %union._gc_head* %58 to %struct.anon*, !dbg !2845
  %gc_refs42 = getelementptr inbounds %struct.anon, %struct.anon* %gc41, i32 0, i32 2, !dbg !2846
  %59 = load i64, i64* %gc_refs42, align 8, !dbg !2846, !tbaa !1140
  %and = and i64 %59, 1, !dbg !2847
  %or = or i64 %and, -4, !dbg !2848
  %60 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2849, !tbaa !979
  %gc43 = bitcast %union._gc_head* %60 to %struct.anon*, !dbg !2850
  %gc_refs44 = getelementptr inbounds %struct.anon, %struct.anon* %gc43, i32 0, i32 2, !dbg !2851
  store i64 %or, i64* %gc_refs44, align 8, !dbg !2852, !tbaa !1140
  br label %do.cond.45, !dbg !2853

do.cond.45:                                       ; preds = %do.body.40
  br label %do.end.46, !dbg !2854

do.end.46:                                        ; preds = %do.cond.45
  %61 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2856, !tbaa !979
  %gc47 = bitcast %union._gc_head* %61 to %struct.anon*, !dbg !2858
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc47, i32 0, i32 0, !dbg !2859
  %62 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2859, !tbaa !1169
  %63 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2860, !tbaa !979
  %gc48 = bitcast %union._gc_head* %63 to %struct.anon*, !dbg !2861
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc48, i32 0, i32 1, !dbg !2862
  %64 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2862, !tbaa !1173
  %gc49 = bitcast %union._gc_head* %64 to %struct.anon*, !dbg !2863
  %gc_next50 = getelementptr inbounds %struct.anon, %struct.anon* %gc49, i32 0, i32 0, !dbg !2864
  store %union._gc_head* %62, %union._gc_head** %gc_next50, align 8, !dbg !2865, !tbaa !1169
  %65 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2866, !tbaa !979
  %gc51 = bitcast %union._gc_head* %65 to %struct.anon*, !dbg !2867
  %gc_prev52 = getelementptr inbounds %struct.anon, %struct.anon* %gc51, i32 0, i32 1, !dbg !2868
  %66 = load %union._gc_head*, %union._gc_head** %gc_prev52, align 8, !dbg !2868, !tbaa !1173
  %67 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2869, !tbaa !979
  %gc53 = bitcast %union._gc_head* %67 to %struct.anon*, !dbg !2870
  %gc_next54 = getelementptr inbounds %struct.anon, %struct.anon* %gc53, i32 0, i32 0, !dbg !2871
  %68 = load %union._gc_head*, %union._gc_head** %gc_next54, align 8, !dbg !2871, !tbaa !1169
  %gc55 = bitcast %union._gc_head* %68 to %struct.anon*, !dbg !2872
  %gc_prev56 = getelementptr inbounds %struct.anon, %struct.anon* %gc55, i32 0, i32 1, !dbg !2873
  store %union._gc_head* %66, %union._gc_head** %gc_prev56, align 8, !dbg !2874, !tbaa !1173
  %69 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2875, !tbaa !979
  %gc57 = bitcast %union._gc_head* %69 to %struct.anon*, !dbg !2876
  %gc_next58 = getelementptr inbounds %struct.anon, %struct.anon* %gc57, i32 0, i32 0, !dbg !2877
  store %union._gc_head* null, %union._gc_head** %gc_next58, align 8, !dbg !2878, !tbaa !1169
  %70 = bitcast %union._gc_head** %g to i8*, !dbg !2879
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !2879
  br label %do.cond.59, !dbg !2880

do.cond.59:                                       ; preds = %do.end.46
  br label %do.end.60, !dbg !2881

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61, !dbg !2883

if.end.61:                                        ; preds = %do.end.60, %if.end.35
  %71 = load i64, i64* %newsize.addr, align 8, !dbg !2885, !tbaa !1027
  store i64 %71, i64* %i, align 8, !dbg !2886, !tbaa !1027
  br label %for.cond, !dbg !2887

for.cond:                                         ; preds = %for.inc, %if.end.61
  %72 = load i64, i64* %i, align 8, !dbg !2888, !tbaa !1027
  %73 = load i64, i64* %oldsize, align 8, !dbg !2891, !tbaa !1027
  %cmp62 = icmp slt i64 %72, %73, !dbg !2892
  br i1 %cmp62, label %for.body, label %for.end, !dbg !2893

for.body:                                         ; preds = %for.cond
  br label %do.body.63, !dbg !2894

do.body.63:                                       ; preds = %for.body
  %74 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2895
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !2895
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !567, metadata !983), !dbg !2897
  %75 = load i64, i64* %i, align 8, !dbg !2898, !tbaa !1027
  %76 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2899, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %76, i32 0, i32 1, !dbg !2900
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %75, !dbg !2899
  %77 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2899, !tbaa !979
  store %struct._object* %77, %struct._object** %_py_tmp, align 8, !dbg !2897, !tbaa !979
  %78 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2901, !tbaa !979
  %cmp64 = icmp ne %struct._object* %78, null, !dbg !2902
  br i1 %cmp64, label %if.then.65, label %if.end.80, !dbg !2903

if.then.65:                                       ; preds = %do.body.63
  %79 = load i64, i64* %i, align 8, !dbg !2904, !tbaa !1027
  %80 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2906, !tbaa !979
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %80, i32 0, i32 1, !dbg !2907
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 %79, !dbg !2906
  store %struct._object* null, %struct._object** %arrayidx67, align 8, !dbg !2908, !tbaa !979
  br label %do.body.68, !dbg !2909

do.body.68:                                       ; preds = %if.then.65
  %81 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !572, metadata !983), !dbg !2912
  %82 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2913, !tbaa !979
  store %struct._object* %82, %struct._object** %_py_decref_tmp69, align 8, !dbg !2912, !tbaa !979
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2914, !tbaa !979
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0, !dbg !2916
  %84 = load i64, i64* %ob_refcnt70, align 8, !dbg !2917, !tbaa !1054
  %dec71 = add i64 %84, -1, !dbg !2917
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !2917, !tbaa !1054
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !2918
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !2919

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77, !dbg !2920

if.else.74:                                       ; preds = %do.body.68
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2922, !tbaa !979
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1, !dbg !2924
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !2924, !tbaa !1202
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4, !dbg !2925
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !2925, !tbaa !1295
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2926, !tbaa !979
  call void %87(%struct._object* %88), !dbg !2927
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %89 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2928
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !2928
  br label %do.cond.78, !dbg !2930

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !2931

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80, !dbg !2933

if.end.80:                                        ; preds = %do.end.79, %do.body.63
  %90 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2935
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !2935
  br label %do.cond.81, !dbg !2938

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !2939

do.end.82:                                        ; preds = %do.cond.81
  br label %for.inc, !dbg !2941

for.inc:                                          ; preds = %do.end.82
  %91 = load i64, i64* %i, align 8, !dbg !2942, !tbaa !1027
  %inc = add i64 %91, 1, !dbg !2942
  store i64 %inc, i64* %i, align 8, !dbg !2942, !tbaa !1027
  br label %for.cond, !dbg !2943

for.end:                                          ; preds = %for.cond
  %92 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2944, !tbaa !979
  %93 = bitcast %struct.PyTupleObject* %92 to %struct.PyVarObject*, !dbg !2945
  %94 = load i64, i64* %newsize.addr, align 8, !dbg !2946, !tbaa !1027
  %call83 = call %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %93, i64 %94), !dbg !2947
  %95 = bitcast %struct.PyVarObject* %call83 to %struct.PyTupleObject*, !dbg !2948
  store %struct.PyTupleObject* %95, %struct.PyTupleObject** %sv, align 8, !dbg !2949, !tbaa !979
  %96 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8, !dbg !2950, !tbaa !979
  %cmp84 = icmp eq %struct.PyTupleObject* %96, null, !dbg !2952
  br i1 %cmp84, label %if.then.85, label %if.end.86, !dbg !2953

if.then.85:                                       ; preds = %for.end
  %97 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2954, !tbaa !979
  store %struct._object* null, %struct._object** %97, align 8, !dbg !2956, !tbaa !979
  %98 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8, !dbg !2957, !tbaa !979
  %99 = bitcast %struct.PyTupleObject* %98 to i8*, !dbg !2957
  call void @PyObject_GC_Del(i8* %99), !dbg !2958
  store i32 -1, i32* %retval, !dbg !2959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2959

if.end.86:                                        ; preds = %for.end
  %100 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8, !dbg !2960, !tbaa !979
  %101 = bitcast %struct.PyTupleObject* %100 to %struct._object*, !dbg !2961
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0, !dbg !2962
  store i64 1, i64* %ob_refcnt87, align 8, !dbg !2963, !tbaa !1054
  %102 = load i64, i64* %newsize.addr, align 8, !dbg !2964, !tbaa !1027
  %103 = load i64, i64* %oldsize, align 8, !dbg !2966, !tbaa !1027
  %cmp88 = icmp sgt i64 %102, %103, !dbg !2967
  br i1 %cmp88, label %if.then.89, label %if.end.92, !dbg !2968

if.then.89:                                       ; preds = %if.end.86
  %104 = load i64, i64* %oldsize, align 8, !dbg !2969, !tbaa !1027
  %105 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8, !dbg !2970, !tbaa !979
  %ob_item90 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %105, i32 0, i32 1, !dbg !2971
  %arrayidx91 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item90, i32 0, i64 %104, !dbg !2970
  %106 = bitcast %struct._object** %arrayidx91 to i8*, !dbg !2972
  %107 = load i64, i64* %newsize.addr, align 8, !dbg !2973, !tbaa !1027
  %108 = load i64, i64* %oldsize, align 8, !dbg !2974, !tbaa !1027
  %sub = sub i64 %107, %108, !dbg !2975
  %mul = mul i64 8, %sub, !dbg !2976
  call void @llvm.memset.p0i8.i64(i8* %106, i8 0, i64 %mul, i32 8, i1 false), !dbg !2972
  br label %if.end.92, !dbg !2972

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %109 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8, !dbg !2977, !tbaa !979
  %110 = bitcast %struct.PyTupleObject* %109 to %struct._object*, !dbg !2978
  %111 = load %struct._object**, %struct._object*** %pv.addr, align 8, !dbg !2979, !tbaa !979
  store %struct._object* %110, %struct._object** %111, align 8, !dbg !2980, !tbaa !979
  br label %do.body.93, !dbg !2981

do.body.93:                                       ; preds = %if.end.92
  %112 = bitcast %union._gc_head** %g94 to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !2982
  call void @llvm.dbg.declare(metadata %union._gc_head** %g94, metadata !576, metadata !983), !dbg !2984
  %113 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8, !dbg !2985, !tbaa !979
  %114 = bitcast %struct.PyTupleObject* %113 to %union._gc_head*, !dbg !2986
  %add.ptr95 = getelementptr %union._gc_head, %union._gc_head* %114, i64 -1, !dbg !2987
  store %union._gc_head* %add.ptr95, %union._gc_head** %g94, align 8, !dbg !2984, !tbaa !979
  %115 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !2988, !tbaa !979
  %gc96 = bitcast %union._gc_head* %115 to %struct.anon*, !dbg !2990
  %gc_refs97 = getelementptr inbounds %struct.anon, %struct.anon* %gc96, i32 0, i32 2, !dbg !2991
  %116 = load i64, i64* %gc_refs97, align 8, !dbg !2991, !tbaa !1140
  %shr98 = ashr i64 %116, 1, !dbg !2992
  %cmp99 = icmp ne i64 %shr98, -2, !dbg !2993
  br i1 %cmp99, label %if.then.100, label %if.end.101, !dbg !2994

if.then.100:                                      ; preds = %do.body.93
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !2995
  unreachable, !dbg !2995

if.end.101:                                       ; preds = %do.body.93
  br label %do.body.102, !dbg !2997

do.body.102:                                      ; preds = %if.end.101
  %117 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !2999, !tbaa !979
  %gc103 = bitcast %union._gc_head* %117 to %struct.anon*, !dbg !3002
  %gc_refs104 = getelementptr inbounds %struct.anon, %struct.anon* %gc103, i32 0, i32 2, !dbg !3003
  %118 = load i64, i64* %gc_refs104, align 8, !dbg !3003, !tbaa !1140
  %and105 = and i64 %118, 1, !dbg !3004
  %or106 = or i64 %and105, -6, !dbg !3005
  %119 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3006, !tbaa !979
  %gc107 = bitcast %union._gc_head* %119 to %struct.anon*, !dbg !3007
  %gc_refs108 = getelementptr inbounds %struct.anon, %struct.anon* %gc107, i32 0, i32 2, !dbg !3008
  store i64 %or106, i64* %gc_refs108, align 8, !dbg !3009, !tbaa !1140
  br label %do.cond.109, !dbg !3010

do.cond.109:                                      ; preds = %do.body.102
  br label %do.end.110, !dbg !3011

do.end.110:                                       ; preds = %do.cond.109
  %120 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3013, !tbaa !979
  %121 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3015, !tbaa !979
  %gc111 = bitcast %union._gc_head* %121 to %struct.anon*, !dbg !3016
  %gc_next112 = getelementptr inbounds %struct.anon, %struct.anon* %gc111, i32 0, i32 0, !dbg !3017
  store %union._gc_head* %120, %union._gc_head** %gc_next112, align 8, !dbg !3018, !tbaa !1169
  %122 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3019, !tbaa !979
  %gc113 = bitcast %union._gc_head* %122 to %struct.anon*, !dbg !3020
  %gc_prev114 = getelementptr inbounds %struct.anon, %struct.anon* %gc113, i32 0, i32 1, !dbg !3021
  %123 = load %union._gc_head*, %union._gc_head** %gc_prev114, align 8, !dbg !3021, !tbaa !1173
  %124 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3022, !tbaa !979
  %gc115 = bitcast %union._gc_head* %124 to %struct.anon*, !dbg !3023
  %gc_prev116 = getelementptr inbounds %struct.anon, %struct.anon* %gc115, i32 0, i32 1, !dbg !3024
  store %union._gc_head* %123, %union._gc_head** %gc_prev116, align 8, !dbg !3025, !tbaa !1173
  %125 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3026, !tbaa !979
  %126 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3027, !tbaa !979
  %gc117 = bitcast %union._gc_head* %126 to %struct.anon*, !dbg !3028
  %gc_prev118 = getelementptr inbounds %struct.anon, %struct.anon* %gc117, i32 0, i32 1, !dbg !3029
  %127 = load %union._gc_head*, %union._gc_head** %gc_prev118, align 8, !dbg !3029, !tbaa !1173
  %gc119 = bitcast %union._gc_head* %127 to %struct.anon*, !dbg !3030
  %gc_next120 = getelementptr inbounds %struct.anon, %struct.anon* %gc119, i32 0, i32 0, !dbg !3031
  store %union._gc_head* %125, %union._gc_head** %gc_next120, align 8, !dbg !3032, !tbaa !1169
  %128 = load %union._gc_head*, %union._gc_head** %g94, align 8, !dbg !3033, !tbaa !979
  %129 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3034, !tbaa !979
  %gc121 = bitcast %union._gc_head* %129 to %struct.anon*, !dbg !3035
  %gc_prev122 = getelementptr inbounds %struct.anon, %struct.anon* %gc121, i32 0, i32 1, !dbg !3036
  store %union._gc_head* %128, %union._gc_head** %gc_prev122, align 8, !dbg !3037, !tbaa !1173
  %130 = bitcast %union._gc_head** %g94 to i8*, !dbg !3038
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !3038
  br label %do.cond.123, !dbg !3039

do.cond.123:                                      ; preds = %do.end.110
  br label %do.end.124, !dbg !3040

do.end.124:                                       ; preds = %do.cond.123
  store i32 0, i32* %retval, !dbg !3042
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3042

cleanup:                                          ; preds = %do.end.124, %if.then.85, %do.end.33, %if.then.18, %do.end.14
  %131 = bitcast i64* %oldsize to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !3043
  %132 = bitcast i64* %i to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !3043
  %133 = bitcast %struct.PyTupleObject** %sv to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !3043
  %134 = bitcast %struct.PyTupleObject** %v to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !3043
  %135 = load i32, i32* %retval, !dbg !3043
  ret i32 %135, !dbg !3043
}

declare %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @PyTuple_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.PyTupleObject*, align 8
  %q = alloca %struct.PyTupleObject*, align 8
  %0 = bitcast i32* %freelist_size to i8*, !dbg !3044
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3044
  call void @llvm.dbg.declare(metadata i32* %freelist_size, metadata !582, metadata !983), !dbg !3045
  store i32 0, i32* %freelist_size, align 4, !dbg !3045, !tbaa !991
  %1 = bitcast i32* %i to i8*, !dbg !3046
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3046
  call void @llvm.dbg.declare(metadata i32* %i, metadata !583, metadata !983), !dbg !3047
  store i32 1, i32* %i, align 4, !dbg !3048, !tbaa !991
  br label %for.cond, !dbg !3049

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3050, !tbaa !991
  %cmp = icmp slt i32 %2, 20, !dbg !3053
  br i1 %cmp, label %for.body, label %for.end, !dbg !3054

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.PyTupleObject** %p to i8*, !dbg !3055
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %p, metadata !584, metadata !983), !dbg !3056
  %4 = bitcast %struct.PyTupleObject** %q to i8*, !dbg !3055
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %q, metadata !588, metadata !983), !dbg !3057
  %5 = load i32, i32* %i, align 4, !dbg !3058, !tbaa !991
  %idxprom = sext i32 %5 to i64, !dbg !3059
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %idxprom, !dbg !3059
  %6 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8, !dbg !3059, !tbaa !979
  store %struct.PyTupleObject* %6, %struct.PyTupleObject** %p, align 8, !dbg !3060, !tbaa !979
  %7 = load i32, i32* %i, align 4, !dbg !3061, !tbaa !991
  %idxprom1 = sext i32 %7 to i64, !dbg !3062
  %arrayidx2 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom1, !dbg !3062
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !3062, !tbaa !991
  %9 = load i32, i32* %freelist_size, align 4, !dbg !3063, !tbaa !991
  %add = add i32 %9, %8, !dbg !3063
  store i32 %add, i32* %freelist_size, align 4, !dbg !3063, !tbaa !991
  %10 = load i32, i32* %i, align 4, !dbg !3064, !tbaa !991
  %idxprom3 = sext i32 %10 to i64, !dbg !3065
  %arrayidx4 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %idxprom3, !dbg !3065
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %arrayidx4, align 8, !dbg !3066, !tbaa !979
  %11 = load i32, i32* %i, align 4, !dbg !3067, !tbaa !991
  %idxprom5 = sext i32 %11 to i64, !dbg !3068
  %arrayidx6 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom5, !dbg !3068
  store i32 0, i32* %arrayidx6, align 4, !dbg !3069, !tbaa !991
  br label %while.cond, !dbg !3070

while.cond:                                       ; preds = %while.body, %for.body
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8, !dbg !3071, !tbaa !979
  %tobool = icmp ne %struct.PyTupleObject* %12, null, !dbg !3070
  br i1 %tobool, label %while.body, label %while.end, !dbg !3070

while.body:                                       ; preds = %while.cond
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8, !dbg !3074, !tbaa !979
  store %struct.PyTupleObject* %13, %struct.PyTupleObject** %q, align 8, !dbg !3076, !tbaa !979
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8, !dbg !3077, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1, !dbg !3078
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3077
  %15 = load %struct._object*, %struct._object** %arrayidx7, align 8, !dbg !3077, !tbaa !979
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !3079
  store %struct.PyTupleObject* %16, %struct.PyTupleObject** %p, align 8, !dbg !3080, !tbaa !979
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %q, align 8, !dbg !3081, !tbaa !979
  %18 = bitcast %struct.PyTupleObject* %17 to i8*, !dbg !3081
  call void @PyObject_GC_Del(i8* %18), !dbg !3082
  br label %while.cond, !dbg !3070

while.end:                                        ; preds = %while.cond
  %19 = bitcast %struct.PyTupleObject** %q to i8*, !dbg !3083
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3083
  %20 = bitcast %struct.PyTupleObject** %p to i8*, !dbg !3083
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3083
  br label %for.inc, !dbg !3084

for.inc:                                          ; preds = %while.end
  %21 = load i32, i32* %i, align 4, !dbg !3085, !tbaa !991
  %inc = add i32 %21, 1, !dbg !3085
  store i32 %inc, i32* %i, align 4, !dbg !3085, !tbaa !991
  br label %for.cond, !dbg !3086

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %freelist_size, align 4, !dbg !3087, !tbaa !991
  %23 = bitcast i32* %i to i8*, !dbg !3088
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !3088
  %24 = bitcast i32* %freelist_size to i8*, !dbg !3088
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !3088
  ret i32 %22, !dbg !3089
}

; Function Attrs: nounwind uwtable
define void @PyTuple_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  br label %do.body, !dbg !3090

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3091
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3091
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !593, metadata !983), !dbg !3093
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8, !dbg !3094, !tbaa !979
  %2 = bitcast %struct.PyTupleObject* %1 to %struct._object*, !dbg !3095
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !3093, !tbaa !979
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3096, !tbaa !979
  %cmp = icmp ne %struct._object* %3, null, !dbg !3097
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !3098

if.then:                                          ; preds = %do.body
  store %struct.PyTupleObject* null, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8, !dbg !3099, !tbaa !979
  br label %do.body.1, !dbg !3101

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3102
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !595, metadata !983), !dbg !3104
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3105, !tbaa !979
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !3104, !tbaa !979
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3106, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3108
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3109, !tbaa !1054
  %dec = add i64 %7, -1, !dbg !3109
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3109, !tbaa !1054
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3110
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3111

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !3112

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3114, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !3116
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3116, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !3117
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3117, !tbaa !1295
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3118, !tbaa !979
  call void %10(%struct._object* %11), !dbg !3119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3120
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !3120
  br label %do.cond, !dbg !3122

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3123

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !3125

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3127
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3127
  br label %do.end.6, !dbg !3130

do.end.6:                                         ; preds = %if.end.4
  %call = call i32 @PyTuple_ClearFreeList(), !dbg !3131
  ret void, !dbg !3132
}

; Function Attrs: nounwind uwtable
define internal void @tupleiter_dealloc(%struct.tupleiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !878, metadata !983), !dbg !3133
  br label %do.body, !dbg !3134

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !3135
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3135
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !879, metadata !983), !dbg !3137
  %1 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3138, !tbaa !979
  %2 = bitcast %struct.tupleiterobject* %1 to %union._gc_head*, !dbg !3139
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !3140
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !3137, !tbaa !979
  br label %do.body.1, !dbg !3141

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3142, !tbaa !979
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !3145
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !3146
  %4 = load i64, i64* %gc_refs, align 8, !dbg !3146, !tbaa !1140
  %and = and i64 %4, 1, !dbg !3147
  %or = or i64 %and, -4, !dbg !3148
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3149, !tbaa !979
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !3150
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3151
  store i64 %or, i64* %gc_refs3, align 8, !dbg !3152, !tbaa !1140
  br label %do.cond, !dbg !3153

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !3154

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3156, !tbaa !979
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3158
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !3159
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3159, !tbaa !1169
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3160, !tbaa !979
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !3161
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !3162
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !3162, !tbaa !1173
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3163
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !3164
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !3165, !tbaa !1169
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3166, !tbaa !979
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3167
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !3168
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !3168, !tbaa !1173
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3169, !tbaa !979
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !3170
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !3171
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !3171, !tbaa !1169
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !3172
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !3173
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !3174, !tbaa !1173
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3175, !tbaa !979
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !3176
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !3177
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !3178, !tbaa !1169
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !3179
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3179
  br label %do.end.17, !dbg !3180

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !3181

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !881, metadata !983), !dbg !3184
  %17 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3185, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %17, i32 0, i32 2, !dbg !3186
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !3186, !tbaa !2605
  %19 = bitcast %struct.PyTupleObject* %18 to %struct._object*, !dbg !3187
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3184, !tbaa !979
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3188, !tbaa !979
  %cmp = icmp ne %struct._object* %20, null, !dbg !3189
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !3190

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !3191

do.body.19:                                       ; preds = %if.then
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3193
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !3193
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !883, metadata !983), !dbg !3195
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3196, !tbaa !979
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !3195, !tbaa !979
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3197, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !3199
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !3200, !tbaa !1054
  %dec = add i64 %24, -1, !dbg !3200
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3200, !tbaa !1054
  %cmp20 = icmp ne i64 %dec, 0, !dbg !3201
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3202

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !3203

if.else:                                          ; preds = %do.body.19
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3205, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !3207
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3207, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !3208
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3208, !tbaa !1295
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3209, !tbaa !979
  call void %27(%struct._object* %28), !dbg !3210
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3211
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3211
  br label %do.cond.22, !dbg !3213

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !3214

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !3216

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3218
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3218
  br label %do.end.26, !dbg !3221

do.end.26:                                        ; preds = %if.end.24
  %31 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3222, !tbaa !979
  %32 = bitcast %struct.tupleiterobject* %31 to i8*, !dbg !3222
  call void @PyObject_GC_Del(i8* %32), !dbg !3223
  ret void, !dbg !3224
}

; Function Attrs: nounwind uwtable
define internal i32 @tupleiter_traverse(%struct.tupleiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !890, metadata !983), !dbg !3225
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !891, metadata !983), !dbg !3226
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !892, metadata !983), !dbg !3227
  br label %do.body, !dbg !3228

do.body:                                          ; preds = %entry
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3229, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2, !dbg !3231
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !3231, !tbaa !2605
  %tobool = icmp ne %struct.PyTupleObject* %1, null, !dbg !3232
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !3233

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !3234
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3234
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !893, metadata !983), !dbg !3236
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3237, !tbaa !979
  %4 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3238, !tbaa !979
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %4, i32 0, i32 2, !dbg !3239
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8, !dbg !3239, !tbaa !2605
  %6 = bitcast %struct.PyTupleObject* %5 to %struct._object*, !dbg !3240
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !3241, !tbaa !979
  %call = call i32 %3(%struct._object* %6, i8* %7), !dbg !3237
  store i32 %call, i32* %vret, align 4, !dbg !3236, !tbaa !991
  %8 = load i32, i32* %vret, align 4, !dbg !3242, !tbaa !991
  %tobool2 = icmp ne i32 %8, 0, !dbg !3242
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3244

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4, !dbg !3245, !tbaa !991
  store i32 %9, i32* %retval, !dbg !3247
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3247

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3248
  br label %cleanup, !dbg !3248

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast i32* %vret to i8*, !dbg !3250
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !3250
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !3253

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !3254

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !3257
  br label %return, !dbg !3257

return:                                           ; preds = %do.end, %cleanup
  %11 = load i32, i32* %retval, !dbg !3258
  ret i32 %11, !dbg !3258

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_next(%struct.tupleiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %seq = alloca %struct.PyTupleObject*, align 8
  %item = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !901, metadata !983), !dbg !3259
  %0 = bitcast %struct.PyTupleObject** %seq to i8*, !dbg !3260
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3260
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %seq, metadata !902, metadata !983), !dbg !3261
  %1 = bitcast %struct._object** %item to i8*, !dbg !3262
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3262
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !903, metadata !983), !dbg !3263
  %2 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3264, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %2, i32 0, i32 2, !dbg !3265
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !3265, !tbaa !2605
  store %struct.PyTupleObject* %3, %struct.PyTupleObject** %seq, align 8, !dbg !3266, !tbaa !979
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8, !dbg !3267, !tbaa !979
  %cmp = icmp eq %struct.PyTupleObject* %4, null, !dbg !3269
  br i1 %cmp, label %if.then, label %if.end, !dbg !3270

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3271

if.end:                                           ; preds = %entry
  %5 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3272, !tbaa !979
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %5, i32 0, i32 1, !dbg !3274
  %6 = load i64, i64* %it_index, align 8, !dbg !3274, !tbaa !2595
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8, !dbg !3275, !tbaa !979
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*, !dbg !3276
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1, !dbg !3277
  %9 = load i64, i64* %ob_size, align 8, !dbg !3277, !tbaa !1214
  %cmp1 = icmp slt i64 %6, %9, !dbg !3278
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !3279

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3280, !tbaa !979
  %it_index3 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %10, i32 0, i32 1, !dbg !3282
  %11 = load i64, i64* %it_index3, align 8, !dbg !3282, !tbaa !2595
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8, !dbg !3283, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1, !dbg !3284
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %11, !dbg !3285
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3285, !tbaa !979
  store %struct._object* %13, %struct._object** %item, align 8, !dbg !3286, !tbaa !979
  %14 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3287, !tbaa !979
  %it_index4 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %14, i32 0, i32 1, !dbg !3288
  %15 = load i64, i64* %it_index4, align 8, !dbg !3289, !tbaa !2595
  %inc = add i64 %15, 1, !dbg !3289
  store i64 %inc, i64* %it_index4, align 8, !dbg !3289, !tbaa !2595
  %16 = load %struct._object*, %struct._object** %item, align 8, !dbg !3290, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !3291
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !3292, !tbaa !1054
  %inc5 = add i64 %17, 1, !dbg !3292
  store i64 %inc5, i64* %ob_refcnt, align 8, !dbg !3292, !tbaa !1054
  %18 = load %struct._object*, %struct._object** %item, align 8, !dbg !3293, !tbaa !979
  store %struct._object* %18, %struct._object** %retval, !dbg !3294
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3294

if.end.6:                                         ; preds = %if.end
  br label %do.body, !dbg !3295

do.body:                                          ; preds = %if.end.6
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3296
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !3296
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !904, metadata !983), !dbg !3298
  %20 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8, !dbg !3299, !tbaa !979
  %21 = bitcast %struct.PyTupleObject* %20 to %struct._object*, !dbg !3300
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3298, !tbaa !979
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3301, !tbaa !979
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3303
  %23 = load i64, i64* %ob_refcnt7, align 8, !dbg !3304, !tbaa !1054
  %dec = add i64 %23, -1, !dbg !3304
  store i64 %dec, i64* %ob_refcnt7, align 8, !dbg !3304, !tbaa !1054
  %cmp8 = icmp ne i64 %dec, 0, !dbg !3305
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !3306

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !3307

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3309, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3311
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3311, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3312
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3312, !tbaa !1295
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3313, !tbaa !979
  call void %26(%struct._object* %27), !dbg !3314
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3315
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3315
  br label %do.cond, !dbg !3317

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !3318

do.end:                                           ; preds = %do.cond
  %29 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !3320, !tbaa !979
  %it_seq11 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %29, i32 0, i32 2, !dbg !3321
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %it_seq11, align 8, !dbg !3322, !tbaa !2605
  store %struct._object* null, %struct._object** %retval, !dbg !3323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3323

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %30 = bitcast %struct._object** %item to i8*, !dbg !3324
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3324
  %31 = bitcast %struct.PyTupleObject** %seq to i8*, !dbg !3324
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !3324
  %32 = load %struct._object*, %struct._object** %retval, !dbg !3324
  ret %struct._object* %32, !dbg !3324
}

declare void @PyObject_GC_UnTrack(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !653, metadata !983), !dbg !3325
  store i32 %order, i32* %order.addr, align 4, !tbaa !1785
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !654, metadata !983), !dbg !3326
  %0 = load i8*, i8** %address.addr, align 8, !dbg !3327, !tbaa !979
  %1 = load i32, i32* %order.addr, align 4, !dbg !3328, !tbaa !1785
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !3329

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !3330

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !3332

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !3333, !tbaa !1785
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !3334

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !3335

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !3337

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !3338
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1785
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !659, metadata !983), !dbg !3339
  %0 = load i32, i32* %order.addr, align 4, !dbg !3340, !tbaa !1785
  %cmp = icmp ne i32 %0, 0, !dbg !3342
  br i1 %cmp, label %if.then, label %if.end, !dbg !3343

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !3344, !srcloc !3345
  br label %if.end, !dbg !3344

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3346
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1785
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !662, metadata !983), !dbg !3347
  %0 = load i32, i32* %order.addr, align 4, !dbg !3348, !tbaa !1785
  %cmp = icmp ne i32 %0, 0, !dbg !3350
  br i1 %cmp, label %if.then, label %if.end, !dbg !3351

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !3352, !srcloc !3353
  br label %if.end, !dbg !3352

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3354
}

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

; Function Attrs: nounwind uwtable
define internal i64 @tuplelength(%struct.PyTupleObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyTupleObject*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !718, metadata !983), !dbg !3355
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3356, !tbaa !979
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*, !dbg !3357
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1, !dbg !3358
  %2 = load i64, i64* %ob_size, align 8, !dbg !3358, !tbaa !1214
  ret i64 %2, !dbg !3359
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleconcat(%struct.PyTupleObject* %a, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %np = alloca %struct.PyTupleObject*, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct._object*, align 8
  %v26 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !723, metadata !983), !dbg !3360
  store %struct._object* %bb, %struct._object** %bb.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %bb.addr, metadata !724, metadata !983), !dbg !3361
  %0 = bitcast i64* %size to i8*, !dbg !3362
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3362
  call void @llvm.dbg.declare(metadata i64* %size, metadata !725, metadata !983), !dbg !3363
  %1 = bitcast i64* %i to i8*, !dbg !3364
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3364
  call void @llvm.dbg.declare(metadata i64* %i, metadata !726, metadata !983), !dbg !3365
  %2 = bitcast %struct._object*** %src to i8*, !dbg !3366
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3366
  call void @llvm.dbg.declare(metadata %struct._object*** %src, metadata !727, metadata !983), !dbg !3367
  %3 = bitcast %struct._object*** %dest to i8*, !dbg !3366
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3366
  call void @llvm.dbg.declare(metadata %struct._object*** %dest, metadata !728, metadata !983), !dbg !3368
  %4 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !3369
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3369
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %np, metadata !729, metadata !983), !dbg !3370
  %5 = load %struct._object*, %struct._object** %bb.addr, align 8, !dbg !3371, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3373
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3373, !tbaa !1202
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !3374
  %7 = load i64, i64* %tp_flags, align 8, !dbg !3374, !tbaa !1204
  %and = and i64 %7, 67108864, !dbg !3375
  %cmp = icmp ne i64 %and, 0, !dbg !3376
  br i1 %cmp, label %if.end, label %if.then, !dbg !3377

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3378, !tbaa !979
  %9 = load %struct._object*, %struct._object** %bb.addr, align 8, !dbg !3380, !tbaa !979
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !3381
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3381, !tbaa !1202
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !3382
  %11 = load i8*, i8** %tp_name, align 8, !dbg !3382, !tbaa !3383
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i8* %11), !dbg !3384
  store %struct._object* null, %struct._object** %retval, !dbg !3385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3385

if.end:                                           ; preds = %entry
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3386, !tbaa !979
  %13 = bitcast %struct.PyTupleObject* %12 to %struct.PyVarObject*, !dbg !3387
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1, !dbg !3388
  %14 = load i64, i64* %ob_size, align 8, !dbg !3388, !tbaa !1214
  %15 = load %struct._object*, %struct._object** %bb.addr, align 8, !dbg !3389, !tbaa !979
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !3390
  %17 = bitcast %struct.PyTupleObject* %16 to %struct.PyVarObject*, !dbg !3391
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1, !dbg !3392
  %18 = load i64, i64* %ob_size2, align 8, !dbg !3392, !tbaa !1214
  %add = add i64 %14, %18, !dbg !3393
  store i64 %add, i64* %size, align 8, !dbg !3394, !tbaa !1027
  %19 = load i64, i64* %size, align 8, !dbg !3395, !tbaa !1027
  %cmp3 = icmp slt i64 %19, 0, !dbg !3397
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !3398

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NoMemory(), !dbg !3399
  store %struct._object* %call5, %struct._object** %retval, !dbg !3400
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3400

if.end.6:                                         ; preds = %if.end
  %20 = load i64, i64* %size, align 8, !dbg !3401, !tbaa !1027
  %call7 = call %struct._object* @PyTuple_New(i64 %20), !dbg !3402
  %21 = bitcast %struct._object* %call7 to %struct.PyTupleObject*, !dbg !3403
  store %struct.PyTupleObject* %21, %struct.PyTupleObject** %np, align 8, !dbg !3404, !tbaa !979
  %22 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3405, !tbaa !979
  %cmp8 = icmp eq %struct.PyTupleObject* %22, null, !dbg !3407
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !3408

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !3409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3409

if.end.10:                                        ; preds = %if.end.6
  %23 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3411, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1, !dbg !3412
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !3411
  store %struct._object** %arraydecay, %struct._object*** %src, align 8, !dbg !3413, !tbaa !979
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3414, !tbaa !979
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1, !dbg !3415
  %arraydecay12 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i32 0, !dbg !3414
  store %struct._object** %arraydecay12, %struct._object*** %dest, align 8, !dbg !3416, !tbaa !979
  store i64 0, i64* %i, align 8, !dbg !3417, !tbaa !1027
  br label %for.cond, !dbg !3418

for.cond:                                         ; preds = %for.inc, %if.end.10
  %25 = load i64, i64* %i, align 8, !dbg !3419, !tbaa !1027
  %26 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3422, !tbaa !979
  %27 = bitcast %struct.PyTupleObject* %26 to %struct.PyVarObject*, !dbg !3423
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1, !dbg !3424
  %28 = load i64, i64* %ob_size13, align 8, !dbg !3424, !tbaa !1214
  %cmp14 = icmp slt i64 %25, %28, !dbg !3425
  br i1 %cmp14, label %for.body, label %for.end, !dbg !3426

for.body:                                         ; preds = %for.cond
  %29 = bitcast %struct._object** %v to i8*, !dbg !3427
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !3427
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !730, metadata !983), !dbg !3428
  %30 = load i64, i64* %i, align 8, !dbg !3429, !tbaa !1027
  %31 = load %struct._object**, %struct._object*** %src, align 8, !dbg !3430, !tbaa !979
  %arrayidx = getelementptr %struct._object*, %struct._object** %31, i64 %30, !dbg !3430
  %32 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3430, !tbaa !979
  store %struct._object* %32, %struct._object** %v, align 8, !dbg !3428, !tbaa !979
  %33 = load %struct._object*, %struct._object** %v, align 8, !dbg !3431, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !3432
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !3433, !tbaa !1054
  %inc = add i64 %34, 1, !dbg !3433
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3433, !tbaa !1054
  %35 = load %struct._object*, %struct._object** %v, align 8, !dbg !3434, !tbaa !979
  %36 = load i64, i64* %i, align 8, !dbg !3435, !tbaa !1027
  %37 = load %struct._object**, %struct._object*** %dest, align 8, !dbg !3436, !tbaa !979
  %arrayidx15 = getelementptr %struct._object*, %struct._object** %37, i64 %36, !dbg !3436
  store %struct._object* %35, %struct._object** %arrayidx15, align 8, !dbg !3437, !tbaa !979
  %38 = bitcast %struct._object** %v to i8*, !dbg !3438
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !3438
  br label %for.inc, !dbg !3439

for.inc:                                          ; preds = %for.body
  %39 = load i64, i64* %i, align 8, !dbg !3440, !tbaa !1027
  %inc16 = add i64 %39, 1, !dbg !3440
  store i64 %inc16, i64* %i, align 8, !dbg !3440, !tbaa !1027
  br label %for.cond, !dbg !3441

for.end:                                          ; preds = %for.cond
  %40 = load %struct._object*, %struct._object** %bb.addr, align 8, !dbg !3442, !tbaa !979
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*, !dbg !3443
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1, !dbg !3444
  %arraydecay18 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i32 0, !dbg !3445
  store %struct._object** %arraydecay18, %struct._object*** %src, align 8, !dbg !3446, !tbaa !979
  %42 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3447, !tbaa !979
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1, !dbg !3448
  %arraydecay20 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i32 0, !dbg !3447
  %43 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3449, !tbaa !979
  %44 = bitcast %struct.PyTupleObject* %43 to %struct.PyVarObject*, !dbg !3450
  %ob_size21 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %44, i32 0, i32 1, !dbg !3451
  %45 = load i64, i64* %ob_size21, align 8, !dbg !3451, !tbaa !1214
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay20, i64 %45, !dbg !3452
  store %struct._object** %add.ptr, %struct._object*** %dest, align 8, !dbg !3453, !tbaa !979
  store i64 0, i64* %i, align 8, !dbg !3454, !tbaa !1027
  br label %for.cond.22, !dbg !3455

for.cond.22:                                      ; preds = %for.inc.31, %for.end
  %46 = load i64, i64* %i, align 8, !dbg !3456, !tbaa !1027
  %47 = load %struct._object*, %struct._object** %bb.addr, align 8, !dbg !3459, !tbaa !979
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*, !dbg !3460
  %49 = bitcast %struct.PyTupleObject* %48 to %struct.PyVarObject*, !dbg !3461
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1, !dbg !3462
  %50 = load i64, i64* %ob_size23, align 8, !dbg !3462, !tbaa !1214
  %cmp24 = icmp slt i64 %46, %50, !dbg !3463
  br i1 %cmp24, label %for.body.25, label %for.end.33, !dbg !3464

for.body.25:                                      ; preds = %for.cond.22
  %51 = bitcast %struct._object** %v26 to i8*, !dbg !3465
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !3465
  call void @llvm.dbg.declare(metadata %struct._object** %v26, metadata !734, metadata !983), !dbg !3466
  %52 = load i64, i64* %i, align 8, !dbg !3467, !tbaa !1027
  %53 = load %struct._object**, %struct._object*** %src, align 8, !dbg !3468, !tbaa !979
  %arrayidx27 = getelementptr %struct._object*, %struct._object** %53, i64 %52, !dbg !3468
  %54 = load %struct._object*, %struct._object** %arrayidx27, align 8, !dbg !3468, !tbaa !979
  store %struct._object* %54, %struct._object** %v26, align 8, !dbg !3466, !tbaa !979
  %55 = load %struct._object*, %struct._object** %v26, align 8, !dbg !3469, !tbaa !979
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !3470
  %56 = load i64, i64* %ob_refcnt28, align 8, !dbg !3471, !tbaa !1054
  %inc29 = add i64 %56, 1, !dbg !3471
  store i64 %inc29, i64* %ob_refcnt28, align 8, !dbg !3471, !tbaa !1054
  %57 = load %struct._object*, %struct._object** %v26, align 8, !dbg !3472, !tbaa !979
  %58 = load i64, i64* %i, align 8, !dbg !3473, !tbaa !1027
  %59 = load %struct._object**, %struct._object*** %dest, align 8, !dbg !3474, !tbaa !979
  %arrayidx30 = getelementptr %struct._object*, %struct._object** %59, i64 %58, !dbg !3474
  store %struct._object* %57, %struct._object** %arrayidx30, align 8, !dbg !3475, !tbaa !979
  %60 = bitcast %struct._object** %v26 to i8*, !dbg !3476
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3476
  br label %for.inc.31, !dbg !3477

for.inc.31:                                       ; preds = %for.body.25
  %61 = load i64, i64* %i, align 8, !dbg !3478, !tbaa !1027
  %inc32 = add i64 %61, 1, !dbg !3478
  store i64 %inc32, i64* %i, align 8, !dbg !3478, !tbaa !1027
  br label %for.cond.22, !dbg !3479

for.end.33:                                       ; preds = %for.cond.22
  %62 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3480, !tbaa !979
  %63 = bitcast %struct.PyTupleObject* %62 to %struct._object*, !dbg !3481
  store %struct._object* %63, %struct._object** %retval, !dbg !3482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3482

cleanup:                                          ; preds = %for.end.33, %if.then.9, %if.then.4, %if.then
  %64 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !3483
  %65 = bitcast %struct._object*** %dest to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !3483
  %66 = bitcast %struct._object*** %src to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3483
  %67 = bitcast i64* %i to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !3483
  %68 = bitcast i64* %size to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3483
  %69 = load %struct._object*, %struct._object** %retval, !dbg !3483
  ret %struct._object* %69, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerepeat(%struct.PyTupleObject* %a, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %size = alloca i64, align 8
  %np = alloca %struct.PyTupleObject*, align 8
  %p = alloca %struct._object**, align 8
  %items = alloca %struct._object**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !742, metadata !983), !dbg !3484
  store i64 %n, i64* %n.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !743, metadata !983), !dbg !3485
  %0 = bitcast i64* %i to i8*, !dbg !3486
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3486
  call void @llvm.dbg.declare(metadata i64* %i, metadata !744, metadata !983), !dbg !3487
  %1 = bitcast i64* %j to i8*, !dbg !3486
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3486
  call void @llvm.dbg.declare(metadata i64* %j, metadata !745, metadata !983), !dbg !3488
  %2 = bitcast i64* %size to i8*, !dbg !3489
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3489
  call void @llvm.dbg.declare(metadata i64* %size, metadata !746, metadata !983), !dbg !3490
  %3 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !3491
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %np, metadata !747, metadata !983), !dbg !3492
  %4 = bitcast %struct._object*** %p to i8*, !dbg !3493
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3493
  call void @llvm.dbg.declare(metadata %struct._object*** %p, metadata !748, metadata !983), !dbg !3494
  %5 = bitcast %struct._object*** %items to i8*, !dbg !3493
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3493
  call void @llvm.dbg.declare(metadata %struct._object*** %items, metadata !749, metadata !983), !dbg !3495
  %6 = load i64, i64* %n.addr, align 8, !dbg !3496, !tbaa !1027
  %cmp = icmp slt i64 %6, 0, !dbg !3498
  br i1 %cmp, label %if.then, label %if.end, !dbg !3499

if.then:                                          ; preds = %entry
  store i64 0, i64* %n.addr, align 8, !dbg !3500, !tbaa !1027
  br label %if.end, !dbg !3501

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3502, !tbaa !979
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*, !dbg !3504
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1, !dbg !3505
  %9 = load i64, i64* %ob_size, align 8, !dbg !3505, !tbaa !1214
  %cmp1 = icmp eq i64 %9, 0, !dbg !3506
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !3507

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i64, i64* %n.addr, align 8, !dbg !3508, !tbaa !1027
  %cmp2 = icmp eq i64 %10, 1, !dbg !3510
  br i1 %cmp2, label %if.then.3, label %if.end.11, !dbg !3511

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3512, !tbaa !979
  %12 = bitcast %struct.PyTupleObject* %11 to %struct._object*, !dbg !3515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3516
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3516, !tbaa !1202
  %cmp4 = icmp eq %struct._typeobject* %13, @PyTuple_Type, !dbg !3517
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !3518

if.then.5:                                        ; preds = %if.then.3
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3519, !tbaa !979
  %15 = bitcast %struct.PyTupleObject* %14 to %struct._object*, !dbg !3521
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3522
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3523, !tbaa !1054
  %inc = add i64 %16, 1, !dbg !3523
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3523, !tbaa !1054
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3524, !tbaa !979
  %18 = bitcast %struct.PyTupleObject* %17 to %struct._object*, !dbg !3525
  store %struct._object* %18, %struct._object** %retval, !dbg !3526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3526

if.end.6:                                         ; preds = %if.then.3
  %19 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3527, !tbaa !979
  %20 = bitcast %struct.PyTupleObject* %19 to %struct.PyVarObject*, !dbg !3529
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1, !dbg !3530
  %21 = load i64, i64* %ob_size7, align 8, !dbg !3530, !tbaa !1214
  %cmp8 = icmp eq i64 %21, 0, !dbg !3531
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !3532

if.then.9:                                        ; preds = %if.end.6
  %call = call %struct._object* @PyTuple_New(i64 0), !dbg !3533
  store %struct._object* %call, %struct._object** %retval, !dbg !3534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3534

if.end.10:                                        ; preds = %if.end.6
  br label %if.end.11, !dbg !3535

if.end.11:                                        ; preds = %if.end.10, %lor.lhs.false
  %22 = load i64, i64* %n.addr, align 8, !dbg !3536, !tbaa !1027
  %23 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3538, !tbaa !979
  %24 = bitcast %struct.PyTupleObject* %23 to %struct.PyVarObject*, !dbg !3539
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1, !dbg !3540
  %25 = load i64, i64* %ob_size12, align 8, !dbg !3540, !tbaa !1214
  %div = sdiv i64 9223372036854775807, %25, !dbg !3541
  %cmp13 = icmp sgt i64 %22, %div, !dbg !3542
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !3543

if.then.14:                                       ; preds = %if.end.11
  %call15 = call %struct._object* @PyErr_NoMemory(), !dbg !3544
  store %struct._object* %call15, %struct._object** %retval, !dbg !3545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3545

if.end.16:                                        ; preds = %if.end.11
  %26 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3546, !tbaa !979
  %27 = bitcast %struct.PyTupleObject* %26 to %struct.PyVarObject*, !dbg !3547
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1, !dbg !3548
  %28 = load i64, i64* %ob_size17, align 8, !dbg !3548, !tbaa !1214
  %29 = load i64, i64* %n.addr, align 8, !dbg !3549, !tbaa !1027
  %mul = mul i64 %28, %29, !dbg !3550
  store i64 %mul, i64* %size, align 8, !dbg !3551, !tbaa !1027
  %30 = load i64, i64* %size, align 8, !dbg !3552, !tbaa !1027
  %call18 = call %struct._object* @PyTuple_New(i64 %30), !dbg !3553
  %31 = bitcast %struct._object* %call18 to %struct.PyTupleObject*, !dbg !3554
  store %struct.PyTupleObject* %31, %struct.PyTupleObject** %np, align 8, !dbg !3555, !tbaa !979
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3556, !tbaa !979
  %cmp19 = icmp eq %struct.PyTupleObject* %32, null, !dbg !3558
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3559

if.then.20:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !3560
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3560

if.end.21:                                        ; preds = %if.end.16
  %33 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3561, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1, !dbg !3562
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !3561
  store %struct._object** %arraydecay, %struct._object*** %p, align 8, !dbg !3563, !tbaa !979
  %34 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3564, !tbaa !979
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1, !dbg !3565
  %arraydecay23 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i32 0, !dbg !3564
  store %struct._object** %arraydecay23, %struct._object*** %items, align 8, !dbg !3566, !tbaa !979
  store i64 0, i64* %i, align 8, !dbg !3567, !tbaa !1027
  br label %for.cond, !dbg !3569

for.cond:                                         ; preds = %for.inc.32, %if.end.21
  %35 = load i64, i64* %i, align 8, !dbg !3570, !tbaa !1027
  %36 = load i64, i64* %n.addr, align 8, !dbg !3574, !tbaa !1027
  %cmp24 = icmp slt i64 %35, %36, !dbg !3575
  br i1 %cmp24, label %for.body, label %for.end.34, !dbg !3576

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8, !dbg !3577, !tbaa !1027
  br label %for.cond.25, !dbg !3580

for.cond.25:                                      ; preds = %for.inc, %for.body
  %37 = load i64, i64* %j, align 8, !dbg !3581, !tbaa !1027
  %38 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3585, !tbaa !979
  %39 = bitcast %struct.PyTupleObject* %38 to %struct.PyVarObject*, !dbg !3586
  %ob_size26 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %39, i32 0, i32 1, !dbg !3587
  %40 = load i64, i64* %ob_size26, align 8, !dbg !3587, !tbaa !1214
  %cmp27 = icmp slt i64 %37, %40, !dbg !3588
  br i1 %cmp27, label %for.body.28, label %for.end, !dbg !3589

for.body.28:                                      ; preds = %for.cond.25
  %41 = load i64, i64* %j, align 8, !dbg !3590, !tbaa !1027
  %42 = load %struct._object**, %struct._object*** %items, align 8, !dbg !3592, !tbaa !979
  %arrayidx = getelementptr %struct._object*, %struct._object** %42, i64 %41, !dbg !3592
  %43 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3592, !tbaa !979
  %44 = load %struct._object**, %struct._object*** %p, align 8, !dbg !3593, !tbaa !979
  store %struct._object* %43, %struct._object** %44, align 8, !dbg !3594, !tbaa !979
  %45 = load %struct._object**, %struct._object*** %p, align 8, !dbg !3595, !tbaa !979
  %46 = load %struct._object*, %struct._object** %45, align 8, !dbg !3596, !tbaa !979
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !3597
  %47 = load i64, i64* %ob_refcnt29, align 8, !dbg !3598, !tbaa !1054
  %inc30 = add i64 %47, 1, !dbg !3598
  store i64 %inc30, i64* %ob_refcnt29, align 8, !dbg !3598, !tbaa !1054
  %48 = load %struct._object**, %struct._object*** %p, align 8, !dbg !3599, !tbaa !979
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %48, i32 1, !dbg !3599
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8, !dbg !3599, !tbaa !979
  br label %for.inc, !dbg !3600

for.inc:                                          ; preds = %for.body.28
  %49 = load i64, i64* %j, align 8, !dbg !3601, !tbaa !1027
  %inc31 = add i64 %49, 1, !dbg !3601
  store i64 %inc31, i64* %j, align 8, !dbg !3601, !tbaa !1027
  br label %for.cond.25, !dbg !3602

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.32, !dbg !3603

for.inc.32:                                       ; preds = %for.end
  %50 = load i64, i64* %i, align 8, !dbg !3604, !tbaa !1027
  %inc33 = add i64 %50, 1, !dbg !3604
  store i64 %inc33, i64* %i, align 8, !dbg !3604, !tbaa !1027
  br label %for.cond, !dbg !3605

for.end.34:                                       ; preds = %for.cond
  %51 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8, !dbg !3606, !tbaa !979
  %52 = bitcast %struct.PyTupleObject* %51 to %struct._object*, !dbg !3607
  store %struct._object* %52, %struct._object** %retval, !dbg !3608
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3608

cleanup:                                          ; preds = %for.end.34, %if.then.20, %if.then.14, %if.then.9, %if.then.5
  %53 = bitcast %struct._object*** %items to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !3609
  %54 = bitcast %struct._object*** %p to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !3609
  %55 = bitcast %struct.PyTupleObject** %np to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !3609
  %56 = bitcast i64* %size to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !3609
  %57 = bitcast i64* %j to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !3609
  %58 = bitcast i64* %i to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !3609
  %59 = load %struct._object*, %struct._object** %retval, !dbg !3609
  ret %struct._object* %59, !dbg !3609
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleitem(%struct.PyTupleObject* %a, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !752, metadata !983), !dbg !3610
  store i64 %i, i64* %i.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !753, metadata !983), !dbg !3611
  %0 = load i64, i64* %i.addr, align 8, !dbg !3612, !tbaa !1027
  %cmp = icmp slt i64 %0, 0, !dbg !3614
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3615

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8, !dbg !3616, !tbaa !1027
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3618, !tbaa !979
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*, !dbg !3619
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1, !dbg !3620
  %4 = load i64, i64* %ob_size, align 8, !dbg !3620, !tbaa !1214
  %cmp1 = icmp sge i64 %1, %4, !dbg !3621
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3622

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3623, !tbaa !979
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)), !dbg !3625
  store %struct._object* null, %struct._object** %retval, !dbg !3626
  br label %return, !dbg !3626

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %i.addr, align 8, !dbg !3627, !tbaa !1027
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3628, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1, !dbg !3629
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %6, !dbg !3628
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3628, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3630
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3631, !tbaa !1054
  %inc = add i64 %9, 1, !dbg !3631
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3631, !tbaa !1054
  %10 = load i64, i64* %i.addr, align 8, !dbg !3632, !tbaa !1027
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3633, !tbaa !979
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !3634
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %10, !dbg !3633
  %12 = load %struct._object*, %struct._object** %arrayidx3, align 8, !dbg !3633, !tbaa !979
  store %struct._object* %12, %struct._object** %retval, !dbg !3635
  br label %return, !dbg !3635

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval, !dbg !3636
  ret %struct._object* %13, !dbg !3636
}

; Function Attrs: nounwind uwtable
define internal i32 @tuplecontains(%struct.PyTupleObject* %a, %struct._object* %el) #0 {
entry:
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %el.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cmp = alloca i32, align 4
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %a.addr, metadata !758, metadata !983), !dbg !3637
  store %struct._object* %el, %struct._object** %el.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %el.addr, metadata !759, metadata !983), !dbg !3638
  %0 = bitcast i64* %i to i8*, !dbg !3639
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3639
  call void @llvm.dbg.declare(metadata i64* %i, metadata !760, metadata !983), !dbg !3640
  %1 = bitcast i32* %cmp to i8*, !dbg !3641
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3641
  call void @llvm.dbg.declare(metadata i32* %cmp, metadata !761, metadata !983), !dbg !3642
  store i64 0, i64* %i, align 8, !dbg !3643, !tbaa !1027
  store i32 0, i32* %cmp, align 4, !dbg !3645, !tbaa !991
  br label %for.cond, !dbg !3646

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %cmp, align 4, !dbg !3647, !tbaa !991
  %cmp1 = icmp eq i32 %2, 0, !dbg !3651
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !3652

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8, !dbg !3653, !tbaa !1027
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3655, !tbaa !979
  %5 = bitcast %struct.PyTupleObject* %4 to %struct.PyVarObject*, !dbg !3656
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !3657
  %6 = load i64, i64* %ob_size, align 8, !dbg !3657, !tbaa !1214
  %cmp2 = icmp slt i64 %3, %6, !dbg !3658
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %for.body, label %for.end, !dbg !3659

for.body:                                         ; preds = %land.end
  %8 = load %struct._object*, %struct._object** %el.addr, align 8, !dbg !3661, !tbaa !979
  %9 = load i64, i64* %i, align 8, !dbg !3662, !tbaa !1027
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8, !dbg !3663, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1, !dbg !3664
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9, !dbg !3665
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3665, !tbaa !979
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %11, i32 2), !dbg !3666
  store i32 %call, i32* %cmp, align 4, !dbg !3667, !tbaa !991
  br label %for.inc, !dbg !3668

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8, !dbg !3669, !tbaa !1027
  %inc = add i64 %12, 1, !dbg !3669
  store i64 %inc, i64* %i, align 8, !dbg !3669, !tbaa !1027
  br label %for.cond, !dbg !3670

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %cmp, align 4, !dbg !3671, !tbaa !991
  %14 = bitcast i32* %cmp to i8*, !dbg !3672
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !3672
  %15 = bitcast i64* %i to i8*, !dbg !3672
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3672
  ret i32 %13, !dbg !3673
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplesubscript(%struct.PyTupleObject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %cur = alloca i64, align 8
  %i15 = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %self.addr, metadata !764, metadata !983), !dbg !3674
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !765, metadata !983), !dbg !3675
  %0 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3676, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3677
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3677, !tbaa !1202
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10, !dbg !3678
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !3678, !tbaa !3679
  %cmp = icmp ne %struct.PyNumberMethods* %2, null, !dbg !3680
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !3681

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3682, !tbaa !979
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3684
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3684, !tbaa !1202
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10, !dbg !3685
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8, !dbg !3685, !tbaa !3679
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33, !dbg !3686
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !3686, !tbaa !3687
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null, !dbg !3689
  br i1 %cmp3, label %if.then, label %if.else, !dbg !3690

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast i64* %i to i8*, !dbg !3691
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3691
  call void @llvm.dbg.declare(metadata i64* %i, metadata !766, metadata !983), !dbg !3692
  %8 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3693, !tbaa !979
  %9 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3694, !tbaa !979
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %8, %struct._object* %9), !dbg !3695
  store i64 %call, i64* %i, align 8, !dbg !3692, !tbaa !1027
  %10 = load i64, i64* %i, align 8, !dbg !3696, !tbaa !1027
  %cmp4 = icmp eq i64 %10, -1, !dbg !3698
  br i1 %cmp4, label %land.lhs.true.5, label %if.end, !dbg !3699

land.lhs.true.5:                                  ; preds = %if.then
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !3700
  %tobool = icmp ne %struct._object* %call6, null, !dbg !3700
  br i1 %tobool, label %if.then.7, label %if.end, !dbg !3702

if.then.7:                                        ; preds = %land.lhs.true.5
  store %struct._object* null, %struct._object** %retval, !dbg !3703
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3703

if.end:                                           ; preds = %land.lhs.true.5, %if.then
  %11 = load i64, i64* %i, align 8, !dbg !3704, !tbaa !1027
  %cmp8 = icmp slt i64 %11, 0, !dbg !3706
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !3707

if.then.9:                                        ; preds = %if.end
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3708, !tbaa !979
  %13 = bitcast %struct.PyTupleObject* %12 to %struct.PyVarObject*, !dbg !3709
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1, !dbg !3710
  %14 = load i64, i64* %ob_size, align 8, !dbg !3710, !tbaa !1214
  %15 = load i64, i64* %i, align 8, !dbg !3711, !tbaa !1027
  %add = add i64 %15, %14, !dbg !3711
  store i64 %add, i64* %i, align 8, !dbg !3711, !tbaa !1027
  br label %if.end.10, !dbg !3712

if.end.10:                                        ; preds = %if.then.9, %if.end
  %16 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3713, !tbaa !979
  %17 = load i64, i64* %i, align 8, !dbg !3714, !tbaa !1027
  %call11 = call %struct._object* @tupleitem(%struct.PyTupleObject* %16, i64 %17), !dbg !3715
  store %struct._object* %call11, %struct._object** %retval, !dbg !3716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3716

cleanup:                                          ; preds = %if.end.10, %if.then.7
  %18 = bitcast i64* %i to i8*, !dbg !3717
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3717
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %19 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3718, !tbaa !979
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !3719
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !3719, !tbaa !1202
  %cmp13 = icmp eq %struct._typeobject* %20, @PySlice_Type, !dbg !3720
  br i1 %cmp13, label %if.then.14, label %if.else.58, !dbg !3721

if.then.14:                                       ; preds = %if.else
  %21 = bitcast i64* %start to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %start, metadata !769, metadata !983), !dbg !3723
  %22 = bitcast i64* %stop to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %stop, metadata !772, metadata !983), !dbg !3724
  %23 = bitcast i64* %step to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %step, metadata !773, metadata !983), !dbg !3725
  %24 = bitcast i64* %slicelength to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %slicelength, metadata !774, metadata !983), !dbg !3726
  %25 = bitcast i64* %cur to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %cur, metadata !775, metadata !983), !dbg !3727
  %26 = bitcast i64* %i15 to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %i15, metadata !776, metadata !983), !dbg !3728
  %27 = bitcast %struct._object** %result to i8*, !dbg !3729
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3729
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !777, metadata !983), !dbg !3730
  %28 = bitcast %struct._object** %it to i8*, !dbg !3731
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !3731
  call void @llvm.dbg.declare(metadata %struct._object** %it, metadata !778, metadata !983), !dbg !3732
  %29 = bitcast %struct._object*** %src to i8*, !dbg !3733
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !3733
  call void @llvm.dbg.declare(metadata %struct._object*** %src, metadata !779, metadata !983), !dbg !3734
  %30 = bitcast %struct._object*** %dest to i8*, !dbg !3733
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !3733
  call void @llvm.dbg.declare(metadata %struct._object*** %dest, metadata !780, metadata !983), !dbg !3735
  %31 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3736, !tbaa !979
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3738, !tbaa !979
  %33 = bitcast %struct.PyTupleObject* %32 to %struct.PyVarObject*, !dbg !3739
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1, !dbg !3740
  %34 = load i64, i64* %ob_size16, align 8, !dbg !3740, !tbaa !1214
  %call17 = call i32 @PySlice_GetIndicesEx(%struct._object* %31, i64 %34, i64* %start, i64* %stop, i64* %step, i64* %slicelength), !dbg !3741
  %cmp18 = icmp slt i32 %call17, 0, !dbg !3742
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !3743

if.then.19:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval, !dbg !3744
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !3744

if.end.20:                                        ; preds = %if.then.14
  %35 = load i64, i64* %slicelength, align 8, !dbg !3746, !tbaa !1027
  %cmp21 = icmp sle i64 %35, 0, !dbg !3748
  br i1 %cmp21, label %if.then.22, label %if.else.24, !dbg !3749

if.then.22:                                       ; preds = %if.end.20
  %call23 = call %struct._object* @PyTuple_New(i64 0), !dbg !3750
  store %struct._object* %call23, %struct._object** %retval, !dbg !3752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !3752

if.else.24:                                       ; preds = %if.end.20
  %36 = load i64, i64* %start, align 8, !dbg !3753, !tbaa !1027
  %cmp25 = icmp eq i64 %36, 0, !dbg !3755
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.35, !dbg !3756

land.lhs.true.26:                                 ; preds = %if.else.24
  %37 = load i64, i64* %step, align 8, !dbg !3757, !tbaa !1027
  %cmp27 = icmp eq i64 %37, 1, !dbg !3759
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.35, !dbg !3760

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %38 = load i64, i64* %slicelength, align 8, !dbg !3761, !tbaa !1027
  %39 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3762, !tbaa !979
  %40 = bitcast %struct.PyTupleObject* %39 to %struct.PyVarObject*, !dbg !3763
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %40, i32 0, i32 1, !dbg !3764
  %41 = load i64, i64* %ob_size29, align 8, !dbg !3764, !tbaa !1214
  %cmp30 = icmp eq i64 %38, %41, !dbg !3765
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35, !dbg !3766

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %42 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3767, !tbaa !979
  %43 = bitcast %struct.PyTupleObject* %42 to %struct._object*, !dbg !3768
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !3769
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !3769, !tbaa !1202
  %cmp33 = icmp eq %struct._typeobject* %44, @PyTuple_Type, !dbg !3770
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !3771

if.then.34:                                       ; preds = %land.lhs.true.31
  %45 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3772, !tbaa !979
  %46 = bitcast %struct.PyTupleObject* %45 to %struct._object*, !dbg !3774
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !3775
  %47 = load i64, i64* %ob_refcnt, align 8, !dbg !3776, !tbaa !1054
  %inc = add i64 %47, 1, !dbg !3776
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3776, !tbaa !1054
  %48 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3777, !tbaa !979
  %49 = bitcast %struct.PyTupleObject* %48 to %struct._object*, !dbg !3778
  store %struct._object* %49, %struct._object** %retval, !dbg !3779
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !3779

if.else.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.28, %land.lhs.true.26, %if.else.24
  %50 = load i64, i64* %slicelength, align 8, !dbg !3780, !tbaa !1027
  %call36 = call %struct._object* @PyTuple_New(i64 %50), !dbg !3782
  store %struct._object* %call36, %struct._object** %result, align 8, !dbg !3783, !tbaa !979
  %51 = load %struct._object*, %struct._object** %result, align 8, !dbg !3784, !tbaa !979
  %tobool37 = icmp ne %struct._object* %51, null, !dbg !3784
  br i1 %tobool37, label %if.end.39, label %if.then.38, !dbg !3786

if.then.38:                                       ; preds = %if.else.35
  store %struct._object* null, %struct._object** %retval, !dbg !3787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !3789

if.end.39:                                        ; preds = %if.else.35
  %52 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3790, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1, !dbg !3791
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0, !dbg !3790
  store %struct._object** %arraydecay, %struct._object*** %src, align 8, !dbg !3792, !tbaa !979
  %53 = load %struct._object*, %struct._object** %result, align 8, !dbg !3793, !tbaa !979
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*, !dbg !3794
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1, !dbg !3795
  %arraydecay41 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i32 0, !dbg !3796
  store %struct._object** %arraydecay41, %struct._object*** %dest, align 8, !dbg !3797, !tbaa !979
  %55 = load i64, i64* %start, align 8, !dbg !3798, !tbaa !1027
  store i64 %55, i64* %cur, align 8, !dbg !3800, !tbaa !1027
  store i64 0, i64* %i15, align 8, !dbg !3801, !tbaa !1027
  br label %for.cond, !dbg !3802

for.cond:                                         ; preds = %for.inc, %if.end.39
  %56 = load i64, i64* %i15, align 8, !dbg !3803, !tbaa !1027
  %57 = load i64, i64* %slicelength, align 8, !dbg !3807, !tbaa !1027
  %cmp42 = icmp slt i64 %56, %57, !dbg !3808
  br i1 %cmp42, label %for.body, label %for.end, !dbg !3809

for.body:                                         ; preds = %for.cond
  %58 = load i64, i64* %cur, align 8, !dbg !3810, !tbaa !1027
  %59 = load %struct._object**, %struct._object*** %src, align 8, !dbg !3812, !tbaa !979
  %arrayidx = getelementptr %struct._object*, %struct._object** %59, i64 %58, !dbg !3812
  %60 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3812, !tbaa !979
  store %struct._object* %60, %struct._object** %it, align 8, !dbg !3813, !tbaa !979
  %61 = load %struct._object*, %struct._object** %it, align 8, !dbg !3814, !tbaa !979
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !3815
  %62 = load i64, i64* %ob_refcnt43, align 8, !dbg !3816, !tbaa !1054
  %inc44 = add i64 %62, 1, !dbg !3816
  store i64 %inc44, i64* %ob_refcnt43, align 8, !dbg !3816, !tbaa !1054
  %63 = load %struct._object*, %struct._object** %it, align 8, !dbg !3817, !tbaa !979
  %64 = load i64, i64* %i15, align 8, !dbg !3818, !tbaa !1027
  %65 = load %struct._object**, %struct._object*** %dest, align 8, !dbg !3819, !tbaa !979
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %65, i64 %64, !dbg !3819
  store %struct._object* %63, %struct._object** %arrayidx45, align 8, !dbg !3820, !tbaa !979
  br label %for.inc, !dbg !3821

for.inc:                                          ; preds = %for.body
  %66 = load i64, i64* %step, align 8, !dbg !3822, !tbaa !1027
  %67 = load i64, i64* %cur, align 8, !dbg !3823, !tbaa !1027
  %add46 = add i64 %67, %66, !dbg !3823
  store i64 %add46, i64* %cur, align 8, !dbg !3823, !tbaa !1027
  %68 = load i64, i64* %i15, align 8, !dbg !3824, !tbaa !1027
  %inc47 = add i64 %68, 1, !dbg !3824
  store i64 %inc47, i64* %i15, align 8, !dbg !3824, !tbaa !1027
  br label %for.cond, !dbg !3825

for.end:                                          ; preds = %for.cond
  %69 = load %struct._object*, %struct._object** %result, align 8, !dbg !3826, !tbaa !979
  store %struct._object* %69, %struct._object** %retval, !dbg !3827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !3827

cleanup.48:                                       ; preds = %for.end, %if.then.38, %if.then.34, %if.then.22, %if.then.19
  %70 = bitcast %struct._object*** %dest to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !3828
  %71 = bitcast %struct._object*** %src to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !3828
  %72 = bitcast %struct._object** %it to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !3828
  %73 = bitcast %struct._object** %result to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !3828
  %74 = bitcast i64* %i15 to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3828
  %75 = bitcast i64* %cur to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !3828
  %76 = bitcast i64* %slicelength to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3828
  %77 = bitcast i64* %step to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3828
  %78 = bitcast i64* %stop to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !3828
  %79 = bitcast i64* %start to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !3828
  br label %return

if.else.58:                                       ; preds = %if.else
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3829, !tbaa !979
  %81 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !3831, !tbaa !979
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !3832
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !3832, !tbaa !1202
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 1, !dbg !3833
  %83 = load i8*, i8** %tp_name, align 8, !dbg !3833, !tbaa !3383
  %call60 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i8* %83), !dbg !3834
  store %struct._object* null, %struct._object** %retval, !dbg !3835
  br label %return, !dbg !3835

return:                                           ; preds = %if.else.58, %cleanup.48, %cleanup
  %84 = load %struct._object*, %struct._object** %retval, !dbg !3836
  ret %struct._object* %84, !dbg !3836
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #3

declare i64 @PyObject_Hash(%struct._object*) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_getnewargs(%struct.PyTupleObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyTupleObject*, align 8
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %v.addr, metadata !825, metadata !983), !dbg !3837
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !3838, !tbaa !979
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8, !dbg !3839, !tbaa !979
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*, !dbg !3840
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1, !dbg !3841
  %3 = load i64, i64* %ob_size, align 8, !dbg !3841, !tbaa !1214
  %call = call %struct._object* @tupleslice(%struct.PyTupleObject* %0, i64 0, i64 %3), !dbg !3842
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._object* %call), !dbg !3843
  ret %struct._object* %call1, !dbg !3844
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_sizeof(%struct.PyTupleObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %res = alloca i64, align 8
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %self.addr, metadata !828, metadata !983), !dbg !3845
  %0 = bitcast i64* %res to i8*, !dbg !3846
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3846
  call void @llvm.dbg.declare(metadata i64* %res, metadata !829, metadata !983), !dbg !3847
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 2), align 8, !dbg !3848, !tbaa !1009
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3849, !tbaa !979
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*, !dbg !3850
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1, !dbg !3851
  %4 = load i64, i64* %ob_size, align 8, !dbg !3851, !tbaa !1214
  %mul = mul i64 %4, 8, !dbg !3852
  %add = add i64 %1, %mul, !dbg !3853
  store i64 %add, i64* %res, align 8, !dbg !3854, !tbaa !1027
  %5 = load i64, i64* %res, align 8, !dbg !3855, !tbaa !1027
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %5), !dbg !3856
  %6 = bitcast i64* %res to i8*, !dbg !3857
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !3857
  ret %struct._object* %call, !dbg !3858
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleindex(%struct.PyTupleObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %cmp18 = alloca i32, align 4
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %self.addr, metadata !832, metadata !983), !dbg !3859
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !833, metadata !983), !dbg !3860
  %0 = bitcast i64* %i to i8*, !dbg !3861
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3861
  call void @llvm.dbg.declare(metadata i64* %i, metadata !834, metadata !983), !dbg !3862
  %1 = bitcast i64* %start to i8*, !dbg !3861
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3861
  call void @llvm.dbg.declare(metadata i64* %start, metadata !835, metadata !983), !dbg !3863
  store i64 0, i64* %start, align 8, !dbg !3863, !tbaa !1027
  %2 = bitcast i64* %stop to i8*, !dbg !3861
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3861
  call void @llvm.dbg.declare(metadata i64* %stop, metadata !836, metadata !983), !dbg !3864
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3865, !tbaa !979
  %4 = bitcast %struct.PyTupleObject* %3 to %struct.PyVarObject*, !dbg !3866
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !3867
  %5 = load i64, i64* %ob_size, align 8, !dbg !3867, !tbaa !1214
  store i64 %5, i64* %stop, align 8, !dbg !3864, !tbaa !1027
  %6 = bitcast %struct._object** %v to i8*, !dbg !3868
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3868
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !837, metadata !983), !dbg !3869
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3870, !tbaa !979
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object** %v, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %start, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %stop), !dbg !3872
  %tobool = icmp ne i32 %call, 0, !dbg !3872
  br i1 %tobool, label %if.end, label %if.then, !dbg !3873

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3874
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !3874

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %start, align 8, !dbg !3875, !tbaa !1027
  %cmp = icmp slt i64 %8, 0, !dbg !3877
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !3878

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3879, !tbaa !979
  %10 = bitcast %struct.PyTupleObject* %9 to %struct.PyVarObject*, !dbg !3881
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1, !dbg !3882
  %11 = load i64, i64* %ob_size2, align 8, !dbg !3882, !tbaa !1214
  %12 = load i64, i64* %start, align 8, !dbg !3883, !tbaa !1027
  %add = add i64 %12, %11, !dbg !3883
  store i64 %add, i64* %start, align 8, !dbg !3883, !tbaa !1027
  %13 = load i64, i64* %start, align 8, !dbg !3884, !tbaa !1027
  %cmp3 = icmp slt i64 %13, 0, !dbg !3886
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3887

if.then.4:                                        ; preds = %if.then.1
  store i64 0, i64* %start, align 8, !dbg !3888, !tbaa !1027
  br label %if.end.5, !dbg !3889

if.end.5:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.6, !dbg !3890

if.end.6:                                         ; preds = %if.end.5, %if.end
  %14 = load i64, i64* %stop, align 8, !dbg !3891, !tbaa !1027
  %cmp7 = icmp slt i64 %14, 0, !dbg !3893
  br i1 %cmp7, label %if.then.8, label %if.end.14, !dbg !3894

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3895, !tbaa !979
  %16 = bitcast %struct.PyTupleObject* %15 to %struct.PyVarObject*, !dbg !3897
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1, !dbg !3898
  %17 = load i64, i64* %ob_size9, align 8, !dbg !3898, !tbaa !1214
  %18 = load i64, i64* %stop, align 8, !dbg !3899, !tbaa !1027
  %add10 = add i64 %18, %17, !dbg !3899
  store i64 %add10, i64* %stop, align 8, !dbg !3899, !tbaa !1027
  %19 = load i64, i64* %stop, align 8, !dbg !3900, !tbaa !1027
  %cmp11 = icmp slt i64 %19, 0, !dbg !3902
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3903

if.then.12:                                       ; preds = %if.then.8
  store i64 0, i64* %stop, align 8, !dbg !3904, !tbaa !1027
  br label %if.end.13, !dbg !3905

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14, !dbg !3906

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %20 = load i64, i64* %start, align 8, !dbg !3907, !tbaa !1027
  store i64 %20, i64* %i, align 8, !dbg !3908, !tbaa !1027
  br label %for.cond, !dbg !3909

for.cond:                                         ; preds = %for.inc, %if.end.14
  %21 = load i64, i64* %i, align 8, !dbg !3910, !tbaa !1027
  %22 = load i64, i64* %stop, align 8, !dbg !3913, !tbaa !1027
  %cmp15 = icmp slt i64 %21, %22, !dbg !3914
  br i1 %cmp15, label %land.rhs, label %land.end, !dbg !3915

land.rhs:                                         ; preds = %for.cond
  %23 = load i64, i64* %i, align 8, !dbg !3916, !tbaa !1027
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3918, !tbaa !979
  %25 = bitcast %struct.PyTupleObject* %24 to %struct.PyVarObject*, !dbg !3919
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1, !dbg !3920
  %26 = load i64, i64* %ob_size16, align 8, !dbg !3920, !tbaa !1214
  %cmp17 = icmp slt i64 %23, %26, !dbg !3921
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %27 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %27, label %for.body, label %for.end, !dbg !3922

for.body:                                         ; preds = %land.end
  %28 = bitcast i32* %cmp18 to i8*, !dbg !3924
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !3924
  call void @llvm.dbg.declare(metadata i32* %cmp18, metadata !838, metadata !983), !dbg !3925
  %29 = load i64, i64* %i, align 8, !dbg !3926, !tbaa !1027
  %30 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3927, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1, !dbg !3928
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %29, !dbg !3927
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3927, !tbaa !979
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !3929, !tbaa !979
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %31, %struct._object* %32, i32 2), !dbg !3930
  store i32 %call19, i32* %cmp18, align 4, !dbg !3925, !tbaa !991
  %33 = load i32, i32* %cmp18, align 4, !dbg !3931, !tbaa !991
  %cmp20 = icmp sgt i32 %33, 0, !dbg !3933
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3934

if.then.21:                                       ; preds = %for.body
  %34 = load i64, i64* %i, align 8, !dbg !3935, !tbaa !1027
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %34), !dbg !3936
  store %struct._object* %call22, %struct._object** %retval, !dbg !3937
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3937

if.else:                                          ; preds = %for.body
  %35 = load i32, i32* %cmp18, align 4, !dbg !3938, !tbaa !991
  %cmp23 = icmp slt i32 %35, 0, !dbg !3940
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !3941

if.then.24:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !3942
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3942

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %cleanup.dest.slot, !dbg !3943
  br label %cleanup, !dbg !3943

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.21
  %36 = bitcast i32* %cmp18 to i8*, !dbg !3944
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !3944
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3945

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i64, i64* %i, align 8, !dbg !3946, !tbaa !1027
  %inc = add i64 %37, 1, !dbg !3946
  store i64 %inc, i64* %i, align 8, !dbg !3946, !tbaa !1027
  br label %for.cond, !dbg !3947

for.end:                                          ; preds = %land.end
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3948, !tbaa !979
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0)), !dbg !3949
  store %struct._object* null, %struct._object** %retval, !dbg !3950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !3950

cleanup.27:                                       ; preds = %for.end, %cleanup, %if.then
  %39 = bitcast %struct._object** %v to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !3951
  %40 = bitcast i64* %stop to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3951
  %41 = bitcast i64* %start to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3951
  %42 = bitcast i64* %i to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3951
  %43 = load %struct._object*, %struct._object** %retval, !dbg !3951
  ret %struct._object* %43, !dbg !3951
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplecount(%struct.PyTupleObject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %cmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %self.addr, metadata !844, metadata !983), !dbg !3952
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !845, metadata !983), !dbg !3953
  %0 = bitcast i64* %count to i8*, !dbg !3954
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3954
  call void @llvm.dbg.declare(metadata i64* %count, metadata !846, metadata !983), !dbg !3955
  store i64 0, i64* %count, align 8, !dbg !3955, !tbaa !1027
  %1 = bitcast i64* %i to i8*, !dbg !3956
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3956
  call void @llvm.dbg.declare(metadata i64* %i, metadata !847, metadata !983), !dbg !3957
  store i64 0, i64* %i, align 8, !dbg !3958, !tbaa !1027
  br label %for.cond, !dbg !3959

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !dbg !3960, !tbaa !1027
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3963, !tbaa !979
  %4 = bitcast %struct.PyTupleObject* %3 to %struct.PyVarObject*, !dbg !3964
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !3965
  %5 = load i64, i64* %ob_size, align 8, !dbg !3965, !tbaa !1214
  %cmp = icmp slt i64 %2, %5, !dbg !3966
  br i1 %cmp, label %for.body, label %for.end, !dbg !3967

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %cmp1 to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !3968
  call void @llvm.dbg.declare(metadata i32* %cmp1, metadata !848, metadata !983), !dbg !3969
  %7 = load i64, i64* %i, align 8, !dbg !3970, !tbaa !1027
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !3971, !tbaa !979
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !3972
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %7, !dbg !3971
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3971, !tbaa !979
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3973, !tbaa !979
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %9, %struct._object* %10, i32 2), !dbg !3974
  store i32 %call, i32* %cmp1, align 4, !dbg !3969, !tbaa !991
  %11 = load i32, i32* %cmp1, align 4, !dbg !3975, !tbaa !991
  %cmp2 = icmp sgt i32 %11, 0, !dbg !3977
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3978

if.then:                                          ; preds = %for.body
  %12 = load i64, i64* %count, align 8, !dbg !3979, !tbaa !1027
  %inc = add i64 %12, 1, !dbg !3979
  store i64 %inc, i64* %count, align 8, !dbg !3979, !tbaa !1027
  br label %if.end.5, !dbg !3980

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %cmp1, align 4, !dbg !3981, !tbaa !991
  %cmp3 = icmp slt i32 %13, 0, !dbg !3983
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3984

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !3985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3985

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3986
  br label %cleanup, !dbg !3986

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %14 = bitcast i32* %cmp1 to i8*, !dbg !3987
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !3987
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3988

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, i64* %i, align 8, !dbg !3989, !tbaa !1027
  %inc6 = add i64 %15, 1, !dbg !3989
  store i64 %inc6, i64* %i, align 8, !dbg !3989, !tbaa !1027
  br label %for.cond, !dbg !3990

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %count, align 8, !dbg !3991, !tbaa !1027
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %16), !dbg !3992
  store %struct._object* %call7, %struct._object** %retval, !dbg !3993
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8, !dbg !3993

cleanup.8:                                        ; preds = %for.end, %cleanup
  %17 = bitcast i64* %i to i8*, !dbg !3994
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3994
  %18 = bitcast i64* %count to i8*, !dbg !3994
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3994
  %19 = load %struct._object*, %struct._object** %retval, !dbg !3994
  ret %struct._object* %19, !dbg !3994
}

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_subtype_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !864, metadata !983), !dbg !3995
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !865, metadata !983), !dbg !3996
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !866, metadata !983), !dbg !3997
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3998
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3998
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !867, metadata !983), !dbg !3999
  %1 = bitcast %struct._object** %newobj to i8*, !dbg !3998
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3998
  call void @llvm.dbg.declare(metadata %struct._object** %newobj, metadata !868, metadata !983), !dbg !4000
  %2 = bitcast %struct._object** %item to i8*, !dbg !3998
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3998
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !869, metadata !983), !dbg !4001
  %3 = bitcast i64* %i to i8*, !dbg !4002
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !4002
  call void @llvm.dbg.declare(metadata i64* %i, metadata !870, metadata !983), !dbg !4003
  %4 = bitcast i64* %n to i8*, !dbg !4002
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !4002
  call void @llvm.dbg.declare(metadata i64* %n, metadata !871, metadata !983), !dbg !4004
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4005, !tbaa !979
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !4006, !tbaa !979
  %call = call %struct._object* @tuple_new(%struct._typeobject* @PyTuple_Type, %struct._object* %5, %struct._object* %6), !dbg !4007
  store %struct._object* %call, %struct._object** %tmp, align 8, !dbg !4008, !tbaa !979
  %7 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4009, !tbaa !979
  %cmp = icmp eq %struct._object* %7, null, !dbg !4011
  br i1 %cmp, label %if.then, label %if.end, !dbg !4012

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4013
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4013

if.end:                                           ; preds = %entry
  %8 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !4014, !tbaa !979
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 36, !dbg !4015
  %9 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !4015, !tbaa !4016
  %10 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !4017, !tbaa !979
  %11 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4018, !tbaa !979
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*, !dbg !4019
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !4020
  %13 = load i64, i64* %ob_size, align 8, !dbg !4020, !tbaa !1214
  store i64 %13, i64* %n, align 8, !dbg !4021, !tbaa !1027
  %call5 = call %struct._object* %9(%struct._typeobject* %10, i64 %13), !dbg !4014
  store %struct._object* %call5, %struct._object** %newobj, align 8, !dbg !4022, !tbaa !979
  %14 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !4023, !tbaa !979
  %cmp6 = icmp eq %struct._object* %14, null, !dbg !4025
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !4026

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4027
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4027

if.end.8:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8, !dbg !4028, !tbaa !1027
  br label %for.cond, !dbg !4030

for.cond:                                         ; preds = %for.inc, %if.end.8
  %15 = load i64, i64* %i, align 8, !dbg !4031, !tbaa !1027
  %16 = load i64, i64* %n, align 8, !dbg !4035, !tbaa !1027
  %cmp9 = icmp slt i64 %15, %16, !dbg !4036
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4037

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8, !dbg !4038, !tbaa !1027
  %18 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4040, !tbaa !979
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*, !dbg !4041
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1, !dbg !4042
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %17, !dbg !4043
  %20 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !4043, !tbaa !979
  store %struct._object* %20, %struct._object** %item, align 8, !dbg !4044, !tbaa !979
  %21 = load %struct._object*, %struct._object** %item, align 8, !dbg !4045, !tbaa !979
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4046
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !4047, !tbaa !1054
  %inc = add i64 %22, 1, !dbg !4047
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4047, !tbaa !1054
  %23 = load %struct._object*, %struct._object** %item, align 8, !dbg !4048, !tbaa !979
  %24 = load i64, i64* %i, align 8, !dbg !4049, !tbaa !1027
  %25 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !4050, !tbaa !979
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*, !dbg !4051
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1, !dbg !4052
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 %24, !dbg !4053
  store %struct._object* %23, %struct._object** %arrayidx11, align 8, !dbg !4054, !tbaa !979
  br label %for.inc, !dbg !4055

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8, !dbg !4056, !tbaa !1027
  %inc12 = add i64 %27, 1, !dbg !4056
  store i64 %inc12, i64* %i, align 8, !dbg !4056, !tbaa !1027
  br label %for.cond, !dbg !4057

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !4058

do.body:                                          ; preds = %for.end
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4059
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !4059
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !872, metadata !983), !dbg !4061
  %29 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4062, !tbaa !979
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !4061, !tbaa !979
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4063, !tbaa !979
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !4065
  %31 = load i64, i64* %ob_refcnt14, align 8, !dbg !4066, !tbaa !1054
  %dec = add i64 %31, -1, !dbg !4066
  store i64 %dec, i64* %ob_refcnt14, align 8, !dbg !4066, !tbaa !1054
  %cmp15 = icmp ne i64 %dec, 0, !dbg !4067
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !4068

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !4069

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4071, !tbaa !979
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !4073
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4073, !tbaa !1202
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !4074
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4074, !tbaa !1295
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4075, !tbaa !979
  call void %34(%struct._object* %35), !dbg !4076
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4077
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4077
  br label %do.cond, !dbg !4079

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !4080

do.end:                                           ; preds = %do.cond
  %37 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !4082, !tbaa !979
  store %struct._object* %37, %struct._object** %retval, !dbg !4083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4083

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %38 = bitcast i64* %n to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !4084
  %39 = bitcast i64* %i to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !4084
  %40 = bitcast %struct._object** %item to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !4084
  %41 = bitcast %struct._object** %newobj to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !4084
  %42 = bitcast %struct._object** %tmp to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !4084
  %43 = load %struct._object*, %struct._object** %retval, !dbg !4084
  ret %struct._object* %43, !dbg !4084
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PySequence_Tuple(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_len(%struct.tupleiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !908, metadata !983), !dbg !4085
  %0 = bitcast i64* %len to i8*, !dbg !4086
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4086
  call void @llvm.dbg.declare(metadata i64* %len, metadata !909, metadata !983), !dbg !4087
  store i64 0, i64* %len, align 8, !dbg !4087, !tbaa !1027
  %1 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4088, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %1, i32 0, i32 2, !dbg !4090
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !4090, !tbaa !2605
  %tobool = icmp ne %struct.PyTupleObject* %2, null, !dbg !4088
  br i1 %tobool, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  %3 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4092, !tbaa !979
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %3, i32 0, i32 2, !dbg !4093
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8, !dbg !4093, !tbaa !2605
  %5 = bitcast %struct.PyTupleObject* %4 to %struct.PyVarObject*, !dbg !4094
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !4095
  %6 = load i64, i64* %ob_size, align 8, !dbg !4095, !tbaa !1214
  %7 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4096, !tbaa !979
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %7, i32 0, i32 1, !dbg !4097
  %8 = load i64, i64* %it_index, align 8, !dbg !4097, !tbaa !2595
  %sub = sub i64 %6, %8, !dbg !4098
  store i64 %sub, i64* %len, align 8, !dbg !4099, !tbaa !1027
  br label %if.end, !dbg !4100

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %len, align 8, !dbg !4101, !tbaa !1027
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9), !dbg !4102
  %10 = bitcast i64* %len to i8*, !dbg !4103
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4103
  ret %struct._object* %call, !dbg !4104
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_reduce(%struct.tupleiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !912, metadata !983), !dbg !4105
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4106, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2, !dbg !4108
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !4108, !tbaa !2605
  %tobool = icmp ne %struct.PyTupleObject* %1, null, !dbg !4106
  br i1 %tobool, label %if.then, label %if.else, !dbg !4109

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !4110
  %2 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4111, !tbaa !979
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %2, i32 0, i32 2, !dbg !4112
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8, !dbg !4112, !tbaa !2605
  %4 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4113, !tbaa !979
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %4, i32 0, i32 1, !dbg !4114
  %5 = load i64, i64* %it_index, align 8, !dbg !4114, !tbaa !2595
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), %struct._object* %call, %struct.PyTupleObject* %3, i64 %5), !dbg !4115
  store %struct._object* %call2, %struct._object** %retval, !dbg !4116
  br label %return, !dbg !4116

if.else:                                          ; preds = %entry
  %call3 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !4117
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* %call3), !dbg !4118
  store %struct._object* %call4, %struct._object** %retval, !dbg !4119
  br label %return, !dbg !4119

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !4120
  ret %struct._object* %6, !dbg !4120
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_setstate(%struct.tupleiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct.tupleiterobject** %it.addr, metadata !917, metadata !983), !dbg !4121
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !979
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !918, metadata !983), !dbg !4122
  %0 = bitcast i64* %index to i8*, !dbg !4123
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4123
  call void @llvm.dbg.declare(metadata i64* %index, metadata !919, metadata !983), !dbg !4124
  %1 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !4125, !tbaa !979
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %1), !dbg !4126
  store i64 %call, i64* %index, align 8, !dbg !4124, !tbaa !1027
  %2 = load i64, i64* %index, align 8, !dbg !4127, !tbaa !1027
  %cmp = icmp eq i64 %2, -1, !dbg !4129
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4130

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4131
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4131
  br i1 %tobool, label %if.then, label %if.end, !dbg !4133

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !4134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4134

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4135, !tbaa !979
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %3, i32 0, i32 2, !dbg !4137
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !4137, !tbaa !2605
  %cmp2 = icmp ne %struct.PyTupleObject* %4, null, !dbg !4138
  br i1 %cmp2, label %if.then.3, label %if.end.13, !dbg !4139

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %index, align 8, !dbg !4140, !tbaa !1027
  %cmp4 = icmp slt i64 %5, 0, !dbg !4143
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !4144

if.then.5:                                        ; preds = %if.then.3
  store i64 0, i64* %index, align 8, !dbg !4145, !tbaa !1027
  br label %if.end.12, !dbg !4146

if.else:                                          ; preds = %if.then.3
  %6 = load i64, i64* %index, align 8, !dbg !4147, !tbaa !1027
  %7 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4149, !tbaa !979
  %it_seq6 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %7, i32 0, i32 2, !dbg !4150
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq6, align 8, !dbg !4150, !tbaa !2605
  %9 = bitcast %struct.PyTupleObject* %8 to %struct.PyVarObject*, !dbg !4151
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1, !dbg !4152
  %10 = load i64, i64* %ob_size, align 8, !dbg !4152, !tbaa !1214
  %cmp7 = icmp sgt i64 %6, %10, !dbg !4153
  br i1 %cmp7, label %if.then.8, label %if.end.11, !dbg !4154

if.then.8:                                        ; preds = %if.else
  %11 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4155, !tbaa !979
  %it_seq9 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %11, i32 0, i32 2, !dbg !4156
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq9, align 8, !dbg !4156, !tbaa !2605
  %13 = bitcast %struct.PyTupleObject* %12 to %struct.PyVarObject*, !dbg !4157
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1, !dbg !4158
  %14 = load i64, i64* %ob_size10, align 8, !dbg !4158, !tbaa !1214
  store i64 %14, i64* %index, align 8, !dbg !4159, !tbaa !1027
  br label %if.end.11, !dbg !4160

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %15 = load i64, i64* %index, align 8, !dbg !4161, !tbaa !1027
  %16 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8, !dbg !4162, !tbaa !979
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %16, i32 0, i32 1, !dbg !4163
  store i64 %15, i64* %it_index, align 8, !dbg !4164, !tbaa !2595
  br label %if.end.13, !dbg !4165

if.end.13:                                        ; preds = %if.end.12, %if.end
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4166, !tbaa !1054
  %inc = add i64 %17, 1, !dbg !4166
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4166, !tbaa !1054
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4167

cleanup:                                          ; preds = %if.end.13, %if.then
  %18 = bitcast i64* %index to i8*, !dbg !4168
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !4168
  %19 = load %struct._object*, %struct._object** %retval, !dbg !4168
  ret %struct._object* %19, !dbg !4168
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!976, !977}
!llvm.ident = !{!978}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !448, globals: !926)
!1 = !DIFile(filename: "tupleobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !12, line: 451, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!15 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!16 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!17 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!18 = !{!19, !22, !107, !358, !28, !366, !380, !381, !233, !439, !440}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 62, baseType: !21)
!20 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !24, line: 109, baseType: !25)
!24 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !24, line: 105, size: 128, align: 64, elements: !26)
!26 = !{!27, !35}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !25, file: !24, line: 107, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !29, line: 177, baseType: !30)
!29 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 102, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !33, line: 181, baseType: !34)
!33 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!296 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!309 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!360 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 25, size: 256, align: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !360, line: 26, baseType: !40, size: 192, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !361, file: !360, line: 27, baseType: !365, size: 64, align: 64, offset: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, align: 64, elements: !99)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !368, line: 253, baseType: !369)
!368 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!383 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "tupleiterobject", file: !442, line: 943, baseType: !443)
!442 = !DIFile(filename: "Objects/tupleobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!443 = !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 939, size: 256, align: 64, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !443, file: !442, line: 940, baseType: !23, size: 128, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "it_index", scope: !443, file: !442, line: 941, baseType: !28, size: 64, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "it_seq", scope: !443, file: !442, line: 942, baseType: !358, size: 64, align: 64, offset: 192)
!448 = !{!449, !459, !468, !471, !475, !502, !514, !536, !543, !578, !589, !599, !615, !646, !655, !660, !663, !714, !719, !738, !750, !754, !762, !781, !791, !805, !823, !826, !830, !842, !852, !862, !874, !886, !897, !906, !910, !913, !920}
!449 = !DISubprogram(name: "_PyTuple_DebugMallocStats", scope: !442, file: !442, line: 50, type: !450, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyTuple_DebugMallocStats, variables: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !62}
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !449, file: !442, line: 50, type: !62)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !449, file: !442, line: 53, type: !61)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !449, file: !442, line: 54, type: !456)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, align: 8, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 128)
!459 = !DISubprogram(name: "PyTuple_New", scope: !442, file: !442, line: 66, type: !460, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @PyTuple_New, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!22, !28}
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !459, file: !442, line: 66, type: !28)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !459, file: !442, line: 68, type: !358)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !459, file: !442, line: 69, type: !28)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !467, file: !442, line: 120, type: !366)
!467 = distinct !DILexicalBlock(scope: !459, file: !442, line: 120, column: 8)
!468 = !DISubprogram(name: "PyTuple_Size", scope: !442, file: !442, line: 125, type: !193, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*)* @PyTuple_Size, variables: !469)
!469 = !{!470}
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !468, file: !442, line: 125, type: !22)
!471 = !DISubprogram(name: "PyTuple_GetItem", scope: !442, file: !442, line: 136, type: !199, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64)* @PyTuple_GetItem, variables: !472)
!472 = !{!473, !474}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !471, file: !442, line: 136, type: !22)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !471, file: !442, line: 136, type: !28)
!475 = !DISubprogram(name: "PyTuple_SetItem", scope: !442, file: !442, line: 150, type: !206, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, %struct._object*)* @PyTuple_SetItem, variables: !476)
!476 = !{!477, !478, !479, !480, !481, !483, !487, !490, !494, !497, !499}
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !475, file: !442, line: 150, type: !22)
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !475, file: !442, line: 150, type: !28)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newitem", arg: 3, scope: !475, file: !442, line: 150, type: !22)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "olditem", scope: !475, file: !442, line: 152, type: !22)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !475, file: !442, line: 153, type: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !484, file: !442, line: 155, type: !22)
!484 = distinct !DILexicalBlock(scope: !485, file: !442, line: 155, column: 12)
!485 = distinct !DILexicalBlock(scope: !486, file: !442, line: 154, column: 99)
!486 = distinct !DILexicalBlock(scope: !475, file: !442, line: 154, column: 9)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !442, line: 155, type: !22)
!488 = distinct !DILexicalBlock(scope: !489, file: !442, line: 155, column: 103)
!489 = distinct !DILexicalBlock(scope: !484, file: !442, line: 155, column: 69)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !491, file: !442, line: 160, type: !22)
!491 = distinct !DILexicalBlock(scope: !492, file: !442, line: 160, column: 12)
!492 = distinct !DILexicalBlock(scope: !493, file: !442, line: 159, column: 56)
!493 = distinct !DILexicalBlock(scope: !475, file: !442, line: 159, column: 9)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !442, line: 160, type: !22)
!495 = distinct !DILexicalBlock(scope: !496, file: !442, line: 160, column: 103)
!496 = distinct !DILexicalBlock(scope: !491, file: !442, line: 160, column: 69)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !498, file: !442, line: 168, type: !22)
!498 = distinct !DILexicalBlock(scope: !475, file: !442, line: 168, column: 8)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !442, line: 168, type: !22)
!500 = distinct !DILexicalBlock(scope: !501, file: !442, line: 168, column: 99)
!501 = distinct !DILexicalBlock(scope: !498, file: !442, line: 168, column: 65)
!502 = !DISubprogram(name: "_PyTuple_MaybeUntrack", scope: !442, file: !442, line: 173, type: !54, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyTuple_MaybeUntrack, variables: !503)
!503 = !{!504, !505, !506, !507, !508, !512}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !502, file: !442, line: 173, type: !22)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !502, file: !442, line: 175, type: !358)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !502, file: !442, line: 176, type: !28)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !502, file: !442, line: 176, type: !28)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elt", scope: !509, file: !442, line: 183, type: !22)
!509 = distinct !DILexicalBlock(scope: !510, file: !442, line: 182, column: 29)
!510 = distinct !DILexicalBlock(scope: !511, file: !442, line: 182, column: 5)
!511 = distinct !DILexicalBlock(scope: !502, file: !442, line: 182, column: 5)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !513, file: !442, line: 195, type: !366)
!513 = distinct !DILexicalBlock(scope: !502, file: !442, line: 195, column: 8)
!514 = !DISubprogram(name: "PyTuple_Pack", scope: !442, file: !442, line: 199, type: !515, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, ...)* @PyTuple_Pack, variables: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!22, !28, null}
!517 = !{!518, !519, !520, !521, !522, !523}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !514, file: !442, line: 199, type: !28)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !514, file: !442, line: 201, type: !28)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !514, file: !442, line: 202, type: !22)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !514, file: !442, line: 203, type: !22)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !514, file: !442, line: 204, type: !482)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !514, file: !442, line: 205, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !31, line: 79, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !526, line: 50, baseType: !527)
!526 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 205, baseType: !528)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, align: 64, elements: !99)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 205, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 205, size: 192, align: 64, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !530, file: !1, line: 205, baseType: !356, size: 32, align: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !530, file: !1, line: 205, baseType: !356, size: 32, align: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !530, file: !1, line: 205, baseType: !107, size: 64, align: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !530, file: !1, line: 205, baseType: !107, size: 64, align: 64, offset: 128)
!536 = !DISubprogram(name: "PyTuple_GetSlice", scope: !442, file: !442, line: 426, type: !537, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64, i64)* @PyTuple_GetSlice, variables: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!22, !22, !28, !28}
!539 = !{!540, !541, !542}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !536, file: !442, line: 426, type: !22)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !536, file: !442, line: 426, type: !28)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 3, scope: !536, file: !442, line: 426, type: !28)
!543 = !DISubprogram(name: "_PyTuple_Resize", scope: !442, file: !442, line: 847, type: !544, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object**, i64)* @_PyTuple_Resize, variables: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!61, !482, !28}
!546 = !{!547, !548, !549, !550, !551, !552, !553, !557, !560, !564, !567, !572, !576}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pv", arg: 1, scope: !543, file: !442, line: 847, type: !482)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !543, file: !442, line: 847, type: !28)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !543, file: !442, line: 849, type: !358)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sv", scope: !543, file: !442, line: 850, type: !358)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !543, file: !442, line: 851, type: !28)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldsize", scope: !543, file: !442, line: 852, type: !28)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !554, file: !442, line: 858, type: !22)
!554 = distinct !DILexicalBlock(scope: !555, file: !442, line: 858, column: 12)
!555 = distinct !DILexicalBlock(scope: !556, file: !442, line: 856, column: 86)
!556 = distinct !DILexicalBlock(scope: !543, file: !442, line: 855, column: 9)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !442, line: 858, type: !22)
!558 = distinct !DILexicalBlock(scope: !559, file: !442, line: 858, column: 97)
!559 = distinct !DILexicalBlock(scope: !554, file: !442, line: 858, column: 63)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !561, file: !442, line: 870, type: !22)
!561 = distinct !DILexicalBlock(scope: !562, file: !442, line: 870, column: 12)
!562 = distinct !DILexicalBlock(scope: !563, file: !442, line: 866, column: 23)
!563 = distinct !DILexicalBlock(scope: !543, file: !442, line: 866, column: 9)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !565, file: !442, line: 878, type: !366)
!565 = distinct !DILexicalBlock(scope: !566, file: !442, line: 878, column: 12)
!566 = distinct !DILexicalBlock(scope: !543, file: !442, line: 877, column: 9)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !568, file: !442, line: 882, type: !22)
!568 = distinct !DILexicalBlock(scope: !569, file: !442, line: 882, column: 12)
!569 = distinct !DILexicalBlock(scope: !570, file: !442, line: 881, column: 41)
!570 = distinct !DILexicalBlock(scope: !571, file: !442, line: 881, column: 5)
!571 = distinct !DILexicalBlock(scope: !543, file: !442, line: 881, column: 5)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !573, file: !442, line: 882, type: !22)
!573 = distinct !DILexicalBlock(scope: !574, file: !442, line: 882, column: 125)
!574 = distinct !DILexicalBlock(scope: !575, file: !442, line: 882, column: 90)
!575 = distinct !DILexicalBlock(scope: !568, file: !442, line: 882, column: 67)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !577, file: !442, line: 896, type: !366)
!577 = distinct !DILexicalBlock(scope: !543, file: !442, line: 896, column: 8)
!578 = !DISubprogram(name: "PyTuple_ClearFreeList", scope: !442, file: !442, line: 901, type: !579, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyTuple_ClearFreeList, variables: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!61}
!581 = !{!582, !583, !584, !588}
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !578, file: !442, line: 903, type: !61)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !578, file: !442, line: 905, type: !61)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !585, file: !442, line: 907, type: !358)
!585 = distinct !DILexicalBlock(scope: !586, file: !442, line: 906, column: 30)
!586 = distinct !DILexicalBlock(scope: !587, file: !442, line: 906, column: 5)
!587 = distinct !DILexicalBlock(scope: !578, file: !442, line: 906, column: 5)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !585, file: !442, line: 907, type: !358)
!589 = !DISubprogram(name: "PyTuple_Fini", scope: !442, file: !442, line: 923, type: !590, isLocal: false, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyTuple_Fini, variables: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null}
!592 = !{!593, !595}
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !594, file: !442, line: 928, type: !22)
!594 = distinct !DILexicalBlock(scope: !589, file: !442, line: 928, column: 8)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !442, line: 928, type: !22)
!596 = distinct !DILexicalBlock(scope: !597, file: !442, line: 928, column: 119)
!597 = distinct !DILexicalBlock(scope: !598, file: !442, line: 928, column: 85)
!598 = distinct !DILexicalBlock(scope: !594, file: !442, line: 928, column: 62)
!599 = !DISubprogram(name: "tupleslice", scope: !442, file: !442, line: 394, type: !600, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, i64, i64)* @tupleslice, variables: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!22, !358, !28, !28}
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !599, file: !442, line: 394, type: !358)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilow", arg: 2, scope: !599, file: !442, line: 394, type: !28)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ihigh", arg: 3, scope: !599, file: !442, line: 395, type: !28)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !599, file: !442, line: 397, type: !358)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !599, file: !442, line: 398, type: !482)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !599, file: !442, line: 398, type: !482)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !599, file: !442, line: 399, type: !28)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !599, file: !442, line: 400, type: !28)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !612, file: !442, line: 418, type: !22)
!612 = distinct !DILexicalBlock(scope: !613, file: !442, line: 417, column: 31)
!613 = distinct !DILexicalBlock(scope: !614, file: !442, line: 417, column: 5)
!614 = distinct !DILexicalBlock(scope: !599, file: !442, line: 417, column: 5)
!615 = !DISubprogram(name: "tupledealloc", scope: !442, file: !442, line: 227, type: !616, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyTupleObject*)* @tupledealloc, variables: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !358}
!618 = !{!619, !620, !621, !622, !624, !631, !632, !635, !637, !643}
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !615, file: !442, line: 227, type: !358)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !615, file: !442, line: 229, type: !28)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !615, file: !442, line: 230, type: !28)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_tstate", scope: !623, file: !442, line: 232, type: !381)
!623 = distinct !DILexicalBlock(scope: !615, file: !442, line: 232, column: 8)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !625, file: !442, line: 232, type: !626)
!625 = distinct !DILexicalBlock(scope: !623, file: !442, line: 232, column: 67)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !628, file: !4, line: 32, baseType: !107, size: 64, align: 64)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !625, file: !442, line: 232, type: !107)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !625, file: !442, line: 232, type: !633)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !625, file: !442, line: 232, type: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !638, file: !442, line: 236, type: !22)
!638 = distinct !DILexicalBlock(scope: !639, file: !442, line: 236, column: 16)
!639 = distinct !DILexicalBlock(scope: !640, file: !442, line: 233, column: 18)
!640 = distinct !DILexicalBlock(scope: !641, file: !442, line: 233, column: 9)
!641 = distinct !DILexicalBlock(scope: !642, file: !442, line: 232, column: 797)
!642 = distinct !DILexicalBlock(scope: !623, file: !442, line: 232, column: 761)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !644, file: !442, line: 236, type: !22)
!644 = distinct !DILexicalBlock(scope: !645, file: !442, line: 236, column: 114)
!645 = distinct !DILexicalBlock(scope: !638, file: !442, line: 236, column: 80)
!646 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !647, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !652)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649, !636}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!652 = !{!653, !654}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !646, file: !4, line: 59, type: !649)
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !646, file: !4, line: 59, type: !636)
!655 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !656, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !636}
!658 = !{!659}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !655, file: !4, line: 51, type: !636)
!660 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !656, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !661)
!661 = !{!662}
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !660, file: !4, line: 44, type: !636)
!663 = !DISubprogram(name: "tuplerepr", scope: !442, file: !442, line: 255, type: !664, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuplerepr, variables: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!22, !358}
!666 = !{!667, !668, !669, !670, !686, !690, !693, !694, !695, !696, !700, !701, !702, !703, !705, !706, !707, !708, !712}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !663, file: !442, line: 255, type: !358)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !663, file: !442, line: 257, type: !28)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !663, file: !442, line: 257, type: !28)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !663, file: !442, line: 258, type: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !12, line: 917, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 897, size: 448, align: 64, elements: !673)
!673 = !{!674, !675, !676, !677, !679, !680, !681, !682, !683, !685}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !672, file: !12, line: 898, baseType: !22, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !672, file: !12, line: 899, baseType: !107, size: 64, align: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !672, file: !12, line: 900, baseType: !11, size: 32, align: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !672, file: !12, line: 901, baseType: !678, size: 32, align: 32, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !12, line: 121, baseType: !356)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !672, file: !12, line: 902, baseType: !28, size: 64, align: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !672, file: !12, line: 903, baseType: !28, size: 64, align: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !672, file: !12, line: 906, baseType: !28, size: 64, align: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !672, file: !12, line: 909, baseType: !678, size: 32, align: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !672, file: !12, line: 912, baseType: !684, size: 8, align: 8, offset: 416)
!684 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !672, file: !12, line: 916, baseType: !684, size: 8, align: 8, offset: 424)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !687, file: !442, line: 289, type: !22)
!687 = distinct !DILexicalBlock(scope: !688, file: !442, line: 288, column: 29)
!688 = distinct !DILexicalBlock(scope: !689, file: !442, line: 288, column: 5)
!689 = distinct !DILexicalBlock(scope: !663, file: !442, line: 288, column: 5)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !691, file: !442, line: 296, type: !626)
!691 = distinct !DILexicalBlock(scope: !692, file: !442, line: 296, column: 50)
!692 = distinct !DILexicalBlock(scope: !687, file: !442, line: 296, column: 13)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !691, file: !442, line: 296, type: !107)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !691, file: !442, line: 296, type: !633)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !691, file: !442, line: 296, type: !636)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !697, file: !442, line: 299, type: !626)
!697 = distinct !DILexicalBlock(scope: !698, file: !442, line: 299, column: 52)
!698 = distinct !DILexicalBlock(scope: !699, file: !442, line: 299, column: 16)
!699 = distinct !DILexicalBlock(scope: !687, file: !442, line: 299, column: 11)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !697, file: !442, line: 299, type: !107)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !697, file: !442, line: 299, type: !633)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !697, file: !442, line: 299, type: !636)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !704, file: !442, line: 299, type: !626)
!704 = distinct !DILexicalBlock(scope: !698, file: !442, line: 299, column: 901)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !704, file: !442, line: 299, type: !107)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !704, file: !442, line: 299, type: !633)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !704, file: !442, line: 299, type: !636)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !709, file: !442, line: 304, type: !22)
!709 = distinct !DILexicalBlock(scope: !710, file: !442, line: 304, column: 16)
!710 = distinct !DILexicalBlock(scope: !711, file: !442, line: 303, column: 56)
!711 = distinct !DILexicalBlock(scope: !687, file: !442, line: 303, column: 13)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !713, file: !442, line: 307, type: !22)
!713 = distinct !DILexicalBlock(scope: !687, file: !442, line: 307, column: 12)
!714 = !DISubprogram(name: "tuplelength", scope: !442, file: !442, line: 365, type: !715, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyTupleObject*)* @tuplelength, variables: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!28, !358}
!717 = !{!718}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !714, file: !442, line: 365, type: !358)
!719 = !DISubprogram(name: "tupleconcat", scope: !442, file: !442, line: 436, type: !720, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleconcat, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!22, !358, !22}
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !734}
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !719, file: !442, line: 436, type: !358)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bb", arg: 2, scope: !719, file: !442, line: 436, type: !22)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !719, file: !442, line: 438, type: !28)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !719, file: !442, line: 439, type: !28)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !719, file: !442, line: 440, type: !482)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !719, file: !442, line: 440, type: !482)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !719, file: !442, line: 441, type: !358)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !731, file: !442, line: 459, type: !22)
!731 = distinct !DILexicalBlock(scope: !732, file: !442, line: 458, column: 58)
!732 = distinct !DILexicalBlock(scope: !733, file: !442, line: 458, column: 5)
!733 = distinct !DILexicalBlock(scope: !719, file: !442, line: 458, column: 5)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !735, file: !442, line: 466, type: !22)
!735 = distinct !DILexicalBlock(scope: !736, file: !442, line: 465, column: 78)
!736 = distinct !DILexicalBlock(scope: !737, file: !442, line: 465, column: 5)
!737 = distinct !DILexicalBlock(scope: !719, file: !442, line: 465, column: 5)
!738 = !DISubprogram(name: "tuplerepeat", scope: !442, file: !442, line: 475, type: !739, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, i64)* @tuplerepeat, variables: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!22, !358, !28}
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !738, file: !442, line: 475, type: !358)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !738, file: !442, line: 475, type: !28)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !738, file: !442, line: 477, type: !28)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !738, file: !442, line: 477, type: !28)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !738, file: !442, line: 478, type: !28)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !738, file: !442, line: 479, type: !358)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !738, file: !442, line: 480, type: !482)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !738, file: !442, line: 480, type: !482)
!750 = !DISubprogram(name: "tupleitem", scope: !442, file: !442, line: 383, type: !739, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, i64)* @tupleitem, variables: !751)
!751 = !{!752, !753}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !750, file: !442, line: 383, type: !358)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !750, file: !442, line: 383, type: !28)
!754 = !DISubprogram(name: "tuplecontains", scope: !442, file: !442, line: 371, type: !755, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyTupleObject*, %struct._object*)* @tuplecontains, variables: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!61, !358, !22}
!757 = !{!758, !759, !760, !761}
!758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !754, file: !442, line: 371, type: !358)
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "el", arg: 2, scope: !754, file: !442, line: 371, type: !22)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !754, file: !442, line: 373, type: !28)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !754, file: !442, line: 374, type: !61)
!762 = !DISubprogram(name: "tuplesubscript", scope: !442, file: !442, line: 700, type: !720, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplesubscript, variables: !763)
!763 = !{!764, !765, !766, !769, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !762, file: !442, line: 700, type: !358)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !762, file: !442, line: 700, type: !22)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !767, file: !442, line: 703, type: !28)
!767 = distinct !DILexicalBlock(scope: !768, file: !442, line: 702, column: 113)
!768 = distinct !DILexicalBlock(scope: !762, file: !442, line: 702, column: 9)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !770, file: !442, line: 711, type: !28)
!770 = distinct !DILexicalBlock(scope: !771, file: !442, line: 710, column: 65)
!771 = distinct !DILexicalBlock(scope: !768, file: !442, line: 710, column: 14)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !770, file: !442, line: 711, type: !28)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !770, file: !442, line: 711, type: !28)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicelength", scope: !770, file: !442, line: 711, type: !28)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !770, file: !442, line: 711, type: !28)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !770, file: !442, line: 711, type: !28)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !770, file: !442, line: 712, type: !22)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !770, file: !442, line: 713, type: !22)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !770, file: !442, line: 714, type: !482)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !770, file: !442, line: 714, type: !482)
!781 = !DISubprogram(name: "tuplehash", scope: !442, file: !442, line: 341, type: !782, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyTupleObject*)* @tuplehash, variables: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!233, !358}
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !781, file: !442, line: 341, type: !358)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !781, file: !442, line: 343, type: !439)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !781, file: !442, line: 344, type: !233)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !781, file: !442, line: 345, type: !28)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !781, file: !442, line: 346, type: !482)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mult", scope: !781, file: !442, line: 347, type: !439)
!791 = !DISubprogram(name: "tupletraverse", scope: !442, file: !442, line: 559, type: !792, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyTupleObject*, i32 (%struct._object*, i8*)*, i8*)* @tupletraverse, variables: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!61, !358, !278, !107}
!794 = !{!795, !796, !797, !798, !799}
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !791, file: !442, line: 559, type: !358)
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !791, file: !442, line: 559, type: !278)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !791, file: !442, line: 559, type: !107)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !791, file: !442, line: 561, type: !28)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !800, file: !442, line: 564, type: !61)
!800 = distinct !DILexicalBlock(scope: !801, file: !442, line: 564, column: 33)
!801 = distinct !DILexicalBlock(scope: !802, file: !442, line: 564, column: 18)
!802 = distinct !DILexicalBlock(scope: !803, file: !442, line: 564, column: 12)
!803 = distinct !DILexicalBlock(scope: !804, file: !442, line: 563, column: 5)
!804 = distinct !DILexicalBlock(scope: !791, file: !442, line: 563, column: 5)
!805 = !DISubprogram(name: "tuplerichcompare", scope: !442, file: !442, line: 569, type: !286, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @tuplerichcompare, variables: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !819, !822}
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !805, file: !442, line: 569, type: !22)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !805, file: !442, line: 569, type: !22)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !805, file: !442, line: 569, type: !61)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vt", scope: !805, file: !442, line: 571, type: !358)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wt", scope: !805, file: !442, line: 571, type: !358)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !805, file: !442, line: 572, type: !28)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlen", scope: !805, file: !442, line: 573, type: !28)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wlen", scope: !805, file: !442, line: 573, type: !28)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !816, file: !442, line: 596, type: !61)
!816 = distinct !DILexicalBlock(scope: !817, file: !442, line: 595, column: 44)
!817 = distinct !DILexicalBlock(scope: !818, file: !442, line: 595, column: 5)
!818 = distinct !DILexicalBlock(scope: !805, file: !442, line: 595, column: 5)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !820, file: !442, line: 606, type: !61)
!820 = distinct !DILexicalBlock(scope: !821, file: !442, line: 604, column: 33)
!821 = distinct !DILexicalBlock(scope: !805, file: !442, line: 604, column: 9)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !820, file: !442, line: 607, type: !22)
!823 = !DISubprogram(name: "tuple_getnewargs", scope: !442, file: !442, line: 756, type: !664, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuple_getnewargs, variables: !824)
!824 = !{!825}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !823, file: !442, line: 756, type: !358)
!826 = !DISubprogram(name: "tuple_sizeof", scope: !442, file: !442, line: 763, type: !664, isLocal: true, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuple_sizeof, variables: !827)
!827 = !{!828, !829}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !826, file: !442, line: 763, type: !358)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !826, file: !442, line: 765, type: !28)
!830 = !DISubprogram(name: "tupleindex", scope: !442, file: !442, line: 512, type: !720, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleindex, variables: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !830, file: !442, line: 512, type: !358)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !830, file: !442, line: 512, type: !22)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !830, file: !442, line: 514, type: !28)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !830, file: !442, line: 514, type: !28)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !830, file: !442, line: 514, type: !28)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !830, file: !442, line: 515, type: !22)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !839, file: !442, line: 532, type: !61)
!839 = distinct !DILexicalBlock(scope: !840, file: !442, line: 531, column: 77)
!840 = distinct !DILexicalBlock(scope: !841, file: !442, line: 531, column: 5)
!841 = distinct !DILexicalBlock(scope: !830, file: !442, line: 531, column: 5)
!842 = !DISubprogram(name: "tuplecount", scope: !442, file: !442, line: 543, type: !720, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplecount, variables: !843)
!843 = !{!844, !845, !846, !847, !848}
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !842, file: !442, line: 543, type: !358)
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !842, file: !442, line: 543, type: !22)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !842, file: !442, line: 545, type: !28)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !842, file: !442, line: 546, type: !28)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !849, file: !442, line: 549, type: !61)
!849 = distinct !DILexicalBlock(scope: !850, file: !442, line: 548, column: 61)
!850 = distinct !DILexicalBlock(scope: !851, file: !442, line: 548, column: 5)
!851 = distinct !DILexicalBlock(scope: !842, file: !442, line: 548, column: 5)
!852 = !DISubprogram(name: "tuple_new", scope: !442, file: !442, line: 643, type: !853, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tuple_new, variables: !857)
!853 = !DISubroutineType(types: !854)
!854 = !{!22, !855, !22, !22}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !24, line: 422, baseType: !37)
!857 = !{!858, !859, !860, !861}
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !852, file: !442, line: 643, type: !855)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !852, file: !442, line: 643, type: !22)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !852, file: !442, line: 643, type: !22)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !852, file: !442, line: 645, type: !22)
!862 = !DISubprogram(name: "tuple_subtype_new", scope: !442, file: !442, line: 660, type: !853, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tuple_subtype_new, variables: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !862, file: !442, line: 660, type: !855)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !862, file: !442, line: 660, type: !22)
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !862, file: !442, line: 660, type: !22)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !862, file: !442, line: 662, type: !22)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !862, file: !442, line: 662, type: !22)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !862, file: !442, line: 662, type: !22)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !862, file: !442, line: 663, type: !28)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !862, file: !442, line: 663, type: !28)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !873, file: !442, line: 678, type: !22)
!873 = distinct !DILexicalBlock(scope: !862, file: !442, line: 678, column: 8)
!874 = !DISubprogram(name: "tupleiter_dealloc", scope: !442, file: !442, line: 946, type: !875, isLocal: true, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tupleiterobject*)* @tupleiter_dealloc, variables: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !440}
!877 = !{!878, !879, !881, !883}
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !874, file: !442, line: 946, type: !440)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !880, file: !442, line: 948, type: !366)
!880 = distinct !DILexicalBlock(scope: !874, file: !442, line: 948, column: 8)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !882, file: !442, line: 949, type: !22)
!882 = distinct !DILexicalBlock(scope: !874, file: !442, line: 949, column: 8)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !884, file: !442, line: 949, type: !22)
!884 = distinct !DILexicalBlock(scope: !885, file: !442, line: 949, column: 102)
!885 = distinct !DILexicalBlock(scope: !882, file: !442, line: 949, column: 68)
!886 = !DISubprogram(name: "tupleiter_traverse", scope: !442, file: !442, line: 954, type: !887, isLocal: true, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tupleiterobject*, i32 (%struct._object*, i8*)*, i8*)* @tupleiter_traverse, variables: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!61, !440, !278, !107}
!889 = !{!890, !891, !892, !893}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !886, file: !442, line: 954, type: !440)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !886, file: !442, line: 954, type: !278)
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !886, file: !442, line: 954, type: !107)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !894, file: !442, line: 956, type: !61)
!894 = distinct !DILexicalBlock(scope: !895, file: !442, line: 956, column: 26)
!895 = distinct !DILexicalBlock(scope: !896, file: !442, line: 956, column: 14)
!896 = distinct !DILexicalBlock(scope: !886, file: !442, line: 956, column: 8)
!897 = !DISubprogram(name: "tupleiter_next", scope: !442, file: !442, line: 961, type: !898, isLocal: true, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_next, variables: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!22, !440}
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !897, file: !442, line: 961, type: !440)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !897, file: !442, line: 963, type: !358)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !897, file: !442, line: 964, type: !22)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !905, file: !442, line: 979, type: !22)
!905 = distinct !DILexicalBlock(scope: !897, file: !442, line: 979, column: 8)
!906 = !DISubprogram(name: "tupleiter_len", scope: !442, file: !442, line: 985, type: !898, isLocal: true, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_len, variables: !907)
!907 = !{!908, !909}
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !906, file: !442, line: 985, type: !440)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !906, file: !442, line: 987, type: !28)
!910 = !DISubprogram(name: "tupleiter_reduce", scope: !442, file: !442, line: 996, type: !898, isLocal: true, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_reduce, variables: !911)
!911 = !{!912}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !910, file: !442, line: 996, type: !440)
!913 = !DISubprogram(name: "tupleiter_setstate", scope: !442, file: !442, line: 1006, type: !914, isLocal: true, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*, %struct._object*)* @tupleiter_setstate, variables: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!22, !440, !22}
!916 = !{!917, !918, !919}
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !913, file: !442, line: 1006, type: !440)
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !913, file: !442, line: 1006, type: !22)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !913, file: !442, line: 1008, type: !28)
!920 = !DISubprogram(name: "tuple_iter", scope: !442, file: !442, line: 1065, type: !131, isLocal: true, isDefinition: true, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tuple_iter, variables: !921)
!921 = !{!922, !923, !924}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !920, file: !442, line: 1065, type: !22)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !920, file: !442, line: 1067, type: !440)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !925, file: !442, line: 1079, type: !366)
!925 = distinct !DILexicalBlock(scope: !920, file: !442, line: 1079, column: 8)
!926 = !{!927, !928, !929, !931, !933, !934, !935, !939, !944, !948, !952, !956, !960, !964, !968, !972}
!927 = !DIGlobalVariable(name: "PyTuple_Type", scope: !0, file: !442, line: 796, type: !856, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyTuple_Type)
!928 = !DIGlobalVariable(name: "PyTupleIter_Type", scope: !0, file: !442, line: 1031, type: !856, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyTupleIter_Type)
!929 = !DIGlobalVariable(name: "free_list", scope: !0, file: !442, line: 19, type: !930, isLocal: true, isDefinition: true, variable: [20 x %struct.PyTupleObject*]* @free_list)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 1280, align: 64, elements: !115)
!931 = !DIGlobalVariable(name: "numfree", scope: !0, file: !442, line: 20, type: !932, isLocal: true, isDefinition: true, variable: [20 x i32]* @numfree)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, align: 32, elements: !115)
!933 = !DIGlobalVariable(name: "tuple_as_sequence", scope: !0, file: !442, line: 688, type: !187, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @tuple_as_sequence)
!934 = !DIGlobalVariable(name: "tuple_as_mapping", scope: !0, file: !442, line: 788, type: !218, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @tuple_as_mapping)
!935 = !DIGlobalVariable(name: "tuple_doc", scope: !0, file: !442, line: 682, type: !936, isLocal: true, isDefinition: true, variable: [148 x i8]* @tuple_doc)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1184, align: 8, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 148)
!939 = !DIGlobalVariable(name: "tuple_methods", scope: !0, file: !442, line: 780, type: !940, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @tuple_methods)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 1280, align: 64, elements: !942)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !296, line: 47, baseType: !295)
!942 = !{!943}
!943 = !DISubrange(count: 5)
!944 = !DIGlobalVariable(name: "sizeof_doc", scope: !0, file: !442, line: 777, type: !945, isLocal: true, isDefinition: true, variable: [48 x i8]* @sizeof_doc)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, align: 8, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 48)
!948 = !DIGlobalVariable(name: "index_doc", scope: !0, file: !442, line: 771, type: !949, isLocal: true, isDefinition: true, variable: [122 x i8]* @index_doc)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 976, align: 8, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 122)
!952 = !DIGlobalVariable(name: "count_doc", scope: !0, file: !442, line: 775, type: !953, isLocal: true, isDefinition: true, variable: [67 x i8]* @count_doc)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 536, align: 8, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 67)
!956 = !DIGlobalVariable(name: "kwlist", scope: !852, file: !442, line: 646, type: !957, isLocal: true, isDefinition: true, variable: [2 x i8*]* @tuple_new.kwlist)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 2)
!960 = !DIGlobalVariable(name: "tupleiter_methods", scope: !0, file: !442, line: 1024, type: !961, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @tupleiter_methods)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 1024, align: 64, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 4)
!964 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !442, line: 993, type: !965, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 440, align: 8, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 55)
!968 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !442, line: 1021, type: !969, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 312, align: 8, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 39)
!972 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !442, line: 1022, type: !973, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 304, align: 8, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 38)
!976 = !{i32 2, !"Dwarf Version", i32 4}
!977 = !{i32 2, !"Debug Info Version", i32 3}
!978 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!979 = !{!980, !980, i64 0}
!980 = !{!"any pointer", !981, i64 0}
!981 = !{!"omnipotent char", !982, i64 0}
!982 = !{!"Simple C/C++ TBAA"}
!983 = !DIExpression()
!984 = !DILocation(line: 50, column: 33, scope: !449)
!985 = !DILocation(line: 53, column: 5, scope: !449)
!986 = !DILocation(line: 53, column: 9, scope: !449)
!987 = !DILocation(line: 54, column: 5, scope: !449)
!988 = !DILocation(line: 54, column: 10, scope: !449)
!989 = !DILocation(line: 55, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !449, file: !442, line: 55, column: 5)
!991 = !{!992, !992, i64 0}
!992 = !{!"int", !981, i64 0}
!993 = !DILocation(line: 55, column: 10, scope: !990)
!994 = !DILocation(line: 55, column: 17, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !442, discriminator: 2)
!996 = !DILexicalBlockFile(scope: !997, file: !442, discriminator: 1)
!997 = distinct !DILexicalBlock(scope: !990, file: !442, line: 55, column: 5)
!998 = !DILocation(line: 55, column: 19, scope: !997)
!999 = !DILocation(line: 55, column: 5, scope: !990)
!1000 = !DILocation(line: 56, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !442, line: 55, column: 30)
!1002 = !DILocation(line: 57, column: 54, scope: !1001)
!1003 = !DILocation(line: 56, column: 9, scope: !1001)
!1004 = !DILocation(line: 58, column: 32, scope: !1001)
!1005 = !DILocation(line: 59, column: 32, scope: !1001)
!1006 = !DILocation(line: 60, column: 40, scope: !1001)
!1007 = !DILocation(line: 60, column: 32, scope: !1001)
!1008 = !DILocation(line: 60, column: 72, scope: !1001)
!1009 = !{!1010, !1013, i64 32}
!1010 = !{!"_typeobject", !1011, i64 0, !980, i64 24, !1013, i64 32, !1013, i64 40, !980, i64 48, !980, i64 56, !980, i64 64, !980, i64 72, !980, i64 80, !980, i64 88, !980, i64 96, !980, i64 104, !980, i64 112, !980, i64 120, !980, i64 128, !980, i64 136, !980, i64 144, !980, i64 152, !980, i64 160, !1013, i64 168, !980, i64 176, !980, i64 184, !980, i64 192, !980, i64 200, !1013, i64 208, !980, i64 216, !980, i64 224, !980, i64 232, !980, i64 240, !980, i64 248, !980, i64 256, !980, i64 264, !980, i64 272, !980, i64 280, !1013, i64 288, !980, i64 296, !980, i64 304, !980, i64 312, !980, i64 320, !980, i64 328, !980, i64 336, !980, i64 344, !980, i64 352, !980, i64 360, !980, i64 368, !980, i64 376, !992, i64 384, !980, i64 392}
!1011 = !{!"", !1012, i64 0, !1013, i64 16}
!1012 = !{!"_object", !1013, i64 0, !980, i64 8}
!1013 = !{!"long", !981, i64 0}
!1014 = !DILocation(line: 60, column: 88, scope: !1001)
!1015 = !DILocation(line: 60, column: 87, scope: !1001)
!1016 = !DILocation(line: 60, column: 108, scope: !1001)
!1017 = !{!1010, !1013, i64 40}
!1018 = !DILocation(line: 60, column: 90, scope: !1001)
!1019 = !DILocation(line: 60, column: 85, scope: !1001)
!1020 = !DILocation(line: 60, column: 121, scope: !1001)
!1021 = !DILocation(line: 60, column: 142, scope: !1001)
!1022 = !DILocation(line: 58, column: 9, scope: !1001)
!1023 = !DILocation(line: 61, column: 5, scope: !1001)
!1024 = !DILocation(line: 55, column: 26, scope: !997)
!1025 = !DILocation(line: 55, column: 5, scope: !997)
!1026 = !DILocation(line: 63, column: 1, scope: !449)
!1027 = !{!1013, !1013, i64 0}
!1028 = !DILocation(line: 66, column: 24, scope: !459)
!1029 = !DILocation(line: 68, column: 5, scope: !459)
!1030 = !DILocation(line: 68, column: 20, scope: !459)
!1031 = !DILocation(line: 69, column: 5, scope: !459)
!1032 = !DILocation(line: 69, column: 16, scope: !459)
!1033 = !DILocation(line: 70, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !459, file: !442, line: 70, column: 9)
!1035 = !DILocation(line: 70, column: 14, scope: !1034)
!1036 = !DILocation(line: 70, column: 9, scope: !459)
!1037 = !DILocation(line: 71, column: 9, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !442, line: 70, column: 19)
!1039 = !DILocation(line: 72, column: 9, scope: !1038)
!1040 = !DILocation(line: 75, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !459, file: !442, line: 75, column: 9)
!1042 = !DILocation(line: 75, column: 14, scope: !1041)
!1043 = !DILocation(line: 75, column: 19, scope: !1041)
!1044 = !DILocation(line: 75, column: 22, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1041, file: !442, discriminator: 1)
!1046 = !DILocation(line: 75, column: 9, scope: !459)
!1047 = !DILocation(line: 76, column: 14, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !442, line: 75, column: 36)
!1049 = !DILocation(line: 76, column: 12, scope: !1048)
!1050 = !DILocation(line: 77, column: 25, scope: !1048)
!1051 = !DILocation(line: 77, column: 12, scope: !1048)
!1052 = !DILocation(line: 77, column: 31, scope: !1048)
!1053 = !DILocation(line: 77, column: 40, scope: !1048)
!1054 = !{!1012, !1013, i64 0}
!1055 = !DILocation(line: 81, column: 29, scope: !1048)
!1056 = !DILocation(line: 81, column: 16, scope: !1048)
!1057 = !DILocation(line: 81, column: 9, scope: !1048)
!1058 = !DILocation(line: 83, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !459, file: !442, line: 83, column: 9)
!1060 = !DILocation(line: 83, column: 14, scope: !1059)
!1061 = !DILocation(line: 83, column: 19, scope: !1059)
!1062 = !DILocation(line: 83, column: 38, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1059, file: !442, discriminator: 1)
!1064 = !DILocation(line: 83, column: 28, scope: !1059)
!1065 = !DILocation(line: 83, column: 26, scope: !1059)
!1066 = !DILocation(line: 83, column: 45, scope: !1059)
!1067 = !DILocation(line: 83, column: 9, scope: !459)
!1068 = !DILocation(line: 84, column: 45, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1059, file: !442, line: 83, column: 60)
!1070 = !DILocation(line: 84, column: 49, scope: !1069)
!1071 = !DILocation(line: 84, column: 27, scope: !1069)
!1072 = !DILocation(line: 84, column: 19, scope: !1069)
!1073 = !DILocation(line: 84, column: 9, scope: !1069)
!1074 = !DILocation(line: 84, column: 25, scope: !1069)
!1075 = !DILocation(line: 85, column: 17, scope: !1069)
!1076 = !DILocation(line: 85, column: 9, scope: !1069)
!1077 = !DILocation(line: 85, column: 22, scope: !1069)
!1078 = !DILocation(line: 94, column: 37, scope: !1069)
!1079 = !DILocation(line: 94, column: 25, scope: !1069)
!1080 = !DILocation(line: 94, column: 43, scope: !1069)
!1081 = !DILocation(line: 94, column: 54, scope: !1069)
!1082 = !DILocation(line: 95, column: 5, scope: !1069)
!1083 = !DILocation(line: 100, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !442, line: 100, column: 13)
!1085 = distinct !DILexicalBlock(scope: !1059, file: !442, line: 98, column: 5)
!1086 = !DILocation(line: 100, column: 18, scope: !1084)
!1087 = !DILocation(line: 100, column: 13, scope: !1085)
!1088 = !DILocation(line: 102, column: 20, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !442, line: 101, column: 63)
!1090 = !DILocation(line: 102, column: 13, scope: !1089)
!1091 = !DILocation(line: 104, column: 72, scope: !1085)
!1092 = !DILocation(line: 104, column: 34, scope: !1085)
!1093 = !DILocation(line: 104, column: 16, scope: !1085)
!1094 = !DILocation(line: 104, column: 12, scope: !1085)
!1095 = !DILocation(line: 105, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !442, line: 105, column: 13)
!1097 = !DILocation(line: 105, column: 16, scope: !1096)
!1098 = !DILocation(line: 105, column: 13, scope: !1085)
!1099 = !DILocation(line: 106, column: 13, scope: !1096)
!1100 = !DILocation(line: 108, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !459, file: !442, line: 108, column: 5)
!1102 = !DILocation(line: 108, column: 10, scope: !1101)
!1103 = !DILocation(line: 108, column: 15, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !442, discriminator: 2)
!1105 = !DILexicalBlockFile(scope: !1106, file: !442, discriminator: 1)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !442, line: 108, column: 5)
!1107 = !DILocation(line: 108, column: 19, scope: !1106)
!1108 = !DILocation(line: 108, column: 17, scope: !1106)
!1109 = !DILocation(line: 108, column: 5, scope: !1101)
!1110 = !DILocation(line: 109, column: 21, scope: !1106)
!1111 = !DILocation(line: 109, column: 9, scope: !1106)
!1112 = !DILocation(line: 109, column: 13, scope: !1106)
!1113 = !DILocation(line: 109, column: 24, scope: !1106)
!1114 = !DILocation(line: 108, column: 26, scope: !1106)
!1115 = !DILocation(line: 108, column: 5, scope: !1106)
!1116 = !DILocation(line: 111, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !459, file: !442, line: 111, column: 9)
!1118 = !DILocation(line: 111, column: 14, scope: !1117)
!1119 = !DILocation(line: 111, column: 9, scope: !459)
!1120 = !DILocation(line: 112, column: 24, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !442, line: 111, column: 20)
!1122 = !DILocation(line: 112, column: 22, scope: !1121)
!1123 = !DILocation(line: 113, column: 9, scope: !1121)
!1124 = !DILocation(line: 114, column: 25, scope: !1121)
!1125 = !DILocation(line: 114, column: 12, scope: !1121)
!1126 = !DILocation(line: 114, column: 31, scope: !1121)
!1127 = !DILocation(line: 114, column: 40, scope: !1121)
!1128 = !DILocation(line: 115, column: 5, scope: !1121)
!1129 = !DILocation(line: 120, column: 5, scope: !459)
!1130 = !DILocation(line: 120, column: 10, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !467, file: !442, discriminator: 1)
!1132 = !DILocation(line: 120, column: 21, scope: !467)
!1133 = !DILocation(line: 120, column: 40, scope: !467)
!1134 = !DILocation(line: 120, column: 26, scope: !467)
!1135 = !DILocation(line: 120, column: 43, scope: !467)
!1136 = !DILocation(line: 120, column: 54, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !467, file: !442, line: 120, column: 52)
!1138 = !DILocation(line: 120, column: 58, scope: !1137)
!1139 = !DILocation(line: 120, column: 61, scope: !1137)
!1140 = !{!1141, !1013, i64 16}
!1141 = !{!"", !980, i64 0, !980, i64 8, !1013, i64 16}
!1142 = !DILocation(line: 120, column: 69, scope: !1137)
!1143 = !DILocation(line: 120, column: 77, scope: !1137)
!1144 = !DILocation(line: 120, column: 52, scope: !467)
!1145 = !DILocation(line: 120, column: 86, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1137, file: !442, discriminator: 2)
!1147 = !DILocation(line: 120, column: 130, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !467, file: !442, discriminator: 3)
!1149 = !DILocation(line: 120, column: 155, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !442, discriminator: 4)
!1151 = distinct !DILexicalBlock(scope: !467, file: !442, line: 120, column: 133)
!1152 = !DILocation(line: 120, column: 159, scope: !1151)
!1153 = !DILocation(line: 120, column: 162, scope: !1151)
!1154 = !DILocation(line: 120, column: 170, scope: !1151)
!1155 = !DILocation(line: 120, column: 197, scope: !1151)
!1156 = !DILocation(line: 120, column: 136, scope: !1151)
!1157 = !DILocation(line: 120, column: 140, scope: !1151)
!1158 = !DILocation(line: 120, column: 143, scope: !1151)
!1159 = !DILocation(line: 120, column: 151, scope: !1151)
!1160 = !DILocation(line: 120, column: 226, scope: !1151)
!1161 = !DILocation(line: 120, column: 226, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1151, file: !442, discriminator: 5)
!1163 = !DILocation(line: 120, column: 255, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !467, file: !442, discriminator: 6)
!1165 = !DILocation(line: 120, column: 239, scope: !467)
!1166 = !DILocation(line: 120, column: 242, scope: !467)
!1167 = !DILocation(line: 120, column: 245, scope: !467)
!1168 = !DILocation(line: 120, column: 253, scope: !467)
!1169 = !{!1141, !980, i64 0}
!1170 = !DILocation(line: 120, column: 290, scope: !467)
!1171 = !DILocation(line: 120, column: 309, scope: !467)
!1172 = !DILocation(line: 120, column: 312, scope: !467)
!1173 = !{!1141, !980, i64 8}
!1174 = !DILocation(line: 120, column: 274, scope: !467)
!1175 = !DILocation(line: 120, column: 277, scope: !467)
!1176 = !DILocation(line: 120, column: 280, scope: !467)
!1177 = !DILocation(line: 120, column: 288, scope: !467)
!1178 = !DILocation(line: 120, column: 349, scope: !467)
!1179 = !DILocation(line: 120, column: 321, scope: !467)
!1180 = !DILocation(line: 120, column: 324, scope: !467)
!1181 = !DILocation(line: 120, column: 327, scope: !467)
!1182 = !DILocation(line: 120, column: 336, scope: !467)
!1183 = !DILocation(line: 120, column: 339, scope: !467)
!1184 = !DILocation(line: 120, column: 347, scope: !467)
!1185 = !DILocation(line: 120, column: 384, scope: !467)
!1186 = !DILocation(line: 120, column: 352, scope: !467)
!1187 = !DILocation(line: 120, column: 371, scope: !467)
!1188 = !DILocation(line: 120, column: 374, scope: !467)
!1189 = !DILocation(line: 120, column: 382, scope: !467)
!1190 = !DILocation(line: 120, column: 387, scope: !459)
!1191 = !DILocation(line: 120, column: 387, scope: !467)
!1192 = !DILocation(line: 120, column: 387, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !467, file: !442, discriminator: 7)
!1194 = !DILocation(line: 121, column: 25, scope: !459)
!1195 = !DILocation(line: 121, column: 12, scope: !459)
!1196 = !DILocation(line: 121, column: 5, scope: !459)
!1197 = !DILocation(line: 122, column: 1, scope: !459)
!1198 = !DILocation(line: 125, column: 24, scope: !468)
!1199 = !DILocation(line: 127, column: 27, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !468, file: !442, line: 127, column: 9)
!1201 = !DILocation(line: 127, column: 33, scope: !1200)
!1202 = !{!1012, !980, i64 8}
!1203 = !DILocation(line: 127, column: 44, scope: !1200)
!1204 = !{!1010, !1013, i64 168}
!1205 = !DILocation(line: 127, column: 53, scope: !1200)
!1206 = !DILocation(line: 127, column: 70, scope: !1200)
!1207 = !DILocation(line: 127, column: 9, scope: !468)
!1208 = !DILocation(line: 128, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !442, line: 127, column: 77)
!1210 = !DILocation(line: 129, column: 9, scope: !1209)
!1211 = !DILocation(line: 132, column: 33, scope: !1200)
!1212 = !DILocation(line: 132, column: 18, scope: !1200)
!1213 = !DILocation(line: 132, column: 39, scope: !1200)
!1214 = !{!1011, !1013, i64 16}
!1215 = !DILocation(line: 132, column: 9, scope: !1200)
!1216 = !DILocation(line: 133, column: 1, scope: !468)
!1217 = !DILocation(line: 136, column: 27, scope: !471)
!1218 = !DILocation(line: 136, column: 42, scope: !471)
!1219 = !DILocation(line: 138, column: 27, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !471, file: !442, line: 138, column: 9)
!1221 = !DILocation(line: 138, column: 33, scope: !1220)
!1222 = !DILocation(line: 138, column: 44, scope: !1220)
!1223 = !DILocation(line: 138, column: 53, scope: !1220)
!1224 = !DILocation(line: 138, column: 70, scope: !1220)
!1225 = !DILocation(line: 138, column: 9, scope: !471)
!1226 = !DILocation(line: 139, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !442, line: 138, column: 77)
!1228 = !DILocation(line: 140, column: 9, scope: !1227)
!1229 = !DILocation(line: 142, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !471, file: !442, line: 142, column: 9)
!1231 = !DILocation(line: 142, column: 11, scope: !1230)
!1232 = !DILocation(line: 142, column: 15, scope: !1230)
!1233 = !DILocation(line: 142, column: 18, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1230, file: !442, discriminator: 1)
!1235 = !DILocation(line: 142, column: 40, scope: !1230)
!1236 = !DILocation(line: 142, column: 25, scope: !1230)
!1237 = !DILocation(line: 142, column: 46, scope: !1230)
!1238 = !DILocation(line: 142, column: 20, scope: !1230)
!1239 = !DILocation(line: 142, column: 9, scope: !471)
!1240 = !DILocation(line: 143, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !442, line: 142, column: 56)
!1242 = !DILocation(line: 143, column: 9, scope: !1241)
!1243 = !DILocation(line: 144, column: 9, scope: !1241)
!1244 = !DILocation(line: 146, column: 45, scope: !471)
!1245 = !DILocation(line: 146, column: 30, scope: !471)
!1246 = !DILocation(line: 146, column: 13, scope: !471)
!1247 = !DILocation(line: 146, column: 37, scope: !471)
!1248 = !DILocation(line: 146, column: 12, scope: !471)
!1249 = !DILocation(line: 146, column: 5, scope: !471)
!1250 = !DILocation(line: 147, column: 1, scope: !471)
!1251 = !DILocation(line: 150, column: 27, scope: !475)
!1252 = !DILocation(line: 150, column: 42, scope: !475)
!1253 = !DILocation(line: 150, column: 55, scope: !475)
!1254 = !DILocation(line: 152, column: 5, scope: !475)
!1255 = !DILocation(line: 152, column: 15, scope: !475)
!1256 = !DILocation(line: 153, column: 5, scope: !475)
!1257 = !DILocation(line: 153, column: 16, scope: !475)
!1258 = !DILocation(line: 154, column: 27, scope: !486)
!1259 = !DILocation(line: 154, column: 33, scope: !486)
!1260 = !DILocation(line: 154, column: 44, scope: !486)
!1261 = !DILocation(line: 154, column: 53, scope: !486)
!1262 = !DILocation(line: 154, column: 70, scope: !486)
!1263 = !DILocation(line: 154, column: 76, scope: !486)
!1264 = !DILocation(line: 154, column: 79, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !486, file: !442, discriminator: 1)
!1266 = !DILocation(line: 154, column: 83, scope: !486)
!1267 = !DILocation(line: 154, column: 93, scope: !486)
!1268 = !DILocation(line: 154, column: 9, scope: !475)
!1269 = !DILocation(line: 155, column: 9, scope: !485)
!1270 = !DILocation(line: 155, column: 14, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !484, file: !442, discriminator: 1)
!1272 = !DILocation(line: 155, column: 24, scope: !484)
!1273 = !DILocation(line: 155, column: 55, scope: !484)
!1274 = !DILocation(line: 155, column: 69, scope: !489)
!1275 = !DILocation(line: 155, column: 85, scope: !489)
!1276 = !DILocation(line: 155, column: 69, scope: !484)
!1277 = !DILocation(line: 155, column: 100, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !489, file: !442, discriminator: 2)
!1279 = !DILocation(line: 155, column: 105, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !488, file: !442, discriminator: 4)
!1281 = !DILocation(line: 155, column: 115, scope: !488)
!1282 = !DILocation(line: 155, column: 145, scope: !488)
!1283 = !DILocation(line: 155, column: 171, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !488, file: !442, line: 155, column: 168)
!1285 = !DILocation(line: 155, column: 188, scope: !1284)
!1286 = !DILocation(line: 155, column: 168, scope: !1284)
!1287 = !DILocation(line: 155, column: 198, scope: !1284)
!1288 = !DILocation(line: 155, column: 168, scope: !488)
!1289 = !DILocation(line: 155, column: 168, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !488, file: !442, discriminator: 5)
!1291 = !DILocation(line: 155, column: 229, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1284, file: !442, discriminator: 6)
!1293 = !DILocation(line: 155, column: 247, scope: !1284)
!1294 = !DILocation(line: 155, column: 257, scope: !1284)
!1295 = !{!1010, !980, i64 48}
!1296 = !DILocation(line: 155, column: 282, scope: !1284)
!1297 = !DILocation(line: 155, column: 213, scope: !1284)
!1298 = !DILocation(line: 155, column: 301, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !489, file: !442, discriminator: 7)
!1300 = !DILocation(line: 155, column: 301, scope: !488)
!1301 = !DILocation(line: 155, column: 301, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !488, file: !442, discriminator: 8)
!1303 = !DILocation(line: 155, column: 301, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !488, file: !442, discriminator: 9)
!1305 = !DILocation(line: 155, column: 314, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !442, discriminator: 10)
!1307 = !DILexicalBlockFile(scope: !485, file: !442, discriminator: 3)
!1308 = !DILocation(line: 155, column: 314, scope: !484)
!1309 = !DILocation(line: 155, column: 314, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !484, file: !442, discriminator: 11)
!1311 = !DILocation(line: 156, column: 9, scope: !485)
!1312 = !DILocation(line: 157, column: 9, scope: !485)
!1313 = !DILocation(line: 159, column: 9, scope: !493)
!1314 = !DILocation(line: 159, column: 11, scope: !493)
!1315 = !DILocation(line: 159, column: 15, scope: !493)
!1316 = !DILocation(line: 159, column: 18, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !493, file: !442, discriminator: 1)
!1318 = !DILocation(line: 159, column: 40, scope: !493)
!1319 = !DILocation(line: 159, column: 25, scope: !493)
!1320 = !DILocation(line: 159, column: 46, scope: !493)
!1321 = !DILocation(line: 159, column: 20, scope: !493)
!1322 = !DILocation(line: 159, column: 9, scope: !475)
!1323 = !DILocation(line: 160, column: 9, scope: !492)
!1324 = !DILocation(line: 160, column: 14, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !491, file: !442, discriminator: 1)
!1326 = !DILocation(line: 160, column: 24, scope: !491)
!1327 = !DILocation(line: 160, column: 55, scope: !491)
!1328 = !DILocation(line: 160, column: 69, scope: !496)
!1329 = !DILocation(line: 160, column: 85, scope: !496)
!1330 = !DILocation(line: 160, column: 69, scope: !491)
!1331 = !DILocation(line: 160, column: 100, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !496, file: !442, discriminator: 2)
!1333 = !DILocation(line: 160, column: 105, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !495, file: !442, discriminator: 4)
!1335 = !DILocation(line: 160, column: 115, scope: !495)
!1336 = !DILocation(line: 160, column: 145, scope: !495)
!1337 = !DILocation(line: 160, column: 171, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !495, file: !442, line: 160, column: 168)
!1339 = !DILocation(line: 160, column: 188, scope: !1338)
!1340 = !DILocation(line: 160, column: 168, scope: !1338)
!1341 = !DILocation(line: 160, column: 198, scope: !1338)
!1342 = !DILocation(line: 160, column: 168, scope: !495)
!1343 = !DILocation(line: 160, column: 168, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !495, file: !442, discriminator: 5)
!1345 = !DILocation(line: 160, column: 229, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1338, file: !442, discriminator: 6)
!1347 = !DILocation(line: 160, column: 247, scope: !1338)
!1348 = !DILocation(line: 160, column: 257, scope: !1338)
!1349 = !DILocation(line: 160, column: 282, scope: !1338)
!1350 = !DILocation(line: 160, column: 213, scope: !1338)
!1351 = !DILocation(line: 160, column: 301, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !496, file: !442, discriminator: 7)
!1353 = !DILocation(line: 160, column: 301, scope: !495)
!1354 = !DILocation(line: 160, column: 301, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !495, file: !442, discriminator: 8)
!1356 = !DILocation(line: 160, column: 301, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !495, file: !442, discriminator: 9)
!1358 = !DILocation(line: 160, column: 314, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !442, discriminator: 10)
!1360 = !DILexicalBlockFile(scope: !492, file: !442, discriminator: 3)
!1361 = !DILocation(line: 160, column: 314, scope: !491)
!1362 = !DILocation(line: 160, column: 314, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !491, file: !442, discriminator: 11)
!1364 = !DILocation(line: 161, column: 25, scope: !492)
!1365 = !DILocation(line: 161, column: 9, scope: !492)
!1366 = !DILocation(line: 163, column: 9, scope: !492)
!1367 = !DILocation(line: 165, column: 27, scope: !475)
!1368 = !DILocation(line: 165, column: 10, scope: !475)
!1369 = !DILocation(line: 165, column: 34, scope: !475)
!1370 = !DILocation(line: 165, column: 9, scope: !475)
!1371 = !DILocation(line: 165, column: 44, scope: !475)
!1372 = !DILocation(line: 165, column: 42, scope: !475)
!1373 = !DILocation(line: 165, column: 7, scope: !475)
!1374 = !DILocation(line: 166, column: 16, scope: !475)
!1375 = !DILocation(line: 166, column: 15, scope: !475)
!1376 = !DILocation(line: 166, column: 13, scope: !475)
!1377 = !DILocation(line: 167, column: 10, scope: !475)
!1378 = !DILocation(line: 167, column: 6, scope: !475)
!1379 = !DILocation(line: 167, column: 8, scope: !475)
!1380 = !DILocation(line: 168, column: 5, scope: !475)
!1381 = !DILocation(line: 168, column: 10, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !498, file: !442, discriminator: 1)
!1383 = !DILocation(line: 168, column: 20, scope: !498)
!1384 = !DILocation(line: 168, column: 51, scope: !498)
!1385 = !DILocation(line: 168, column: 65, scope: !501)
!1386 = !DILocation(line: 168, column: 81, scope: !501)
!1387 = !DILocation(line: 168, column: 65, scope: !498)
!1388 = !DILocation(line: 168, column: 96, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !501, file: !442, discriminator: 2)
!1390 = !DILocation(line: 168, column: 101, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !500, file: !442, discriminator: 4)
!1392 = !DILocation(line: 168, column: 111, scope: !500)
!1393 = !DILocation(line: 168, column: 141, scope: !500)
!1394 = !DILocation(line: 168, column: 167, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !500, file: !442, line: 168, column: 164)
!1396 = !DILocation(line: 168, column: 184, scope: !1395)
!1397 = !DILocation(line: 168, column: 164, scope: !1395)
!1398 = !DILocation(line: 168, column: 194, scope: !1395)
!1399 = !DILocation(line: 168, column: 164, scope: !500)
!1400 = !DILocation(line: 168, column: 164, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !500, file: !442, discriminator: 5)
!1402 = !DILocation(line: 168, column: 225, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1395, file: !442, discriminator: 6)
!1404 = !DILocation(line: 168, column: 243, scope: !1395)
!1405 = !DILocation(line: 168, column: 253, scope: !1395)
!1406 = !DILocation(line: 168, column: 278, scope: !1395)
!1407 = !DILocation(line: 168, column: 209, scope: !1395)
!1408 = !DILocation(line: 168, column: 297, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !501, file: !442, discriminator: 7)
!1410 = !DILocation(line: 168, column: 297, scope: !500)
!1411 = !DILocation(line: 168, column: 297, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !500, file: !442, discriminator: 8)
!1413 = !DILocation(line: 168, column: 297, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !500, file: !442, discriminator: 9)
!1415 = !DILocation(line: 168, column: 310, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !442, discriminator: 10)
!1417 = !DILexicalBlockFile(scope: !475, file: !442, discriminator: 3)
!1418 = !DILocation(line: 168, column: 310, scope: !498)
!1419 = !DILocation(line: 168, column: 310, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !498, file: !442, discriminator: 11)
!1421 = !DILocation(line: 169, column: 5, scope: !475)
!1422 = !DILocation(line: 170, column: 1, scope: !475)
!1423 = !DILocation(line: 173, column: 33, scope: !502)
!1424 = !DILocation(line: 175, column: 5, scope: !502)
!1425 = !DILocation(line: 175, column: 20, scope: !502)
!1426 = !DILocation(line: 176, column: 5, scope: !502)
!1427 = !DILocation(line: 176, column: 16, scope: !502)
!1428 = !DILocation(line: 176, column: 19, scope: !502)
!1429 = !DILocation(line: 178, column: 25, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !502, file: !442, line: 178, column: 9)
!1431 = !DILocation(line: 178, column: 31, scope: !1430)
!1432 = !DILocation(line: 178, column: 40, scope: !1430)
!1433 = !DILocation(line: 178, column: 58, scope: !1430)
!1434 = !DILocation(line: 178, column: 80, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1430, file: !442, discriminator: 1)
!1436 = !DILocation(line: 178, column: 66, scope: !1430)
!1437 = !DILocation(line: 178, column: 83, scope: !1430)
!1438 = !DILocation(line: 178, column: 89, scope: !1430)
!1439 = !DILocation(line: 178, column: 92, scope: !1430)
!1440 = !DILocation(line: 178, column: 100, scope: !1430)
!1441 = !DILocation(line: 178, column: 108, scope: !1430)
!1442 = !DILocation(line: 178, column: 9, scope: !502)
!1443 = !DILocation(line: 179, column: 9, scope: !1430)
!1444 = !DILocation(line: 180, column: 27, scope: !502)
!1445 = !DILocation(line: 180, column: 9, scope: !502)
!1446 = !DILocation(line: 180, column: 7, scope: !502)
!1447 = !DILocation(line: 181, column: 26, scope: !502)
!1448 = !DILocation(line: 181, column: 11, scope: !502)
!1449 = !DILocation(line: 181, column: 31, scope: !502)
!1450 = !DILocation(line: 181, column: 7, scope: !502)
!1451 = !DILocation(line: 182, column: 12, scope: !511)
!1452 = !DILocation(line: 182, column: 10, scope: !511)
!1453 = !DILocation(line: 182, column: 17, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1455, file: !442, discriminator: 2)
!1455 = !DILexicalBlockFile(scope: !510, file: !442, discriminator: 1)
!1456 = !DILocation(line: 182, column: 21, scope: !510)
!1457 = !DILocation(line: 182, column: 19, scope: !510)
!1458 = !DILocation(line: 182, column: 5, scope: !511)
!1459 = !DILocation(line: 183, column: 9, scope: !509)
!1460 = !DILocation(line: 183, column: 19, scope: !509)
!1461 = !DILocation(line: 183, column: 58, scope: !509)
!1462 = !DILocation(line: 183, column: 45, scope: !509)
!1463 = !DILocation(line: 183, column: 50, scope: !509)
!1464 = !DILocation(line: 183, column: 26, scope: !509)
!1465 = !DILocation(line: 187, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !509, file: !442, line: 187, column: 13)
!1467 = !DILocation(line: 187, column: 18, scope: !1466)
!1468 = !DILocation(line: 188, column: 33, scope: !1466)
!1469 = !DILocation(line: 188, column: 40, scope: !1466)
!1470 = !DILocation(line: 188, column: 52, scope: !1466)
!1471 = !DILocation(line: 188, column: 61, scope: !1466)
!1472 = !DILocation(line: 188, column: 78, scope: !1466)
!1473 = !DILocation(line: 188, column: 84, scope: !1466)
!1474 = !DILocation(line: 188, column: 102, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1466, file: !442, discriminator: 1)
!1476 = !DILocation(line: 188, column: 109, scope: !1466)
!1477 = !DILocation(line: 188, column: 119, scope: !1466)
!1478 = !{!1010, !980, i64 328}
!1479 = !DILocation(line: 188, column: 128, scope: !1466)
!1480 = !DILocation(line: 188, column: 142, scope: !1466)
!1481 = !DILocation(line: 188, column: 159, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1466, file: !442, discriminator: 3)
!1483 = !DILocation(line: 188, column: 166, scope: !1466)
!1484 = !DILocation(line: 188, column: 176, scope: !1466)
!1485 = !DILocation(line: 188, column: 185, scope: !1466)
!1486 = !DILocation(line: 188, column: 145, scope: !1466)
!1487 = !DILocation(line: 188, column: 192, scope: !1466)
!1488 = !DILocation(line: 188, column: 212, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !442, discriminator: 4)
!1490 = !DILexicalBlockFile(scope: !1466, file: !442, discriminator: 2)
!1491 = !DILocation(line: 188, column: 219, scope: !1466)
!1492 = !DILocation(line: 188, column: 228, scope: !1466)
!1493 = !DILocation(line: 188, column: 246, scope: !1466)
!1494 = !DILocation(line: 188, column: 267, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1466, file: !442, discriminator: 5)
!1496 = !DILocation(line: 188, column: 253, scope: !1466)
!1497 = !DILocation(line: 188, column: 271, scope: !1466)
!1498 = !DILocation(line: 188, column: 277, scope: !1466)
!1499 = !DILocation(line: 188, column: 280, scope: !1466)
!1500 = !DILocation(line: 188, column: 288, scope: !1466)
!1501 = !DILocation(line: 188, column: 296, scope: !1466)
!1502 = !DILocation(line: 187, column: 13, scope: !509)
!1503 = !DILocation(line: 189, column: 13, scope: !1466)
!1504 = !DILocation(line: 190, column: 5, scope: !510)
!1505 = !DILocation(line: 190, column: 5, scope: !1455)
!1506 = !DILocation(line: 190, column: 5, scope: !509)
!1507 = !DILocation(line: 182, column: 25, scope: !510)
!1508 = !DILocation(line: 182, column: 5, scope: !510)
!1509 = !DILocation(line: 195, column: 5, scope: !502)
!1510 = !DILocation(line: 195, column: 10, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !513, file: !442, discriminator: 1)
!1512 = !DILocation(line: 195, column: 21, scope: !513)
!1513 = !DILocation(line: 195, column: 40, scope: !513)
!1514 = !DILocation(line: 195, column: 26, scope: !513)
!1515 = !DILocation(line: 195, column: 43, scope: !513)
!1516 = !DILocation(line: 195, column: 62, scope: !513)
!1517 = !DILocation(line: 195, column: 87, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !442, discriminator: 2)
!1519 = distinct !DILexicalBlock(scope: !513, file: !442, line: 195, column: 65)
!1520 = !DILocation(line: 195, column: 91, scope: !1519)
!1521 = !DILocation(line: 195, column: 94, scope: !1519)
!1522 = !DILocation(line: 195, column: 102, scope: !1519)
!1523 = !DILocation(line: 195, column: 129, scope: !1519)
!1524 = !DILocation(line: 195, column: 68, scope: !1519)
!1525 = !DILocation(line: 195, column: 72, scope: !1519)
!1526 = !DILocation(line: 195, column: 75, scope: !1519)
!1527 = !DILocation(line: 195, column: 83, scope: !1519)
!1528 = !DILocation(line: 195, column: 158, scope: !1519)
!1529 = !DILocation(line: 195, column: 158, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1519, file: !442, discriminator: 3)
!1531 = !DILocation(line: 195, column: 199, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !513, file: !442, discriminator: 4)
!1533 = !DILocation(line: 195, column: 202, scope: !513)
!1534 = !DILocation(line: 195, column: 205, scope: !513)
!1535 = !DILocation(line: 195, column: 171, scope: !513)
!1536 = !DILocation(line: 195, column: 174, scope: !513)
!1537 = !DILocation(line: 195, column: 177, scope: !513)
!1538 = !DILocation(line: 195, column: 186, scope: !513)
!1539 = !DILocation(line: 195, column: 189, scope: !513)
!1540 = !DILocation(line: 195, column: 197, scope: !513)
!1541 = !DILocation(line: 195, column: 242, scope: !513)
!1542 = !DILocation(line: 195, column: 245, scope: !513)
!1543 = !DILocation(line: 195, column: 248, scope: !513)
!1544 = !DILocation(line: 195, column: 214, scope: !513)
!1545 = !DILocation(line: 195, column: 217, scope: !513)
!1546 = !DILocation(line: 195, column: 220, scope: !513)
!1547 = !DILocation(line: 195, column: 229, scope: !513)
!1548 = !DILocation(line: 195, column: 232, scope: !513)
!1549 = !DILocation(line: 195, column: 240, scope: !513)
!1550 = !DILocation(line: 195, column: 257, scope: !513)
!1551 = !DILocation(line: 195, column: 260, scope: !513)
!1552 = !DILocation(line: 195, column: 263, scope: !513)
!1553 = !DILocation(line: 195, column: 271, scope: !513)
!1554 = !DILocation(line: 195, column: 285, scope: !502)
!1555 = !DILocation(line: 195, column: 285, scope: !513)
!1556 = !DILocation(line: 195, column: 285, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !513, file: !442, discriminator: 5)
!1558 = !DILocation(line: 196, column: 1, scope: !502)
!1559 = !DILocation(line: 196, column: 1, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !502, file: !442, discriminator: 1)
!1561 = !DILocation(line: 199, column: 25, scope: !514)
!1562 = !DILocation(line: 201, column: 5, scope: !514)
!1563 = !DILocation(line: 201, column: 16, scope: !514)
!1564 = !DILocation(line: 202, column: 5, scope: !514)
!1565 = !DILocation(line: 202, column: 15, scope: !514)
!1566 = !DILocation(line: 203, column: 5, scope: !514)
!1567 = !DILocation(line: 203, column: 15, scope: !514)
!1568 = !DILocation(line: 204, column: 5, scope: !514)
!1569 = !DILocation(line: 204, column: 16, scope: !514)
!1570 = !DILocation(line: 205, column: 5, scope: !514)
!1571 = !DILocation(line: 205, column: 13, scope: !514)
!1572 = !DILocation(line: 207, column: 24, scope: !514)
!1573 = !DILocation(line: 207, column: 5, scope: !514)
!1574 = !DILocation(line: 208, column: 26, scope: !514)
!1575 = !DILocation(line: 208, column: 14, scope: !514)
!1576 = !DILocation(line: 208, column: 12, scope: !514)
!1577 = !DILocation(line: 209, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !514, file: !442, line: 209, column: 9)
!1579 = !DILocation(line: 209, column: 16, scope: !1578)
!1580 = !DILocation(line: 209, column: 9, scope: !514)
!1581 = !DILocation(line: 210, column: 26, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !442, line: 209, column: 31)
!1583 = !DILocation(line: 210, column: 9, scope: !1582)
!1584 = !DILocation(line: 211, column: 9, scope: !1582)
!1585 = !DILocation(line: 213, column: 31, scope: !514)
!1586 = !DILocation(line: 213, column: 14, scope: !514)
!1587 = !DILocation(line: 213, column: 40, scope: !514)
!1588 = !DILocation(line: 213, column: 13, scope: !514)
!1589 = !DILocation(line: 213, column: 11, scope: !514)
!1590 = !DILocation(line: 214, column: 12, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !514, file: !442, line: 214, column: 5)
!1592 = !DILocation(line: 214, column: 10, scope: !1591)
!1593 = !DILocation(line: 214, column: 17, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !442, discriminator: 2)
!1595 = !DILexicalBlockFile(scope: !1596, file: !442, discriminator: 1)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !442, line: 214, column: 5)
!1597 = !DILocation(line: 214, column: 21, scope: !1596)
!1598 = !DILocation(line: 214, column: 19, scope: !1596)
!1599 = !DILocation(line: 214, column: 5, scope: !1591)
!1600 = !DILocation(line: 215, column: 30, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !442, line: 214, column: 29)
!1602 = !DILocation(line: 215, column: 13, scope: !1601)
!1603 = !DILocation(line: 215, column: 13, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1601, file: !442, discriminator: 1)
!1605 = !DILocation(line: 215, column: 13, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1601, file: !442, discriminator: 2)
!1607 = !DILocation(line: 215, column: 13, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !442, discriminator: 4)
!1609 = !DILexicalBlockFile(scope: !1601, file: !442, discriminator: 3)
!1610 = !DILocation(line: 215, column: 11, scope: !1601)
!1611 = !DILocation(line: 216, column: 25, scope: !1601)
!1612 = !DILocation(line: 216, column: 30, scope: !1601)
!1613 = !DILocation(line: 216, column: 39, scope: !1601)
!1614 = !DILocation(line: 217, column: 20, scope: !1601)
!1615 = !DILocation(line: 217, column: 15, scope: !1601)
!1616 = !DILocation(line: 217, column: 9, scope: !1601)
!1617 = !DILocation(line: 217, column: 18, scope: !1601)
!1618 = !DILocation(line: 218, column: 5, scope: !1601)
!1619 = !DILocation(line: 214, column: 25, scope: !1596)
!1620 = !DILocation(line: 214, column: 5, scope: !1596)
!1621 = !DILocation(line: 219, column: 22, scope: !514)
!1622 = !DILocation(line: 219, column: 5, scope: !514)
!1623 = !DILocation(line: 220, column: 12, scope: !514)
!1624 = !DILocation(line: 220, column: 5, scope: !514)
!1625 = !DILocation(line: 221, column: 1, scope: !514)
!1626 = !DILocation(line: 426, column: 28, scope: !536)
!1627 = !DILocation(line: 426, column: 43, scope: !536)
!1628 = !DILocation(line: 426, column: 57, scope: !536)
!1629 = !DILocation(line: 428, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !536, file: !442, line: 428, column: 9)
!1631 = !DILocation(line: 428, column: 12, scope: !1630)
!1632 = !DILocation(line: 428, column: 26, scope: !1630)
!1633 = !DILocation(line: 428, column: 47, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1630, file: !442, discriminator: 1)
!1635 = !DILocation(line: 428, column: 53, scope: !1630)
!1636 = !DILocation(line: 428, column: 64, scope: !1630)
!1637 = !DILocation(line: 428, column: 73, scope: !1630)
!1638 = !DILocation(line: 428, column: 90, scope: !1630)
!1639 = !DILocation(line: 428, column: 9, scope: !536)
!1640 = !DILocation(line: 429, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !442, line: 428, column: 97)
!1642 = !DILocation(line: 430, column: 9, scope: !1641)
!1643 = !DILocation(line: 432, column: 40, scope: !536)
!1644 = !DILocation(line: 432, column: 23, scope: !536)
!1645 = !DILocation(line: 432, column: 44, scope: !536)
!1646 = !DILocation(line: 432, column: 47, scope: !536)
!1647 = !DILocation(line: 432, column: 12, scope: !536)
!1648 = !DILocation(line: 432, column: 5, scope: !536)
!1649 = !DILocation(line: 433, column: 1, scope: !536)
!1650 = !DILocation(line: 394, column: 27, scope: !599)
!1651 = !DILocation(line: 394, column: 41, scope: !599)
!1652 = !DILocation(line: 395, column: 23, scope: !599)
!1653 = !DILocation(line: 397, column: 5, scope: !599)
!1654 = !DILocation(line: 397, column: 20, scope: !599)
!1655 = !DILocation(line: 398, column: 5, scope: !599)
!1656 = !DILocation(line: 398, column: 16, scope: !599)
!1657 = !DILocation(line: 398, column: 23, scope: !599)
!1658 = !DILocation(line: 399, column: 5, scope: !599)
!1659 = !DILocation(line: 399, column: 16, scope: !599)
!1660 = !DILocation(line: 400, column: 5, scope: !599)
!1661 = !DILocation(line: 400, column: 16, scope: !599)
!1662 = !DILocation(line: 401, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !599, file: !442, line: 401, column: 9)
!1664 = !DILocation(line: 401, column: 14, scope: !1663)
!1665 = !DILocation(line: 401, column: 9, scope: !599)
!1666 = !DILocation(line: 402, column: 14, scope: !1663)
!1667 = !DILocation(line: 402, column: 9, scope: !1663)
!1668 = !DILocation(line: 403, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !599, file: !442, line: 403, column: 9)
!1670 = !DILocation(line: 403, column: 34, scope: !1669)
!1671 = !DILocation(line: 403, column: 19, scope: !1669)
!1672 = !DILocation(line: 403, column: 39, scope: !1669)
!1673 = !DILocation(line: 403, column: 15, scope: !1669)
!1674 = !DILocation(line: 403, column: 9, scope: !599)
!1675 = !DILocation(line: 404, column: 34, scope: !1669)
!1676 = !DILocation(line: 404, column: 19, scope: !1669)
!1677 = !DILocation(line: 404, column: 39, scope: !1669)
!1678 = !DILocation(line: 404, column: 15, scope: !1669)
!1679 = !DILocation(line: 404, column: 9, scope: !1669)
!1680 = !DILocation(line: 405, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !599, file: !442, line: 405, column: 9)
!1682 = !DILocation(line: 405, column: 17, scope: !1681)
!1683 = !DILocation(line: 405, column: 15, scope: !1681)
!1684 = !DILocation(line: 405, column: 9, scope: !599)
!1685 = !DILocation(line: 406, column: 17, scope: !1681)
!1686 = !DILocation(line: 406, column: 15, scope: !1681)
!1687 = !DILocation(line: 406, column: 9, scope: !1681)
!1688 = !DILocation(line: 407, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !599, file: !442, line: 407, column: 9)
!1690 = !DILocation(line: 407, column: 14, scope: !1689)
!1691 = !DILocation(line: 407, column: 19, scope: !1689)
!1692 = !DILocation(line: 407, column: 22, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1689, file: !442, discriminator: 1)
!1694 = !DILocation(line: 407, column: 48, scope: !1689)
!1695 = !DILocation(line: 407, column: 33, scope: !1689)
!1696 = !DILocation(line: 407, column: 53, scope: !1689)
!1697 = !DILocation(line: 407, column: 28, scope: !1689)
!1698 = !DILocation(line: 407, column: 62, scope: !1689)
!1699 = !DILocation(line: 407, column: 80, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1689, file: !442, discriminator: 2)
!1701 = !DILocation(line: 407, column: 68, scope: !1689)
!1702 = !DILocation(line: 407, column: 85, scope: !1689)
!1703 = !DILocation(line: 407, column: 94, scope: !1689)
!1704 = !DILocation(line: 407, column: 9, scope: !599)
!1705 = !DILocation(line: 408, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1689, file: !442, line: 407, column: 113)
!1707 = !DILocation(line: 408, column: 12, scope: !1706)
!1708 = !DILocation(line: 408, column: 30, scope: !1706)
!1709 = !DILocation(line: 408, column: 39, scope: !1706)
!1710 = !DILocation(line: 409, column: 28, scope: !1706)
!1711 = !DILocation(line: 409, column: 16, scope: !1706)
!1712 = !DILocation(line: 409, column: 9, scope: !1706)
!1713 = !DILocation(line: 411, column: 11, scope: !599)
!1714 = !DILocation(line: 411, column: 19, scope: !599)
!1715 = !DILocation(line: 411, column: 17, scope: !599)
!1716 = !DILocation(line: 411, column: 9, scope: !599)
!1717 = !DILocation(line: 412, column: 39, scope: !599)
!1718 = !DILocation(line: 412, column: 27, scope: !599)
!1719 = !DILocation(line: 412, column: 10, scope: !599)
!1720 = !DILocation(line: 412, column: 8, scope: !599)
!1721 = !DILocation(line: 413, column: 9, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !599, file: !442, line: 413, column: 9)
!1723 = !DILocation(line: 413, column: 12, scope: !1722)
!1724 = !DILocation(line: 413, column: 9, scope: !599)
!1725 = !DILocation(line: 414, column: 9, scope: !1722)
!1726 = !DILocation(line: 415, column: 11, scope: !599)
!1727 = !DILocation(line: 415, column: 14, scope: !599)
!1728 = !DILocation(line: 415, column: 24, scope: !599)
!1729 = !DILocation(line: 415, column: 22, scope: !599)
!1730 = !DILocation(line: 415, column: 9, scope: !599)
!1731 = !DILocation(line: 416, column: 12, scope: !599)
!1732 = !DILocation(line: 416, column: 16, scope: !599)
!1733 = !DILocation(line: 416, column: 10, scope: !599)
!1734 = !DILocation(line: 417, column: 12, scope: !614)
!1735 = !DILocation(line: 417, column: 10, scope: !614)
!1736 = !DILocation(line: 417, column: 17, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !442, discriminator: 2)
!1738 = !DILexicalBlockFile(scope: !613, file: !442, discriminator: 1)
!1739 = !DILocation(line: 417, column: 21, scope: !613)
!1740 = !DILocation(line: 417, column: 19, scope: !613)
!1741 = !DILocation(line: 417, column: 5, scope: !614)
!1742 = !DILocation(line: 418, column: 9, scope: !612)
!1743 = !DILocation(line: 418, column: 19, scope: !612)
!1744 = !DILocation(line: 418, column: 27, scope: !612)
!1745 = !DILocation(line: 418, column: 23, scope: !612)
!1746 = !DILocation(line: 419, column: 25, scope: !612)
!1747 = !DILocation(line: 419, column: 30, scope: !612)
!1748 = !DILocation(line: 419, column: 39, scope: !612)
!1749 = !DILocation(line: 420, column: 19, scope: !612)
!1750 = !DILocation(line: 420, column: 14, scope: !612)
!1751 = !DILocation(line: 420, column: 9, scope: !612)
!1752 = !DILocation(line: 420, column: 17, scope: !612)
!1753 = !DILocation(line: 421, column: 5, scope: !613)
!1754 = !DILocation(line: 421, column: 5, scope: !612)
!1755 = !DILocation(line: 417, column: 27, scope: !613)
!1756 = !DILocation(line: 417, column: 5, scope: !613)
!1757 = !DILocation(line: 422, column: 24, scope: !599)
!1758 = !DILocation(line: 422, column: 12, scope: !599)
!1759 = !DILocation(line: 422, column: 5, scope: !599)
!1760 = !DILocation(line: 423, column: 1, scope: !599)
!1761 = !DILocation(line: 227, column: 29, scope: !615)
!1762 = !DILocation(line: 229, column: 5, scope: !615)
!1763 = !DILocation(line: 229, column: 16, scope: !615)
!1764 = !DILocation(line: 230, column: 5, scope: !615)
!1765 = !DILocation(line: 230, column: 16, scope: !615)
!1766 = !DILocation(line: 230, column: 39, scope: !615)
!1767 = !DILocation(line: 230, column: 24, scope: !615)
!1768 = !DILocation(line: 230, column: 45, scope: !615)
!1769 = !DILocation(line: 231, column: 25, scope: !615)
!1770 = !DILocation(line: 231, column: 5, scope: !615)
!1771 = !DILocation(line: 232, column: 5, scope: !615)
!1772 = !DILocation(line: 232, column: 10, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !623, file: !442, discriminator: 1)
!1774 = !DILocation(line: 232, column: 25, scope: !623)
!1775 = !DILocation(line: 232, column: 69, scope: !625)
!1776 = !DILocation(line: 232, column: 105, scope: !625)
!1777 = !DILocation(line: 232, column: 143, scope: !625)
!1778 = !DILocation(line: 232, column: 174, scope: !625)
!1779 = !DILocation(line: 232, column: 182, scope: !625)
!1780 = !DILocation(line: 232, column: 211, scope: !625)
!1781 = !DILocation(line: 232, column: 228, scope: !625)
!1782 = !DILocation(line: 232, column: 240, scope: !625)
!1783 = !DILocation(line: 232, column: 248, scope: !625)
!1784 = !DILocation(line: 232, column: 265, scope: !625)
!1785 = !{!981, !981, i64 0}
!1786 = !DILocation(line: 232, column: 325, scope: !625)
!1787 = !DILocation(line: 232, column: 337, scope: !625)
!1788 = !DILocation(line: 232, column: 299, scope: !625)
!1789 = !DILocation(line: 232, column: 354, scope: !625)
!1790 = !DILocation(line: 232, column: 347, scope: !625)
!1791 = !DILocation(line: 232, column: 456, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !442, discriminator: 5)
!1793 = !DILexicalBlockFile(scope: !1794, file: !442, discriminator: 4)
!1794 = !DILexicalBlockFile(scope: !1795, file: !442, discriminator: 3)
!1795 = distinct !DILexicalBlock(scope: !625, file: !442, line: 232, column: 361)
!1796 = !DILocation(line: 232, column: 507, scope: !1795)
!1797 = !DILocation(line: 232, column: 523, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1795, file: !442, discriminator: 2)
!1799 = !DILocation(line: 232, column: 542, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !442, discriminator: 7)
!1801 = !DILexicalBlockFile(scope: !625, file: !442, discriminator: 6)
!1802 = !DILocation(line: 232, column: 541, scope: !625)
!1803 = !DILocation(line: 232, column: 539, scope: !625)
!1804 = !DILocation(line: 232, column: 564, scope: !625)
!1805 = !DILocation(line: 232, column: 557, scope: !625)
!1806 = !DILocation(line: 232, column: 666, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !442, discriminator: 11)
!1808 = !DILexicalBlockFile(scope: !1809, file: !442, discriminator: 10)
!1809 = !DILexicalBlockFile(scope: !1810, file: !442, discriminator: 9)
!1810 = distinct !DILexicalBlock(scope: !625, file: !442, line: 232, column: 571)
!1811 = !DILocation(line: 232, column: 717, scope: !1810)
!1812 = !DILocation(line: 232, column: 733, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1810, file: !442, discriminator: 8)
!1814 = !DILocation(line: 232, column: 744, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1816, file: !442, discriminator: 13)
!1816 = !DILexicalBlockFile(scope: !625, file: !442, discriminator: 12)
!1817 = !DILocation(line: 232, column: 740, scope: !1810)
!1818 = !DILocation(line: 232, column: 752, scope: !623)
!1819 = !DILocation(line: 232, column: 752, scope: !625)
!1820 = !DILocation(line: 232, column: 36, scope: !623)
!1821 = !DILocation(line: 232, column: 761, scope: !642)
!1822 = !DILocation(line: 232, column: 770, scope: !642)
!1823 = !{!1824, !992, i64 160}
!1824 = !{!"_ts", !980, i64 0, !980, i64 8, !980, i64 16, !980, i64 24, !992, i64 32, !981, i64 36, !981, i64 37, !992, i64 40, !992, i64 44, !980, i64 48, !980, i64 56, !980, i64 64, !980, i64 72, !980, i64 80, !980, i64 88, !980, i64 96, !980, i64 104, !980, i64 112, !980, i64 120, !980, i64 128, !992, i64 136, !980, i64 144, !1013, i64 152, !992, i64 160, !980, i64 168, !980, i64 176, !980, i64 184}
!1825 = !DILocation(line: 232, column: 791, scope: !642)
!1826 = !DILocation(line: 232, column: 761, scope: !623)
!1827 = !DILocation(line: 232, column: 801, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !641, file: !442, discriminator: 14)
!1829 = !DILocation(line: 232, column: 810, scope: !641)
!1830 = !DILocation(line: 232, column: 799, scope: !641)
!1831 = !DILocation(line: 233, column: 9, scope: !640)
!1832 = !DILocation(line: 233, column: 13, scope: !640)
!1833 = !DILocation(line: 233, column: 9, scope: !641)
!1834 = !DILocation(line: 234, column: 13, scope: !639)
!1835 = !DILocation(line: 234, column: 11, scope: !639)
!1836 = !DILocation(line: 235, column: 9, scope: !639)
!1837 = !DILocation(line: 235, column: 16, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1839, file: !442, discriminator: 2)
!1839 = !DILexicalBlockFile(scope: !639, file: !442, discriminator: 1)
!1840 = !DILocation(line: 235, column: 20, scope: !639)
!1841 = !DILocation(line: 236, column: 13, scope: !639)
!1842 = !DILocation(line: 236, column: 18, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !638, file: !442, discriminator: 1)
!1844 = !DILocation(line: 236, column: 28, scope: !638)
!1845 = !DILocation(line: 236, column: 71, scope: !638)
!1846 = !DILocation(line: 236, column: 59, scope: !638)
!1847 = !DILocation(line: 236, column: 63, scope: !638)
!1848 = !DILocation(line: 236, column: 80, scope: !645)
!1849 = !DILocation(line: 236, column: 96, scope: !645)
!1850 = !DILocation(line: 236, column: 80, scope: !638)
!1851 = !DILocation(line: 236, column: 111, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !645, file: !442, discriminator: 2)
!1853 = !DILocation(line: 236, column: 116, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !644, file: !442, discriminator: 4)
!1855 = !DILocation(line: 236, column: 126, scope: !644)
!1856 = !DILocation(line: 236, column: 156, scope: !644)
!1857 = !DILocation(line: 236, column: 182, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !644, file: !442, line: 236, column: 179)
!1859 = !DILocation(line: 236, column: 199, scope: !1858)
!1860 = !DILocation(line: 236, column: 179, scope: !1858)
!1861 = !DILocation(line: 236, column: 209, scope: !1858)
!1862 = !DILocation(line: 236, column: 179, scope: !644)
!1863 = !DILocation(line: 236, column: 179, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !644, file: !442, discriminator: 5)
!1865 = !DILocation(line: 236, column: 240, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1858, file: !442, discriminator: 6)
!1867 = !DILocation(line: 236, column: 258, scope: !1858)
!1868 = !DILocation(line: 236, column: 268, scope: !1858)
!1869 = !DILocation(line: 236, column: 293, scope: !1858)
!1870 = !DILocation(line: 236, column: 224, scope: !1858)
!1871 = !DILocation(line: 236, column: 312, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !645, file: !442, discriminator: 7)
!1873 = !DILocation(line: 236, column: 312, scope: !644)
!1874 = !DILocation(line: 236, column: 312, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !644, file: !442, discriminator: 8)
!1876 = !DILocation(line: 236, column: 312, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !644, file: !442, discriminator: 9)
!1878 = !DILocation(line: 236, column: 325, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !442, discriminator: 10)
!1880 = !DILexicalBlockFile(scope: !639, file: !442, discriminator: 3)
!1881 = !DILocation(line: 236, column: 325, scope: !638)
!1882 = !DILocation(line: 236, column: 325, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !638, file: !442, discriminator: 11)
!1884 = !DILocation(line: 238, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !639, file: !442, line: 238, column: 13)
!1886 = !DILocation(line: 238, column: 17, scope: !1885)
!1887 = !DILocation(line: 238, column: 22, scope: !1885)
!1888 = !DILocation(line: 239, column: 21, scope: !1885)
!1889 = !DILocation(line: 239, column: 13, scope: !1885)
!1890 = !DILocation(line: 239, column: 26, scope: !1885)
!1891 = !DILocation(line: 239, column: 33, scope: !1885)
!1892 = !DILocation(line: 240, column: 27, scope: !1885)
!1893 = !DILocation(line: 240, column: 15, scope: !1885)
!1894 = !DILocation(line: 240, column: 33, scope: !1885)
!1895 = !DILocation(line: 240, column: 42, scope: !1885)
!1896 = !DILocation(line: 238, column: 13, scope: !639)
!1897 = !DILocation(line: 242, column: 53, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !442, line: 241, column: 9)
!1899 = !DILocation(line: 242, column: 43, scope: !1898)
!1900 = !DILocation(line: 242, column: 30, scope: !1898)
!1901 = !DILocation(line: 242, column: 13, scope: !1898)
!1902 = !DILocation(line: 242, column: 17, scope: !1898)
!1903 = !DILocation(line: 242, column: 28, scope: !1898)
!1904 = !DILocation(line: 243, column: 21, scope: !1898)
!1905 = !DILocation(line: 243, column: 13, scope: !1898)
!1906 = !DILocation(line: 243, column: 25, scope: !1898)
!1907 = !DILocation(line: 244, column: 30, scope: !1898)
!1908 = !DILocation(line: 244, column: 23, scope: !1898)
!1909 = !DILocation(line: 244, column: 13, scope: !1898)
!1910 = !DILocation(line: 244, column: 28, scope: !1898)
!1911 = !DILocation(line: 245, column: 13, scope: !1898)
!1912 = !DILocation(line: 248, column: 5, scope: !639)
!1913 = !DILocation(line: 249, column: 19, scope: !641)
!1914 = !DILocation(line: 249, column: 7, scope: !641)
!1915 = !DILocation(line: 249, column: 25, scope: !641)
!1916 = !DILocation(line: 249, column: 35, scope: !641)
!1917 = !{!1010, !980, i64 320}
!1918 = !DILocation(line: 249, column: 55, scope: !641)
!1919 = !DILocation(line: 249, column: 43, scope: !641)
!1920 = !DILocation(line: 249, column: 5, scope: !641)
!1921 = !DILocation(line: 251, column: 7, scope: !641)
!1922 = !DILocation(line: 251, column: 16, scope: !641)
!1923 = !DILocation(line: 251, column: 5, scope: !641)
!1924 = !DILocation(line: 251, column: 42, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !641, file: !442, line: 251, column: 42)
!1926 = !DILocation(line: 251, column: 51, scope: !1925)
!1927 = !{!1824, !980, i64 168}
!1928 = !DILocation(line: 251, column: 70, scope: !1925)
!1929 = !DILocation(line: 251, column: 73, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1925, file: !442, discriminator: 1)
!1931 = !DILocation(line: 251, column: 82, scope: !1925)
!1932 = !DILocation(line: 251, column: 103, scope: !1925)
!1933 = !DILocation(line: 251, column: 42, scope: !641)
!1934 = !DILocation(line: 251, column: 109, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1925, file: !442, discriminator: 3)
!1936 = !DILocation(line: 251, column: 142, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1938, file: !442, discriminator: 5)
!1938 = !DILexicalBlockFile(scope: !1939, file: !442, discriminator: 4)
!1939 = !DILexicalBlockFile(scope: !641, file: !442, discriminator: 2)
!1940 = !DILocation(line: 251, column: 191, scope: !642)
!1941 = !DILocation(line: 251, column: 180, scope: !642)
!1942 = !DILocation(line: 251, column: 149, scope: !642)
!1943 = !DILocation(line: 251, column: 196, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !615, file: !442, discriminator: 6)
!1945 = !DILocation(line: 251, column: 196, scope: !623)
!1946 = !DILocation(line: 251, column: 196, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !623, file: !442, discriminator: 7)
!1948 = !DILocation(line: 252, column: 1, scope: !615)
!1949 = !DILocation(line: 255, column: 26, scope: !663)
!1950 = !DILocation(line: 257, column: 5, scope: !663)
!1951 = !DILocation(line: 257, column: 16, scope: !663)
!1952 = !DILocation(line: 257, column: 19, scope: !663)
!1953 = !DILocation(line: 258, column: 5, scope: !663)
!1954 = !DILocation(line: 258, column: 22, scope: !663)
!1955 = !DILocation(line: 260, column: 26, scope: !663)
!1956 = !DILocation(line: 260, column: 11, scope: !663)
!1957 = !DILocation(line: 260, column: 31, scope: !663)
!1958 = !DILocation(line: 260, column: 7, scope: !663)
!1959 = !DILocation(line: 261, column: 9, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !663, file: !442, line: 261, column: 9)
!1961 = !DILocation(line: 261, column: 11, scope: !1960)
!1962 = !DILocation(line: 261, column: 9, scope: !663)
!1963 = !DILocation(line: 262, column: 16, scope: !1960)
!1964 = !DILocation(line: 262, column: 9, scope: !1960)
!1965 = !DILocation(line: 268, column: 34, scope: !663)
!1966 = !DILocation(line: 268, column: 22, scope: !663)
!1967 = !DILocation(line: 268, column: 9, scope: !663)
!1968 = !DILocation(line: 268, column: 7, scope: !663)
!1969 = !DILocation(line: 269, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !663, file: !442, line: 269, column: 9)
!1971 = !DILocation(line: 269, column: 11, scope: !1970)
!1972 = !DILocation(line: 269, column: 9, scope: !663)
!1973 = !DILocation(line: 270, column: 16, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !442, line: 269, column: 17)
!1975 = !DILocation(line: 270, column: 18, scope: !1974)
!1976 = !DILocation(line: 270, column: 24, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1974, file: !442, discriminator: 1)
!1978 = !DILocation(line: 270, column: 16, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1974, file: !442, discriminator: 2)
!1980 = !DILocation(line: 270, column: 9, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !442, discriminator: 4)
!1982 = !DILexicalBlockFile(scope: !1974, file: !442, discriminator: 3)
!1983 = !DILocation(line: 270, column: 9, scope: !1974)
!1984 = !DILocation(line: 273, column: 5, scope: !663)
!1985 = !DILocation(line: 274, column: 12, scope: !663)
!1986 = !DILocation(line: 274, column: 25, scope: !663)
!1987 = !{!1988, !981, i64 52}
!1988 = !{!"", !980, i64 0, !980, i64 8, !981, i64 16, !992, i64 20, !1013, i64 24, !1013, i64 32, !1013, i64 40, !992, i64 48, !981, i64 52, !981, i64 53}
!1989 = !DILocation(line: 275, column: 26, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !663, file: !442, line: 275, column: 9)
!1991 = !DILocation(line: 275, column: 11, scope: !1990)
!1992 = !DILocation(line: 275, column: 31, scope: !1990)
!1993 = !DILocation(line: 275, column: 40, scope: !1990)
!1994 = !DILocation(line: 275, column: 9, scope: !663)
!1995 = !DILocation(line: 277, column: 65, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !442, line: 275, column: 45)
!1997 = !DILocation(line: 277, column: 50, scope: !1996)
!1998 = !DILocation(line: 277, column: 70, scope: !1996)
!1999 = !DILocation(line: 277, column: 79, scope: !1996)
!2000 = !DILocation(line: 277, column: 45, scope: !1996)
!2001 = !DILocation(line: 277, column: 35, scope: !1996)
!2002 = !DILocation(line: 277, column: 84, scope: !1996)
!2003 = !DILocation(line: 277, column: 16, scope: !1996)
!2004 = !DILocation(line: 277, column: 27, scope: !1996)
!2005 = !{!1988, !1013, i64 40}
!2006 = !DILocation(line: 278, column: 5, scope: !1996)
!2007 = !DILocation(line: 281, column: 16, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1990, file: !442, line: 279, column: 10)
!2009 = !DILocation(line: 281, column: 27, scope: !2008)
!2010 = !DILocation(line: 284, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !663, file: !442, line: 284, column: 9)
!2012 = !DILocation(line: 284, column: 50, scope: !2011)
!2013 = !DILocation(line: 284, column: 9, scope: !663)
!2014 = !DILocation(line: 285, column: 9, scope: !2011)
!2015 = !DILocation(line: 288, column: 12, scope: !689)
!2016 = !DILocation(line: 288, column: 10, scope: !689)
!2017 = !DILocation(line: 288, column: 17, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2019, file: !442, discriminator: 2)
!2019 = !DILexicalBlockFile(scope: !688, file: !442, discriminator: 1)
!2020 = !DILocation(line: 288, column: 21, scope: !688)
!2021 = !DILocation(line: 288, column: 19, scope: !688)
!2022 = !DILocation(line: 288, column: 5, scope: !689)
!2023 = !DILocation(line: 289, column: 9, scope: !687)
!2024 = !DILocation(line: 289, column: 19, scope: !687)
!2025 = !DILocation(line: 291, column: 13, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !687, file: !442, line: 291, column: 13)
!2027 = !DILocation(line: 291, column: 15, scope: !2026)
!2028 = !DILocation(line: 291, column: 13, scope: !687)
!2029 = !DILocation(line: 292, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !442, line: 292, column: 17)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !442, line: 291, column: 20)
!2032 = !DILocation(line: 292, column: 69, scope: !2030)
!2033 = !DILocation(line: 292, column: 17, scope: !2031)
!2034 = !DILocation(line: 293, column: 17, scope: !2030)
!2035 = !DILocation(line: 294, column: 9, scope: !2031)
!2036 = !DILocation(line: 296, column: 52, scope: !691)
!2037 = !DILocation(line: 296, column: 88, scope: !691)
!2038 = !DILocation(line: 296, column: 126, scope: !691)
!2039 = !DILocation(line: 296, column: 157, scope: !691)
!2040 = !DILocation(line: 296, column: 165, scope: !691)
!2041 = !DILocation(line: 296, column: 194, scope: !691)
!2042 = !DILocation(line: 296, column: 211, scope: !691)
!2043 = !DILocation(line: 296, column: 223, scope: !691)
!2044 = !DILocation(line: 296, column: 231, scope: !691)
!2045 = !DILocation(line: 296, column: 248, scope: !691)
!2046 = !DILocation(line: 296, column: 308, scope: !691)
!2047 = !DILocation(line: 296, column: 320, scope: !691)
!2048 = !DILocation(line: 296, column: 282, scope: !691)
!2049 = !DILocation(line: 296, column: 337, scope: !691)
!2050 = !DILocation(line: 296, column: 330, scope: !691)
!2051 = !DILocation(line: 296, column: 439, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !442, discriminator: 4)
!2053 = !DILexicalBlockFile(scope: !2054, file: !442, discriminator: 3)
!2054 = !DILexicalBlockFile(scope: !2055, file: !442, discriminator: 2)
!2055 = distinct !DILexicalBlock(scope: !691, file: !442, line: 296, column: 344)
!2056 = !DILocation(line: 296, column: 490, scope: !2055)
!2057 = !DILocation(line: 296, column: 506, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2055, file: !442, discriminator: 1)
!2059 = !DILocation(line: 296, column: 525, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2061, file: !442, discriminator: 6)
!2061 = !DILexicalBlockFile(scope: !691, file: !442, discriminator: 5)
!2062 = !DILocation(line: 296, column: 524, scope: !691)
!2063 = !DILocation(line: 296, column: 522, scope: !691)
!2064 = !DILocation(line: 296, column: 547, scope: !691)
!2065 = !DILocation(line: 296, column: 540, scope: !691)
!2066 = !DILocation(line: 296, column: 649, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !442, discriminator: 10)
!2068 = !DILexicalBlockFile(scope: !2069, file: !442, discriminator: 9)
!2069 = !DILexicalBlockFile(scope: !2070, file: !442, discriminator: 8)
!2070 = distinct !DILexicalBlock(scope: !691, file: !442, line: 296, column: 554)
!2071 = !DILocation(line: 296, column: 700, scope: !2070)
!2072 = !DILocation(line: 296, column: 716, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2070, file: !442, discriminator: 7)
!2074 = !DILocation(line: 296, column: 727, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2076, file: !442, discriminator: 12)
!2076 = !DILexicalBlockFile(scope: !691, file: !442, discriminator: 11)
!2077 = !DILocation(line: 296, column: 723, scope: !2070)
!2078 = !DILocation(line: 296, column: 735, scope: !692)
!2079 = !DILocation(line: 296, column: 735, scope: !691)
!2080 = !DILocation(line: 296, column: 19, scope: !692)
!2081 = !DILocation(line: 296, column: 740, scope: !692)
!2082 = !DILocation(line: 296, column: 15, scope: !692)
!2083 = !{!1824, !992, i64 32}
!2084 = !DILocation(line: 296, column: 759, scope: !692)
!2085 = !DILocation(line: 296, column: 757, scope: !692)
!2086 = !DILocation(line: 296, column: 784, scope: !692)
!2087 = !DILocation(line: 296, column: 787, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !692, file: !442, discriminator: 13)
!2089 = !DILocation(line: 296, column: 13, scope: !687)
!2090 = !DILocation(line: 297, column: 13, scope: !692)
!2091 = !DILocation(line: 298, column: 38, scope: !687)
!2092 = !DILocation(line: 298, column: 27, scope: !687)
!2093 = !DILocation(line: 298, column: 30, scope: !687)
!2094 = !DILocation(line: 298, column: 13, scope: !687)
!2095 = !DILocation(line: 298, column: 11, scope: !687)
!2096 = !DILocation(line: 299, column: 9, scope: !687)
!2097 = !DILocation(line: 299, column: 54, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !697, file: !442, discriminator: 1)
!2099 = !DILocation(line: 299, column: 90, scope: !697)
!2100 = !DILocation(line: 299, column: 128, scope: !697)
!2101 = !DILocation(line: 299, column: 159, scope: !697)
!2102 = !DILocation(line: 299, column: 167, scope: !697)
!2103 = !DILocation(line: 299, column: 196, scope: !697)
!2104 = !DILocation(line: 299, column: 213, scope: !697)
!2105 = !DILocation(line: 299, column: 225, scope: !697)
!2106 = !DILocation(line: 299, column: 233, scope: !697)
!2107 = !DILocation(line: 299, column: 250, scope: !697)
!2108 = !DILocation(line: 299, column: 310, scope: !697)
!2109 = !DILocation(line: 299, column: 322, scope: !697)
!2110 = !DILocation(line: 299, column: 284, scope: !697)
!2111 = !DILocation(line: 299, column: 339, scope: !697)
!2112 = !DILocation(line: 299, column: 332, scope: !697)
!2113 = !DILocation(line: 299, column: 441, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2115, file: !442, discriminator: 5)
!2115 = !DILexicalBlockFile(scope: !2116, file: !442, discriminator: 4)
!2116 = !DILexicalBlockFile(scope: !2117, file: !442, discriminator: 3)
!2117 = distinct !DILexicalBlock(scope: !697, file: !442, line: 299, column: 346)
!2118 = !DILocation(line: 299, column: 492, scope: !2117)
!2119 = !DILocation(line: 299, column: 508, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2117, file: !442, discriminator: 2)
!2121 = !DILocation(line: 299, column: 527, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !442, discriminator: 7)
!2123 = !DILexicalBlockFile(scope: !697, file: !442, discriminator: 6)
!2124 = !DILocation(line: 299, column: 526, scope: !697)
!2125 = !DILocation(line: 299, column: 524, scope: !697)
!2126 = !DILocation(line: 299, column: 549, scope: !697)
!2127 = !DILocation(line: 299, column: 542, scope: !697)
!2128 = !DILocation(line: 299, column: 651, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2130, file: !442, discriminator: 11)
!2130 = !DILexicalBlockFile(scope: !2131, file: !442, discriminator: 10)
!2131 = !DILexicalBlockFile(scope: !2132, file: !442, discriminator: 9)
!2132 = distinct !DILexicalBlock(scope: !697, file: !442, line: 299, column: 556)
!2133 = !DILocation(line: 299, column: 702, scope: !2132)
!2134 = !DILocation(line: 299, column: 718, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2132, file: !442, discriminator: 8)
!2136 = !DILocation(line: 299, column: 729, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !442, discriminator: 13)
!2138 = !DILexicalBlockFile(scope: !697, file: !442, discriminator: 12)
!2139 = !DILocation(line: 299, column: 725, scope: !2132)
!2140 = !DILocation(line: 299, column: 737, scope: !698)
!2141 = !DILocation(line: 299, column: 737, scope: !697)
!2142 = !DILocation(line: 299, column: 21, scope: !698)
!2143 = !DILocation(line: 299, column: 742, scope: !698)
!2144 = !DILocation(line: 299, column: 17, scope: !698)
!2145 = !DILocation(line: 299, column: 763, scope: !698)
!2146 = !DILocation(line: 299, column: 787, scope: !698)
!2147 = !DILocation(line: 299, column: 762, scope: !698)
!2148 = !DILocation(line: 299, column: 797, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !698, file: !442, discriminator: 14)
!2150 = !DILocation(line: 299, column: 821, scope: !698)
!2151 = !DILocation(line: 299, column: 835, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !698, file: !442, discriminator: 15)
!2153 = !DILocation(line: 299, column: 859, scope: !698)
!2154 = !DILocation(line: 299, column: 832, scope: !698)
!2155 = !DILocation(line: 299, column: 759, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !442, discriminator: 17)
!2157 = !DILexicalBlockFile(scope: !698, file: !442, discriminator: 16)
!2158 = !DILocation(line: 299, column: 16, scope: !699)
!2159 = !DILocation(line: 299, column: 903, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !704, file: !442, discriminator: 18)
!2161 = !DILocation(line: 299, column: 939, scope: !704)
!2162 = !DILocation(line: 299, column: 977, scope: !704)
!2163 = !DILocation(line: 299, column: 1008, scope: !704)
!2164 = !DILocation(line: 299, column: 1016, scope: !704)
!2165 = !DILocation(line: 299, column: 1045, scope: !704)
!2166 = !DILocation(line: 299, column: 1062, scope: !704)
!2167 = !DILocation(line: 299, column: 1074, scope: !704)
!2168 = !DILocation(line: 299, column: 1082, scope: !704)
!2169 = !DILocation(line: 299, column: 1099, scope: !704)
!2170 = !DILocation(line: 299, column: 1159, scope: !704)
!2171 = !DILocation(line: 299, column: 1171, scope: !704)
!2172 = !DILocation(line: 299, column: 1133, scope: !704)
!2173 = !DILocation(line: 299, column: 1188, scope: !704)
!2174 = !DILocation(line: 299, column: 1181, scope: !704)
!2175 = !DILocation(line: 299, column: 1290, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2177, file: !442, discriminator: 23)
!2177 = !DILexicalBlockFile(scope: !2178, file: !442, discriminator: 22)
!2178 = !DILexicalBlockFile(scope: !2179, file: !442, discriminator: 21)
!2179 = distinct !DILexicalBlock(scope: !704, file: !442, line: 299, column: 1195)
!2180 = !DILocation(line: 299, column: 1341, scope: !2179)
!2181 = !DILocation(line: 299, column: 1357, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2179, file: !442, discriminator: 20)
!2183 = !DILocation(line: 299, column: 1376, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2185, file: !442, discriminator: 25)
!2185 = !DILexicalBlockFile(scope: !704, file: !442, discriminator: 24)
!2186 = !DILocation(line: 299, column: 1375, scope: !704)
!2187 = !DILocation(line: 299, column: 1373, scope: !704)
!2188 = !DILocation(line: 299, column: 1398, scope: !704)
!2189 = !DILocation(line: 299, column: 1391, scope: !704)
!2190 = !DILocation(line: 299, column: 1500, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !442, discriminator: 29)
!2192 = !DILexicalBlockFile(scope: !2193, file: !442, discriminator: 28)
!2193 = !DILexicalBlockFile(scope: !2194, file: !442, discriminator: 27)
!2194 = distinct !DILexicalBlock(scope: !704, file: !442, line: 299, column: 1405)
!2195 = !DILocation(line: 299, column: 1551, scope: !2194)
!2196 = !DILocation(line: 299, column: 1567, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2194, file: !442, discriminator: 26)
!2198 = !DILocation(line: 299, column: 1578, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2200, file: !442, discriminator: 31)
!2200 = !DILexicalBlockFile(scope: !704, file: !442, discriminator: 30)
!2201 = !DILocation(line: 299, column: 1574, scope: !2194)
!2202 = !DILocation(line: 299, column: 1586, scope: !698)
!2203 = !DILocation(line: 299, column: 1586, scope: !704)
!2204 = !DILocation(line: 299, column: 870, scope: !698)
!2205 = !DILocation(line: 299, column: 1591, scope: !698)
!2206 = !DILocation(line: 299, column: 1602, scope: !698)
!2207 = !{!1824, !981, i64 36}
!2208 = !DILocation(line: 299, column: 869, scope: !698)
!2209 = !DILocation(line: 299, column: 1607, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !442, discriminator: 32)
!2211 = !DILexicalBlockFile(scope: !699, file: !442, discriminator: 19)
!2212 = !DILocation(line: 299, column: 1607, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !699, file: !442, discriminator: 33)
!2214 = !DILocation(line: 300, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !687, file: !442, line: 300, column: 13)
!2216 = !DILocation(line: 300, column: 15, scope: !2215)
!2217 = !DILocation(line: 300, column: 13, scope: !687)
!2218 = !DILocation(line: 301, column: 13, scope: !2215)
!2219 = !DILocation(line: 303, column: 48, scope: !711)
!2220 = !DILocation(line: 303, column: 13, scope: !711)
!2221 = !DILocation(line: 303, column: 51, scope: !711)
!2222 = !DILocation(line: 303, column: 13, scope: !687)
!2223 = !DILocation(line: 304, column: 13, scope: !710)
!2224 = !DILocation(line: 304, column: 18, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !709, file: !442, discriminator: 1)
!2226 = !DILocation(line: 304, column: 28, scope: !709)
!2227 = !DILocation(line: 304, column: 58, scope: !709)
!2228 = !DILocation(line: 304, column: 70, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !709, file: !442, line: 304, column: 67)
!2230 = !DILocation(line: 304, column: 87, scope: !2229)
!2231 = !DILocation(line: 304, column: 67, scope: !2229)
!2232 = !DILocation(line: 304, column: 97, scope: !2229)
!2233 = !DILocation(line: 304, column: 67, scope: !709)
!2234 = !DILocation(line: 304, column: 67, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !709, file: !442, discriminator: 2)
!2236 = !DILocation(line: 304, column: 128, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2229, file: !442, discriminator: 3)
!2238 = !DILocation(line: 304, column: 146, scope: !2229)
!2239 = !DILocation(line: 304, column: 156, scope: !2229)
!2240 = !DILocation(line: 304, column: 181, scope: !2229)
!2241 = !DILocation(line: 304, column: 112, scope: !2229)
!2242 = !DILocation(line: 304, column: 200, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !710, file: !442, discriminator: 4)
!2244 = !DILocation(line: 304, column: 200, scope: !709)
!2245 = !DILocation(line: 304, column: 200, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !709, file: !442, discriminator: 5)
!2247 = !DILocation(line: 305, column: 13, scope: !710)
!2248 = !DILocation(line: 307, column: 9, scope: !687)
!2249 = !DILocation(line: 307, column: 14, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !713, file: !442, discriminator: 1)
!2251 = !DILocation(line: 307, column: 24, scope: !713)
!2252 = !DILocation(line: 307, column: 54, scope: !713)
!2253 = !DILocation(line: 307, column: 66, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !713, file: !442, line: 307, column: 63)
!2255 = !DILocation(line: 307, column: 83, scope: !2254)
!2256 = !DILocation(line: 307, column: 63, scope: !2254)
!2257 = !DILocation(line: 307, column: 93, scope: !2254)
!2258 = !DILocation(line: 307, column: 63, scope: !713)
!2259 = !DILocation(line: 307, column: 63, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !713, file: !442, discriminator: 2)
!2261 = !DILocation(line: 307, column: 124, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2254, file: !442, discriminator: 3)
!2263 = !DILocation(line: 307, column: 142, scope: !2254)
!2264 = !DILocation(line: 307, column: 152, scope: !2254)
!2265 = !DILocation(line: 307, column: 177, scope: !2254)
!2266 = !DILocation(line: 307, column: 108, scope: !2254)
!2267 = !DILocation(line: 307, column: 196, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !687, file: !442, discriminator: 4)
!2269 = !DILocation(line: 307, column: 196, scope: !713)
!2270 = !DILocation(line: 307, column: 196, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !713, file: !442, discriminator: 5)
!2272 = !DILocation(line: 308, column: 5, scope: !688)
!2273 = !DILocation(line: 308, column: 5, scope: !2019)
!2274 = !DILocation(line: 308, column: 5, scope: !687)
!2275 = !DILocation(line: 288, column: 24, scope: !688)
!2276 = !DILocation(line: 288, column: 5, scope: !688)
!2277 = !DILocation(line: 310, column: 12, scope: !663)
!2278 = !DILocation(line: 310, column: 25, scope: !663)
!2279 = !DILocation(line: 311, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !663, file: !442, line: 311, column: 9)
!2281 = !DILocation(line: 311, column: 11, scope: !2280)
!2282 = !DILocation(line: 311, column: 9, scope: !663)
!2283 = !DILocation(line: 312, column: 13, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !442, line: 312, column: 13)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !442, line: 311, column: 16)
!2286 = !DILocation(line: 312, column: 54, scope: !2284)
!2287 = !DILocation(line: 312, column: 13, scope: !2285)
!2288 = !DILocation(line: 313, column: 13, scope: !2284)
!2289 = !DILocation(line: 314, column: 5, scope: !2285)
!2290 = !DILocation(line: 316, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !442, line: 316, column: 13)
!2292 = distinct !DILexicalBlock(scope: !2280, file: !442, line: 315, column: 10)
!2293 = !DILocation(line: 316, column: 65, scope: !2291)
!2294 = !DILocation(line: 316, column: 13, scope: !2292)
!2295 = !DILocation(line: 317, column: 13, scope: !2291)
!2296 = !DILocation(line: 320, column: 30, scope: !663)
!2297 = !DILocation(line: 320, column: 18, scope: !663)
!2298 = !DILocation(line: 320, column: 5, scope: !663)
!2299 = !DILocation(line: 321, column: 12, scope: !663)
!2300 = !DILocation(line: 321, column: 5, scope: !663)
!2301 = !DILocation(line: 324, column: 5, scope: !663)
!2302 = !DILocation(line: 325, column: 30, scope: !663)
!2303 = !DILocation(line: 325, column: 18, scope: !663)
!2304 = !DILocation(line: 325, column: 5, scope: !663)
!2305 = !DILocation(line: 326, column: 5, scope: !663)
!2306 = !DILocation(line: 327, column: 1, scope: !663)
!2307 = !DILocation(line: 341, column: 26, scope: !781)
!2308 = !DILocation(line: 343, column: 5, scope: !781)
!2309 = !DILocation(line: 343, column: 16, scope: !781)
!2310 = !DILocation(line: 344, column: 5, scope: !781)
!2311 = !DILocation(line: 344, column: 15, scope: !781)
!2312 = !DILocation(line: 345, column: 5, scope: !781)
!2313 = !DILocation(line: 345, column: 16, scope: !781)
!2314 = !DILocation(line: 345, column: 39, scope: !781)
!2315 = !DILocation(line: 345, column: 24, scope: !781)
!2316 = !DILocation(line: 345, column: 44, scope: !781)
!2317 = !DILocation(line: 346, column: 5, scope: !781)
!2318 = !DILocation(line: 346, column: 16, scope: !781)
!2319 = !DILocation(line: 347, column: 5, scope: !781)
!2320 = !DILocation(line: 347, column: 16, scope: !781)
!2321 = !DILocation(line: 348, column: 7, scope: !781)
!2322 = !DILocation(line: 349, column: 9, scope: !781)
!2323 = !DILocation(line: 349, column: 12, scope: !781)
!2324 = !DILocation(line: 349, column: 7, scope: !781)
!2325 = !DILocation(line: 350, column: 5, scope: !781)
!2326 = !DILocation(line: 350, column: 12, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !442, discriminator: 2)
!2328 = !DILexicalBlockFile(scope: !781, file: !442, discriminator: 1)
!2329 = !DILocation(line: 350, column: 18, scope: !781)
!2330 = !DILocation(line: 351, column: 29, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !781, file: !442, line: 350, column: 24)
!2332 = !DILocation(line: 351, column: 27, scope: !2331)
!2333 = !DILocation(line: 351, column: 13, scope: !2331)
!2334 = !DILocation(line: 351, column: 11, scope: !2331)
!2335 = !DILocation(line: 352, column: 13, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2331, file: !442, line: 352, column: 13)
!2337 = !DILocation(line: 352, column: 15, scope: !2336)
!2338 = !DILocation(line: 352, column: 13, scope: !2331)
!2339 = !DILocation(line: 353, column: 13, scope: !2336)
!2340 = !DILocation(line: 354, column: 14, scope: !2331)
!2341 = !DILocation(line: 354, column: 18, scope: !2331)
!2342 = !DILocation(line: 354, column: 16, scope: !2331)
!2343 = !DILocation(line: 354, column: 23, scope: !2331)
!2344 = !DILocation(line: 354, column: 21, scope: !2331)
!2345 = !DILocation(line: 354, column: 11, scope: !2331)
!2346 = !DILocation(line: 356, column: 39, scope: !2331)
!2347 = !DILocation(line: 356, column: 37, scope: !2331)
!2348 = !DILocation(line: 356, column: 45, scope: !2331)
!2349 = !DILocation(line: 356, column: 43, scope: !2331)
!2350 = !DILocation(line: 356, column: 14, scope: !2331)
!2351 = !DILocation(line: 358, column: 7, scope: !781)
!2352 = !DILocation(line: 359, column: 9, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !781, file: !442, line: 359, column: 9)
!2354 = !DILocation(line: 359, column: 11, scope: !2353)
!2355 = !DILocation(line: 359, column: 9, scope: !781)
!2356 = !DILocation(line: 360, column: 11, scope: !2353)
!2357 = !DILocation(line: 360, column: 9, scope: !2353)
!2358 = !DILocation(line: 361, column: 12, scope: !781)
!2359 = !DILocation(line: 361, column: 5, scope: !781)
!2360 = !DILocation(line: 362, column: 1, scope: !781)
!2361 = !DILocation(line: 559, column: 30, scope: !791)
!2362 = !DILocation(line: 559, column: 43, scope: !791)
!2363 = !DILocation(line: 559, column: 56, scope: !791)
!2364 = !DILocation(line: 561, column: 5, scope: !791)
!2365 = !DILocation(line: 561, column: 16, scope: !791)
!2366 = !DILocation(line: 563, column: 31, scope: !804)
!2367 = !DILocation(line: 563, column: 16, scope: !804)
!2368 = !DILocation(line: 563, column: 36, scope: !804)
!2369 = !DILocation(line: 563, column: 12, scope: !804)
!2370 = !DILocation(line: 563, column: 10, scope: !804)
!2371 = !DILocation(line: 563, column: 46, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2373, file: !442, discriminator: 2)
!2373 = !DILexicalBlockFile(scope: !803, file: !442, discriminator: 1)
!2374 = !DILocation(line: 563, column: 50, scope: !803)
!2375 = !DILocation(line: 563, column: 5, scope: !804)
!2376 = !DILocation(line: 564, column: 9, scope: !803)
!2377 = !DILocation(line: 564, column: 29, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !801, file: !442, discriminator: 1)
!2379 = !DILocation(line: 564, column: 18, scope: !801)
!2380 = !DILocation(line: 564, column: 21, scope: !801)
!2381 = !DILocation(line: 564, column: 18, scope: !802)
!2382 = !DILocation(line: 564, column: 35, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !800, file: !442, discriminator: 2)
!2384 = !DILocation(line: 564, column: 39, scope: !800)
!2385 = !DILocation(line: 564, column: 46, scope: !800)
!2386 = !DILocation(line: 564, column: 76, scope: !800)
!2387 = !DILocation(line: 564, column: 65, scope: !800)
!2388 = !DILocation(line: 564, column: 68, scope: !800)
!2389 = !DILocation(line: 564, column: 81, scope: !800)
!2390 = !DILocation(line: 564, column: 91, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !800, file: !442, line: 564, column: 91)
!2392 = !DILocation(line: 564, column: 91, scope: !800)
!2393 = !DILocation(line: 564, column: 104, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2391, file: !442, discriminator: 4)
!2395 = !DILocation(line: 564, column: 97, scope: !2391)
!2396 = !DILocation(line: 564, column: 110, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !801, file: !442, discriminator: 5)
!2398 = !DILocation(line: 564, column: 110, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2400, file: !442, discriminator: 7)
!2400 = !DILexicalBlockFile(scope: !801, file: !442, discriminator: 6)
!2401 = !DILocation(line: 564, column: 110, scope: !800)
!2402 = !DILocation(line: 564, column: 112, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2404, file: !442, discriminator: 8)
!2404 = !DILexicalBlockFile(scope: !802, file: !442, discriminator: 3)
!2405 = !DILocation(line: 564, column: 112, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !802, file: !442, discriminator: 9)
!2407 = !DILocation(line: 563, column: 5, scope: !803)
!2408 = !DILocation(line: 565, column: 5, scope: !791)
!2409 = !DILocation(line: 566, column: 1, scope: !791)
!2410 = !DILocation(line: 569, column: 28, scope: !805)
!2411 = !DILocation(line: 569, column: 41, scope: !805)
!2412 = !DILocation(line: 569, column: 48, scope: !805)
!2413 = !DILocation(line: 571, column: 5, scope: !805)
!2414 = !DILocation(line: 571, column: 20, scope: !805)
!2415 = !DILocation(line: 571, column: 25, scope: !805)
!2416 = !DILocation(line: 572, column: 5, scope: !805)
!2417 = !DILocation(line: 572, column: 16, scope: !805)
!2418 = !DILocation(line: 573, column: 5, scope: !805)
!2419 = !DILocation(line: 573, column: 16, scope: !805)
!2420 = !DILocation(line: 573, column: 22, scope: !805)
!2421 = !DILocation(line: 575, column: 27, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !805, file: !442, line: 575, column: 9)
!2423 = !DILocation(line: 575, column: 32, scope: !2422)
!2424 = !DILocation(line: 575, column: 43, scope: !2422)
!2425 = !DILocation(line: 575, column: 52, scope: !2422)
!2426 = !DILocation(line: 575, column: 69, scope: !2422)
!2427 = !DILocation(line: 575, column: 75, scope: !2422)
!2428 = !DILocation(line: 575, column: 96, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2422, file: !442, discriminator: 1)
!2430 = !DILocation(line: 575, column: 101, scope: !2422)
!2431 = !DILocation(line: 575, column: 112, scope: !2422)
!2432 = !DILocation(line: 575, column: 121, scope: !2422)
!2433 = !DILocation(line: 575, column: 138, scope: !2422)
!2434 = !DILocation(line: 575, column: 9, scope: !805)
!2435 = !DILocation(line: 576, column: 72, scope: !2422)
!2436 = !DILocation(line: 576, column: 9, scope: !2422)
!2437 = !DILocation(line: 578, column: 27, scope: !805)
!2438 = !DILocation(line: 578, column: 10, scope: !805)
!2439 = !DILocation(line: 578, column: 8, scope: !805)
!2440 = !DILocation(line: 579, column: 27, scope: !805)
!2441 = !DILocation(line: 579, column: 10, scope: !805)
!2442 = !DILocation(line: 579, column: 8, scope: !805)
!2443 = !DILocation(line: 581, column: 29, scope: !805)
!2444 = !DILocation(line: 581, column: 14, scope: !805)
!2445 = !DILocation(line: 581, column: 35, scope: !805)
!2446 = !DILocation(line: 581, column: 10, scope: !805)
!2447 = !DILocation(line: 582, column: 29, scope: !805)
!2448 = !DILocation(line: 582, column: 14, scope: !805)
!2449 = !DILocation(line: 582, column: 35, scope: !805)
!2450 = !DILocation(line: 582, column: 10, scope: !805)
!2451 = !DILocation(line: 595, column: 12, scope: !818)
!2452 = !DILocation(line: 595, column: 10, scope: !818)
!2453 = !DILocation(line: 595, column: 17, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2455, file: !442, discriminator: 4)
!2455 = !DILexicalBlockFile(scope: !817, file: !442, discriminator: 1)
!2456 = !DILocation(line: 595, column: 21, scope: !817)
!2457 = !DILocation(line: 595, column: 19, scope: !817)
!2458 = !DILocation(line: 595, column: 26, scope: !817)
!2459 = !DILocation(line: 595, column: 29, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !817, file: !442, discriminator: 2)
!2461 = !DILocation(line: 595, column: 33, scope: !817)
!2462 = !DILocation(line: 595, column: 31, scope: !817)
!2463 = !DILocation(line: 595, column: 5, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !818, file: !442, discriminator: 3)
!2465 = !DILocation(line: 596, column: 9, scope: !816)
!2466 = !DILocation(line: 596, column: 13, scope: !816)
!2467 = !DILocation(line: 596, column: 54, scope: !816)
!2468 = !DILocation(line: 596, column: 42, scope: !816)
!2469 = !DILocation(line: 596, column: 46, scope: !816)
!2470 = !DILocation(line: 597, column: 54, scope: !816)
!2471 = !DILocation(line: 597, column: 42, scope: !816)
!2472 = !DILocation(line: 597, column: 46, scope: !816)
!2473 = !DILocation(line: 596, column: 17, scope: !816)
!2474 = !DILocation(line: 598, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !816, file: !442, line: 598, column: 13)
!2476 = !DILocation(line: 598, column: 15, scope: !2475)
!2477 = !DILocation(line: 598, column: 13, scope: !816)
!2478 = !DILocation(line: 599, column: 13, scope: !2475)
!2479 = !DILocation(line: 600, column: 14, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !816, file: !442, line: 600, column: 13)
!2481 = !DILocation(line: 600, column: 13, scope: !816)
!2482 = !DILocation(line: 601, column: 13, scope: !2480)
!2483 = !DILocation(line: 602, column: 5, scope: !817)
!2484 = !DILocation(line: 602, column: 5, scope: !2455)
!2485 = !DILocation(line: 602, column: 5, scope: !816)
!2486 = !DILocation(line: 595, column: 40, scope: !817)
!2487 = !DILocation(line: 595, column: 5, scope: !817)
!2488 = !DILocation(line: 604, column: 9, scope: !821)
!2489 = !DILocation(line: 604, column: 14, scope: !821)
!2490 = !DILocation(line: 604, column: 11, scope: !821)
!2491 = !DILocation(line: 604, column: 19, scope: !821)
!2492 = !DILocation(line: 604, column: 22, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !821, file: !442, discriminator: 1)
!2494 = !DILocation(line: 604, column: 27, scope: !821)
!2495 = !DILocation(line: 604, column: 24, scope: !821)
!2496 = !DILocation(line: 604, column: 9, scope: !805)
!2497 = !DILocation(line: 606, column: 9, scope: !820)
!2498 = !DILocation(line: 606, column: 13, scope: !820)
!2499 = !DILocation(line: 607, column: 9, scope: !820)
!2500 = !DILocation(line: 607, column: 19, scope: !820)
!2501 = !DILocation(line: 608, column: 17, scope: !820)
!2502 = !DILocation(line: 608, column: 9, scope: !820)
!2503 = !DILocation(line: 609, column: 23, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !820, file: !442, line: 608, column: 21)
!2505 = !DILocation(line: 609, column: 30, scope: !2504)
!2506 = !DILocation(line: 609, column: 28, scope: !2504)
!2507 = !DILocation(line: 609, column: 21, scope: !2504)
!2508 = !DILocation(line: 609, column: 36, scope: !2504)
!2509 = !DILocation(line: 610, column: 23, scope: !2504)
!2510 = !DILocation(line: 610, column: 31, scope: !2504)
!2511 = !DILocation(line: 610, column: 28, scope: !2504)
!2512 = !DILocation(line: 610, column: 21, scope: !2504)
!2513 = !DILocation(line: 610, column: 37, scope: !2504)
!2514 = !DILocation(line: 611, column: 23, scope: !2504)
!2515 = !DILocation(line: 611, column: 31, scope: !2504)
!2516 = !DILocation(line: 611, column: 28, scope: !2504)
!2517 = !DILocation(line: 611, column: 21, scope: !2504)
!2518 = !DILocation(line: 611, column: 37, scope: !2504)
!2519 = !DILocation(line: 612, column: 23, scope: !2504)
!2520 = !DILocation(line: 612, column: 31, scope: !2504)
!2521 = !DILocation(line: 612, column: 28, scope: !2504)
!2522 = !DILocation(line: 612, column: 21, scope: !2504)
!2523 = !DILocation(line: 612, column: 37, scope: !2504)
!2524 = !DILocation(line: 613, column: 23, scope: !2504)
!2525 = !DILocation(line: 613, column: 30, scope: !2504)
!2526 = !DILocation(line: 613, column: 28, scope: !2504)
!2527 = !DILocation(line: 613, column: 21, scope: !2504)
!2528 = !DILocation(line: 613, column: 36, scope: !2504)
!2529 = !DILocation(line: 614, column: 23, scope: !2504)
!2530 = !DILocation(line: 614, column: 31, scope: !2504)
!2531 = !DILocation(line: 614, column: 28, scope: !2504)
!2532 = !DILocation(line: 614, column: 21, scope: !2504)
!2533 = !DILocation(line: 614, column: 37, scope: !2504)
!2534 = !DILocation(line: 615, column: 18, scope: !2504)
!2535 = !DILocation(line: 617, column: 13, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !820, file: !442, line: 617, column: 13)
!2537 = !DILocation(line: 617, column: 13, scope: !820)
!2538 = !DILocation(line: 618, column: 17, scope: !2536)
!2539 = !DILocation(line: 618, column: 13, scope: !2536)
!2540 = !DILocation(line: 620, column: 17, scope: !2536)
!2541 = !DILocation(line: 621, column: 25, scope: !820)
!2542 = !DILocation(line: 621, column: 32, scope: !820)
!2543 = !DILocation(line: 621, column: 41, scope: !820)
!2544 = !DILocation(line: 622, column: 16, scope: !820)
!2545 = !DILocation(line: 622, column: 9, scope: !820)
!2546 = !DILocation(line: 623, column: 5, scope: !821)
!2547 = !DILocation(line: 626, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !805, file: !442, line: 626, column: 9)
!2549 = !DILocation(line: 626, column: 12, scope: !2548)
!2550 = !DILocation(line: 626, column: 9, scope: !805)
!2551 = !DILocation(line: 627, column: 69, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !442, line: 626, column: 18)
!2553 = !DILocation(line: 628, column: 9, scope: !2552)
!2554 = !DILocation(line: 630, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !805, file: !442, line: 630, column: 9)
!2556 = !DILocation(line: 630, column: 12, scope: !2555)
!2557 = !DILocation(line: 630, column: 9, scope: !805)
!2558 = !DILocation(line: 631, column: 68, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !442, line: 630, column: 18)
!2560 = !DILocation(line: 632, column: 9, scope: !2559)
!2561 = !DILocation(line: 636, column: 45, scope: !805)
!2562 = !DILocation(line: 636, column: 33, scope: !805)
!2563 = !DILocation(line: 636, column: 37, scope: !805)
!2564 = !DILocation(line: 636, column: 61, scope: !805)
!2565 = !DILocation(line: 636, column: 49, scope: !805)
!2566 = !DILocation(line: 636, column: 53, scope: !805)
!2567 = !DILocation(line: 636, column: 65, scope: !805)
!2568 = !DILocation(line: 636, column: 12, scope: !805)
!2569 = !DILocation(line: 636, column: 5, scope: !805)
!2570 = !DILocation(line: 637, column: 1, scope: !805)
!2571 = !DILocation(line: 1065, column: 22, scope: !920)
!2572 = !DILocation(line: 1067, column: 5, scope: !920)
!2573 = !DILocation(line: 1067, column: 22, scope: !920)
!2574 = !DILocation(line: 1069, column: 27, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !920, file: !442, line: 1069, column: 9)
!2576 = !DILocation(line: 1069, column: 34, scope: !2575)
!2577 = !DILocation(line: 1069, column: 45, scope: !2575)
!2578 = !DILocation(line: 1069, column: 54, scope: !2575)
!2579 = !DILocation(line: 1069, column: 71, scope: !2575)
!2580 = !DILocation(line: 1069, column: 9, scope: !920)
!2581 = !DILocation(line: 1070, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2575, file: !442, line: 1069, column: 78)
!2583 = !DILocation(line: 1071, column: 9, scope: !2582)
!2584 = !DILocation(line: 1073, column: 32, scope: !920)
!2585 = !DILocation(line: 1073, column: 12, scope: !920)
!2586 = !DILocation(line: 1073, column: 8, scope: !920)
!2587 = !DILocation(line: 1074, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !920, file: !442, line: 1074, column: 9)
!2589 = !DILocation(line: 1074, column: 12, scope: !2588)
!2590 = !DILocation(line: 1074, column: 9, scope: !920)
!2591 = !DILocation(line: 1075, column: 9, scope: !2588)
!2592 = !DILocation(line: 1076, column: 5, scope: !920)
!2593 = !DILocation(line: 1076, column: 9, scope: !920)
!2594 = !DILocation(line: 1076, column: 18, scope: !920)
!2595 = !{!2596, !1013, i64 16}
!2596 = !{!"", !1012, i64 0, !1013, i64 16, !980, i64 24}
!2597 = !DILocation(line: 1077, column: 21, scope: !920)
!2598 = !DILocation(line: 1077, column: 28, scope: !920)
!2599 = !DILocation(line: 1077, column: 37, scope: !920)
!2600 = !DILocation(line: 1078, column: 35, scope: !920)
!2601 = !DILocation(line: 1078, column: 18, scope: !920)
!2602 = !DILocation(line: 1078, column: 5, scope: !920)
!2603 = !DILocation(line: 1078, column: 9, scope: !920)
!2604 = !DILocation(line: 1078, column: 16, scope: !920)
!2605 = !{!2596, !980, i64 24}
!2606 = !DILocation(line: 1079, column: 5, scope: !920)
!2607 = !DILocation(line: 1079, column: 10, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !925, file: !442, discriminator: 1)
!2609 = !DILocation(line: 1079, column: 21, scope: !925)
!2610 = !DILocation(line: 1079, column: 40, scope: !925)
!2611 = !DILocation(line: 1079, column: 26, scope: !925)
!2612 = !DILocation(line: 1079, column: 43, scope: !925)
!2613 = !DILocation(line: 1079, column: 54, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !925, file: !442, line: 1079, column: 52)
!2615 = !DILocation(line: 1079, column: 58, scope: !2614)
!2616 = !DILocation(line: 1079, column: 61, scope: !2614)
!2617 = !DILocation(line: 1079, column: 69, scope: !2614)
!2618 = !DILocation(line: 1079, column: 77, scope: !2614)
!2619 = !DILocation(line: 1079, column: 52, scope: !925)
!2620 = !DILocation(line: 1079, column: 86, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2614, file: !442, discriminator: 2)
!2622 = !DILocation(line: 1079, column: 130, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !925, file: !442, discriminator: 3)
!2624 = !DILocation(line: 1079, column: 155, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2626, file: !442, discriminator: 4)
!2626 = distinct !DILexicalBlock(scope: !925, file: !442, line: 1079, column: 133)
!2627 = !DILocation(line: 1079, column: 159, scope: !2626)
!2628 = !DILocation(line: 1079, column: 162, scope: !2626)
!2629 = !DILocation(line: 1079, column: 170, scope: !2626)
!2630 = !DILocation(line: 1079, column: 197, scope: !2626)
!2631 = !DILocation(line: 1079, column: 136, scope: !2626)
!2632 = !DILocation(line: 1079, column: 140, scope: !2626)
!2633 = !DILocation(line: 1079, column: 143, scope: !2626)
!2634 = !DILocation(line: 1079, column: 151, scope: !2626)
!2635 = !DILocation(line: 1079, column: 226, scope: !2626)
!2636 = !DILocation(line: 1079, column: 226, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2626, file: !442, discriminator: 5)
!2638 = !DILocation(line: 1079, column: 255, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !925, file: !442, discriminator: 6)
!2640 = !DILocation(line: 1079, column: 239, scope: !925)
!2641 = !DILocation(line: 1079, column: 242, scope: !925)
!2642 = !DILocation(line: 1079, column: 245, scope: !925)
!2643 = !DILocation(line: 1079, column: 253, scope: !925)
!2644 = !DILocation(line: 1079, column: 290, scope: !925)
!2645 = !DILocation(line: 1079, column: 309, scope: !925)
!2646 = !DILocation(line: 1079, column: 312, scope: !925)
!2647 = !DILocation(line: 1079, column: 274, scope: !925)
!2648 = !DILocation(line: 1079, column: 277, scope: !925)
!2649 = !DILocation(line: 1079, column: 280, scope: !925)
!2650 = !DILocation(line: 1079, column: 288, scope: !925)
!2651 = !DILocation(line: 1079, column: 349, scope: !925)
!2652 = !DILocation(line: 1079, column: 321, scope: !925)
!2653 = !DILocation(line: 1079, column: 324, scope: !925)
!2654 = !DILocation(line: 1079, column: 327, scope: !925)
!2655 = !DILocation(line: 1079, column: 336, scope: !925)
!2656 = !DILocation(line: 1079, column: 339, scope: !925)
!2657 = !DILocation(line: 1079, column: 347, scope: !925)
!2658 = !DILocation(line: 1079, column: 384, scope: !925)
!2659 = !DILocation(line: 1079, column: 352, scope: !925)
!2660 = !DILocation(line: 1079, column: 371, scope: !925)
!2661 = !DILocation(line: 1079, column: 374, scope: !925)
!2662 = !DILocation(line: 1079, column: 382, scope: !925)
!2663 = !DILocation(line: 1079, column: 387, scope: !920)
!2664 = !DILocation(line: 1079, column: 387, scope: !925)
!2665 = !DILocation(line: 1079, column: 387, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !925, file: !442, discriminator: 7)
!2667 = !DILocation(line: 1080, column: 24, scope: !920)
!2668 = !DILocation(line: 1080, column: 12, scope: !920)
!2669 = !DILocation(line: 1080, column: 5, scope: !920)
!2670 = !DILocation(line: 1081, column: 1, scope: !920)
!2671 = !DILocation(line: 643, column: 25, scope: !852)
!2672 = !DILocation(line: 643, column: 41, scope: !852)
!2673 = !DILocation(line: 643, column: 57, scope: !852)
!2674 = !DILocation(line: 645, column: 5, scope: !852)
!2675 = !DILocation(line: 645, column: 15, scope: !852)
!2676 = !DILocation(line: 648, column: 9, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !852, file: !442, line: 648, column: 9)
!2678 = !DILocation(line: 648, column: 14, scope: !2677)
!2679 = !DILocation(line: 648, column: 9, scope: !852)
!2680 = !DILocation(line: 649, column: 34, scope: !2677)
!2681 = !DILocation(line: 649, column: 40, scope: !2677)
!2682 = !DILocation(line: 649, column: 46, scope: !2677)
!2683 = !DILocation(line: 649, column: 16, scope: !2677)
!2684 = !DILocation(line: 649, column: 9, scope: !2677)
!2685 = !DILocation(line: 650, column: 38, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !852, file: !442, line: 650, column: 9)
!2687 = !DILocation(line: 650, column: 44, scope: !2686)
!2688 = !DILocation(line: 650, column: 10, scope: !2686)
!2689 = !DILocation(line: 650, column: 9, scope: !852)
!2690 = !DILocation(line: 651, column: 9, scope: !2686)
!2691 = !DILocation(line: 653, column: 9, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !852, file: !442, line: 653, column: 9)
!2693 = !DILocation(line: 653, column: 13, scope: !2692)
!2694 = !DILocation(line: 653, column: 9, scope: !852)
!2695 = !DILocation(line: 654, column: 16, scope: !2692)
!2696 = !DILocation(line: 654, column: 9, scope: !2692)
!2697 = !DILocation(line: 656, column: 33, scope: !2692)
!2698 = !DILocation(line: 656, column: 16, scope: !2692)
!2699 = !DILocation(line: 656, column: 9, scope: !2692)
!2700 = !DILocation(line: 657, column: 1, scope: !852)
!2701 = !DILocation(line: 847, column: 28, scope: !543)
!2702 = !DILocation(line: 847, column: 43, scope: !543)
!2703 = !DILocation(line: 849, column: 5, scope: !543)
!2704 = !DILocation(line: 849, column: 20, scope: !543)
!2705 = !DILocation(line: 850, column: 5, scope: !543)
!2706 = !DILocation(line: 850, column: 20, scope: !543)
!2707 = !DILocation(line: 851, column: 5, scope: !543)
!2708 = !DILocation(line: 851, column: 16, scope: !543)
!2709 = !DILocation(line: 852, column: 5, scope: !543)
!2710 = !DILocation(line: 852, column: 16, scope: !543)
!2711 = !DILocation(line: 854, column: 28, scope: !543)
!2712 = !DILocation(line: 854, column: 27, scope: !543)
!2713 = !DILocation(line: 854, column: 9, scope: !543)
!2714 = !DILocation(line: 854, column: 7, scope: !543)
!2715 = !DILocation(line: 855, column: 9, scope: !556)
!2716 = !DILocation(line: 855, column: 11, scope: !556)
!2717 = !DILocation(line: 855, column: 25, scope: !556)
!2718 = !DILocation(line: 855, column: 42, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !556, file: !442, discriminator: 1)
!2720 = !DILocation(line: 855, column: 30, scope: !556)
!2721 = !DILocation(line: 855, column: 47, scope: !556)
!2722 = !DILocation(line: 855, column: 56, scope: !556)
!2723 = !DILocation(line: 855, column: 73, scope: !556)
!2724 = !DILocation(line: 856, column: 27, scope: !556)
!2725 = !DILocation(line: 856, column: 12, scope: !556)
!2726 = !DILocation(line: 856, column: 32, scope: !556)
!2727 = !DILocation(line: 856, column: 41, scope: !556)
!2728 = !DILocation(line: 856, column: 46, scope: !556)
!2729 = !DILocation(line: 856, column: 63, scope: !2719)
!2730 = !DILocation(line: 856, column: 51, scope: !556)
!2731 = !DILocation(line: 856, column: 68, scope: !556)
!2732 = !DILocation(line: 856, column: 79, scope: !556)
!2733 = !DILocation(line: 855, column: 9, scope: !543)
!2734 = !DILocation(line: 857, column: 10, scope: !555)
!2735 = !DILocation(line: 857, column: 13, scope: !555)
!2736 = !DILocation(line: 858, column: 9, scope: !555)
!2737 = !DILocation(line: 858, column: 14, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !554, file: !442, discriminator: 1)
!2739 = !DILocation(line: 858, column: 24, scope: !554)
!2740 = !DILocation(line: 858, column: 55, scope: !554)
!2741 = !DILocation(line: 858, column: 42, scope: !554)
!2742 = !DILocation(line: 858, column: 63, scope: !559)
!2743 = !DILocation(line: 858, column: 79, scope: !559)
!2744 = !DILocation(line: 858, column: 63, scope: !554)
!2745 = !DILocation(line: 858, column: 94, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !559, file: !442, discriminator: 2)
!2747 = !DILocation(line: 858, column: 99, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !558, file: !442, discriminator: 4)
!2749 = !DILocation(line: 858, column: 109, scope: !558)
!2750 = !DILocation(line: 858, column: 139, scope: !558)
!2751 = !DILocation(line: 858, column: 165, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !558, file: !442, line: 858, column: 162)
!2753 = !DILocation(line: 858, column: 182, scope: !2752)
!2754 = !DILocation(line: 858, column: 162, scope: !2752)
!2755 = !DILocation(line: 858, column: 192, scope: !2752)
!2756 = !DILocation(line: 858, column: 162, scope: !558)
!2757 = !DILocation(line: 858, column: 162, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !558, file: !442, discriminator: 5)
!2759 = !DILocation(line: 858, column: 223, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2752, file: !442, discriminator: 6)
!2761 = !DILocation(line: 858, column: 241, scope: !2752)
!2762 = !DILocation(line: 858, column: 251, scope: !2752)
!2763 = !DILocation(line: 858, column: 276, scope: !2752)
!2764 = !DILocation(line: 858, column: 207, scope: !2752)
!2765 = !DILocation(line: 858, column: 295, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !559, file: !442, discriminator: 7)
!2767 = !DILocation(line: 858, column: 295, scope: !558)
!2768 = !DILocation(line: 858, column: 295, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !558, file: !442, discriminator: 8)
!2770 = !DILocation(line: 858, column: 295, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !558, file: !442, discriminator: 9)
!2772 = !DILocation(line: 858, column: 308, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2774, file: !442, discriminator: 10)
!2774 = !DILexicalBlockFile(scope: !555, file: !442, discriminator: 3)
!2775 = !DILocation(line: 858, column: 308, scope: !554)
!2776 = !DILocation(line: 858, column: 308, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !554, file: !442, discriminator: 11)
!2778 = !DILocation(line: 859, column: 9, scope: !555)
!2779 = !DILocation(line: 860, column: 9, scope: !555)
!2780 = !DILocation(line: 862, column: 32, scope: !543)
!2781 = !DILocation(line: 862, column: 17, scope: !543)
!2782 = !DILocation(line: 862, column: 37, scope: !543)
!2783 = !DILocation(line: 862, column: 13, scope: !543)
!2784 = !DILocation(line: 863, column: 9, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !543, file: !442, line: 863, column: 9)
!2786 = !DILocation(line: 863, column: 20, scope: !2785)
!2787 = !DILocation(line: 863, column: 17, scope: !2785)
!2788 = !DILocation(line: 863, column: 9, scope: !543)
!2789 = !DILocation(line: 864, column: 9, scope: !2785)
!2790 = !DILocation(line: 866, column: 9, scope: !563)
!2791 = !DILocation(line: 866, column: 17, scope: !563)
!2792 = !DILocation(line: 866, column: 9, scope: !543)
!2793 = !DILocation(line: 870, column: 9, scope: !562)
!2794 = !DILocation(line: 870, column: 14, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !561, file: !442, discriminator: 1)
!2796 = !DILocation(line: 870, column: 24, scope: !561)
!2797 = !DILocation(line: 870, column: 54, scope: !561)
!2798 = !DILocation(line: 870, column: 41, scope: !561)
!2799 = !DILocation(line: 870, column: 66, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !561, file: !442, line: 870, column: 63)
!2801 = !DILocation(line: 870, column: 83, scope: !2800)
!2802 = !DILocation(line: 870, column: 63, scope: !2800)
!2803 = !DILocation(line: 870, column: 93, scope: !2800)
!2804 = !DILocation(line: 870, column: 63, scope: !561)
!2805 = !DILocation(line: 870, column: 63, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !561, file: !442, discriminator: 2)
!2807 = !DILocation(line: 870, column: 124, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2800, file: !442, discriminator: 3)
!2809 = !DILocation(line: 870, column: 142, scope: !2800)
!2810 = !DILocation(line: 870, column: 152, scope: !2800)
!2811 = !DILocation(line: 870, column: 177, scope: !2800)
!2812 = !DILocation(line: 870, column: 108, scope: !2800)
!2813 = !DILocation(line: 870, column: 196, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !562, file: !442, discriminator: 4)
!2815 = !DILocation(line: 870, column: 196, scope: !561)
!2816 = !DILocation(line: 870, column: 196, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !561, file: !442, discriminator: 5)
!2818 = !DILocation(line: 871, column: 27, scope: !562)
!2819 = !DILocation(line: 871, column: 15, scope: !562)
!2820 = !DILocation(line: 871, column: 10, scope: !562)
!2821 = !DILocation(line: 871, column: 13, scope: !562)
!2822 = !DILocation(line: 872, column: 17, scope: !562)
!2823 = !DILocation(line: 872, column: 16, scope: !562)
!2824 = !DILocation(line: 872, column: 20, scope: !562)
!2825 = !DILocation(line: 872, column: 9, scope: !562)
!2826 = !DILocation(line: 877, column: 27, scope: !566)
!2827 = !DILocation(line: 877, column: 13, scope: !566)
!2828 = !DILocation(line: 877, column: 29, scope: !566)
!2829 = !DILocation(line: 877, column: 35, scope: !566)
!2830 = !DILocation(line: 877, column: 38, scope: !566)
!2831 = !DILocation(line: 877, column: 46, scope: !566)
!2832 = !DILocation(line: 877, column: 54, scope: !566)
!2833 = !DILocation(line: 877, column: 9, scope: !543)
!2834 = !DILocation(line: 878, column: 9, scope: !566)
!2835 = !DILocation(line: 878, column: 14, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !565, file: !442, discriminator: 1)
!2837 = !DILocation(line: 878, column: 25, scope: !565)
!2838 = !DILocation(line: 878, column: 44, scope: !565)
!2839 = !DILocation(line: 878, column: 30, scope: !565)
!2840 = !DILocation(line: 878, column: 46, scope: !565)
!2841 = !DILocation(line: 878, column: 65, scope: !565)
!2842 = !DILocation(line: 878, column: 90, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2844, file: !442, discriminator: 2)
!2844 = distinct !DILexicalBlock(scope: !565, file: !442, line: 878, column: 68)
!2845 = !DILocation(line: 878, column: 94, scope: !2844)
!2846 = !DILocation(line: 878, column: 97, scope: !2844)
!2847 = !DILocation(line: 878, column: 105, scope: !2844)
!2848 = !DILocation(line: 878, column: 132, scope: !2844)
!2849 = !DILocation(line: 878, column: 71, scope: !2844)
!2850 = !DILocation(line: 878, column: 75, scope: !2844)
!2851 = !DILocation(line: 878, column: 78, scope: !2844)
!2852 = !DILocation(line: 878, column: 86, scope: !2844)
!2853 = !DILocation(line: 878, column: 161, scope: !2844)
!2854 = !DILocation(line: 878, column: 161, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2844, file: !442, discriminator: 3)
!2856 = !DILocation(line: 878, column: 202, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !565, file: !442, discriminator: 4)
!2858 = !DILocation(line: 878, column: 205, scope: !565)
!2859 = !DILocation(line: 878, column: 208, scope: !565)
!2860 = !DILocation(line: 878, column: 174, scope: !565)
!2861 = !DILocation(line: 878, column: 177, scope: !565)
!2862 = !DILocation(line: 878, column: 180, scope: !565)
!2863 = !DILocation(line: 878, column: 189, scope: !565)
!2864 = !DILocation(line: 878, column: 192, scope: !565)
!2865 = !DILocation(line: 878, column: 200, scope: !565)
!2866 = !DILocation(line: 878, column: 245, scope: !565)
!2867 = !DILocation(line: 878, column: 248, scope: !565)
!2868 = !DILocation(line: 878, column: 251, scope: !565)
!2869 = !DILocation(line: 878, column: 217, scope: !565)
!2870 = !DILocation(line: 878, column: 220, scope: !565)
!2871 = !DILocation(line: 878, column: 223, scope: !565)
!2872 = !DILocation(line: 878, column: 232, scope: !565)
!2873 = !DILocation(line: 878, column: 235, scope: !565)
!2874 = !DILocation(line: 878, column: 243, scope: !565)
!2875 = !DILocation(line: 878, column: 260, scope: !565)
!2876 = !DILocation(line: 878, column: 263, scope: !565)
!2877 = !DILocation(line: 878, column: 266, scope: !565)
!2878 = !DILocation(line: 878, column: 274, scope: !565)
!2879 = !DILocation(line: 878, column: 288, scope: !566)
!2880 = !DILocation(line: 878, column: 288, scope: !565)
!2881 = !DILocation(line: 878, column: 288, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !565, file: !442, discriminator: 5)
!2883 = !DILocation(line: 878, column: 288, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !565, file: !442, discriminator: 6)
!2885 = !DILocation(line: 881, column: 14, scope: !571)
!2886 = !DILocation(line: 881, column: 12, scope: !571)
!2887 = !DILocation(line: 881, column: 10, scope: !571)
!2888 = !DILocation(line: 881, column: 23, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2890, file: !442, discriminator: 2)
!2890 = !DILexicalBlockFile(scope: !570, file: !442, discriminator: 1)
!2891 = !DILocation(line: 881, column: 27, scope: !570)
!2892 = !DILocation(line: 881, column: 25, scope: !570)
!2893 = !DILocation(line: 881, column: 5, scope: !571)
!2894 = !DILocation(line: 882, column: 9, scope: !569)
!2895 = !DILocation(line: 882, column: 14, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !568, file: !442, discriminator: 1)
!2897 = !DILocation(line: 882, column: 24, scope: !568)
!2898 = !DILocation(line: 882, column: 58, scope: !568)
!2899 = !DILocation(line: 882, column: 47, scope: !568)
!2900 = !DILocation(line: 882, column: 50, scope: !568)
!2901 = !DILocation(line: 882, column: 67, scope: !575)
!2902 = !DILocation(line: 882, column: 75, scope: !575)
!2903 = !DILocation(line: 882, column: 67, scope: !568)
!2904 = !DILocation(line: 882, column: 104, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !574, file: !442, discriminator: 2)
!2906 = !DILocation(line: 882, column: 93, scope: !574)
!2907 = !DILocation(line: 882, column: 96, scope: !574)
!2908 = !DILocation(line: 882, column: 108, scope: !574)
!2909 = !DILocation(line: 882, column: 122, scope: !574)
!2910 = !DILocation(line: 882, column: 127, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !573, file: !442, discriminator: 4)
!2912 = !DILocation(line: 882, column: 137, scope: !573)
!2913 = !DILocation(line: 882, column: 167, scope: !573)
!2914 = !DILocation(line: 882, column: 185, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !573, file: !442, line: 882, column: 182)
!2916 = !DILocation(line: 882, column: 202, scope: !2915)
!2917 = !DILocation(line: 882, column: 182, scope: !2915)
!2918 = !DILocation(line: 882, column: 212, scope: !2915)
!2919 = !DILocation(line: 882, column: 182, scope: !573)
!2920 = !DILocation(line: 882, column: 182, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !573, file: !442, discriminator: 5)
!2922 = !DILocation(line: 882, column: 243, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2915, file: !442, discriminator: 6)
!2924 = !DILocation(line: 882, column: 261, scope: !2915)
!2925 = !DILocation(line: 882, column: 271, scope: !2915)
!2926 = !DILocation(line: 882, column: 296, scope: !2915)
!2927 = !DILocation(line: 882, column: 227, scope: !2915)
!2928 = !DILocation(line: 882, column: 315, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !574, file: !442, discriminator: 7)
!2930 = !DILocation(line: 882, column: 315, scope: !573)
!2931 = !DILocation(line: 882, column: 315, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !573, file: !442, discriminator: 8)
!2933 = !DILocation(line: 882, column: 328, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !574, file: !442, discriminator: 9)
!2935 = !DILocation(line: 882, column: 330, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2937, file: !442, discriminator: 10)
!2937 = !DILexicalBlockFile(scope: !569, file: !442, discriminator: 3)
!2938 = !DILocation(line: 882, column: 330, scope: !568)
!2939 = !DILocation(line: 882, column: 330, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !568, file: !442, discriminator: 11)
!2941 = !DILocation(line: 883, column: 5, scope: !569)
!2942 = !DILocation(line: 881, column: 37, scope: !570)
!2943 = !DILocation(line: 881, column: 5, scope: !570)
!2944 = !DILocation(line: 884, column: 66, scope: !543)
!2945 = !DILocation(line: 884, column: 50, scope: !543)
!2946 = !DILocation(line: 884, column: 71, scope: !543)
!2947 = !DILocation(line: 884, column: 30, scope: !543)
!2948 = !DILocation(line: 884, column: 12, scope: !543)
!2949 = !DILocation(line: 884, column: 8, scope: !543)
!2950 = !DILocation(line: 885, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !543, file: !442, line: 885, column: 9)
!2952 = !DILocation(line: 885, column: 12, scope: !2951)
!2953 = !DILocation(line: 885, column: 9, scope: !543)
!2954 = !DILocation(line: 886, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !442, line: 885, column: 27)
!2956 = !DILocation(line: 886, column: 13, scope: !2955)
!2957 = !DILocation(line: 887, column: 25, scope: !2955)
!2958 = !DILocation(line: 887, column: 9, scope: !2955)
!2959 = !DILocation(line: 888, column: 9, scope: !2955)
!2960 = !DILocation(line: 890, column: 34, scope: !543)
!2961 = !DILocation(line: 890, column: 21, scope: !543)
!2962 = !DILocation(line: 890, column: 40, scope: !543)
!2963 = !DILocation(line: 890, column: 51, scope: !543)
!2964 = !DILocation(line: 892, column: 9, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !543, file: !442, line: 892, column: 9)
!2966 = !DILocation(line: 892, column: 19, scope: !2965)
!2967 = !DILocation(line: 892, column: 17, scope: !2965)
!2968 = !DILocation(line: 892, column: 9, scope: !543)
!2969 = !DILocation(line: 893, column: 29, scope: !2965)
!2970 = !DILocation(line: 893, column: 17, scope: !2965)
!2971 = !DILocation(line: 893, column: 21, scope: !2965)
!2972 = !DILocation(line: 893, column: 9, scope: !2965)
!2973 = !DILocation(line: 894, column: 40, scope: !2965)
!2974 = !DILocation(line: 894, column: 50, scope: !2965)
!2975 = !DILocation(line: 894, column: 48, scope: !2965)
!2976 = !DILocation(line: 894, column: 37, scope: !2965)
!2977 = !DILocation(line: 895, column: 24, scope: !543)
!2978 = !DILocation(line: 895, column: 11, scope: !543)
!2979 = !DILocation(line: 895, column: 6, scope: !543)
!2980 = !DILocation(line: 895, column: 9, scope: !543)
!2981 = !DILocation(line: 896, column: 5, scope: !543)
!2982 = !DILocation(line: 896, column: 10, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !577, file: !442, discriminator: 1)
!2984 = !DILocation(line: 896, column: 21, scope: !577)
!2985 = !DILocation(line: 896, column: 40, scope: !577)
!2986 = !DILocation(line: 896, column: 26, scope: !577)
!2987 = !DILocation(line: 896, column: 43, scope: !577)
!2988 = !DILocation(line: 896, column: 54, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !577, file: !442, line: 896, column: 52)
!2990 = !DILocation(line: 896, column: 58, scope: !2989)
!2991 = !DILocation(line: 896, column: 61, scope: !2989)
!2992 = !DILocation(line: 896, column: 69, scope: !2989)
!2993 = !DILocation(line: 896, column: 77, scope: !2989)
!2994 = !DILocation(line: 896, column: 52, scope: !577)
!2995 = !DILocation(line: 896, column: 86, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2989, file: !442, discriminator: 2)
!2997 = !DILocation(line: 896, column: 130, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !577, file: !442, discriminator: 3)
!2999 = !DILocation(line: 896, column: 155, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !3001, file: !442, discriminator: 4)
!3001 = distinct !DILexicalBlock(scope: !577, file: !442, line: 896, column: 133)
!3002 = !DILocation(line: 896, column: 159, scope: !3001)
!3003 = !DILocation(line: 896, column: 162, scope: !3001)
!3004 = !DILocation(line: 896, column: 170, scope: !3001)
!3005 = !DILocation(line: 896, column: 197, scope: !3001)
!3006 = !DILocation(line: 896, column: 136, scope: !3001)
!3007 = !DILocation(line: 896, column: 140, scope: !3001)
!3008 = !DILocation(line: 896, column: 143, scope: !3001)
!3009 = !DILocation(line: 896, column: 151, scope: !3001)
!3010 = !DILocation(line: 896, column: 226, scope: !3001)
!3011 = !DILocation(line: 896, column: 226, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3001, file: !442, discriminator: 5)
!3013 = !DILocation(line: 896, column: 255, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !577, file: !442, discriminator: 6)
!3015 = !DILocation(line: 896, column: 239, scope: !577)
!3016 = !DILocation(line: 896, column: 242, scope: !577)
!3017 = !DILocation(line: 896, column: 245, scope: !577)
!3018 = !DILocation(line: 896, column: 253, scope: !577)
!3019 = !DILocation(line: 896, column: 290, scope: !577)
!3020 = !DILocation(line: 896, column: 309, scope: !577)
!3021 = !DILocation(line: 896, column: 312, scope: !577)
!3022 = !DILocation(line: 896, column: 274, scope: !577)
!3023 = !DILocation(line: 896, column: 277, scope: !577)
!3024 = !DILocation(line: 896, column: 280, scope: !577)
!3025 = !DILocation(line: 896, column: 288, scope: !577)
!3026 = !DILocation(line: 896, column: 349, scope: !577)
!3027 = !DILocation(line: 896, column: 321, scope: !577)
!3028 = !DILocation(line: 896, column: 324, scope: !577)
!3029 = !DILocation(line: 896, column: 327, scope: !577)
!3030 = !DILocation(line: 896, column: 336, scope: !577)
!3031 = !DILocation(line: 896, column: 339, scope: !577)
!3032 = !DILocation(line: 896, column: 347, scope: !577)
!3033 = !DILocation(line: 896, column: 384, scope: !577)
!3034 = !DILocation(line: 896, column: 352, scope: !577)
!3035 = !DILocation(line: 896, column: 371, scope: !577)
!3036 = !DILocation(line: 896, column: 374, scope: !577)
!3037 = !DILocation(line: 896, column: 382, scope: !577)
!3038 = !DILocation(line: 896, column: 387, scope: !543)
!3039 = !DILocation(line: 896, column: 387, scope: !577)
!3040 = !DILocation(line: 896, column: 387, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !577, file: !442, discriminator: 7)
!3042 = !DILocation(line: 897, column: 5, scope: !543)
!3043 = !DILocation(line: 898, column: 1, scope: !543)
!3044 = !DILocation(line: 903, column: 5, scope: !578)
!3045 = !DILocation(line: 903, column: 9, scope: !578)
!3046 = !DILocation(line: 905, column: 5, scope: !578)
!3047 = !DILocation(line: 905, column: 9, scope: !578)
!3048 = !DILocation(line: 906, column: 12, scope: !587)
!3049 = !DILocation(line: 906, column: 10, scope: !587)
!3050 = !DILocation(line: 906, column: 17, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3052, file: !442, discriminator: 2)
!3052 = !DILexicalBlockFile(scope: !586, file: !442, discriminator: 1)
!3053 = !DILocation(line: 906, column: 19, scope: !586)
!3054 = !DILocation(line: 906, column: 5, scope: !587)
!3055 = !DILocation(line: 907, column: 9, scope: !585)
!3056 = !DILocation(line: 907, column: 24, scope: !585)
!3057 = !DILocation(line: 907, column: 28, scope: !585)
!3058 = !DILocation(line: 908, column: 23, scope: !585)
!3059 = !DILocation(line: 908, column: 13, scope: !585)
!3060 = !DILocation(line: 908, column: 11, scope: !585)
!3061 = !DILocation(line: 909, column: 34, scope: !585)
!3062 = !DILocation(line: 909, column: 26, scope: !585)
!3063 = !DILocation(line: 909, column: 23, scope: !585)
!3064 = !DILocation(line: 910, column: 19, scope: !585)
!3065 = !DILocation(line: 910, column: 9, scope: !585)
!3066 = !DILocation(line: 910, column: 22, scope: !585)
!3067 = !DILocation(line: 911, column: 17, scope: !585)
!3068 = !DILocation(line: 911, column: 9, scope: !585)
!3069 = !DILocation(line: 911, column: 20, scope: !585)
!3070 = !DILocation(line: 912, column: 9, scope: !585)
!3071 = !DILocation(line: 912, column: 16, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3073, file: !442, discriminator: 2)
!3073 = !DILexicalBlockFile(scope: !585, file: !442, discriminator: 1)
!3074 = !DILocation(line: 913, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !585, file: !442, line: 912, column: 19)
!3076 = !DILocation(line: 913, column: 15, scope: !3075)
!3077 = !DILocation(line: 914, column: 35, scope: !3075)
!3078 = !DILocation(line: 914, column: 38, scope: !3075)
!3079 = !DILocation(line: 914, column: 17, scope: !3075)
!3080 = !DILocation(line: 914, column: 15, scope: !3075)
!3081 = !DILocation(line: 915, column: 29, scope: !3075)
!3082 = !DILocation(line: 915, column: 13, scope: !3075)
!3083 = !DILocation(line: 917, column: 5, scope: !586)
!3084 = !DILocation(line: 917, column: 5, scope: !585)
!3085 = !DILocation(line: 906, column: 26, scope: !586)
!3086 = !DILocation(line: 906, column: 5, scope: !586)
!3087 = !DILocation(line: 919, column: 12, scope: !578)
!3088 = !DILocation(line: 920, column: 1, scope: !578)
!3089 = !DILocation(line: 919, column: 5, scope: !578)
!3090 = !DILocation(line: 928, column: 5, scope: !589)
!3091 = !DILocation(line: 928, column: 10, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !594, file: !442, discriminator: 1)
!3093 = !DILocation(line: 928, column: 20, scope: !594)
!3094 = !DILocation(line: 928, column: 43, scope: !594)
!3095 = !DILocation(line: 928, column: 30, scope: !594)
!3096 = !DILocation(line: 928, column: 62, scope: !598)
!3097 = !DILocation(line: 928, column: 70, scope: !598)
!3098 = !DILocation(line: 928, column: 62, scope: !594)
!3099 = !DILocation(line: 928, column: 102, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !597, file: !442, discriminator: 2)
!3101 = !DILocation(line: 928, column: 116, scope: !597)
!3102 = !DILocation(line: 928, column: 121, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !596, file: !442, discriminator: 4)
!3104 = !DILocation(line: 928, column: 131, scope: !596)
!3105 = !DILocation(line: 928, column: 161, scope: !596)
!3106 = !DILocation(line: 928, column: 179, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !596, file: !442, line: 928, column: 176)
!3108 = !DILocation(line: 928, column: 196, scope: !3107)
!3109 = !DILocation(line: 928, column: 176, scope: !3107)
!3110 = !DILocation(line: 928, column: 206, scope: !3107)
!3111 = !DILocation(line: 928, column: 176, scope: !596)
!3112 = !DILocation(line: 928, column: 176, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !596, file: !442, discriminator: 5)
!3114 = !DILocation(line: 928, column: 237, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3107, file: !442, discriminator: 6)
!3116 = !DILocation(line: 928, column: 255, scope: !3107)
!3117 = !DILocation(line: 928, column: 265, scope: !3107)
!3118 = !DILocation(line: 928, column: 290, scope: !3107)
!3119 = !DILocation(line: 928, column: 221, scope: !3107)
!3120 = !DILocation(line: 928, column: 309, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !597, file: !442, discriminator: 7)
!3122 = !DILocation(line: 928, column: 309, scope: !596)
!3123 = !DILocation(line: 928, column: 309, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !596, file: !442, discriminator: 8)
!3125 = !DILocation(line: 928, column: 322, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !597, file: !442, discriminator: 9)
!3127 = !DILocation(line: 928, column: 324, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3129, file: !442, discriminator: 10)
!3129 = !DILexicalBlockFile(scope: !589, file: !442, discriminator: 3)
!3130 = !DILocation(line: 928, column: 324, scope: !594)
!3131 = !DILocation(line: 930, column: 11, scope: !589)
!3132 = !DILocation(line: 935, column: 1, scope: !589)
!3133 = !DILocation(line: 946, column: 36, scope: !874)
!3134 = !DILocation(line: 948, column: 5, scope: !874)
!3135 = !DILocation(line: 948, column: 10, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !880, file: !442, discriminator: 1)
!3137 = !DILocation(line: 948, column: 21, scope: !880)
!3138 = !DILocation(line: 948, column: 40, scope: !880)
!3139 = !DILocation(line: 948, column: 26, scope: !880)
!3140 = !DILocation(line: 948, column: 43, scope: !880)
!3141 = !DILocation(line: 948, column: 62, scope: !880)
!3142 = !DILocation(line: 948, column: 87, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3144, file: !442, discriminator: 2)
!3144 = distinct !DILexicalBlock(scope: !880, file: !442, line: 948, column: 65)
!3145 = !DILocation(line: 948, column: 91, scope: !3144)
!3146 = !DILocation(line: 948, column: 94, scope: !3144)
!3147 = !DILocation(line: 948, column: 102, scope: !3144)
!3148 = !DILocation(line: 948, column: 129, scope: !3144)
!3149 = !DILocation(line: 948, column: 68, scope: !3144)
!3150 = !DILocation(line: 948, column: 72, scope: !3144)
!3151 = !DILocation(line: 948, column: 75, scope: !3144)
!3152 = !DILocation(line: 948, column: 83, scope: !3144)
!3153 = !DILocation(line: 948, column: 158, scope: !3144)
!3154 = !DILocation(line: 948, column: 158, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3144, file: !442, discriminator: 3)
!3156 = !DILocation(line: 948, column: 199, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !880, file: !442, discriminator: 4)
!3158 = !DILocation(line: 948, column: 202, scope: !880)
!3159 = !DILocation(line: 948, column: 205, scope: !880)
!3160 = !DILocation(line: 948, column: 171, scope: !880)
!3161 = !DILocation(line: 948, column: 174, scope: !880)
!3162 = !DILocation(line: 948, column: 177, scope: !880)
!3163 = !DILocation(line: 948, column: 186, scope: !880)
!3164 = !DILocation(line: 948, column: 189, scope: !880)
!3165 = !DILocation(line: 948, column: 197, scope: !880)
!3166 = !DILocation(line: 948, column: 242, scope: !880)
!3167 = !DILocation(line: 948, column: 245, scope: !880)
!3168 = !DILocation(line: 948, column: 248, scope: !880)
!3169 = !DILocation(line: 948, column: 214, scope: !880)
!3170 = !DILocation(line: 948, column: 217, scope: !880)
!3171 = !DILocation(line: 948, column: 220, scope: !880)
!3172 = !DILocation(line: 948, column: 229, scope: !880)
!3173 = !DILocation(line: 948, column: 232, scope: !880)
!3174 = !DILocation(line: 948, column: 240, scope: !880)
!3175 = !DILocation(line: 948, column: 257, scope: !880)
!3176 = !DILocation(line: 948, column: 260, scope: !880)
!3177 = !DILocation(line: 948, column: 263, scope: !880)
!3178 = !DILocation(line: 948, column: 271, scope: !880)
!3179 = !DILocation(line: 948, column: 285, scope: !874)
!3180 = !DILocation(line: 948, column: 285, scope: !880)
!3181 = !DILocation(line: 949, column: 5, scope: !874)
!3182 = !DILocation(line: 949, column: 10, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !882, file: !442, discriminator: 1)
!3184 = !DILocation(line: 949, column: 20, scope: !882)
!3185 = !DILocation(line: 949, column: 51, scope: !882)
!3186 = !DILocation(line: 949, column: 55, scope: !882)
!3187 = !DILocation(line: 949, column: 38, scope: !882)
!3188 = !DILocation(line: 949, column: 68, scope: !885)
!3189 = !DILocation(line: 949, column: 84, scope: !885)
!3190 = !DILocation(line: 949, column: 68, scope: !882)
!3191 = !DILocation(line: 949, column: 99, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !885, file: !442, discriminator: 2)
!3193 = !DILocation(line: 949, column: 104, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !884, file: !442, discriminator: 4)
!3195 = !DILocation(line: 949, column: 114, scope: !884)
!3196 = !DILocation(line: 949, column: 144, scope: !884)
!3197 = !DILocation(line: 949, column: 170, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !884, file: !442, line: 949, column: 167)
!3199 = !DILocation(line: 949, column: 187, scope: !3198)
!3200 = !DILocation(line: 949, column: 167, scope: !3198)
!3201 = !DILocation(line: 949, column: 197, scope: !3198)
!3202 = !DILocation(line: 949, column: 167, scope: !884)
!3203 = !DILocation(line: 949, column: 167, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !884, file: !442, discriminator: 5)
!3205 = !DILocation(line: 949, column: 228, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3198, file: !442, discriminator: 6)
!3207 = !DILocation(line: 949, column: 246, scope: !3198)
!3208 = !DILocation(line: 949, column: 256, scope: !3198)
!3209 = !DILocation(line: 949, column: 281, scope: !3198)
!3210 = !DILocation(line: 949, column: 212, scope: !3198)
!3211 = !DILocation(line: 949, column: 300, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !885, file: !442, discriminator: 7)
!3213 = !DILocation(line: 949, column: 300, scope: !884)
!3214 = !DILocation(line: 949, column: 300, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !884, file: !442, discriminator: 8)
!3216 = !DILocation(line: 949, column: 300, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !884, file: !442, discriminator: 9)
!3218 = !DILocation(line: 949, column: 313, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3220, file: !442, discriminator: 10)
!3220 = !DILexicalBlockFile(scope: !874, file: !442, discriminator: 3)
!3221 = !DILocation(line: 949, column: 313, scope: !882)
!3222 = !DILocation(line: 950, column: 21, scope: !874)
!3223 = !DILocation(line: 950, column: 5, scope: !874)
!3224 = !DILocation(line: 951, column: 1, scope: !874)
!3225 = !DILocation(line: 954, column: 37, scope: !886)
!3226 = !DILocation(line: 954, column: 51, scope: !886)
!3227 = !DILocation(line: 954, column: 64, scope: !886)
!3228 = !DILocation(line: 956, column: 5, scope: !886)
!3229 = !DILocation(line: 956, column: 14, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !895, file: !442, discriminator: 1)
!3231 = !DILocation(line: 956, column: 18, scope: !895)
!3232 = !DILocation(line: 956, column: 14, scope: !895)
!3233 = !DILocation(line: 956, column: 14, scope: !896)
!3234 = !DILocation(line: 956, column: 28, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !894, file: !442, discriminator: 2)
!3236 = !DILocation(line: 956, column: 32, scope: !894)
!3237 = !DILocation(line: 956, column: 39, scope: !894)
!3238 = !DILocation(line: 956, column: 58, scope: !894)
!3239 = !DILocation(line: 956, column: 62, scope: !894)
!3240 = !DILocation(line: 956, column: 45, scope: !894)
!3241 = !DILocation(line: 956, column: 71, scope: !894)
!3242 = !DILocation(line: 956, column: 81, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !894, file: !442, line: 956, column: 81)
!3244 = !DILocation(line: 956, column: 81, scope: !894)
!3245 = !DILocation(line: 956, column: 94, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3243, file: !442, discriminator: 4)
!3247 = !DILocation(line: 956, column: 87, scope: !3243)
!3248 = !DILocation(line: 956, column: 100, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !895, file: !442, discriminator: 5)
!3250 = !DILocation(line: 956, column: 100, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3252, file: !442, discriminator: 7)
!3252 = !DILexicalBlockFile(scope: !895, file: !442, discriminator: 6)
!3253 = !DILocation(line: 956, column: 100, scope: !894)
!3254 = !DILocation(line: 956, column: 102, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3256, file: !442, discriminator: 8)
!3256 = !DILexicalBlockFile(scope: !896, file: !442, discriminator: 3)
!3257 = !DILocation(line: 957, column: 5, scope: !886)
!3258 = !DILocation(line: 958, column: 1, scope: !886)
!3259 = !DILocation(line: 961, column: 33, scope: !897)
!3260 = !DILocation(line: 963, column: 5, scope: !897)
!3261 = !DILocation(line: 963, column: 20, scope: !897)
!3262 = !DILocation(line: 964, column: 5, scope: !897)
!3263 = !DILocation(line: 964, column: 15, scope: !897)
!3264 = !DILocation(line: 967, column: 11, scope: !897)
!3265 = !DILocation(line: 967, column: 15, scope: !897)
!3266 = !DILocation(line: 967, column: 9, scope: !897)
!3267 = !DILocation(line: 968, column: 9, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !897, file: !442, line: 968, column: 9)
!3269 = !DILocation(line: 968, column: 13, scope: !3268)
!3270 = !DILocation(line: 968, column: 9, scope: !897)
!3271 = !DILocation(line: 969, column: 9, scope: !3268)
!3272 = !DILocation(line: 972, column: 9, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !897, file: !442, line: 972, column: 9)
!3274 = !DILocation(line: 972, column: 13, scope: !3273)
!3275 = !DILocation(line: 972, column: 41, scope: !3273)
!3276 = !DILocation(line: 972, column: 26, scope: !3273)
!3277 = !DILocation(line: 972, column: 48, scope: !3273)
!3278 = !DILocation(line: 972, column: 22, scope: !3273)
!3279 = !DILocation(line: 972, column: 9, scope: !897)
!3280 = !DILocation(line: 973, column: 51, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !442, line: 972, column: 58)
!3282 = !DILocation(line: 973, column: 55, scope: !3281)
!3283 = !DILocation(line: 973, column: 36, scope: !3281)
!3284 = !DILocation(line: 973, column: 43, scope: !3281)
!3285 = !DILocation(line: 973, column: 17, scope: !3281)
!3286 = !DILocation(line: 973, column: 14, scope: !3281)
!3287 = !DILocation(line: 974, column: 11, scope: !3281)
!3288 = !DILocation(line: 974, column: 15, scope: !3281)
!3289 = !DILocation(line: 974, column: 9, scope: !3281)
!3290 = !DILocation(line: 975, column: 25, scope: !3281)
!3291 = !DILocation(line: 975, column: 33, scope: !3281)
!3292 = !DILocation(line: 975, column: 42, scope: !3281)
!3293 = !DILocation(line: 976, column: 16, scope: !3281)
!3294 = !DILocation(line: 976, column: 9, scope: !3281)
!3295 = !DILocation(line: 979, column: 5, scope: !897)
!3296 = !DILocation(line: 979, column: 10, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !905, file: !442, discriminator: 1)
!3298 = !DILocation(line: 979, column: 20, scope: !905)
!3299 = !DILocation(line: 979, column: 50, scope: !905)
!3300 = !DILocation(line: 979, column: 37, scope: !905)
!3301 = !DILocation(line: 979, column: 64, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !905, file: !442, line: 979, column: 61)
!3303 = !DILocation(line: 979, column: 81, scope: !3302)
!3304 = !DILocation(line: 979, column: 61, scope: !3302)
!3305 = !DILocation(line: 979, column: 91, scope: !3302)
!3306 = !DILocation(line: 979, column: 61, scope: !905)
!3307 = !DILocation(line: 979, column: 61, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !905, file: !442, discriminator: 2)
!3309 = !DILocation(line: 979, column: 122, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3302, file: !442, discriminator: 3)
!3311 = !DILocation(line: 979, column: 140, scope: !3302)
!3312 = !DILocation(line: 979, column: 150, scope: !3302)
!3313 = !DILocation(line: 979, column: 175, scope: !3302)
!3314 = !DILocation(line: 979, column: 106, scope: !3302)
!3315 = !DILocation(line: 979, column: 194, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !897, file: !442, discriminator: 4)
!3317 = !DILocation(line: 979, column: 194, scope: !905)
!3318 = !DILocation(line: 979, column: 194, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !905, file: !442, discriminator: 5)
!3320 = !DILocation(line: 980, column: 5, scope: !897)
!3321 = !DILocation(line: 980, column: 9, scope: !897)
!3322 = !DILocation(line: 980, column: 16, scope: !897)
!3323 = !DILocation(line: 981, column: 5, scope: !897)
!3324 = !DILocation(line: 982, column: 1, scope: !897)
!3325 = !DILocation(line: 59, column: 48, scope: !646)
!3326 = !DILocation(line: 59, column: 74, scope: !646)
!3327 = !DILocation(line: 61, column: 11, scope: !646)
!3328 = !DILocation(line: 62, column: 12, scope: !646)
!3329 = !DILocation(line: 62, column: 5, scope: !646)
!3330 = !DILocation(line: 67, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !646, file: !4, line: 62, column: 19)
!3332 = !DILocation(line: 70, column: 9, scope: !3331)
!3333 = !DILocation(line: 72, column: 12, scope: !646)
!3334 = !DILocation(line: 72, column: 5, scope: !646)
!3335 = !DILocation(line: 77, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !646, file: !4, line: 72, column: 19)
!3337 = !DILocation(line: 80, column: 9, scope: !3336)
!3338 = !DILocation(line: 82, column: 1, scope: !646)
!3339 = !DILocation(line: 51, column: 42, scope: !655)
!3340 = !DILocation(line: 53, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !655, file: !4, line: 53, column: 9)
!3342 = !DILocation(line: 53, column: 15, scope: !3341)
!3343 = !DILocation(line: 53, column: 9, scope: !655)
!3344 = !DILocation(line: 54, column: 9, scope: !3341)
!3345 = !{i32 154976}
!3346 = !DILocation(line: 55, column: 1, scope: !655)
!3347 = !DILocation(line: 44, column: 42, scope: !660)
!3348 = !DILocation(line: 46, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !660, file: !4, line: 46, column: 9)
!3350 = !DILocation(line: 46, column: 15, scope: !3349)
!3351 = !DILocation(line: 46, column: 9, scope: !660)
!3352 = !DILocation(line: 47, column: 9, scope: !3349)
!3353 = !{i32 154816}
!3354 = !DILocation(line: 48, column: 1, scope: !660)
!3355 = !DILocation(line: 365, column: 28, scope: !714)
!3356 = !DILocation(line: 367, column: 29, scope: !714)
!3357 = !DILocation(line: 367, column: 14, scope: !714)
!3358 = !DILocation(line: 367, column: 34, scope: !714)
!3359 = !DILocation(line: 367, column: 5, scope: !714)
!3360 = !DILocation(line: 436, column: 28, scope: !719)
!3361 = !DILocation(line: 436, column: 41, scope: !719)
!3362 = !DILocation(line: 438, column: 5, scope: !719)
!3363 = !DILocation(line: 438, column: 16, scope: !719)
!3364 = !DILocation(line: 439, column: 5, scope: !719)
!3365 = !DILocation(line: 439, column: 16, scope: !719)
!3366 = !DILocation(line: 440, column: 5, scope: !719)
!3367 = !DILocation(line: 440, column: 16, scope: !719)
!3368 = !DILocation(line: 440, column: 23, scope: !719)
!3369 = !DILocation(line: 441, column: 5, scope: !719)
!3370 = !DILocation(line: 441, column: 20, scope: !719)
!3371 = !DILocation(line: 442, column: 27, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !719, file: !442, line: 442, column: 9)
!3373 = !DILocation(line: 442, column: 33, scope: !3372)
!3374 = !DILocation(line: 442, column: 44, scope: !3372)
!3375 = !DILocation(line: 442, column: 53, scope: !3372)
!3376 = !DILocation(line: 442, column: 70, scope: !3372)
!3377 = !DILocation(line: 442, column: 9, scope: !719)
!3378 = !DILocation(line: 443, column: 22, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3372, file: !442, line: 442, column: 77)
!3380 = !DILocation(line: 445, column: 32, scope: !3379)
!3381 = !DILocation(line: 445, column: 38, scope: !3379)
!3382 = !DILocation(line: 445, column: 48, scope: !3379)
!3383 = !{!1010, !980, i64 24}
!3384 = !DILocation(line: 443, column: 9, scope: !3379)
!3385 = !DILocation(line: 446, column: 9, scope: !3379)
!3386 = !DILocation(line: 449, column: 29, scope: !719)
!3387 = !DILocation(line: 449, column: 14, scope: !719)
!3388 = !DILocation(line: 449, column: 34, scope: !719)
!3389 = !DILocation(line: 449, column: 80, scope: !719)
!3390 = !DILocation(line: 449, column: 63, scope: !719)
!3391 = !DILocation(line: 449, column: 47, scope: !719)
!3392 = !DILocation(line: 449, column: 87, scope: !719)
!3393 = !DILocation(line: 449, column: 43, scope: !719)
!3394 = !DILocation(line: 449, column: 10, scope: !719)
!3395 = !DILocation(line: 450, column: 9, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !719, file: !442, line: 450, column: 9)
!3397 = !DILocation(line: 450, column: 14, scope: !3396)
!3398 = !DILocation(line: 450, column: 9, scope: !719)
!3399 = !DILocation(line: 451, column: 16, scope: !3396)
!3400 = !DILocation(line: 451, column: 9, scope: !3396)
!3401 = !DILocation(line: 452, column: 40, scope: !719)
!3402 = !DILocation(line: 452, column: 28, scope: !719)
!3403 = !DILocation(line: 452, column: 10, scope: !719)
!3404 = !DILocation(line: 452, column: 8, scope: !719)
!3405 = !DILocation(line: 453, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !719, file: !442, line: 453, column: 9)
!3407 = !DILocation(line: 453, column: 12, scope: !3406)
!3408 = !DILocation(line: 453, column: 9, scope: !719)
!3409 = !DILocation(line: 454, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !442, line: 453, column: 27)
!3411 = !DILocation(line: 456, column: 11, scope: !719)
!3412 = !DILocation(line: 456, column: 14, scope: !719)
!3413 = !DILocation(line: 456, column: 9, scope: !719)
!3414 = !DILocation(line: 457, column: 12, scope: !719)
!3415 = !DILocation(line: 457, column: 16, scope: !719)
!3416 = !DILocation(line: 457, column: 10, scope: !719)
!3417 = !DILocation(line: 458, column: 12, scope: !733)
!3418 = !DILocation(line: 458, column: 10, scope: !733)
!3419 = !DILocation(line: 458, column: 17, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3421, file: !442, discriminator: 2)
!3421 = !DILexicalBlockFile(scope: !732, file: !442, discriminator: 1)
!3422 = !DILocation(line: 458, column: 38, scope: !732)
!3423 = !DILocation(line: 458, column: 23, scope: !732)
!3424 = !DILocation(line: 458, column: 43, scope: !732)
!3425 = !DILocation(line: 458, column: 19, scope: !732)
!3426 = !DILocation(line: 458, column: 5, scope: !733)
!3427 = !DILocation(line: 459, column: 9, scope: !731)
!3428 = !DILocation(line: 459, column: 19, scope: !731)
!3429 = !DILocation(line: 459, column: 27, scope: !731)
!3430 = !DILocation(line: 459, column: 23, scope: !731)
!3431 = !DILocation(line: 460, column: 25, scope: !731)
!3432 = !DILocation(line: 460, column: 30, scope: !731)
!3433 = !DILocation(line: 460, column: 39, scope: !731)
!3434 = !DILocation(line: 461, column: 19, scope: !731)
!3435 = !DILocation(line: 461, column: 14, scope: !731)
!3436 = !DILocation(line: 461, column: 9, scope: !731)
!3437 = !DILocation(line: 461, column: 17, scope: !731)
!3438 = !DILocation(line: 462, column: 5, scope: !732)
!3439 = !DILocation(line: 462, column: 5, scope: !731)
!3440 = !DILocation(line: 458, column: 54, scope: !732)
!3441 = !DILocation(line: 458, column: 5, scope: !732)
!3442 = !DILocation(line: 463, column: 29, scope: !719)
!3443 = !DILocation(line: 463, column: 12, scope: !719)
!3444 = !DILocation(line: 463, column: 34, scope: !719)
!3445 = !DILocation(line: 463, column: 11, scope: !719)
!3446 = !DILocation(line: 463, column: 9, scope: !719)
!3447 = !DILocation(line: 464, column: 12, scope: !719)
!3448 = !DILocation(line: 464, column: 16, scope: !719)
!3449 = !DILocation(line: 464, column: 43, scope: !719)
!3450 = !DILocation(line: 464, column: 28, scope: !719)
!3451 = !DILocation(line: 464, column: 48, scope: !719)
!3452 = !DILocation(line: 464, column: 24, scope: !719)
!3453 = !DILocation(line: 464, column: 10, scope: !719)
!3454 = !DILocation(line: 465, column: 12, scope: !737)
!3455 = !DILocation(line: 465, column: 10, scope: !737)
!3456 = !DILocation(line: 465, column: 17, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3458, file: !442, discriminator: 2)
!3458 = !DILexicalBlockFile(scope: !736, file: !442, discriminator: 1)
!3459 = !DILocation(line: 465, column: 56, scope: !736)
!3460 = !DILocation(line: 465, column: 39, scope: !736)
!3461 = !DILocation(line: 465, column: 23, scope: !736)
!3462 = !DILocation(line: 465, column: 63, scope: !736)
!3463 = !DILocation(line: 465, column: 19, scope: !736)
!3464 = !DILocation(line: 465, column: 5, scope: !737)
!3465 = !DILocation(line: 466, column: 9, scope: !735)
!3466 = !DILocation(line: 466, column: 19, scope: !735)
!3467 = !DILocation(line: 466, column: 27, scope: !735)
!3468 = !DILocation(line: 466, column: 23, scope: !735)
!3469 = !DILocation(line: 467, column: 25, scope: !735)
!3470 = !DILocation(line: 467, column: 30, scope: !735)
!3471 = !DILocation(line: 467, column: 39, scope: !735)
!3472 = !DILocation(line: 468, column: 19, scope: !735)
!3473 = !DILocation(line: 468, column: 14, scope: !735)
!3474 = !DILocation(line: 468, column: 9, scope: !735)
!3475 = !DILocation(line: 468, column: 17, scope: !735)
!3476 = !DILocation(line: 469, column: 5, scope: !736)
!3477 = !DILocation(line: 469, column: 5, scope: !735)
!3478 = !DILocation(line: 465, column: 74, scope: !736)
!3479 = !DILocation(line: 465, column: 5, scope: !736)
!3480 = !DILocation(line: 470, column: 24, scope: !719)
!3481 = !DILocation(line: 470, column: 12, scope: !719)
!3482 = !DILocation(line: 470, column: 5, scope: !719)
!3483 = !DILocation(line: 472, column: 1, scope: !719)
!3484 = !DILocation(line: 475, column: 28, scope: !738)
!3485 = !DILocation(line: 475, column: 42, scope: !738)
!3486 = !DILocation(line: 477, column: 5, scope: !738)
!3487 = !DILocation(line: 477, column: 16, scope: !738)
!3488 = !DILocation(line: 477, column: 19, scope: !738)
!3489 = !DILocation(line: 478, column: 5, scope: !738)
!3490 = !DILocation(line: 478, column: 16, scope: !738)
!3491 = !DILocation(line: 479, column: 5, scope: !738)
!3492 = !DILocation(line: 479, column: 20, scope: !738)
!3493 = !DILocation(line: 480, column: 5, scope: !738)
!3494 = !DILocation(line: 480, column: 16, scope: !738)
!3495 = !DILocation(line: 480, column: 21, scope: !738)
!3496 = !DILocation(line: 481, column: 9, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !738, file: !442, line: 481, column: 9)
!3498 = !DILocation(line: 481, column: 11, scope: !3497)
!3499 = !DILocation(line: 481, column: 9, scope: !738)
!3500 = !DILocation(line: 482, column: 11, scope: !3497)
!3501 = !DILocation(line: 482, column: 9, scope: !3497)
!3502 = !DILocation(line: 483, column: 26, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !738, file: !442, line: 483, column: 9)
!3504 = !DILocation(line: 483, column: 11, scope: !3503)
!3505 = !DILocation(line: 483, column: 31, scope: !3503)
!3506 = !DILocation(line: 483, column: 40, scope: !3503)
!3507 = !DILocation(line: 483, column: 45, scope: !3503)
!3508 = !DILocation(line: 483, column: 48, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3503, file: !442, discriminator: 1)
!3510 = !DILocation(line: 483, column: 50, scope: !3503)
!3511 = !DILocation(line: 483, column: 9, scope: !738)
!3512 = !DILocation(line: 484, column: 28, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !442, line: 484, column: 13)
!3514 = distinct !DILexicalBlock(scope: !3503, file: !442, line: 483, column: 56)
!3515 = !DILocation(line: 484, column: 16, scope: !3513)
!3516 = !DILocation(line: 484, column: 33, scope: !3513)
!3517 = !DILocation(line: 484, column: 42, scope: !3513)
!3518 = !DILocation(line: 484, column: 13, scope: !3514)
!3519 = !DILocation(line: 487, column: 29, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3513, file: !442, line: 484, column: 61)
!3521 = !DILocation(line: 487, column: 16, scope: !3520)
!3522 = !DILocation(line: 487, column: 34, scope: !3520)
!3523 = !DILocation(line: 487, column: 43, scope: !3520)
!3524 = !DILocation(line: 488, column: 32, scope: !3520)
!3525 = !DILocation(line: 488, column: 20, scope: !3520)
!3526 = !DILocation(line: 488, column: 13, scope: !3520)
!3527 = !DILocation(line: 490, column: 30, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3514, file: !442, line: 490, column: 13)
!3529 = !DILocation(line: 490, column: 15, scope: !3528)
!3530 = !DILocation(line: 490, column: 35, scope: !3528)
!3531 = !DILocation(line: 490, column: 44, scope: !3528)
!3532 = !DILocation(line: 490, column: 13, scope: !3514)
!3533 = !DILocation(line: 491, column: 20, scope: !3528)
!3534 = !DILocation(line: 491, column: 13, scope: !3528)
!3535 = !DILocation(line: 492, column: 5, scope: !3514)
!3536 = !DILocation(line: 493, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !738, file: !442, line: 493, column: 9)
!3538 = !DILocation(line: 493, column: 64, scope: !3537)
!3539 = !DILocation(line: 493, column: 49, scope: !3537)
!3540 = !DILocation(line: 493, column: 69, scope: !3537)
!3541 = !DILocation(line: 493, column: 45, scope: !3537)
!3542 = !DILocation(line: 493, column: 11, scope: !3537)
!3543 = !DILocation(line: 493, column: 9, scope: !738)
!3544 = !DILocation(line: 494, column: 16, scope: !3537)
!3545 = !DILocation(line: 494, column: 9, scope: !3537)
!3546 = !DILocation(line: 495, column: 29, scope: !738)
!3547 = !DILocation(line: 495, column: 14, scope: !738)
!3548 = !DILocation(line: 495, column: 34, scope: !738)
!3549 = !DILocation(line: 495, column: 45, scope: !738)
!3550 = !DILocation(line: 495, column: 43, scope: !738)
!3551 = !DILocation(line: 495, column: 10, scope: !738)
!3552 = !DILocation(line: 496, column: 40, scope: !738)
!3553 = !DILocation(line: 496, column: 28, scope: !738)
!3554 = !DILocation(line: 496, column: 10, scope: !738)
!3555 = !DILocation(line: 496, column: 8, scope: !738)
!3556 = !DILocation(line: 497, column: 9, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !738, file: !442, line: 497, column: 9)
!3558 = !DILocation(line: 497, column: 12, scope: !3557)
!3559 = !DILocation(line: 497, column: 9, scope: !738)
!3560 = !DILocation(line: 498, column: 9, scope: !3557)
!3561 = !DILocation(line: 499, column: 9, scope: !738)
!3562 = !DILocation(line: 499, column: 13, scope: !738)
!3563 = !DILocation(line: 499, column: 7, scope: !738)
!3564 = !DILocation(line: 500, column: 13, scope: !738)
!3565 = !DILocation(line: 500, column: 16, scope: !738)
!3566 = !DILocation(line: 500, column: 11, scope: !738)
!3567 = !DILocation(line: 501, column: 12, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !738, file: !442, line: 501, column: 5)
!3569 = !DILocation(line: 501, column: 10, scope: !3568)
!3570 = !DILocation(line: 501, column: 17, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3572, file: !442, discriminator: 2)
!3572 = !DILexicalBlockFile(scope: !3573, file: !442, discriminator: 1)
!3573 = distinct !DILexicalBlock(scope: !3568, file: !442, line: 501, column: 5)
!3574 = !DILocation(line: 501, column: 21, scope: !3573)
!3575 = !DILocation(line: 501, column: 19, scope: !3573)
!3576 = !DILocation(line: 501, column: 5, scope: !3568)
!3577 = !DILocation(line: 502, column: 16, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !442, line: 502, column: 9)
!3579 = distinct !DILexicalBlock(scope: !3573, file: !442, line: 501, column: 29)
!3580 = !DILocation(line: 502, column: 14, scope: !3578)
!3581 = !DILocation(line: 502, column: 21, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3583, file: !442, discriminator: 2)
!3583 = !DILexicalBlockFile(scope: !3584, file: !442, discriminator: 1)
!3584 = distinct !DILexicalBlock(scope: !3578, file: !442, line: 502, column: 9)
!3585 = !DILocation(line: 502, column: 42, scope: !3584)
!3586 = !DILocation(line: 502, column: 27, scope: !3584)
!3587 = !DILocation(line: 502, column: 47, scope: !3584)
!3588 = !DILocation(line: 502, column: 23, scope: !3584)
!3589 = !DILocation(line: 502, column: 9, scope: !3578)
!3590 = !DILocation(line: 503, column: 24, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3584, file: !442, line: 502, column: 62)
!3592 = !DILocation(line: 503, column: 18, scope: !3591)
!3593 = !DILocation(line: 503, column: 14, scope: !3591)
!3594 = !DILocation(line: 503, column: 16, scope: !3591)
!3595 = !DILocation(line: 504, column: 30, scope: !3591)
!3596 = !DILocation(line: 504, column: 29, scope: !3591)
!3597 = !DILocation(line: 504, column: 35, scope: !3591)
!3598 = !DILocation(line: 504, column: 44, scope: !3591)
!3599 = !DILocation(line: 505, column: 14, scope: !3591)
!3600 = !DILocation(line: 506, column: 9, scope: !3591)
!3601 = !DILocation(line: 502, column: 58, scope: !3584)
!3602 = !DILocation(line: 502, column: 9, scope: !3584)
!3603 = !DILocation(line: 507, column: 5, scope: !3579)
!3604 = !DILocation(line: 501, column: 25, scope: !3573)
!3605 = !DILocation(line: 501, column: 5, scope: !3573)
!3606 = !DILocation(line: 508, column: 25, scope: !738)
!3607 = !DILocation(line: 508, column: 12, scope: !738)
!3608 = !DILocation(line: 508, column: 5, scope: !738)
!3609 = !DILocation(line: 509, column: 1, scope: !738)
!3610 = !DILocation(line: 383, column: 26, scope: !750)
!3611 = !DILocation(line: 383, column: 40, scope: !750)
!3612 = !DILocation(line: 385, column: 9, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !750, file: !442, line: 385, column: 9)
!3614 = !DILocation(line: 385, column: 11, scope: !3613)
!3615 = !DILocation(line: 385, column: 15, scope: !3613)
!3616 = !DILocation(line: 385, column: 18, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3613, file: !442, discriminator: 1)
!3618 = !DILocation(line: 385, column: 40, scope: !3613)
!3619 = !DILocation(line: 385, column: 25, scope: !3613)
!3620 = !DILocation(line: 385, column: 45, scope: !3613)
!3621 = !DILocation(line: 385, column: 20, scope: !3613)
!3622 = !DILocation(line: 385, column: 9, scope: !750)
!3623 = !DILocation(line: 386, column: 25, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3613, file: !442, line: 385, column: 55)
!3625 = !DILocation(line: 386, column: 9, scope: !3624)
!3626 = !DILocation(line: 387, column: 9, scope: !3624)
!3627 = !DILocation(line: 389, column: 32, scope: !750)
!3628 = !DILocation(line: 389, column: 21, scope: !750)
!3629 = !DILocation(line: 389, column: 24, scope: !750)
!3630 = !DILocation(line: 389, column: 38, scope: !750)
!3631 = !DILocation(line: 389, column: 47, scope: !750)
!3632 = !DILocation(line: 390, column: 23, scope: !750)
!3633 = !DILocation(line: 390, column: 12, scope: !750)
!3634 = !DILocation(line: 390, column: 15, scope: !750)
!3635 = !DILocation(line: 390, column: 5, scope: !750)
!3636 = !DILocation(line: 391, column: 1, scope: !750)
!3637 = !DILocation(line: 371, column: 30, scope: !754)
!3638 = !DILocation(line: 371, column: 43, scope: !754)
!3639 = !DILocation(line: 373, column: 5, scope: !754)
!3640 = !DILocation(line: 373, column: 16, scope: !754)
!3641 = !DILocation(line: 374, column: 5, scope: !754)
!3642 = !DILocation(line: 374, column: 9, scope: !754)
!3643 = !DILocation(line: 376, column: 12, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !754, file: !442, line: 376, column: 5)
!3645 = !DILocation(line: 376, column: 21, scope: !3644)
!3646 = !DILocation(line: 376, column: 10, scope: !3644)
!3647 = !DILocation(line: 376, column: 27, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !442, discriminator: 4)
!3649 = !DILexicalBlockFile(scope: !3650, file: !442, discriminator: 1)
!3650 = distinct !DILexicalBlock(scope: !3644, file: !442, line: 376, column: 5)
!3651 = !DILocation(line: 376, column: 31, scope: !3650)
!3652 = !DILocation(line: 376, column: 36, scope: !3650)
!3653 = !DILocation(line: 376, column: 39, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3650, file: !442, discriminator: 2)
!3655 = !DILocation(line: 376, column: 60, scope: !3650)
!3656 = !DILocation(line: 376, column: 45, scope: !3650)
!3657 = !DILocation(line: 376, column: 65, scope: !3650)
!3658 = !DILocation(line: 376, column: 41, scope: !3650)
!3659 = !DILocation(line: 376, column: 5, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3644, file: !442, discriminator: 3)
!3661 = !DILocation(line: 377, column: 40, scope: !3650)
!3662 = !DILocation(line: 377, column: 77, scope: !3650)
!3663 = !DILocation(line: 377, column: 64, scope: !3650)
!3664 = !DILocation(line: 377, column: 69, scope: !3650)
!3665 = !DILocation(line: 377, column: 45, scope: !3650)
!3666 = !DILocation(line: 377, column: 15, scope: !3650)
!3667 = !DILocation(line: 377, column: 13, scope: !3650)
!3668 = !DILocation(line: 377, column: 9, scope: !3650)
!3669 = !DILocation(line: 376, column: 75, scope: !3650)
!3670 = !DILocation(line: 376, column: 5, scope: !3650)
!3671 = !DILocation(line: 379, column: 12, scope: !754)
!3672 = !DILocation(line: 380, column: 1, scope: !754)
!3673 = !DILocation(line: 379, column: 5, scope: !754)
!3674 = !DILocation(line: 700, column: 31, scope: !762)
!3675 = !DILocation(line: 700, column: 47, scope: !762)
!3676 = !DILocation(line: 702, column: 11, scope: !768)
!3677 = !DILocation(line: 702, column: 18, scope: !768)
!3678 = !DILocation(line: 702, column: 27, scope: !768)
!3679 = !{!1010, !980, i64 96}
!3680 = !DILocation(line: 702, column: 40, scope: !768)
!3681 = !DILocation(line: 702, column: 54, scope: !768)
!3682 = !DILocation(line: 702, column: 58, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !768, file: !442, discriminator: 1)
!3684 = !DILocation(line: 702, column: 65, scope: !768)
!3685 = !DILocation(line: 702, column: 74, scope: !768)
!3686 = !DILocation(line: 702, column: 88, scope: !768)
!3687 = !{!3688, !980, i64 264}
!3688 = !{!"", !980, i64 0, !980, i64 8, !980, i64 16, !980, i64 24, !980, i64 32, !980, i64 40, !980, i64 48, !980, i64 56, !980, i64 64, !980, i64 72, !980, i64 80, !980, i64 88, !980, i64 96, !980, i64 104, !980, i64 112, !980, i64 120, !980, i64 128, !980, i64 136, !980, i64 144, !980, i64 152, !980, i64 160, !980, i64 168, !980, i64 176, !980, i64 184, !980, i64 192, !980, i64 200, !980, i64 208, !980, i64 216, !980, i64 224, !980, i64 232, !980, i64 240, !980, i64 248, !980, i64 256, !980, i64 264}
!3689 = !DILocation(line: 702, column: 97, scope: !768)
!3690 = !DILocation(line: 702, column: 9, scope: !762)
!3691 = !DILocation(line: 703, column: 9, scope: !767)
!3692 = !DILocation(line: 703, column: 20, scope: !767)
!3693 = !DILocation(line: 703, column: 43, scope: !767)
!3694 = !DILocation(line: 703, column: 49, scope: !767)
!3695 = !DILocation(line: 703, column: 24, scope: !767)
!3696 = !DILocation(line: 704, column: 13, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !767, file: !442, line: 704, column: 13)
!3698 = !DILocation(line: 704, column: 15, scope: !3697)
!3699 = !DILocation(line: 704, column: 21, scope: !3697)
!3700 = !DILocation(line: 704, column: 24, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3697, file: !442, discriminator: 1)
!3702 = !DILocation(line: 704, column: 13, scope: !767)
!3703 = !DILocation(line: 705, column: 13, scope: !3697)
!3704 = !DILocation(line: 706, column: 13, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !767, file: !442, line: 706, column: 13)
!3706 = !DILocation(line: 706, column: 15, scope: !3705)
!3707 = !DILocation(line: 706, column: 13, scope: !767)
!3708 = !DILocation(line: 707, column: 35, scope: !3705)
!3709 = !DILocation(line: 707, column: 20, scope: !3705)
!3710 = !DILocation(line: 707, column: 43, scope: !3705)
!3711 = !DILocation(line: 707, column: 15, scope: !3705)
!3712 = !DILocation(line: 707, column: 13, scope: !3705)
!3713 = !DILocation(line: 708, column: 26, scope: !767)
!3714 = !DILocation(line: 708, column: 32, scope: !767)
!3715 = !DILocation(line: 708, column: 16, scope: !767)
!3716 = !DILocation(line: 708, column: 9, scope: !767)
!3717 = !DILocation(line: 709, column: 5, scope: !768)
!3718 = !DILocation(line: 710, column: 29, scope: !771)
!3719 = !DILocation(line: 710, column: 37, scope: !771)
!3720 = !DILocation(line: 710, column: 46, scope: !771)
!3721 = !DILocation(line: 710, column: 14, scope: !768)
!3722 = !DILocation(line: 711, column: 9, scope: !770)
!3723 = !DILocation(line: 711, column: 20, scope: !770)
!3724 = !DILocation(line: 711, column: 27, scope: !770)
!3725 = !DILocation(line: 711, column: 33, scope: !770)
!3726 = !DILocation(line: 711, column: 39, scope: !770)
!3727 = !DILocation(line: 711, column: 52, scope: !770)
!3728 = !DILocation(line: 711, column: 57, scope: !770)
!3729 = !DILocation(line: 712, column: 9, scope: !770)
!3730 = !DILocation(line: 712, column: 19, scope: !770)
!3731 = !DILocation(line: 713, column: 9, scope: !770)
!3732 = !DILocation(line: 713, column: 19, scope: !770)
!3733 = !DILocation(line: 714, column: 9, scope: !770)
!3734 = !DILocation(line: 714, column: 20, scope: !770)
!3735 = !DILocation(line: 714, column: 27, scope: !770)
!3736 = !DILocation(line: 716, column: 34, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !770, file: !442, line: 716, column: 13)
!3738 = !DILocation(line: 717, column: 43, scope: !3737)
!3739 = !DILocation(line: 717, column: 28, scope: !3737)
!3740 = !DILocation(line: 717, column: 51, scope: !3737)
!3741 = !DILocation(line: 716, column: 13, scope: !3737)
!3742 = !DILocation(line: 718, column: 62, scope: !3737)
!3743 = !DILocation(line: 716, column: 13, scope: !770)
!3744 = !DILocation(line: 719, column: 13, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3737, file: !442, line: 718, column: 67)
!3746 = !DILocation(line: 722, column: 13, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !770, file: !442, line: 722, column: 13)
!3748 = !DILocation(line: 722, column: 25, scope: !3747)
!3749 = !DILocation(line: 722, column: 13, scope: !770)
!3750 = !DILocation(line: 723, column: 20, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !442, line: 722, column: 31)
!3752 = !DILocation(line: 723, column: 13, scope: !3751)
!3753 = !DILocation(line: 725, column: 18, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3747, file: !442, line: 725, column: 18)
!3755 = !DILocation(line: 725, column: 24, scope: !3754)
!3756 = !DILocation(line: 725, column: 29, scope: !3754)
!3757 = !DILocation(line: 725, column: 32, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3754, file: !442, discriminator: 1)
!3759 = !DILocation(line: 725, column: 37, scope: !3754)
!3760 = !DILocation(line: 725, column: 42, scope: !3754)
!3761 = !DILocation(line: 726, column: 18, scope: !3754)
!3762 = !DILocation(line: 726, column: 50, scope: !3754)
!3763 = !DILocation(line: 726, column: 35, scope: !3754)
!3764 = !DILocation(line: 726, column: 58, scope: !3754)
!3765 = !DILocation(line: 726, column: 30, scope: !3754)
!3766 = !DILocation(line: 726, column: 67, scope: !3754)
!3767 = !DILocation(line: 727, column: 33, scope: !3754)
!3768 = !DILocation(line: 727, column: 21, scope: !3754)
!3769 = !DILocation(line: 727, column: 41, scope: !3754)
!3770 = !DILocation(line: 727, column: 50, scope: !3754)
!3771 = !DILocation(line: 725, column: 18, scope: !3747)
!3772 = !DILocation(line: 728, column: 29, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3754, file: !442, line: 727, column: 69)
!3774 = !DILocation(line: 728, column: 16, scope: !3773)
!3775 = !DILocation(line: 728, column: 37, scope: !3773)
!3776 = !DILocation(line: 728, column: 46, scope: !3773)
!3777 = !DILocation(line: 729, column: 32, scope: !3773)
!3778 = !DILocation(line: 729, column: 20, scope: !3773)
!3779 = !DILocation(line: 729, column: 13, scope: !3773)
!3780 = !DILocation(line: 732, column: 34, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3754, file: !442, line: 731, column: 14)
!3782 = !DILocation(line: 732, column: 22, scope: !3781)
!3783 = !DILocation(line: 732, column: 20, scope: !3781)
!3784 = !DILocation(line: 733, column: 18, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3781, file: !442, line: 733, column: 17)
!3786 = !DILocation(line: 733, column: 17, scope: !3781)
!3787 = !DILocation(line: 733, column: 26, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3785, file: !442, discriminator: 1)
!3789 = !DILocation(line: 733, column: 26, scope: !3785)
!3790 = !DILocation(line: 735, column: 19, scope: !3781)
!3791 = !DILocation(line: 735, column: 25, scope: !3781)
!3792 = !DILocation(line: 735, column: 17, scope: !3781)
!3793 = !DILocation(line: 736, column: 38, scope: !3781)
!3794 = !DILocation(line: 736, column: 21, scope: !3781)
!3795 = !DILocation(line: 736, column: 47, scope: !3781)
!3796 = !DILocation(line: 736, column: 20, scope: !3781)
!3797 = !DILocation(line: 736, column: 18, scope: !3781)
!3798 = !DILocation(line: 737, column: 24, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3781, file: !442, line: 737, column: 13)
!3800 = !DILocation(line: 737, column: 22, scope: !3799)
!3801 = !DILocation(line: 737, column: 33, scope: !3799)
!3802 = !DILocation(line: 737, column: 18, scope: !3799)
!3803 = !DILocation(line: 737, column: 38, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3805, file: !442, discriminator: 2)
!3805 = !DILexicalBlockFile(scope: !3806, file: !442, discriminator: 1)
!3806 = distinct !DILexicalBlock(scope: !3799, file: !442, line: 737, column: 13)
!3807 = !DILocation(line: 737, column: 42, scope: !3806)
!3808 = !DILocation(line: 737, column: 40, scope: !3806)
!3809 = !DILocation(line: 737, column: 13, scope: !3799)
!3810 = !DILocation(line: 739, column: 26, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !442, line: 738, column: 36)
!3812 = !DILocation(line: 739, column: 22, scope: !3811)
!3813 = !DILocation(line: 739, column: 20, scope: !3811)
!3814 = !DILocation(line: 740, column: 33, scope: !3811)
!3815 = !DILocation(line: 740, column: 39, scope: !3811)
!3816 = !DILocation(line: 740, column: 48, scope: !3811)
!3817 = !DILocation(line: 741, column: 27, scope: !3811)
!3818 = !DILocation(line: 741, column: 22, scope: !3811)
!3819 = !DILocation(line: 741, column: 17, scope: !3811)
!3820 = !DILocation(line: 741, column: 25, scope: !3811)
!3821 = !DILocation(line: 742, column: 13, scope: !3811)
!3822 = !DILocation(line: 738, column: 25, scope: !3806)
!3823 = !DILocation(line: 738, column: 22, scope: !3806)
!3824 = !DILocation(line: 738, column: 32, scope: !3806)
!3825 = !DILocation(line: 737, column: 13, scope: !3806)
!3826 = !DILocation(line: 744, column: 20, scope: !3781)
!3827 = !DILocation(line: 744, column: 13, scope: !3781)
!3828 = !DILocation(line: 746, column: 5, scope: !771)
!3829 = !DILocation(line: 748, column: 22, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !771, file: !442, line: 747, column: 10)
!3831 = !DILocation(line: 750, column: 36, scope: !3830)
!3832 = !DILocation(line: 750, column: 44, scope: !3830)
!3833 = !DILocation(line: 750, column: 54, scope: !3830)
!3834 = !DILocation(line: 748, column: 9, scope: !3830)
!3835 = !DILocation(line: 751, column: 9, scope: !3830)
!3836 = !DILocation(line: 753, column: 1, scope: !762)
!3837 = !DILocation(line: 756, column: 33, scope: !823)
!3838 = !DILocation(line: 758, column: 44, scope: !823)
!3839 = !DILocation(line: 758, column: 67, scope: !823)
!3840 = !DILocation(line: 758, column: 52, scope: !823)
!3841 = !DILocation(line: 758, column: 72, scope: !823)
!3842 = !DILocation(line: 758, column: 33, scope: !823)
!3843 = !DILocation(line: 758, column: 12, scope: !823)
!3844 = !DILocation(line: 758, column: 5, scope: !823)
!3845 = !DILocation(line: 763, column: 29, scope: !826)
!3846 = !DILocation(line: 765, column: 5, scope: !826)
!3847 = !DILocation(line: 765, column: 16, scope: !826)
!3848 = !DILocation(line: 767, column: 24, scope: !826)
!3849 = !DILocation(line: 767, column: 56, scope: !826)
!3850 = !DILocation(line: 767, column: 41, scope: !826)
!3851 = !DILocation(line: 767, column: 64, scope: !826)
!3852 = !DILocation(line: 767, column: 73, scope: !826)
!3853 = !DILocation(line: 767, column: 37, scope: !826)
!3854 = !DILocation(line: 767, column: 9, scope: !826)
!3855 = !DILocation(line: 768, column: 31, scope: !826)
!3856 = !DILocation(line: 768, column: 12, scope: !826)
!3857 = !DILocation(line: 769, column: 1, scope: !826)
!3858 = !DILocation(line: 768, column: 5, scope: !826)
!3859 = !DILocation(line: 512, column: 27, scope: !830)
!3860 = !DILocation(line: 512, column: 43, scope: !830)
!3861 = !DILocation(line: 514, column: 5, scope: !830)
!3862 = !DILocation(line: 514, column: 16, scope: !830)
!3863 = !DILocation(line: 514, column: 19, scope: !830)
!3864 = !DILocation(line: 514, column: 28, scope: !830)
!3865 = !DILocation(line: 514, column: 50, scope: !830)
!3866 = !DILocation(line: 514, column: 35, scope: !830)
!3867 = !DILocation(line: 514, column: 58, scope: !830)
!3868 = !DILocation(line: 515, column: 5, scope: !830)
!3869 = !DILocation(line: 515, column: 15, scope: !830)
!3870 = !DILocation(line: 517, column: 27, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !830, file: !442, line: 517, column: 9)
!3872 = !DILocation(line: 517, column: 10, scope: !3871)
!3873 = !DILocation(line: 517, column: 9, scope: !830)
!3874 = !DILocation(line: 520, column: 9, scope: !3871)
!3875 = !DILocation(line: 521, column: 9, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !830, file: !442, line: 521, column: 9)
!3877 = !DILocation(line: 521, column: 15, scope: !3876)
!3878 = !DILocation(line: 521, column: 9, scope: !830)
!3879 = !DILocation(line: 522, column: 35, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3876, file: !442, line: 521, column: 20)
!3881 = !DILocation(line: 522, column: 20, scope: !3880)
!3882 = !DILocation(line: 522, column: 43, scope: !3880)
!3883 = !DILocation(line: 522, column: 15, scope: !3880)
!3884 = !DILocation(line: 523, column: 13, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3880, file: !442, line: 523, column: 13)
!3886 = !DILocation(line: 523, column: 19, scope: !3885)
!3887 = !DILocation(line: 523, column: 13, scope: !3880)
!3888 = !DILocation(line: 524, column: 19, scope: !3885)
!3889 = !DILocation(line: 524, column: 13, scope: !3885)
!3890 = !DILocation(line: 525, column: 5, scope: !3880)
!3891 = !DILocation(line: 526, column: 9, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !830, file: !442, line: 526, column: 9)
!3893 = !DILocation(line: 526, column: 14, scope: !3892)
!3894 = !DILocation(line: 526, column: 9, scope: !830)
!3895 = !DILocation(line: 527, column: 34, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !442, line: 526, column: 19)
!3897 = !DILocation(line: 527, column: 19, scope: !3896)
!3898 = !DILocation(line: 527, column: 42, scope: !3896)
!3899 = !DILocation(line: 527, column: 14, scope: !3896)
!3900 = !DILocation(line: 528, column: 13, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !442, line: 528, column: 13)
!3902 = !DILocation(line: 528, column: 18, scope: !3901)
!3903 = !DILocation(line: 528, column: 13, scope: !3896)
!3904 = !DILocation(line: 529, column: 18, scope: !3901)
!3905 = !DILocation(line: 529, column: 13, scope: !3901)
!3906 = !DILocation(line: 530, column: 5, scope: !3896)
!3907 = !DILocation(line: 531, column: 14, scope: !841)
!3908 = !DILocation(line: 531, column: 12, scope: !841)
!3909 = !DILocation(line: 531, column: 10, scope: !841)
!3910 = !DILocation(line: 531, column: 21, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !3912, file: !442, discriminator: 4)
!3912 = !DILexicalBlockFile(scope: !840, file: !442, discriminator: 1)
!3913 = !DILocation(line: 531, column: 25, scope: !840)
!3914 = !DILocation(line: 531, column: 23, scope: !840)
!3915 = !DILocation(line: 531, column: 30, scope: !840)
!3916 = !DILocation(line: 531, column: 33, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !840, file: !442, discriminator: 2)
!3918 = !DILocation(line: 531, column: 54, scope: !840)
!3919 = !DILocation(line: 531, column: 39, scope: !840)
!3920 = !DILocation(line: 531, column: 62, scope: !840)
!3921 = !DILocation(line: 531, column: 35, scope: !840)
!3922 = !DILocation(line: 531, column: 5, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !841, file: !442, discriminator: 3)
!3924 = !DILocation(line: 532, column: 9, scope: !839)
!3925 = !DILocation(line: 532, column: 13, scope: !839)
!3926 = !DILocation(line: 532, column: 58, scope: !839)
!3927 = !DILocation(line: 532, column: 44, scope: !839)
!3928 = !DILocation(line: 532, column: 50, scope: !839)
!3929 = !DILocation(line: 532, column: 62, scope: !839)
!3930 = !DILocation(line: 532, column: 19, scope: !839)
!3931 = !DILocation(line: 533, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !839, file: !442, line: 533, column: 13)
!3933 = !DILocation(line: 533, column: 17, scope: !3932)
!3934 = !DILocation(line: 533, column: 13, scope: !839)
!3935 = !DILocation(line: 534, column: 39, scope: !3932)
!3936 = !DILocation(line: 534, column: 20, scope: !3932)
!3937 = !DILocation(line: 534, column: 13, scope: !3932)
!3938 = !DILocation(line: 535, column: 18, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3932, file: !442, line: 535, column: 18)
!3940 = !DILocation(line: 535, column: 22, scope: !3939)
!3941 = !DILocation(line: 535, column: 18, scope: !3932)
!3942 = !DILocation(line: 536, column: 13, scope: !3939)
!3943 = !DILocation(line: 537, column: 5, scope: !840)
!3944 = !DILocation(line: 537, column: 5, scope: !3912)
!3945 = !DILocation(line: 537, column: 5, scope: !839)
!3946 = !DILocation(line: 531, column: 73, scope: !840)
!3947 = !DILocation(line: 531, column: 5, scope: !840)
!3948 = !DILocation(line: 538, column: 21, scope: !830)
!3949 = !DILocation(line: 538, column: 5, scope: !830)
!3950 = !DILocation(line: 539, column: 5, scope: !830)
!3951 = !DILocation(line: 540, column: 1, scope: !830)
!3952 = !DILocation(line: 543, column: 27, scope: !842)
!3953 = !DILocation(line: 543, column: 43, scope: !842)
!3954 = !DILocation(line: 545, column: 5, scope: !842)
!3955 = !DILocation(line: 545, column: 16, scope: !842)
!3956 = !DILocation(line: 546, column: 5, scope: !842)
!3957 = !DILocation(line: 546, column: 16, scope: !842)
!3958 = !DILocation(line: 548, column: 12, scope: !851)
!3959 = !DILocation(line: 548, column: 10, scope: !851)
!3960 = !DILocation(line: 548, column: 17, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3962, file: !442, discriminator: 2)
!3962 = !DILexicalBlockFile(scope: !850, file: !442, discriminator: 1)
!3963 = !DILocation(line: 548, column: 38, scope: !850)
!3964 = !DILocation(line: 548, column: 23, scope: !850)
!3965 = !DILocation(line: 548, column: 46, scope: !850)
!3966 = !DILocation(line: 548, column: 19, scope: !850)
!3967 = !DILocation(line: 548, column: 5, scope: !851)
!3968 = !DILocation(line: 549, column: 9, scope: !849)
!3969 = !DILocation(line: 549, column: 13, scope: !849)
!3970 = !DILocation(line: 549, column: 58, scope: !849)
!3971 = !DILocation(line: 549, column: 44, scope: !849)
!3972 = !DILocation(line: 549, column: 50, scope: !849)
!3973 = !DILocation(line: 549, column: 62, scope: !849)
!3974 = !DILocation(line: 549, column: 19, scope: !849)
!3975 = !DILocation(line: 550, column: 13, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !849, file: !442, line: 550, column: 13)
!3977 = !DILocation(line: 550, column: 17, scope: !3976)
!3978 = !DILocation(line: 550, column: 13, scope: !849)
!3979 = !DILocation(line: 551, column: 18, scope: !3976)
!3980 = !DILocation(line: 551, column: 13, scope: !3976)
!3981 = !DILocation(line: 552, column: 18, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3976, file: !442, line: 552, column: 18)
!3983 = !DILocation(line: 552, column: 22, scope: !3982)
!3984 = !DILocation(line: 552, column: 18, scope: !3976)
!3985 = !DILocation(line: 553, column: 13, scope: !3982)
!3986 = !DILocation(line: 554, column: 5, scope: !850)
!3987 = !DILocation(line: 554, column: 5, scope: !3962)
!3988 = !DILocation(line: 554, column: 5, scope: !849)
!3989 = !DILocation(line: 548, column: 57, scope: !850)
!3990 = !DILocation(line: 548, column: 5, scope: !850)
!3991 = !DILocation(line: 555, column: 31, scope: !842)
!3992 = !DILocation(line: 555, column: 12, scope: !842)
!3993 = !DILocation(line: 555, column: 5, scope: !842)
!3994 = !DILocation(line: 556, column: 1, scope: !842)
!3995 = !DILocation(line: 660, column: 33, scope: !862)
!3996 = !DILocation(line: 660, column: 49, scope: !862)
!3997 = !DILocation(line: 660, column: 65, scope: !862)
!3998 = !DILocation(line: 662, column: 5, scope: !862)
!3999 = !DILocation(line: 662, column: 15, scope: !862)
!4000 = !DILocation(line: 662, column: 21, scope: !862)
!4001 = !DILocation(line: 662, column: 30, scope: !862)
!4002 = !DILocation(line: 663, column: 5, scope: !862)
!4003 = !DILocation(line: 663, column: 16, scope: !862)
!4004 = !DILocation(line: 663, column: 19, scope: !862)
!4005 = !DILocation(line: 666, column: 36, scope: !862)
!4006 = !DILocation(line: 666, column: 42, scope: !862)
!4007 = !DILocation(line: 666, column: 11, scope: !862)
!4008 = !DILocation(line: 666, column: 9, scope: !862)
!4009 = !DILocation(line: 667, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !862, file: !442, line: 667, column: 9)
!4011 = !DILocation(line: 667, column: 13, scope: !4010)
!4012 = !DILocation(line: 667, column: 9, scope: !862)
!4013 = !DILocation(line: 668, column: 9, scope: !4010)
!4014 = !DILocation(line: 670, column: 14, scope: !862)
!4015 = !DILocation(line: 670, column: 20, scope: !862)
!4016 = !{!1010, !980, i64 304}
!4017 = !DILocation(line: 670, column: 29, scope: !862)
!4018 = !DILocation(line: 670, column: 56, scope: !862)
!4019 = !DILocation(line: 670, column: 41, scope: !862)
!4020 = !DILocation(line: 670, column: 63, scope: !862)
!4021 = !DILocation(line: 670, column: 37, scope: !862)
!4022 = !DILocation(line: 670, column: 12, scope: !862)
!4023 = !DILocation(line: 671, column: 9, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !862, file: !442, line: 671, column: 9)
!4025 = !DILocation(line: 671, column: 16, scope: !4024)
!4026 = !DILocation(line: 671, column: 9, scope: !862)
!4027 = !DILocation(line: 672, column: 9, scope: !4024)
!4028 = !DILocation(line: 673, column: 12, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !862, file: !442, line: 673, column: 5)
!4030 = !DILocation(line: 673, column: 10, scope: !4029)
!4031 = !DILocation(line: 673, column: 17, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4033, file: !442, discriminator: 2)
!4033 = !DILexicalBlockFile(scope: !4034, file: !442, discriminator: 1)
!4034 = distinct !DILexicalBlock(scope: !4029, file: !442, line: 673, column: 5)
!4035 = !DILocation(line: 673, column: 21, scope: !4034)
!4036 = !DILocation(line: 673, column: 19, scope: !4034)
!4037 = !DILocation(line: 673, column: 5, scope: !4029)
!4038 = !DILocation(line: 674, column: 51, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4034, file: !442, line: 673, column: 29)
!4040 = !DILocation(line: 674, column: 36, scope: !4039)
!4041 = !DILocation(line: 674, column: 18, scope: !4039)
!4042 = !DILocation(line: 674, column: 43, scope: !4039)
!4043 = !DILocation(line: 674, column: 17, scope: !4039)
!4044 = !DILocation(line: 674, column: 14, scope: !4039)
!4045 = !DILocation(line: 675, column: 25, scope: !4039)
!4046 = !DILocation(line: 675, column: 33, scope: !4039)
!4047 = !DILocation(line: 675, column: 42, scope: !4039)
!4048 = !DILocation(line: 676, column: 52, scope: !4039)
!4049 = !DILocation(line: 676, column: 47, scope: !4039)
!4050 = !DILocation(line: 676, column: 29, scope: !4039)
!4051 = !DILocation(line: 676, column: 11, scope: !4039)
!4052 = !DILocation(line: 676, column: 39, scope: !4039)
!4053 = !DILocation(line: 676, column: 10, scope: !4039)
!4054 = !DILocation(line: 676, column: 50, scope: !4039)
!4055 = !DILocation(line: 677, column: 5, scope: !4039)
!4056 = !DILocation(line: 673, column: 25, scope: !4034)
!4057 = !DILocation(line: 673, column: 5, scope: !4034)
!4058 = !DILocation(line: 678, column: 5, scope: !862)
!4059 = !DILocation(line: 678, column: 10, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !873, file: !442, discriminator: 1)
!4061 = !DILocation(line: 678, column: 20, scope: !873)
!4062 = !DILocation(line: 678, column: 50, scope: !873)
!4063 = !DILocation(line: 678, column: 64, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !873, file: !442, line: 678, column: 61)
!4065 = !DILocation(line: 678, column: 81, scope: !4064)
!4066 = !DILocation(line: 678, column: 61, scope: !4064)
!4067 = !DILocation(line: 678, column: 91, scope: !4064)
!4068 = !DILocation(line: 678, column: 61, scope: !873)
!4069 = !DILocation(line: 678, column: 61, scope: !4070)
!4070 = !DILexicalBlockFile(scope: !873, file: !442, discriminator: 2)
!4071 = !DILocation(line: 678, column: 122, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4064, file: !442, discriminator: 3)
!4073 = !DILocation(line: 678, column: 140, scope: !4064)
!4074 = !DILocation(line: 678, column: 150, scope: !4064)
!4075 = !DILocation(line: 678, column: 175, scope: !4064)
!4076 = !DILocation(line: 678, column: 106, scope: !4064)
!4077 = !DILocation(line: 678, column: 194, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !862, file: !442, discriminator: 4)
!4079 = !DILocation(line: 678, column: 194, scope: !873)
!4080 = !DILocation(line: 678, column: 194, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !873, file: !442, discriminator: 5)
!4082 = !DILocation(line: 679, column: 12, scope: !862)
!4083 = !DILocation(line: 679, column: 5, scope: !862)
!4084 = !DILocation(line: 680, column: 1, scope: !862)
!4085 = !DILocation(line: 985, column: 32, scope: !906)
!4086 = !DILocation(line: 987, column: 5, scope: !906)
!4087 = !DILocation(line: 987, column: 16, scope: !906)
!4088 = !DILocation(line: 988, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !906, file: !442, line: 988, column: 9)
!4090 = !DILocation(line: 988, column: 13, scope: !4089)
!4091 = !DILocation(line: 988, column: 9, scope: !906)
!4092 = !DILocation(line: 989, column: 32, scope: !4089)
!4093 = !DILocation(line: 989, column: 36, scope: !4089)
!4094 = !DILocation(line: 989, column: 17, scope: !4089)
!4095 = !DILocation(line: 989, column: 46, scope: !4089)
!4096 = !DILocation(line: 989, column: 57, scope: !4089)
!4097 = !DILocation(line: 989, column: 61, scope: !4089)
!4098 = !DILocation(line: 989, column: 55, scope: !4089)
!4099 = !DILocation(line: 989, column: 13, scope: !4089)
!4100 = !DILocation(line: 989, column: 9, scope: !4089)
!4101 = !DILocation(line: 990, column: 31, scope: !906)
!4102 = !DILocation(line: 990, column: 12, scope: !906)
!4103 = !DILocation(line: 991, column: 1, scope: !906)
!4104 = !DILocation(line: 990, column: 5, scope: !906)
!4105 = !DILocation(line: 996, column: 35, scope: !910)
!4106 = !DILocation(line: 998, column: 9, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !910, file: !442, line: 998, column: 9)
!4108 = !DILocation(line: 998, column: 13, scope: !4107)
!4109 = !DILocation(line: 998, column: 9, scope: !910)
!4110 = !DILocation(line: 999, column: 39, scope: !4107)
!4111 = !DILocation(line: 1000, column: 30, scope: !4107)
!4112 = !DILocation(line: 1000, column: 34, scope: !4107)
!4113 = !DILocation(line: 1000, column: 42, scope: !4107)
!4114 = !DILocation(line: 1000, column: 46, scope: !4107)
!4115 = !DILocation(line: 999, column: 16, scope: !4107)
!4116 = !DILocation(line: 999, column: 9, scope: !4107)
!4117 = !DILocation(line: 1002, column: 39, scope: !4107)
!4118 = !DILocation(line: 1002, column: 16, scope: !4107)
!4119 = !DILocation(line: 1002, column: 9, scope: !4107)
!4120 = !DILocation(line: 1003, column: 1, scope: !910)
!4121 = !DILocation(line: 1006, column: 37, scope: !913)
!4122 = !DILocation(line: 1006, column: 51, scope: !913)
!4123 = !DILocation(line: 1008, column: 5, scope: !913)
!4124 = !DILocation(line: 1008, column: 16, scope: !913)
!4125 = !DILocation(line: 1008, column: 41, scope: !913)
!4126 = !DILocation(line: 1008, column: 24, scope: !913)
!4127 = !DILocation(line: 1009, column: 9, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !913, file: !442, line: 1009, column: 9)
!4129 = !DILocation(line: 1009, column: 15, scope: !4128)
!4130 = !DILocation(line: 1009, column: 21, scope: !4128)
!4131 = !DILocation(line: 1009, column: 24, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4128, file: !442, discriminator: 1)
!4133 = !DILocation(line: 1009, column: 9, scope: !913)
!4134 = !DILocation(line: 1010, column: 9, scope: !4128)
!4135 = !DILocation(line: 1011, column: 9, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !913, file: !442, line: 1011, column: 9)
!4137 = !DILocation(line: 1011, column: 13, scope: !4136)
!4138 = !DILocation(line: 1011, column: 20, scope: !4136)
!4139 = !DILocation(line: 1011, column: 9, scope: !913)
!4140 = !DILocation(line: 1012, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !442, line: 1012, column: 13)
!4142 = distinct !DILexicalBlock(scope: !4136, file: !442, line: 1011, column: 35)
!4143 = !DILocation(line: 1012, column: 19, scope: !4141)
!4144 = !DILocation(line: 1012, column: 13, scope: !4142)
!4145 = !DILocation(line: 1013, column: 19, scope: !4141)
!4146 = !DILocation(line: 1013, column: 13, scope: !4141)
!4147 = !DILocation(line: 1014, column: 18, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4141, file: !442, line: 1014, column: 18)
!4149 = !DILocation(line: 1014, column: 43, scope: !4148)
!4150 = !DILocation(line: 1014, column: 47, scope: !4148)
!4151 = !DILocation(line: 1014, column: 28, scope: !4148)
!4152 = !DILocation(line: 1014, column: 57, scope: !4148)
!4153 = !DILocation(line: 1014, column: 24, scope: !4148)
!4154 = !DILocation(line: 1014, column: 18, scope: !4141)
!4155 = !DILocation(line: 1015, column: 38, scope: !4148)
!4156 = !DILocation(line: 1015, column: 42, scope: !4148)
!4157 = !DILocation(line: 1015, column: 23, scope: !4148)
!4158 = !DILocation(line: 1015, column: 52, scope: !4148)
!4159 = !DILocation(line: 1015, column: 19, scope: !4148)
!4160 = !DILocation(line: 1015, column: 13, scope: !4148)
!4161 = !DILocation(line: 1016, column: 24, scope: !4142)
!4162 = !DILocation(line: 1016, column: 9, scope: !4142)
!4163 = !DILocation(line: 1016, column: 13, scope: !4142)
!4164 = !DILocation(line: 1016, column: 22, scope: !4142)
!4165 = !DILocation(line: 1017, column: 5, scope: !4142)
!4166 = !DILocation(line: 1018, column: 58, scope: !913)
!4167 = !DILocation(line: 1018, column: 5, scope: !913)
!4168 = !DILocation(line: 1019, column: 1, scope: !913)
