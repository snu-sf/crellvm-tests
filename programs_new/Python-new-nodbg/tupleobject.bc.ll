; ModuleID = './tupleobject.bc'
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
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %1 = load i32, i32* %i, align 4
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 2), align 8
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 3), align 8
  %mul = mul i64 %conv, %7
  %add = add i64 %5, %mul
  %add2 = add i64 %add, 7
  %and = and i64 %add2, -8
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %2, i8* %arraydecay1, i32 %4, i64 %and)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_New(i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %op = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %g = alloca %union._gc_head*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 71)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8
  %tobool = icmp ne %struct.PyTupleObject* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8
  store %struct.PyTupleObject* %3, %struct.PyTupleObject** %op, align 8
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %5 = bitcast %struct.PyTupleObject* %4 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %size.addr, align 8
  %cmp4 = icmp slt i64 %9, 20
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %if.end.3
  %10 = load i64, i64* %size.addr, align 8
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %10
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8
  store %struct.PyTupleObject* %11, %struct.PyTupleObject** %op, align 8
  %cmp6 = icmp ne %struct.PyTupleObject* %11, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true.5
  %12 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %13 = load %struct._object*, %struct._object** %arrayidx8, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %15 = load i64, i64* %size.addr, align 8
  %arrayidx9 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %15
  store %struct.PyTupleObject* %14, %struct.PyTupleObject** %arrayidx9, align 8
  %16 = load i64, i64* %size.addr, align 8
  %arrayidx10 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %16
  %17 = load i32, i32* %arrayidx10, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %arrayidx10, align 4
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %19 = bitcast %struct.PyTupleObject* %18 to %struct._object*
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  store i64 1, i64* %ob_refcnt11, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true.5, %if.end.3
  %20 = load i64, i64* %size.addr, align 8
  %cmp12 = icmp ugt i64 %20, 1152921504606846970
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  %21 = load i64, i64* %size.addr, align 8
  %call15 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyTuple_Type, i64 %21)
  %22 = bitcast %struct.PyVarObject* %call15 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %22, %struct.PyTupleObject** %op, align 8
  %23 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %cmp16 = icmp eq %struct.PyTupleObject* %23, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.7
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %size.addr, align 8
  %cmp20 = icmp slt i64 %24, %25
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 %26
  store %struct._object* null, %struct._object** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %inc23 = add i64 %28, 1
  store i64 %inc23, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %size.addr, align 8
  %cmp24 = icmp eq i64 %29, 0
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.end
  %30 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  store %struct.PyTupleObject* %30, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8
  %31 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i32 0, i64 0), align 4
  %inc26 = add i32 %31, 1
  store i32 %inc26, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i32 0, i64 0), align 4
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %33 = bitcast %struct.PyTupleObject* %32 to %struct._object*
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt27, align 8
  %inc28 = add i64 %34, 1
  store i64 %inc28, i64* %ob_refcnt27, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %35 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %36 = bitcast %struct.PyTupleObject* %35 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %36, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %37 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %38 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %38, 1
  %cmp30 = icmp ne i64 %shr, -2
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.32:                                        ; preds = %do.body
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc34 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_refs35 = getelementptr inbounds %struct.anon, %struct.anon* %gc34, i32 0, i32 2
  %40 = load i64, i64* %gc_refs35, align 8
  %and = and i64 %40, 1
  %or = or i64 %and, -6
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc36 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_refs37 = getelementptr inbounds %struct.anon, %struct.anon* %gc36, i32 0, i32 2
  store i64 %or, i64* %gc_refs37, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.33
  %42 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %43 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc38 = bitcast %union._gc_head* %43 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc38, i32 0, i32 0
  store %union._gc_head* %42, %union._gc_head** %gc_next, align 8
  %44 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc39 = bitcast %union._gc_head* %44 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc39, i32 0, i32 1
  %45 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %46 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc40 = bitcast %union._gc_head* %46 to %struct.anon*
  %gc_prev41 = getelementptr inbounds %struct.anon, %struct.anon* %gc40, i32 0, i32 1
  store %union._gc_head* %45, %union._gc_head** %gc_prev41, align 8
  %47 = load %union._gc_head*, %union._gc_head** %g, align 8
  %48 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc42 = bitcast %union._gc_head* %48 to %struct.anon*
  %gc_prev43 = getelementptr inbounds %struct.anon, %struct.anon* %gc42, i32 0, i32 1
  %49 = load %union._gc_head*, %union._gc_head** %gc_prev43, align 8
  %gc44 = bitcast %union._gc_head* %49 to %struct.anon*
  %gc_next45 = getelementptr inbounds %struct.anon, %struct.anon* %gc44, i32 0, i32 0
  store %union._gc_head* %47, %union._gc_head** %gc_next45, align 8
  %50 = load %union._gc_head*, %union._gc_head** %g, align 8
  %51 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc46 = bitcast %union._gc_head* %51 to %struct.anon*
  %gc_prev47 = getelementptr inbounds %struct.anon, %struct.anon* %gc46, i32 0, i32 1
  store %union._gc_head* %50, %union._gc_head** %gc_prev47, align 8
  br label %do.end.48

do.end.48:                                        ; preds = %do.end
  %52 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op, align 8
  %53 = bitcast %struct.PyTupleObject* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.then.17, %if.then.13, %if.then.2, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @PyTuple_Size(%struct._object* %op) #0 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 128)
  store i64 -1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetItem(%struct._object* %op, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 139)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp sge i64 %4, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %9 = load i64, i64* %i.addr, align 8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

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
  %_py_xdecref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_xdecref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %newitem, %struct._object** %newitem.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %4, 1
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %newitem.addr, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 156)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %14 = load i64, i64* %i.addr, align 8
  %cmp12 = icmp slt i64 %14, 0
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.11
  %15 = load i64, i64* %i.addr, align 8
  %16 = load %struct._object*, %struct._object** %op.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  %cmp14 = icmp sge i64 %15, %18
  br i1 %cmp14, label %if.then.15, label %if.end.33

if.then.15:                                       ; preds = %lor.lhs.false.13, %if.end.11
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %19 = load %struct._object*, %struct._object** %newitem.addr, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp17, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  %cmp18 = icmp ne %struct._object* %20, null
  br i1 %cmp18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %do.body.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp21, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %23, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %26(%struct._object* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.16
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %28 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.13
  %29 = load %struct._object*, %struct._object** %op.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  %31 = load i64, i64* %i.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %31
  store %struct._object** %add.ptr, %struct._object*** %p, align 8
  %32 = load %struct._object**, %struct._object*** %p, align 8
  %33 = load %struct._object*, %struct._object** %32, align 8
  store %struct._object* %33, %struct._object** %olditem, align 8
  %34 = load %struct._object*, %struct._object** %newitem.addr, align 8
  %35 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %34, %struct._object** %35, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp35, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  %cmp36 = icmp ne %struct._object* %37, null
  br i1 %cmp36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp39, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %40, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %43(%struct._object* %44)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.body.34
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.50, %do.end.32, %do.end.10
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define void @_PyTuple_MaybeUntrack(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %t = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %elt = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyTuple_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %4 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %4, 1
  %cmp1 = icmp ne i64 %shr, -2
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.end.42

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %6, %struct.PyTupleObject** %t, align 8
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %t, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  store i64 %9, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %n, align 8
  %cmp2 = icmp slt i64 %10, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %t, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %12
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %14, %struct._object** %elt, align 8
  %15 = load %struct._object*, %struct._object** %elt, align 8
  %tobool = icmp ne %struct._object* %15, null
  br i1 %tobool, label %lor.lhs.false.3, label %if.then.21

lor.lhs.false.3:                                  ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %elt, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags, align 8
  %and = and i64 %18, 16384
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %19 = load %struct._object*, %struct._object** %elt, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 39
  %21 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp7 = icmp eq i32 (%struct._object*)* %21, null
  br i1 %cmp7, label %land.lhs.true.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true
  %22 = load %struct._object*, %struct._object** %elt, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_is_gc10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 39
  %24 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc10, align 8
  %25 = load %struct._object*, %struct._object** %elt, align 8
  %call = call i32 %24(%struct._object* %25)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %lor.lhs.false.8, %land.lhs.true
  %26 = load %struct._object*, %struct._object** %elt, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %27, @PyTuple_Type
  br i1 %cmp14, label %lor.lhs.false.15, label %if.then.21

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %28 = load %struct._object*, %struct._object** %elt, align 8
  %29 = bitcast %struct._object* %28 to %union._gc_head*
  %add.ptr16 = getelementptr %union._gc_head, %union._gc_head* %29, i64 -1
  %gc17 = bitcast %union._gc_head* %add.ptr16 to %struct.anon*
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2
  %30 = load i64, i64* %gc_refs18, align 8
  %shr19 = ashr i64 %30, 1
  %cmp20 = icmp ne i64 %shr19, -2
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.15, %land.lhs.true.12, %for.body
  br label %do.end.42

if.end.22:                                        ; preds = %lor.lhs.false.15, %lor.lhs.false.8, %lor.lhs.false.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %32 = load %struct._object*, %struct._object** %op.addr, align 8
  %33 = bitcast %struct._object* %32 to %union._gc_head*
  %add.ptr23 = getelementptr %union._gc_head, %union._gc_head* %33, i64 -1
  store %union._gc_head* %add.ptr23, %union._gc_head** %g, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %do.body
  %34 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc25 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_refs26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 2
  %35 = load i64, i64* %gc_refs26, align 8
  %and27 = and i64 %35, 1
  %or = or i64 %and27, -4
  %36 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc28 = bitcast %union._gc_head* %36 to %struct.anon*
  %gc_refs29 = getelementptr inbounds %struct.anon, %struct.anon* %gc28, i32 0, i32 2
  store i64 %or, i64* %gc_refs29, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.24
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc30 = bitcast %union._gc_head* %37 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 0
  %38 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc31 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 1
  %40 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc32 = bitcast %union._gc_head* %40 to %struct.anon*
  %gc_next33 = getelementptr inbounds %struct.anon, %struct.anon* %gc32, i32 0, i32 0
  store %union._gc_head* %38, %union._gc_head** %gc_next33, align 8
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc34 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_prev35 = getelementptr inbounds %struct.anon, %struct.anon* %gc34, i32 0, i32 1
  %42 = load %union._gc_head*, %union._gc_head** %gc_prev35, align 8
  %43 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc36 = bitcast %union._gc_head* %43 to %struct.anon*
  %gc_next37 = getelementptr inbounds %struct.anon, %struct.anon* %gc36, i32 0, i32 0
  %44 = load %union._gc_head*, %union._gc_head** %gc_next37, align 8
  %gc38 = bitcast %union._gc_head* %44 to %struct.anon*
  %gc_prev39 = getelementptr inbounds %struct.anon, %struct.anon* %gc38, i32 0, i32 1
  store %union._gc_head* %42, %union._gc_head** %gc_prev39, align 8
  %45 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc40 = bitcast %union._gc_head* %45 to %struct.anon*
  %gc_next41 = getelementptr inbounds %struct.anon, %struct.anon* %gc40, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next41, align 8
  br label %do.end.42

do.end.42:                                        ; preds = %if.then, %if.then.21, %do.end
  ret void
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
  store i64 %n, i64* %n.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i64, i64* %n.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay4, %struct._object*** %items, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp slt i64 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to %struct._object**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to %struct._object**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._object** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load %struct._object*, %struct._object** %vaarg.addr
  store %struct._object* %11, %struct._object** %o, align 8
  %12 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct._object*, %struct._object** %o, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %16, i64 %15
  store %struct._object* %14, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %17 = load i64, i64* %i, align 8
  %inc7 = add i64 %17, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  %18 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetSlice(%struct._object* %op, i64 %i, i64 %j) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 429)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %6 = load i64, i64* %i.addr, align 8
  %7 = load i64, i64* %j.addr, align 8
  %call = call %struct._object* @tupleslice(%struct.PyTupleObject* %5, i64 %6, i64 %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
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
  %v = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  %0 = load i64, i64* %ilow.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %ilow.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %ihigh.addr, align 8
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sgt i64 %1, %4
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %6 = bitcast %struct.PyTupleObject* %5 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size3, align 8
  store i64 %7, i64* %ihigh.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load i64, i64* %ihigh.addr, align 8
  %9 = load i64, i64* %ilow.addr, align 8
  %cmp5 = icmp slt i64 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %10 = load i64, i64* %ilow.addr, align 8
  store i64 %10, i64* %ihigh.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %11 = load i64, i64* %ilow.addr, align 8
  %cmp8 = icmp eq i64 %11, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.7
  %12 = load i64, i64* %ihigh.addr, align 8
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %14 = bitcast %struct.PyTupleObject* %13 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size9, align 8
  %cmp10 = icmp eq i64 %12, %15
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %16 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %17 = bitcast %struct.PyTupleObject* %16 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp12 = icmp eq %struct._typeobject* %18, @PyTuple_Type
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  %19 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %20 = bitcast %struct.PyTupleObject* %19 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %22 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %23 = bitcast %struct.PyTupleObject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.7
  %24 = load i64, i64* %ihigh.addr, align 8
  %25 = load i64, i64* %ilow.addr, align 8
  %sub = sub i64 %24, %25
  store i64 %sub, i64* %len, align 8
  %26 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyTuple_New(i64 %26)
  %27 = bitcast %struct._object* %call to %struct.PyTupleObject*
  store %struct.PyTupleObject* %27, %struct.PyTupleObject** %np, align 8
  %28 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %cmp15 = icmp eq %struct.PyTupleObject* %28, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %29 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  %30 = load i64, i64* %ilow.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %30
  store %struct._object** %add.ptr, %struct._object*** %src, align 8
  %31 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i32 0
  store %struct._object** %arraydecay19, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %len, align 8
  %cmp20 = icmp slt i64 %32, %33
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i64, i64* %i, align 8
  %35 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %35, i64 %34
  %36 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %36, %struct._object** %v, align 8
  %37 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %38, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  %39 = load %struct._object*, %struct._object** %v, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx23 = getelementptr %struct._object*, %struct._object** %41, i64 %40
  store %struct._object* %39, %struct._object** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i64, i64* %i, align 8
  %inc24 = add i64 %42, 1
  store i64 %inc24, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %44 = bitcast %struct.PyTupleObject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.13
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
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
  store %struct.PyTupleObject* %op, %struct.PyTupleObject** %op.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %4 = bitcast %struct.PyTupleObject* %3 to i8*
  call void @PyObject_GC_UnTrack(i8* %4)
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %5 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %5, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*
  %8 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8)
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8
  %11 = load volatile i8*, i8** %10, align 8
  store i8* %11, i8** %result, align 8
  %12 = load i32, i32* %order, align 4
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8
  store i8* %13, i8** %tmp
  %14 = load i8*, i8** %tmp
  %15 = bitcast i8* %14 to %struct._ts*
  store %struct._ts* %15, %struct._ts** %_tstate, align 8
  %16 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %16, i32 0, i32 23
  %17 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %17, 50
  br i1 %cmp, label %if.then, label %if.else.42

if.then:                                          ; preds = %sw.epilog.3
  %18 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %18, i32 0, i32 23
  %19 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  %20 = load i64, i64* %len, align 8
  %cmp5 = icmp sgt i64 %20, 0
  br i1 %cmp5, label %if.then.6, label %if.end.33

if.then.6:                                        ; preds = %if.then
  %21 = load i64, i64* %len, align 8
  store i64 %21, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.18, %if.then.6
  %22 = load i64, i64* %i, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %i, align 8
  %cmp7 = icmp sge i64 %dec, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.8

do.body.8:                                        ; preds = %while.body
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %23
  %25 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %26, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %do.body.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec14 = add i64 %29, -1
  store i64 %dec14, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.12
  br label %if.end

if.else:                                          ; preds = %do.body.12
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body.8
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i64, i64* %len, align 8
  %cmp19 = icmp slt i64 %34, 20
  br i1 %cmp19, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %while.end
  %35 = load i64, i64* %len, align 8
  %arrayidx20 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %35
  %36 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp slt i32 %36, 2000
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %37 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %38 = bitcast %struct.PyTupleObject* %37 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %39, @PyTuple_Type
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.lhs.true.22
  %40 = load i64, i64* %len, align 8
  %arrayidx26 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %40
  %41 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx26, align 8
  %42 = bitcast %struct.PyTupleObject* %41 to %struct._object*
  %43 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 0
  store %struct._object* %42, %struct._object** %arrayidx28, align 8
  %44 = load i64, i64* %len, align 8
  %arrayidx29 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %44
  %45 = load i32, i32* %arrayidx29, align 4
  %inc30 = add i32 %45, 1
  store i32 %inc30, i32* %arrayidx29, align 4
  %46 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %47 = load i64, i64* %len, align 8
  %arrayidx31 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %47
  store %struct.PyTupleObject* %46, %struct.PyTupleObject** %arrayidx31, align 8
  br label %done

if.end.32:                                        ; preds = %land.lhs.true.22, %land.lhs.true, %while.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %48 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %49 = bitcast %struct.PyTupleObject* %48 to %struct._object*
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 38
  %51 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %52 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %53 = bitcast %struct.PyTupleObject* %52 to %struct._object*
  %54 = bitcast %struct._object* %53 to i8*
  call void %51(i8* %54)
  br label %done

done:                                             ; preds = %if.end.33, %if.then.25
  %55 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting35 = getelementptr inbounds %struct._ts, %struct._ts* %55, i32 0, i32 23
  %56 = load i32, i32* %trash_delete_nesting35, align 4
  %dec36 = add i32 %56, -1
  store i32 %dec36, i32* %trash_delete_nesting35, align 4
  %57 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %57, i32 0, i32 24
  %58 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %58, null
  br i1 %tobool, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %done
  %59 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting38 = getelementptr inbounds %struct._ts, %struct._ts* %59, i32 0, i32 23
  %60 = load i32, i32* %trash_delete_nesting38, align 4
  %cmp39 = icmp sle i32 %60, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.37, %done
  br label %if.end.43

if.else.42:                                       ; preds = %sw.epilog.3
  %61 = load %struct.PyTupleObject*, %struct.PyTupleObject** %op.addr, align 8
  %62 = bitcast %struct.PyTupleObject* %61 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %62)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerepr(%struct.PyTupleObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
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
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %5 = bitcast %struct.PyTupleObject* %4 to %struct._object*
  %call1 = call i32 @Py_ReprEnter(%struct._object* %5)
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %i, align 8
  %6 = load i64, i64* %i, align 8
  %cmp2 = icmp ne i64 %6, 0
  br i1 %cmp2, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %cmp5 = icmp sgt i64 %7, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call7, %cond.true ], [ null, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %overallocate = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8
  store i8 1, i8* %overallocate, align 1
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %9 = bitcast %struct.PyTupleObject* %8 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size9, align 8
  %cmp10 = icmp sgt i64 %10, 1
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size13, align 8
  %sub = sub i64 %13, 1
  %mul = mul i64 3, %sub
  %add = add i64 2, %mul
  %add14 = add i64 %add, 1
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6
  store i64 %add14, i64* %min_length, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end.8
  %min_length15 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6
  store i64 4, i64* %min_length15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %call17 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 40)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  br label %error

if.end.21:                                        ; preds = %if.end.16
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %n, align 8
  %cmp22 = icmp slt i64 %14, %15
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %cmp24 = icmp sgt i64 %16, 0
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %for.body
  %call27 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  br label %error

if.end.31:                                        ; preds = %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %17 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %17, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %18 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %19 = bitcast %struct._Py_atomic_address* %18 to i8*
  %20 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %19, i32 %20)
  %21 = load i32, i32* %order, align 4
  switch i32 %21, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.32, %if.end.32, %if.end.32
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %22 = load i8**, i8*** %volatile_data, align 8
  %23 = load volatile i8*, i8** %22, align 8
  store i8* %23, i8** %result, align 8
  %24 = load i32, i32* %order, align 4
  switch i32 %24, label %sw.default.34 [
    i32 1, label %sw.bb.33
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.33
  ]

sw.bb.33:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.35

sw.default.34:                                    ; preds = %sw.epilog
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %sw.default.34, %sw.bb.33
  %25 = load i8*, i8** %result, align 8
  store i8* %25, i8** %tmp
  %26 = load i8*, i8** %tmp
  %27 = bitcast i8* %26 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 4
  %28 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %29 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp36 = icmp sgt i32 %inc, %29
  br i1 %cmp36, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %sw.epilog.35
  %call38 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true
  br label %error

if.end.40:                                        ; preds = %land.lhs.true, %sw.epilog.35
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %30
  %32 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call41 = call %struct._object* @PyObject_Repr(%struct._object* %32)
  store %struct._object* %call41, %struct._object** %s, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.40
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val43, align 8
  %33 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val43, align 8
  %_value48 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %33, i32 0, i32 0
  store i8** %_value48, i8*** %volatile_data47, align 8
  store i32 0, i32* %order50, align 4
  %34 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val43, align 8
  %35 = bitcast %struct._Py_atomic_address* %34 to i8*
  %36 = load i32, i32* %order50, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %35, i32 %36)
  %37 = load i32, i32* %order50, align 4
  switch i32 %37, label %sw.default.52 [
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.51
    i32 4, label %sw.bb.51
  ]

sw.bb.51:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.53

sw.default.52:                                    ; preds = %do.body
  br label %sw.epilog.53

sw.epilog.53:                                     ; preds = %sw.default.52, %sw.bb.51
  %38 = load i8**, i8*** %volatile_data47, align 8
  %39 = load volatile i8*, i8** %38, align 8
  store i8* %39, i8** %result45, align 8
  %40 = load i32, i32* %order50, align 4
  switch i32 %40, label %sw.default.55 [
    i32 1, label %sw.bb.54
    i32 3, label %sw.bb.54
    i32 4, label %sw.bb.54
  ]

sw.bb.54:                                         ; preds = %sw.epilog.53, %sw.epilog.53, %sw.epilog.53
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.56

sw.default.55:                                    ; preds = %sw.epilog.53
  br label %sw.epilog.56

sw.epilog.56:                                     ; preds = %sw.default.55, %sw.bb.54
  %41 = load i8*, i8** %result45, align 8
  store i8* %41, i8** %tmp57
  %42 = load i8*, i8** %tmp57
  %43 = bitcast i8* %42 to %struct._ts*
  %recursion_depth58 = getelementptr inbounds %struct._ts, %struct._ts* %43, i32 0, i32 4
  %44 = load i32, i32* %recursion_depth58, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %recursion_depth58, align 4
  %45 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp59 = icmp sgt i32 %45, 100
  br i1 %cmp59, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %sw.epilog.56
  %46 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub62 = sub i32 %46, 50
  br label %cond.end.65

cond.false.63:                                    ; preds = %sw.epilog.56
  %47 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %47, 2
  %mul64 = mul i32 3, %shr
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i32 [ %sub62, %cond.true.61 ], [ %mul64, %cond.false.63 ]
  %cmp67 = icmp slt i32 %dec, %cond66
  br i1 %cmp67, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %cond.end.65
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val71, align 8
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val71, align 8
  %_value76 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %48, i32 0, i32 0
  store i8** %_value76, i8*** %volatile_data75, align 8
  store i32 0, i32* %order78, align 4
  %49 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val71, align 8
  %50 = bitcast %struct._Py_atomic_address* %49 to i8*
  %51 = load i32, i32* %order78, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %50, i32 %51)
  %52 = load i32, i32* %order78, align 4
  switch i32 %52, label %sw.default.80 [
    i32 2, label %sw.bb.79
    i32 3, label %sw.bb.79
    i32 4, label %sw.bb.79
  ]

sw.bb.79:                                         ; preds = %if.then.69, %if.then.69, %if.then.69
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.81

sw.default.80:                                    ; preds = %if.then.69
  br label %sw.epilog.81

sw.epilog.81:                                     ; preds = %sw.default.80, %sw.bb.79
  %53 = load i8**, i8*** %volatile_data75, align 8
  %54 = load volatile i8*, i8** %53, align 8
  store i8* %54, i8** %result73, align 8
  %55 = load i32, i32* %order78, align 4
  switch i32 %55, label %sw.default.83 [
    i32 1, label %sw.bb.82
    i32 3, label %sw.bb.82
    i32 4, label %sw.bb.82
  ]

sw.bb.82:                                         ; preds = %sw.epilog.81, %sw.epilog.81, %sw.epilog.81
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.84

sw.default.83:                                    ; preds = %sw.epilog.81
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %sw.default.83, %sw.bb.82
  %56 = load i8*, i8** %result73, align 8
  store i8* %56, i8** %tmp85
  %57 = load i8*, i8** %tmp85
  %58 = bitcast i8* %57 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %58, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.86

if.end.86:                                        ; preds = %sw.epilog.84, %cond.end.65
  br label %do.end

do.end:                                           ; preds = %if.end.86
  %59 = load %struct._object*, %struct._object** %s, align 8
  %cmp87 = icmp eq %struct._object* %59, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.end
  br label %error

if.end.90:                                        ; preds = %do.end
  %60 = load %struct._object*, %struct._object** %s, align 8
  %call91 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %60)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.104

if.then.94:                                       ; preds = %if.end.90
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %61 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %dec97 = add i64 %63, -1
  store i64 %dec97, i64* %ob_refcnt, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.102

if.else.101:                                      ; preds = %do.body.95
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %66(%struct._object* %67)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %error

if.end.104:                                       ; preds = %if.end.90
  br label %do.body.105

do.body.105:                                      ; preds = %if.end.104
  %68 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp107, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %70, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.105
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.105
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %73(%struct._object* %74)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  br label %for.inc

for.inc:                                          ; preds = %do.end.117
  %75 = load i64, i64* %i, align 8
  %inc118 = add i64 %75, 1
  store i64 %inc118, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %overallocate119 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8
  store i8 0, i8* %overallocate119, align 1
  %76 = load i64, i64* %n, align 8
  %cmp120 = icmp sgt i64 %76, 1
  br i1 %cmp120, label %if.then.122, label %if.else.128

if.then.122:                                      ; preds = %for.end
  %call123 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 41)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.122
  br label %error

if.end.127:                                       ; preds = %if.then.122
  br label %if.end.134

if.else.128:                                      ; preds = %for.end
  %call129 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64 2)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.else.128
  br label %error

if.end.133:                                       ; preds = %if.else.128
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.127
  %77 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %78 = bitcast %struct.PyTupleObject* %77 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %78)
  %call135 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer)
  store %struct._object* %call135, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.132, %if.then.126, %do.end.103, %if.then.89, %if.then.39, %if.then.30, %if.then.20
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer)
  %79 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %80 = bitcast %struct.PyTupleObject* %79 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %80)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.end.134, %cond.end, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
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
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i64 1000003, i64* %mult, align 8
  store i64 3430008, i64* %x, align 8
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i64, i64* %len, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %len, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %5, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8
  %6 = load %struct._object*, %struct._object** %5, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %6)
  store i64 %call, i64* %y, align 8
  %7 = load i64, i64* %y, align 8
  %cmp1 = icmp eq i64 %7, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load i64, i64* %x, align 8
  %9 = load i64, i64* %y, align 8
  %xor = xor i64 %8, %9
  %10 = load i64, i64* %mult, align 8
  %mul = mul i64 %xor, %10
  store i64 %mul, i64* %x, align 8
  %11 = load i64, i64* %len, align 8
  %add = add i64 82520, %11
  %12 = load i64, i64* %len, align 8
  %add2 = add i64 %add, %12
  %13 = load i64, i64* %mult, align 8
  %add3 = add i64 %13, %add2
  store i64 %add3, i64* %mult, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i64, i64* %x, align 8
  %add4 = add i64 %14, 97531
  store i64 %add4, i64* %x, align 8
  %15 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %15, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  store i64 -2, i64* %x, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.end
  %16 = load i64, i64* %x, align 8
  store i64 %16, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tupletraverse(%struct.PyTupleObject* %o, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.PyTupleObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %vret = alloca i32, align 4
  store %struct.PyTupleObject* %o, %struct.PyTupleObject** %o.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %3 = load i64, i64* %i, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %7 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.PyTupleObject*, %struct.PyTupleObject** %o.addr, align 8
  %ob_item1 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx2 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item1, i32 0, i64 %8
  %10 = load %struct._object*, %struct._object** %arrayidx2, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %7(%struct._object* %10, i8* %11)
  store i32 %call, i32* %vret, align 4
  %12 = load i32, i32* %vret, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load i32, i32* %vret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %14 = load i32, i32* %retval
  ret i32 %14
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
  %k = alloca i32, align 4
  %cmp20 = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %5, 67108864
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %8, %struct.PyTupleObject** %vt, align 8
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %10, %struct.PyTupleObject** %wt, align 8
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  store i64 %13, i64* %vlen, align 8
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8
  %15 = bitcast %struct.PyTupleObject* %14 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size5, align 8
  store i64 %16, i64* %wlen, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %vlen, align 8
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %wlen, align 8
  %cmp7 = icmp slt i64 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %22
  %24 = load %struct._object*, %struct._object** %arrayidx, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 %25
  %27 = load %struct._object*, %struct._object** %arrayidx9, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %24, %struct._object* %27, i32 2)
  store i32 %call, i32* %k, align 4
  %28 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %28, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  %29 = load i32, i32* %k, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.12
  br label %for.end

if.end.14:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %30 = load i64, i64* %i, align 8
  %inc15 = add i64 %30, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %land.end
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %vlen, align 8
  %cmp16 = icmp sge i64 %31, %32
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %for.end
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %wlen, align 8
  %cmp18 = icmp sge i64 %33, %34
  br i1 %cmp18, label %if.then.19, label %if.end.41

if.then.19:                                       ; preds = %lor.lhs.false.17, %for.end
  %35 = load i32, i32* %op.addr, align 4
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.31
    i32 5, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.then.19
  %36 = load i64, i64* %vlen, align 8
  %37 = load i64, i64* %wlen, align 8
  %cmp21 = icmp slt i64 %36, %37
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %cmp20, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.19
  %38 = load i64, i64* %vlen, align 8
  %39 = load i64, i64* %wlen, align 8
  %cmp23 = icmp sle i64 %38, %39
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, i32* %cmp20, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.19
  %40 = load i64, i64* %vlen, align 8
  %41 = load i64, i64* %wlen, align 8
  %cmp26 = icmp eq i64 %40, %41
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, i32* %cmp20, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.19
  %42 = load i64, i64* %vlen, align 8
  %43 = load i64, i64* %wlen, align 8
  %cmp29 = icmp ne i64 %42, %43
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %cmp20, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.19
  %44 = load i64, i64* %vlen, align 8
  %45 = load i64, i64* %wlen, align 8
  %cmp32 = icmp sgt i64 %44, %45
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* %cmp20, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.then.19
  %46 = load i64, i64* %vlen, align 8
  %47 = load i64, i64* %wlen, align 8
  %cmp35 = icmp sge i64 %46, %47
  %conv36 = zext i1 %cmp35 to i32
  store i32 %conv36, i32* %cmp20, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.19
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.22, %sw.bb
  %48 = load i32, i32* %cmp20, align 4
  %tobool37 = icmp ne i32 %48, 0
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.39

if.else:                                          ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  %49 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt, align 8
  %inc40 = add i64 %50, 1
  store i64 %inc40, i64* %ob_refcnt, align 8
  %51 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.17
  %52 = load i32, i32* %op.addr, align 4
  %cmp42 = icmp eq i32 %52, 2
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %53 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc45 = add i64 %53, 1
  store i64 %inc45, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.41
  %54 = load i32, i32* %op.addr, align 4
  %cmp47 = icmp eq i32 %54, 3
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %55 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc50 = add i64 %55, 1
  store i64 %inc50, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.46
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.PyTupleObject*, %struct.PyTupleObject** %vt, align 8
  %ob_item52 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %57, i32 0, i32 1
  %arrayidx53 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item52, i32 0, i64 %56
  %58 = load %struct._object*, %struct._object** %arrayidx53, align 8
  %59 = load i64, i64* %i, align 8
  %60 = load %struct.PyTupleObject*, %struct.PyTupleObject** %wt, align 8
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %60, i32 0, i32 1
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 %59
  %61 = load %struct._object*, %struct._object** %arrayidx55, align 8
  %62 = load i32, i32* %op.addr, align 4
  %call56 = call %struct._object* @PyObject_RichCompare(%struct._object* %58, %struct._object* %61, i32 %62)
  store %struct._object* %call56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.49, %if.then.44, %if.end.39, %sw.default, %if.then.11, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.tupleiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1070)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyTupleIter_Type)
  %3 = bitcast %struct._object* %call to %struct.tupleiterobject*
  store %struct.tupleiterobject* %3, %struct.tupleiterobject** %it, align 8
  %4 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8
  %cmp1 = icmp eq %struct.tupleiterobject* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %5, i32 0, i32 1
  store i64 0, i64* %it_index, align 8
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %seq.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %10 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %10, i32 0, i32 2
  store %struct.PyTupleObject* %9, %struct.PyTupleObject** %it_seq, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %11 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8
  %12 = bitcast %struct.tupleiterobject* %11 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %14 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %14, 1
  %cmp4 = icmp ne i64 %shr, -2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.6:                                         ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  %16 = load i64, i64* %gc_refs9, align 8
  %and10 = and i64 %16, 1
  %or = or i64 %and10, -6
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2
  store i64 %or, i64* %gc_refs12, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.7
  %18 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0
  store %union._gc_head* %18, %union._gc_head** %gc_next, align 8
  %20 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc14 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  %21 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  store %union._gc_head* %21, %union._gc_head** %gc_prev16, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1
  %25 = load %union._gc_head*, %union._gc_head** %gc_prev18, align 8
  %gc19 = bitcast %union._gc_head* %25 to %struct.anon*
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0
  store %union._gc_head* %23, %union._gc_head** %gc_next20, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %27 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc21 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1
  store %union._gc_head* %26, %union._gc_head** %gc_prev22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.end
  %28 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it, align 8
  %29 = bitcast %struct.tupleiterobject* %28 to %struct._object*
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp ne %struct._typeobject* %0, @PyTuple_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @tuple_subtype_new(%struct._typeobject* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @tuple_new.kwlist, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %arg, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call %struct._object* @PySequence_Tuple(%struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare void @PyObject_GC_Del(i8*) #1

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
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %g88 = alloca %union._gc_head*, align 8
  store %struct._object** %pv, %struct._object*** %pv.addr, align 8
  store i64 %newsize, i64* %newsize.addr, align 8
  %0 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %2, %struct.PyTupleObject** %v, align 8
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %cmp = icmp eq %struct.PyTupleObject* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %5 = bitcast %struct.PyTupleObject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp ne %struct._typeobject* %6, @PyTuple_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp3 = icmp ne i64 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %11 = bitcast %struct.PyTupleObject* %10 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %12, 1
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %13 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* null, %struct._object** %13, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %15 = bitcast %struct.PyTupleObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.7
  br label %if.end

if.else:                                          ; preds = %do.body.7
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 859)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %lor.lhs.false.2
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %25 = bitcast %struct.PyTupleObject* %24 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size15, align 8
  store i64 %26, i64* %oldsize, align 8
  %27 = load i64, i64* %oldsize, align 8
  %28 = load i64, i64* %newsize.addr, align 8
  %cmp16 = icmp eq i64 %27, %28
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %29 = load i64, i64* %oldsize, align 8
  %cmp19 = icmp eq i64 %29, 0
  br i1 %cmp19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.18
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %30 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %31 = bitcast %struct.PyTupleObject* %30 to %struct._object*
  store %struct._object* %31, %struct._object** %_py_decref_tmp22, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %33, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %36(%struct._object* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %38 = load i64, i64* %newsize.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 %38)
  %39 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* %call, %struct._object** %39, align 8
  %40 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %41 = load %struct._object*, %struct._object** %40, align 8
  %cmp32 = icmp eq %struct._object* %41, null
  %cond = select i1 %cmp32, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.18
  %42 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %43 = bitcast %struct.PyTupleObject* %42 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %43, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %44 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %44, 1
  %cmp34 = icmp ne i64 %shr, -2
  br i1 %cmp34, label %if.then.35, label %if.end.57

if.then.35:                                       ; preds = %if.end.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %45 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %46 = bitcast %struct.PyTupleObject* %45 to %union._gc_head*
  %add.ptr37 = getelementptr %union._gc_head, %union._gc_head* %46, i64 -1
  store %union._gc_head* %add.ptr37, %union._gc_head** %g, align 8
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.36
  %47 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc39 = bitcast %union._gc_head* %47 to %struct.anon*
  %gc_refs40 = getelementptr inbounds %struct.anon, %struct.anon* %gc39, i32 0, i32 2
  %48 = load i64, i64* %gc_refs40, align 8
  %and = and i64 %48, 1
  %or = or i64 %and, -4
  %49 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc41 = bitcast %union._gc_head* %49 to %struct.anon*
  %gc_refs42 = getelementptr inbounds %struct.anon, %struct.anon* %gc41, i32 0, i32 2
  store i64 %or, i64* %gc_refs42, align 8
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.38
  %50 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc44 = bitcast %union._gc_head* %50 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc44, i32 0, i32 0
  %51 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %52 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc45 = bitcast %union._gc_head* %52 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc45, i32 0, i32 1
  %53 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc46 = bitcast %union._gc_head* %53 to %struct.anon*
  %gc_next47 = getelementptr inbounds %struct.anon, %struct.anon* %gc46, i32 0, i32 0
  store %union._gc_head* %51, %union._gc_head** %gc_next47, align 8
  %54 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc48 = bitcast %union._gc_head* %54 to %struct.anon*
  %gc_prev49 = getelementptr inbounds %struct.anon, %struct.anon* %gc48, i32 0, i32 1
  %55 = load %union._gc_head*, %union._gc_head** %gc_prev49, align 8
  %56 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc50 = bitcast %union._gc_head* %56 to %struct.anon*
  %gc_next51 = getelementptr inbounds %struct.anon, %struct.anon* %gc50, i32 0, i32 0
  %57 = load %union._gc_head*, %union._gc_head** %gc_next51, align 8
  %gc52 = bitcast %union._gc_head* %57 to %struct.anon*
  %gc_prev53 = getelementptr inbounds %struct.anon, %struct.anon* %gc52, i32 0, i32 1
  store %union._gc_head* %55, %union._gc_head** %gc_prev53, align 8
  %58 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc54 = bitcast %union._gc_head* %58 to %struct.anon*
  %gc_next55 = getelementptr inbounds %struct.anon, %struct.anon* %gc54, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next55, align 8
  br label %do.end.56

do.end.56:                                        ; preds = %do.end.43
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %if.end.33
  %59 = load i64, i64* %newsize.addr, align 8
  store i64 %59, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.57
  %60 = load i64, i64* %i, align 8
  %61 = load i64, i64* %oldsize, align 8
  %cmp58 = icmp slt i64 %60, %61
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.59

do.body.59:                                       ; preds = %for.body
  %62 = load i64, i64* %i, align 8
  %63 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %63, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %62
  %64 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %64, %struct._object** %_py_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp60 = icmp ne %struct._object* %65, null
  br i1 %cmp60, label %if.then.61, label %if.end.75

if.then.61:                                       ; preds = %do.body.59
  %66 = load i64, i64* %i, align 8
  %67 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %ob_item62 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %67, i32 0, i32 1
  %arrayidx63 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item62, i32 0, i64 %66
  store %struct._object* null, %struct._object** %arrayidx63, align 8
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.61
  %68 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp65, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %70, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %73(%struct._object* %74)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %do.body.59
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %for.inc

for.inc:                                          ; preds = %do.end.76
  %75 = load i64, i64* %i, align 8
  %inc = add i64 %75, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %77 = bitcast %struct.PyTupleObject* %76 to %struct.PyVarObject*
  %78 = load i64, i64* %newsize.addr, align 8
  %call77 = call %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %77, i64 %78)
  %79 = bitcast %struct.PyVarObject* %call77 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %79, %struct.PyTupleObject** %sv, align 8
  %80 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8
  %cmp78 = icmp eq %struct.PyTupleObject* %80, null
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end
  %81 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* null, %struct._object** %81, align 8
  %82 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v, align 8
  %83 = bitcast %struct.PyTupleObject* %82 to i8*
  call void @PyObject_GC_Del(i8* %83)
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.end
  %84 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8
  %85 = bitcast %struct.PyTupleObject* %84 to %struct._object*
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  store i64 1, i64* %ob_refcnt81, align 8
  %86 = load i64, i64* %newsize.addr, align 8
  %87 = load i64, i64* %oldsize, align 8
  %cmp82 = icmp sgt i64 %86, %87
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %88 = load i64, i64* %oldsize, align 8
  %89 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8
  %ob_item84 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %89, i32 0, i32 1
  %arrayidx85 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item84, i32 0, i64 %88
  %90 = bitcast %struct._object** %arrayidx85 to i8*
  %91 = load i64, i64* %newsize.addr, align 8
  %92 = load i64, i64* %oldsize, align 8
  %sub = sub i64 %91, %92
  %mul = mul i64 8, %sub
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 %mul, i32 8, i1 false)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %93 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8
  %94 = bitcast %struct.PyTupleObject* %93 to %struct._object*
  %95 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* %94, %struct._object** %95, align 8
  br label %do.body.87

do.body.87:                                       ; preds = %if.end.86
  %96 = load %struct.PyTupleObject*, %struct.PyTupleObject** %sv, align 8
  %97 = bitcast %struct.PyTupleObject* %96 to %union._gc_head*
  %add.ptr89 = getelementptr %union._gc_head, %union._gc_head* %97, i64 -1
  store %union._gc_head* %add.ptr89, %union._gc_head** %g88, align 8
  %98 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc90 = bitcast %union._gc_head* %98 to %struct.anon*
  %gc_refs91 = getelementptr inbounds %struct.anon, %struct.anon* %gc90, i32 0, i32 2
  %99 = load i64, i64* %gc_refs91, align 8
  %shr92 = ashr i64 %99, 1
  %cmp93 = icmp ne i64 %shr92, -2
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %do.body.87
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.95:                                        ; preds = %do.body.87
  br label %do.body.96

do.body.96:                                       ; preds = %if.end.95
  %100 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc97 = bitcast %union._gc_head* %100 to %struct.anon*
  %gc_refs98 = getelementptr inbounds %struct.anon, %struct.anon* %gc97, i32 0, i32 2
  %101 = load i64, i64* %gc_refs98, align 8
  %and99 = and i64 %101, 1
  %or100 = or i64 %and99, -6
  %102 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc101 = bitcast %union._gc_head* %102 to %struct.anon*
  %gc_refs102 = getelementptr inbounds %struct.anon, %struct.anon* %gc101, i32 0, i32 2
  store i64 %or100, i64* %gc_refs102, align 8
  br label %do.end.103

do.end.103:                                       ; preds = %do.body.96
  %103 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %104 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc104 = bitcast %union._gc_head* %104 to %struct.anon*
  %gc_next105 = getelementptr inbounds %struct.anon, %struct.anon* %gc104, i32 0, i32 0
  store %union._gc_head* %103, %union._gc_head** %gc_next105, align 8
  %105 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc106 = bitcast %union._gc_head* %105 to %struct.anon*
  %gc_prev107 = getelementptr inbounds %struct.anon, %struct.anon* %gc106, i32 0, i32 1
  %106 = load %union._gc_head*, %union._gc_head** %gc_prev107, align 8
  %107 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc108 = bitcast %union._gc_head* %107 to %struct.anon*
  %gc_prev109 = getelementptr inbounds %struct.anon, %struct.anon* %gc108, i32 0, i32 1
  store %union._gc_head* %106, %union._gc_head** %gc_prev109, align 8
  %108 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %109 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %gc110 = bitcast %union._gc_head* %109 to %struct.anon*
  %gc_prev111 = getelementptr inbounds %struct.anon, %struct.anon* %gc110, i32 0, i32 1
  %110 = load %union._gc_head*, %union._gc_head** %gc_prev111, align 8
  %gc112 = bitcast %union._gc_head* %110 to %struct.anon*
  %gc_next113 = getelementptr inbounds %struct.anon, %struct.anon* %gc112, i32 0, i32 0
  store %union._gc_head* %108, %union._gc_head** %gc_next113, align 8
  %111 = load %union._gc_head*, %union._gc_head** %g88, align 8
  %112 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc114 = bitcast %union._gc_head* %112 to %struct.anon*
  %gc_prev115 = getelementptr inbounds %struct.anon, %struct.anon* %gc114, i32 0, i32 1
  store %union._gc_head* %111, %union._gc_head** %gc_prev115, align 8
  br label %do.end.116

do.end.116:                                       ; preds = %do.end.103
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.116, %if.then.79, %do.end.31, %if.then.17, %do.end.13
  %113 = load i32, i32* %retval
  ret i32 %113
}

declare %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @PyTuple_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.PyTupleObject*, align 8
  %q = alloca %struct.PyTupleObject*, align 8
  store i32 0, i32* %freelist_size, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %idxprom
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8
  store %struct.PyTupleObject* %2, %struct.PyTupleObject** %p, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %freelist_size, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %freelist_size, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 %idxprom3
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %arrayidx4, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr [20 x i32], [20 x i32]* @numfree, i32 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8
  %tobool = icmp ne %struct.PyTupleObject* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8
  store %struct.PyTupleObject* %9, %struct.PyTupleObject** %q, align 8
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %p, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %11 = load %struct._object*, %struct._object** %arrayidx7, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %12, %struct.PyTupleObject** %p, align 8
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %q, align 8
  %14 = bitcast %struct.PyTupleObject* %13 to i8*
  call void @PyObject_GC_Del(i8* %14)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %freelist_size, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @PyTuple_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct.PyTupleObject* null, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i32 0, i64 0), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %call = call i32 @PyTuple_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tupleiter_dealloc(%struct.tupleiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %1 = bitcast %struct.tupleiterobject* %0 to %union._gc_head*
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
  %14 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %14, i32 0, i32 2
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  %16 = bitcast %struct.PyTupleObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %25 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %26 = bitcast %struct.tupleiterobject* %25 to i8*
  call void @PyObject_GC_Del(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tupleiter_traverse(%struct.tupleiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyTupleObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %3, i32 0, i32 2
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8
  %5 = bitcast %struct.PyTupleObject* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_next(%struct.tupleiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %seq = alloca %struct.PyTupleObject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  store %struct.PyTupleObject* %1, %struct.PyTupleObject** %seq, align 8
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8
  %cmp = icmp eq %struct.PyTupleObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %3, i32 0, i32 1
  %4 = load i64, i64* %it_index, align 8
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8
  %6 = bitcast %struct.PyTupleObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %4, %7
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index3 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %8, i32 0, i32 1
  %9 = load i64, i64* %it_index3, align 8
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %11, %struct._object** %item, align 8
  %12 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index4 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %12, i32 0, i32 1
  %13 = load i64, i64* %it_index4, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %it_index4, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc5 = add i64 %15, 1
  store i64 %inc5, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %seq, align 8
  %18 = bitcast %struct.PyTupleObject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %25 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq11 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %25, i32 0, i32 2
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %it_seq11, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #4 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #1

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #1

declare i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter*, i8*, i64) #1

declare i32 @_Py_CheckRecursiveCall(i8*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #1

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #1

; Function Attrs: nounwind uwtable
define internal i64 @tuplelength(%struct.PyTupleObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyTupleObject*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
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
  %v = alloca %struct._object*, align 8
  %v26 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %10 = load %struct._object*, %struct._object** %bb.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size2, align 8
  %add = add i64 %9, %13
  store i64 %add, i64* %size, align 8
  %14 = load i64, i64* %size, align 8
  %cmp3 = icmp slt i64 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %15 = load i64, i64* %size, align 8
  %call7 = call %struct._object* @PyTuple_New(i64 %15)
  %16 = bitcast %struct._object* %call7 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %16, %struct.PyTupleObject** %np, align 8
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %cmp8 = icmp eq %struct.PyTupleObject* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %src, align 8
  %19 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i32 0
  store %struct._object** %arraydecay12, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %22 = bitcast %struct.PyTupleObject* %21 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size13, align 8
  %cmp14 = icmp slt i64 %20, %23
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8
  %25 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %25, i64 %24
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %26, %struct._object** %v, align 8
  %27 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %29 = load %struct._object*, %struct._object** %v, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx15 = getelementptr %struct._object*, %struct._object** %31, i64 %30
  store %struct._object* %29, %struct._object** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, i64* %i, align 8
  %inc16 = add i64 %32, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._object*, %struct._object** %bb.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arraydecay18 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i32 0
  store %struct._object** %arraydecay18, %struct._object*** %src, align 8
  %35 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i32 0
  %36 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %37 = bitcast %struct.PyTupleObject* %36 to %struct.PyVarObject*
  %ob_size21 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size21, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay20, i64 %38
  store %struct._object** %add.ptr, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.31, %for.end
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._object*, %struct._object** %bb.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*
  %42 = bitcast %struct.PyTupleObject* %41 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %42, i32 0, i32 1
  %43 = load i64, i64* %ob_size23, align 8
  %cmp24 = icmp slt i64 %39, %43
  br i1 %cmp24, label %for.body.25, label %for.end.33

for.body.25:                                      ; preds = %for.cond.22
  %44 = load i64, i64* %i, align 8
  %45 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx27 = getelementptr %struct._object*, %struct._object** %45, i64 %44
  %46 = load %struct._object*, %struct._object** %arrayidx27, align 8
  store %struct._object* %46, %struct._object** %v26, align 8
  %47 = load %struct._object*, %struct._object** %v26, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt28, align 8
  %inc29 = add i64 %48, 1
  store i64 %inc29, i64* %ob_refcnt28, align 8
  %49 = load %struct._object*, %struct._object** %v26, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx30 = getelementptr %struct._object*, %struct._object** %51, i64 %50
  store %struct._object* %49, %struct._object** %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.25
  %52 = load i64, i64* %i, align 8
  %inc32 = add i64 %52, 1
  store i64 %inc32, i64* %i, align 8
  br label %for.cond.22

for.end.33:                                       ; preds = %for.cond.22
  %53 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %54 = bitcast %struct.PyTupleObject* %53 to %struct._object*
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.33, %if.then.9, %if.then.4, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
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
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp eq i64 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %6 = bitcast %struct.PyTupleObject* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %7, @PyTuple_Type
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %9 = bitcast %struct.PyTupleObject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %14 = bitcast %struct.PyTupleObject* %13 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size7, align 8
  %cmp8 = icmp eq i64 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %lor.lhs.false
  %16 = load i64, i64* %n.addr, align 8
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %18 = bitcast %struct.PyTupleObject* %17 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size12, align 8
  %div = sdiv i64 9223372036854775807, %19
  %cmp13 = icmp sgt i64 %16, %div
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %call15 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %20 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %21 = bitcast %struct.PyTupleObject* %20 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size17, align 8
  %23 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %22, %23
  store i64 %mul, i64* %size, align 8
  %24 = load i64, i64* %size, align 8
  %call18 = call %struct._object* @PyTuple_New(i64 %24)
  %25 = bitcast %struct._object* %call18 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %25, %struct.PyTupleObject** %np, align 8
  %26 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %cmp19 = icmp eq %struct.PyTupleObject* %26, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  %27 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %p, align 8
  %28 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arraydecay23 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i32 0
  store %struct._object** %arraydecay23, %struct._object*** %items, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end.21
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %n.addr, align 8
  %cmp24 = icmp slt i64 %29, %30
  br i1 %cmp24, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %31 = load i64, i64* %j, align 8
  %32 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %33 = bitcast %struct.PyTupleObject* %32 to %struct.PyVarObject*
  %ob_size26 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size26, align 8
  %cmp27 = icmp slt i64 %31, %34
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  %35 = load i64, i64* %j, align 8
  %36 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %36, i64 %35
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  %38 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %37, %struct._object** %38, align 8
  %39 = load %struct._object**, %struct._object*** %p, align 8
  %40 = load %struct._object*, %struct._object** %39, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %41, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  %42 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %42, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %43 = load i64, i64* %j, align 8
  %inc31 = add i64 %43, 1
  store i64 %inc31, i64* %j, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %44 = load i64, i64* %i, align 8
  %inc33 = add i64 %44, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %45 = load %struct.PyTupleObject*, %struct.PyTupleObject** %np, align 8
  %46 = bitcast %struct.PyTupleObject* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.34, %if.then.20, %if.then.14, %if.then.9, %if.then.5
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleitem(%struct.PyTupleObject* %a, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %i.addr, align 8
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %6
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load i64, i64* %i.addr, align 8
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %10
  %12 = load %struct._object*, %struct._object** %arrayidx3, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @tuplecontains(%struct.PyTupleObject* %a, %struct._object* %el) #0 {
entry:
  %a.addr = alloca %struct.PyTupleObject*, align 8
  %el.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cmp = alloca i32, align 4
  store %struct.PyTupleObject* %a, %struct.PyTupleObject** %a.addr, align 8
  store %struct._object* %el, %struct._object** %el.addr, align 8
  store i64 0, i64* %i, align 8
  store i32 0, i32* %cmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cmp, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %3 = bitcast %struct.PyTupleObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp slt i64 %1, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct._object*, %struct._object** %el.addr, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %7
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %6, %struct._object* %9, i32 2)
  store i32 %call, i32* %cmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %cmp, align 4
  ret i32 %11
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplesubscript(%struct.PyTupleObject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
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
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %item.addr, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %7, %struct._object* %8)
  store i64 %call, i64* %i, align 8
  %9 = load i64, i64* %i, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %if.then
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %16 = load i64, i64* %i, align 8
  %call11 = call %struct._object* @tupleitem(%struct.PyTupleObject* %15, i64 %16)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %18, @PySlice_Type
  br i1 %cmp13, label %if.then.14, label %if.else.48

if.then.14:                                       ; preds = %if.else
  %19 = load %struct._object*, %struct._object** %item.addr, align 8
  %20 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %21 = bitcast %struct.PyTupleObject* %20 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size16, align 8
  %call17 = call i32 @PySlice_GetIndicesEx(%struct._object* %19, i64 %22, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.then.14
  %23 = load i64, i64* %slicelength, align 8
  %cmp21 = icmp sle i64 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.20
  %call23 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

if.else.24:                                       ; preds = %if.end.20
  %24 = load i64, i64* %start, align 8
  %cmp25 = icmp eq i64 %24, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.35

land.lhs.true.26:                                 ; preds = %if.else.24
  %25 = load i64, i64* %step, align 8
  %cmp27 = icmp eq i64 %25, 1
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.35

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %26 = load i64, i64* %slicelength, align 8
  %27 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %28 = bitcast %struct.PyTupleObject* %27 to %struct.PyVarObject*
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size29, align 8
  %cmp30 = icmp eq i64 %26, %29
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %30 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %31 = bitcast %struct.PyTupleObject* %30 to %struct._object*
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %cmp33 = icmp eq %struct._typeobject* %32, @PyTuple_Type
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.31
  %33 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %34 = bitcast %struct.PyTupleObject* %33 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %36 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %37 = bitcast %struct.PyTupleObject* %36 to %struct._object*
  store %struct._object* %37, %struct._object** %retval
  br label %return

if.else.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.28, %land.lhs.true.26, %if.else.24
  %38 = load i64, i64* %slicelength, align 8
  %call36 = call %struct._object* @PyTuple_New(i64 %38)
  store %struct._object* %call36, %struct._object** %result, align 8
  %39 = load %struct._object*, %struct._object** %result, align 8
  %tobool37 = icmp ne %struct._object* %39, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.else.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.else.35
  %40 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %src, align 8
  %41 = load %struct._object*, %struct._object** %result, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1
  %arraydecay41 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i32 0
  store %struct._object** %arraydecay41, %struct._object*** %dest, align 8
  %43 = load i64, i64* %start, align 8
  store i64 %43, i64* %cur, align 8
  store i64 0, i64* %i15, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %44 = load i64, i64* %i15, align 8
  %45 = load i64, i64* %slicelength, align 8
  %cmp42 = icmp slt i64 %44, %45
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i64, i64* %cur, align 8
  %47 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %47, i64 %46
  %48 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %48, %struct._object** %it, align 8
  %49 = load %struct._object*, %struct._object** %it, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt43, align 8
  %inc44 = add i64 %50, 1
  store i64 %inc44, i64* %ob_refcnt43, align 8
  %51 = load %struct._object*, %struct._object** %it, align 8
  %52 = load i64, i64* %i15, align 8
  %53 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %53, i64 %52
  store %struct._object* %51, %struct._object** %arrayidx45, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i64, i64* %step, align 8
  %55 = load i64, i64* %cur, align 8
  %add46 = add i64 %55, %54
  store i64 %add46, i64* %cur, align 8
  %56 = load i64, i64* %i15, align 8
  %inc47 = add i64 %56, 1
  store i64 %inc47, i64* %i15, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %57, %struct._object** %retval
  br label %return

if.else.48:                                       ; preds = %if.else
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %59 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 1
  %61 = load i8*, i8** %tp_name, align 8
  %call50 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i8* %61)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.48, %for.end, %if.then.38, %if.then.34, %if.then.22, %if.then.19, %if.end.10, %if.then.7
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_getnewargs(%struct.PyTupleObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyTupleObject*, align 8
  store %struct.PyTupleObject* %v, %struct.PyTupleObject** %v.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %v.addr, align 8
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @tupleslice(%struct.PyTupleObject* %0, i64 0, i64 %3)
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._object* %call)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_sizeof(%struct.PyTupleObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %res = alloca i64, align 8
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 2), align 8
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %mul = mul i64 %3, 8
  %add = add i64 %0, %mul
  store i64 %add, i64* %res, align 8
  %4 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  ret %struct._object* %call
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
  %cmp18 = alloca i32, align 4
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %stop, align 8
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object** %v, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %start, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %stop)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %start, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %6 = bitcast %struct.PyTupleObject* %5 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size2, align 8
  %8 = load i64, i64* %start, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %start, align 8
  %9 = load i64, i64* %start, align 8
  %cmp3 = icmp slt i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i64 0, i64* %start, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %10 = load i64, i64* %stop, align 8
  %cmp7 = icmp slt i64 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size9, align 8
  %14 = load i64, i64* %stop, align 8
  %add10 = add i64 %14, %13
  store i64 %add10, i64* %stop, align 8
  %15 = load i64, i64* %stop, align 8
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i64 0, i64* %stop, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %16 = load i64, i64* %start, align 8
  store i64 %16, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %stop, align 8
  %cmp15 = icmp slt i64 %17, %18
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %21 = bitcast %struct.PyTupleObject* %20 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp slt i64 %19, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %24
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8
  %27 = load %struct._object*, %struct._object** %v, align 8
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %26, %struct._object* %27, i32 2)
  store i32 %call19, i32* %cmp18, align 4
  %28 = load i32, i32* %cmp18, align 4
  %cmp20 = icmp sgt i32 %28, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %29)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %30 = load i32, i32* %cmp18, align 4
  %cmp23 = icmp slt i32 %30, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %32 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.21, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
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
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %2 = bitcast %struct.PyTupleObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %6, %struct._object* %7, i32 2)
  store i32 %call, i32* %cmp1, align 4
  %8 = load i32, i32* %cmp1, align 4
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i64, i64* %count, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %count, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %cmp1, align 4
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load i64, i64* %i, align 8
  %inc6 = add i64 %11, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %count, align 8
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @tuple_new(%struct._typeobject* @PyTuple_Type, %struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 36
  %4 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %n, align 8
  %call5 = call %struct._object* %4(%struct._typeobject* %5, i64 %8)
  store %struct._object* %call5, %struct._object** %newobj, align 8
  %9 = load %struct._object*, %struct._object** %newobj, align 8
  %cmp6 = icmp eq %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %n, align 8
  %cmp9 = icmp slt i64 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load %struct._object*, %struct._object** %tmp, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %12
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %15, %struct._object** %item, align 8
  %16 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %18 = load %struct._object*, %struct._object** %item, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load %struct._object*, %struct._object** %newobj, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 %19
  store %struct._object* %18, %struct._object** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %inc12 = add i64 %22, 1
  store i64 %inc12, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %23 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %30 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PySequence_Tuple(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_len(%struct.tupleiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyTupleObject* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8
  %4 = bitcast %struct.PyTupleObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %6 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %6, i32 0, i32 1
  %7 = load i64, i64* %it_index, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_reduce(%struct.tupleiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
  %0 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyTupleObject* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %2 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq1, align 8
  %4 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %4, i32 0, i32 1
  %5 = load i64, i64* %it_index, align 8
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), %struct._object* %call, %struct.PyTupleObject* %3, i64 %5)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* %call3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_setstate(%struct.tupleiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.tupleiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.tupleiterobject* %it, %struct.tupleiterobject** %it.addr, align 8
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
  %2 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8
  %cmp2 = icmp ne %struct.PyTupleObject* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i64 0, i64* %index, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.3
  %5 = load i64, i64* %index, align 8
  %6 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %6, i32 0, i32 2
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq6, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp sgt i64 %5, %9
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_seq9 = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %10, i32 0, i32 2
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq9, align 8
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  store i64 %13, i64* %index, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.tupleiterobject*, %struct.tupleiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %15, i32 0, i32 1
  store i64 %14, i64* %it_index, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139703}
!2 = !{i32 139543}
