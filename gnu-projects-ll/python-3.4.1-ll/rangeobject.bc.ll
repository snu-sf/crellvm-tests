; ModuleID = './rangeobject.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.rangeobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.longrangeiterobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.rangeiterobject = type { %struct._object, i64, i64, i64, i64 }
%struct.PySliceObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [6 x i8] c"range\00", align 1
@range_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.rangeobject*)* @range_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.rangeobject*, i64)* @range_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.rangeobject*, %struct._object*)* @range_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@range_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.rangeobject*)* @range_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeobject*, %struct._object*)* @range_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@range_doc = internal global [137 x i8] c"range(stop) -> range object\0Arange(start, stop[, step]) -> range object\0A\0AReturn a virtual sequence of numbers from start to stop by step.\00", align 16
@range_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @range_reverse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @reverse_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeobject*, %struct._object*)* @range_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeobject*, %struct._object*)* @range_count to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @count_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeobject*, %struct._object*)* @range_index to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @index_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@range_members = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 16, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 16, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 16, i64 32, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@PyRange_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.rangeobject*)* @range_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.rangeobject*)* @range_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @range_as_sequence, %struct.PyMappingMethods* @range_as_mapping, i64 (%struct._object*)* bitcast (i64 (%struct.rangeobject*)* @range_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @range_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @range_richcompare, i64 0, %struct._object* (%struct._object*)* @range_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @range_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @range_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @range_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"range_iterator\00", align 1
@rangeiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeiterobject*)* @rangeiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeiterobject*)* @rangeiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rangeiterobject*, %struct._object*)* @rangeiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyRangeIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (i8*)* @PyObject_Free to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.rangeiterobject*)* @rangeiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @rangeiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rangeiter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"longrange_iterator\00", align 1
@longrangeiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.longrangeiterobject*)* @longrangeiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyLongRangeIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.longrangeiterobject*)* @longrangeiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.longrangeiterobject*)* @longrangeiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @longrangeiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"range(%R, %R)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"range(%R, %R, %R)\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"range object index out of range\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyBool_Type = external global %struct._typeobject, align 8
@PySlice_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"range indices must be integers or slices, not %.200s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"__reversed__\00", align 1
@reverse_doc = internal global [27 x i8] c"Return a reverse iterator.\00", align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count_doc = internal global [77 x i8] c"rangeobject.count(value) -> integer -- return number of occurrences of value\00", align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index_doc = internal global [125 x i8] c"rangeobject.index(value, [start, [stop]]) -> integer -- return index of value.\0ARaise ValueError if the value is not present.\00", align 16
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [49 x i8] c"range too large to represent as a range_iterator\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"(O(OOO))\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"%R is not in range\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"range()\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"range() arg 3 must not be zero\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.20 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"N(N)i\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"rangeiter()\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"lll;rangeiter() requires 3 int arguments\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"N(N)O\00", align 1

; Function Attrs: nounwind uwtable
define internal void @range_dealloc(%struct.rangeobject* %r) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp2 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp2, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt3, align 8
  %dec4 = add i64 %11, -1
  store i64 %dec4, i64* %ob_refcnt3, align 8
  %cmp5 = icmp ne i64 %dec4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10

if.else.7:                                        ; preds = %do.body.1
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %16 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %24 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %24, i32 0, i32 4
  %25 = load %struct._object*, %struct._object** %length, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp24, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %27, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %30(%struct._object* %31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %32 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %33 = bitcast %struct.rangeobject* %32 to i8*
  call void @PyObject_Free(i8* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_repr(%struct.rangeobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %istep = alloca i64, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %step, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %1, %struct._object* null)
  store i64 %call, i64* %istep, align 8
  %2 = load i64, i64* %istep, align 8
  %cmp = icmp ne i64 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %istep, align 8
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %4 = load i64, i64* %istep, align 8
  %cmp3 = icmp eq i64 %4, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %start, align 8
  %7 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %stop, align 8
  %call5 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct._object* %6, %struct._object* %8)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start6 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %start6, align 8
  %11 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop7 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %stop7, align 8
  %13 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step8 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %13, i32 0, i32 3
  %14 = load %struct._object*, %struct._object** %step8, align 8
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct._object* %10, %struct._object* %12, %struct._object* %14)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.4
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal i64 @range_hash(%struct.rangeobject* %r) #0 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %t = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %cmp_result = alloca i32, align 4
  %one = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store i64 -1, i64* %result, align 8
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %t, align 8
  %0 = load %struct._object*, %struct._object** %t, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %length, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %4, i32 0, i32 4
  %5 = load %struct._object*, %struct._object** %length1, align 8
  %6 = load %struct._object*, %struct._object** %t, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %5, %struct._object** %arrayidx, align 8
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length2 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 4
  %9 = load %struct._object*, %struct._object** %length2, align 8
  %call3 = call i32 @PyObject_Not(%struct._object* %9)
  store i32 %call3, i32* %cmp_result, align 4
  %10 = load i32, i32* %cmp_result, align 4
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %end

if.end.5:                                         ; preds = %if.end
  %11 = load i32, i32* %cmp_result, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc8 = add i64 %12, 1
  store i64 %inc8, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc9 = add i64 %13, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %14 = load %struct._object*, %struct._object** %t, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 1
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx11, align 8
  %16 = load %struct._object*, %struct._object** %t, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx13, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.end.5
  %18 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %start, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt14, align 8
  %inc15 = add i64 %20, 1
  store i64 %inc15, i64* %ob_refcnt14, align 8
  %21 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start16 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %start16, align 8
  %23 = load %struct._object*, %struct._object** %t, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 1
  store %struct._object* %22, %struct._object** %arrayidx18, align 8
  %call19 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call19, %struct._object** %one, align 8
  %25 = load %struct._object*, %struct._object** %one, align 8
  %tobool20 = icmp ne %struct._object* %25, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.else
  br label %end

if.end.22:                                        ; preds = %if.else
  %26 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length23 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %length23, align 8
  %28 = load %struct._object*, %struct._object** %one, align 8
  %call24 = call i32 @PyObject_RichCompareBool(%struct._object* %27, %struct._object* %28, i32 2)
  store i32 %call24, i32* %cmp_result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %29 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt25, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt25, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else.28:                                       ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %36 = load i32, i32* %cmp_result, align 4
  %cmp30 = icmp eq i32 %36, -1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end
  br label %end

if.end.32:                                        ; preds = %do.end
  %37 = load i32, i32* %cmp_result, align 4
  %cmp33 = icmp eq i32 %37, 1
  br i1 %cmp33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.32
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc35 = add i64 %38, 1
  store i64 %inc35, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %39 = load %struct._object*, %struct._object** %t, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 2
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx37, align 8
  br label %if.end.44

if.else.38:                                       ; preds = %if.end.32
  %41 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %41, i32 0, i32 3
  %42 = load %struct._object*, %struct._object** %step, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt39, align 8
  %inc40 = add i64 %43, 1
  store i64 %inc40, i64* %ob_refcnt39, align 8
  %44 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step41 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %44, i32 0, i32 3
  %45 = load %struct._object*, %struct._object** %step41, align 8
  %46 = load %struct._object*, %struct._object** %t, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 2
  store %struct._object* %45, %struct._object** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.38, %if.then.34
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.7
  %48 = load %struct._object*, %struct._object** %t, align 8
  %call46 = call i64 @PyObject_Hash(%struct._object* %48)
  store i64 %call46, i64* %result, align 8
  br label %end

end:                                              ; preds = %if.end.45, %if.then.31, %if.then.21, %if.then.4
  br label %do.body.47

do.body.47:                                       ; preds = %end
  %49 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp48, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %51, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %54(%struct._object* %55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %56 = load i64, i64* %result, align 8
  store i64 %56, i64* %retval
  br label %return

return:                                           ; preds = %do.end.57, %if.then
  %57 = load i64, i64* %retval
  ret i64 %57
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyRange_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %op.addr, align 4
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.11
    i32 5, label %sw.bb.11
    i32 0, label %sw.bb.11
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.rangeobject*
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.rangeobject*
  %call = call i32 @range_equals(%struct.rangeobject* %5, %struct.rangeobject* %7)
  store i32 %call, i32* %result, align 4
  %8 = load i32, i32* %result, align 4
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  %9 = load i32, i32* %op.addr, align 4
  %cmp4 = icmp eq i32 %9, 3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %10 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %result, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %11 = load i32, i32* %result, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %12 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc9 = add i64 %12, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %13 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc10 = add i64 %13, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

sw.bb.11:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc12 = add i64 %14, 1
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %call13 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.11, %if.else, %if.then.8, %if.then.2, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %r = alloca %struct.rangeobject*, align 8
  %it = alloca %struct.longrangeiterobject*, align 8
  %lstart = alloca i64, align 8
  %lstop = alloca i64, align 8
  %lstep = alloca i64, align 8
  %int_it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.rangeobject*
  store %struct.rangeobject* %1, %struct.rangeobject** %r, align 8
  %2 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %start, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  store i64 %call, i64* %lstart, align 8
  %4 = load i64, i64* %lstart, align 8
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Clear()
  br label %long_range

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %stop, align 8
  %call2 = call i64 @PyLong_AsLong(%struct._object* %6)
  store i64 %call2, i64* %lstop, align 8
  %7 = load i64, i64* %lstop, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.4
  call void @PyErr_Clear()
  br label %long_range

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %step, align 8
  %call9 = call i64 @PyLong_AsLong(%struct._object* %9)
  store i64 %call9, i64* %lstep, align 8
  %10 = load i64, i64* %lstep, align 8
  %cmp10 = icmp eq i64 %10, -1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool13 = icmp ne %struct._object* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  call void @PyErr_Clear()
  br label %long_range

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end.8
  %11 = load i64, i64* %lstart, align 8
  %12 = load i64, i64* %lstop, align 8
  %13 = load i64, i64* %lstep, align 8
  %call16 = call %struct._object* @fast_range_iter(i64 %11, i64 %12, i64 %13)
  store %struct._object* %call16, %struct._object** %int_it, align 8
  %14 = load %struct._object*, %struct._object** %int_it, align 8
  %cmp17 = icmp eq %struct._object* %14, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call19 = call i32 @PyErr_ExceptionMatches(%struct._object* %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  call void @PyErr_Clear()
  br label %long_range

if.end.22:                                        ; preds = %land.lhs.true.18, %if.end.15
  %16 = load %struct._object*, %struct._object** %int_it, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

long_range:                                       ; preds = %if.then.21, %if.then.14, %if.then.7, %if.then
  %call23 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyLongRangeIter_Type)
  %17 = bitcast %struct._object* %call23 to %struct.longrangeiterobject*
  store %struct.longrangeiterobject* %17, %struct.longrangeiterobject** %it, align 8
  %18 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %cmp24 = icmp eq %struct.longrangeiterobject* %18, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %long_range
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %long_range
  %19 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %start27 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %start27, align 8
  %21 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %start28 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %21, i32 0, i32 2
  store %struct._object* %20, %struct._object** %start28, align 8
  %22 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %step29 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %step29, align 8
  %24 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %step30 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %24, i32 0, i32 3
  store %struct._object* %23, %struct._object** %step30, align 8
  %25 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %25, i32 0, i32 4
  %26 = load %struct._object*, %struct._object** %length, align 8
  %27 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %27, i32 0, i32 4
  store %struct._object* %26, %struct._object** %len, align 8
  %28 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %start31 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %start31, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %step32 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %31, i32 0, i32 3
  %32 = load %struct._object*, %struct._object** %step32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt33, align 8
  %inc34 = add i64 %33, 1
  store i64 %inc34, i64* %ob_refcnt33, align 8
  %34 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %len35 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %34, i32 0, i32 4
  %35 = load %struct._object*, %struct._object** %len35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt36, align 8
  %inc37 = add i64 %36, 1
  store i64 %inc37, i64* %ob_refcnt36, align 8
  %call38 = call %struct._object* @PyLong_FromLong(i64 0)
  %37 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %37, i32 0, i32 1
  store %struct._object* %call38, %struct._object** %index, align 8
  %38 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %index39 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %index39, align 8
  %tobool40 = icmp ne %struct._object* %39, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.26
  br label %create_failure

if.end.42:                                        ; preds = %if.end.26
  %40 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %41 = bitcast %struct.longrangeiterobject* %40 to %struct._object*
  store %struct._object* %41, %struct._object** %retval
  br label %return

create_failure:                                   ; preds = %if.then.41
  br label %do.body

do.body:                                          ; preds = %create_failure
  %42 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %43 = bitcast %struct.longrangeiterobject* %42 to %struct._object*
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt43, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %ob_refcnt43, align 8
  %cmp44 = icmp ne i64 %dec, 0
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %do.body
  br label %if.end.46

if.else:                                          ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %48(%struct._object* %49)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.46
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.42, %if.then.25, %if.end.22
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.rangeobject*, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_xdecref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_xdecref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %start, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %step, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i64 @PyTuple_Size(%struct._object* %1)
  %cmp = icmp sle i64 %call1, 1
  br i1 %cmp, label %if.then.2, label %if.else.44

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %stop)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %stop, align 8
  %call7 = call %struct._object* @PyNumber_Index(%struct._object* %3)
  store %struct._object* %call7, %struct._object** %stop, align 8
  %4 = load %struct._object*, %struct._object** %stop, align 8
  %tobool8 = icmp ne %struct._object* %4, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %call11 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call11, %struct._object** %start, align 8
  %5 = load %struct._object*, %struct._object** %start, align 8
  %tobool12 = icmp ne %struct._object* %5, null
  br i1 %tobool12, label %if.end.17, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %6 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %call18 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call18, %struct._object** %step, align 8
  %13 = load %struct._object*, %struct._object** %step, align 8
  %tobool19 = icmp ne %struct._object* %13, null
  br i1 %tobool19, label %if.end.43, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %14 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp22, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %16, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %19(%struct._object* %20)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %21 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp33, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %23, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %26(%struct._object* %27)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.17
  br label %if.end.94

if.else.44:                                       ; preds = %if.end
  %28 = load %struct._object*, %struct._object** %args.addr, align 8
  %call45 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 2, i64 3, %struct._object** %start, %struct._object** %stop, %struct._object** %step)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.else.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %if.else.44
  %29 = load %struct._object*, %struct._object** %start, align 8
  %call49 = call %struct._object* @PyNumber_Index(%struct._object* %29)
  store %struct._object* %call49, %struct._object** %start, align 8
  %30 = load %struct._object*, %struct._object** %start, align 8
  %tobool50 = icmp ne %struct._object* %30, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %31 = load %struct._object*, %struct._object** %stop, align 8
  %call53 = call %struct._object* @PyNumber_Index(%struct._object* %31)
  store %struct._object* %call53, %struct._object** %stop, align 8
  %32 = load %struct._object*, %struct._object** %stop, align 8
  %tobool54 = icmp ne %struct._object* %32, null
  br i1 %tobool54, label %if.end.67, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %33 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp57, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %35, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %38(%struct._object* %39)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.end.52
  %40 = load %struct._object*, %struct._object** %step, align 8
  %call68 = call %struct._object* @validate_step(%struct._object* %40)
  store %struct._object* %call68, %struct._object** %step, align 8
  %41 = load %struct._object*, %struct._object** %step, align 8
  %tobool69 = icmp ne %struct._object* %41, null
  br i1 %tobool69, label %if.end.93, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %42 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp72, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %44, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %47(%struct._object* %48)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %49 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp83, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %51, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %54(%struct._object* %55)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.93:                                        ; preds = %if.end.67
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.43
  %56 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %57 = load %struct._object*, %struct._object** %start, align 8
  %58 = load %struct._object*, %struct._object** %stop, align 8
  %59 = load %struct._object*, %struct._object** %step, align 8
  %call95 = call %struct.rangeobject* @make_range_object(%struct._typeobject* %56, %struct._object* %57, %struct._object* %58, %struct._object* %59)
  store %struct.rangeobject* %call95, %struct.rangeobject** %obj, align 8
  %60 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %cmp96 = icmp ne %struct.rangeobject* %60, null
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.94
  %61 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %62 = bitcast %struct.rangeobject* %61 to %struct._object*
  store %struct._object* %62, %struct._object** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.94
  br label %do.body.99

do.body.99:                                       ; preds = %if.end.98
  %63 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %63, %struct._object** %_py_xdecref_tmp, align 8
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp100 = icmp ne %struct._object* %64, null
  br i1 %cmp100, label %if.then.101, label %if.end.113

if.then.101:                                      ; preds = %do.body.99
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp103, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %67, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %70(%struct._object* %71)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.99
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %72 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %72, %struct._object** %_py_xdecref_tmp116, align 8
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %73, null
  br i1 %cmp117, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %do.body.115
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp120, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %76, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %79(%struct._object* %80)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.body.115
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %81 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %81, %struct._object** %_py_xdecref_tmp133, align 8
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  %cmp134 = icmp ne %struct._object* %82, null
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.body.132
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp137, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %85, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %88(%struct._object* %89)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.132
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.148, %if.then.97, %do.end.92, %do.end.66, %if.then.51, %if.then.47, %do.end.42, %do.end, %if.then.9, %if.then.5, %if.then
  %90 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %90
}

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_next(%struct.rangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeiterobject*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8
  %0 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %index, align 8
  %2 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %2, i32 0, i32 4
  %3 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %4, i32 0, i32 2
  %5 = load i64, i64* %start, align 8
  %6 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %index1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %6, i32 0, i32 1
  %7 = load i64, i64* %index1, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %index1, align 8
  %8 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %8, i32 0, i32 3
  %9 = load i64, i64* %step, align 8
  %mul = mul i64 %7, %9
  %add = add i64 %5, %mul
  %call = call %struct._object* @PyLong_FromLong(i64 %add)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i64* %start, i64* %stop, i64* %step)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i64, i64* %start, align 8
  %3 = load i64, i64* %stop, align 8
  %4 = load i64, i64* %step, align 8
  %call5 = call %struct._object* @fast_range_iter(i64 %2, i64 %3, i64 %4)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal void @longrangeiter_dealloc(%struct.longrangeiterobject* %r) #0 {
entry:
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %index, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
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
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %10 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp7, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp11, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %15, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %18(%struct._object* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %20 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp24, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %22, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp28, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %25, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %28(%struct._object* %29)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %30 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %30, i32 0, i32 4
  %31 = load %struct._object*, %struct._object** %len, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp41, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %32, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp45, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %35, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %38(%struct._object* %39)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %40 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %41 = bitcast %struct.longrangeiterobject* %40 to i8*
  call void @PyObject_Free(i8* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_next(%struct.longrangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %one = alloca %struct._object*, align 8
  %product = alloca %struct._object*, align 8
  %new_index = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8
  %0 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %index, align 8
  %2 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %len, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %3, i32 0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call1, %struct._object** %one, align 8
  %4 = load %struct._object*, %struct._object** %one, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index4 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %index4, align 8
  %7 = load %struct._object*, %struct._object** %one, align 8
  %call5 = call %struct._object* @PyNumber_Add(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call5, %struct._object** %new_index, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %new_index, align 8
  %tobool9 = icmp ne %struct._object* %15, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %16 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index12 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %index12, align 8
  %18 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %step, align 8
  %call13 = call %struct._object* @PyNumber_Multiply(%struct._object* %17, %struct._object* %19)
  store %struct._object* %call13, %struct._object** %product, align 8
  %20 = load %struct._object*, %struct._object** %product, align 8
  %tobool14 = icmp ne %struct._object* %20, null
  br i1 %tobool14, label %if.end.27, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %new_index, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp17, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %23, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %26(%struct._object* %27)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.11
  %28 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %start, align 8
  %30 = load %struct._object*, %struct._object** %product, align 8
  %call28 = call %struct._object* @PyNumber_Add(%struct._object* %29, %struct._object* %30)
  store %struct._object* %call28, %struct._object** %result, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.27
  %31 = load %struct._object*, %struct._object** %product, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp30, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %33, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %36(%struct._object* %37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %38 = load %struct._object*, %struct._object** %result, align 8
  %tobool40 = icmp ne %struct._object* %38, null
  br i1 %tobool40, label %if.then.41, label %if.else.55

if.then.41:                                       ; preds = %do.end.39
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %39 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index44 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %39, i32 0, i32 1
  %40 = load %struct._object*, %struct._object** %index44, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp43, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %42, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.42
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.42
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %45(%struct._object* %46)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %47 = load %struct._object*, %struct._object** %new_index, align 8
  %48 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index54 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %48, i32 0, i32 1
  store %struct._object* %47, %struct._object** %index54, align 8
  br label %if.end.67

if.else.55:                                       ; preds = %do.end.39
  br label %do.body.56

do.body.56:                                       ; preds = %if.else.55
  %49 = load %struct._object*, %struct._object** %new_index, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp57, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %51, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %54(%struct._object* %55)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.end.53
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.67, %do.end.26, %if.then.10, %if.then.2, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @range_length(%struct.rangeobject* %r) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %length, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_item(%struct.rangeobject* %r, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %i.addr = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %0)
  store %struct._object* %call, %struct._object** %arg, align 8
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %3 = load %struct._object*, %struct._object** %arg, align 8
  %call1 = call %struct._object* @compute_range_item(%struct.rangeobject* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @range_contains(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %5 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call = call i32 @range_contains_long(%struct.rangeobject* %4, %struct._object* %5)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %7 = bitcast %struct.rangeobject* %6 to %struct._object*
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call3 = call i64 @_PySequence_IterSearch(%struct._object* %7, %struct._object* %8, i32 3)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @compute_range_item(%struct.rangeobject* %r, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %cmp_result = alloca i32, align 4
  %i = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %zero, align 8
  %0 = load %struct._object*, %struct._object** %zero, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8
  %2 = load %struct._object*, %struct._object** %zero, align 8
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %2, i32 0)
  store i32 %call1, i32* %cmp_result, align 4
  %3 = load i32, i32* %cmp_result, align 4
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load i32, i32* %cmp_result, align 4
  %cmp8 = icmp eq i32 %11, 1
  br i1 %cmp8, label %if.then.9, label %if.else.24

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %length, align 8
  %14 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call10 = call %struct._object* @PyNumber_Add(%struct._object* %13, %struct._object* %14)
  store %struct._object* %call10, %struct._object** %i, align 8
  %15 = load %struct._object*, %struct._object** %i, align 8
  %tobool = icmp ne %struct._object* %15, null
  br i1 %tobool, label %if.end.23, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %18, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.9
  br label %if.end.26

if.else.24:                                       ; preds = %if.end.7
  %23 = load %struct._object*, %struct._object** %arg.addr, align 8
  store %struct._object* %23, %struct._object** %i, align 8
  %24 = load %struct._object*, %struct._object** %i, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt25, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.end.23
  %26 = load %struct._object*, %struct._object** %i, align 8
  %27 = load %struct._object*, %struct._object** %zero, align 8
  %call27 = call i32 @PyObject_RichCompareBool(%struct._object* %26, %struct._object* %27, i32 0)
  store i32 %call27, i32* %cmp_result, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp29, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %30, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %33(%struct._object* %34)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %35 = load i32, i32* %cmp_result, align 4
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.end.38
  %36 = load %struct._object*, %struct._object** %i, align 8
  %37 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length41 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %37, i32 0, i32 4
  %38 = load %struct._object*, %struct._object** %length41, align 8
  %call42 = call i32 @PyObject_RichCompareBool(%struct._object* %36, %struct._object* %38, i32 5)
  store i32 %call42, i32* %cmp_result, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %do.end.38
  %39 = load i32, i32* %cmp_result, align 4
  %cmp44 = icmp eq i32 %39, -1
  br i1 %cmp44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %if.end.43
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %40 = load %struct._object*, %struct._object** %i, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp47, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %42, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %45(%struct._object* %46)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %if.end.43
  %47 = load i32, i32* %cmp_result, align 4
  %cmp58 = icmp eq i32 %47, 1
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %if.end.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %48 = load %struct._object*, %struct._object** %i, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp61, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %50, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %53(%struct._object* %54)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  %55 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %if.end.57
  %56 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %57 = load %struct._object*, %struct._object** %i, align 8
  %call72 = call %struct._object* @compute_item(%struct.rangeobject* %56, %struct._object* %57)
  store %struct._object* %call72, %struct._object** %result, align 8
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.71
  %58 = load %struct._object*, %struct._object** %i, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp74, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %60, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %63(%struct._object* %64)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.83, %do.end.70, %do.end.56, %do.end.22, %do.end, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @compute_item(%struct.rangeobject* %r, %struct._object* %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %i.addr = alloca %struct._object*, align 8
  %incr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %i, %struct._object** %i.addr, align 8
  %0 = load %struct._object*, %struct._object** %i.addr, align 8
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %1, i32 0, i32 3
  %2 = load %struct._object*, %struct._object** %step, align 8
  %call = call %struct._object* @PyNumber_Multiply(%struct._object* %0, %struct._object* %2)
  store %struct._object* %call, %struct._object** %incr, align 8
  %3 = load %struct._object*, %struct._object** %incr, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %start, align 8
  %6 = load %struct._object*, %struct._object** %incr, align 8
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %incr, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @range_contains_long(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %cmp1 = alloca i32, align 4
  %cmp2 = alloca i32, align 4
  %cmp3 = alloca i32, align 4
  %tmp1 = alloca %struct._object*, align 8
  %tmp2 = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_xdecref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  store %struct._object* null, %struct._object** %tmp1, align 8
  store %struct._object* null, %struct._object** %tmp2, align 8
  store %struct._object* null, %struct._object** %zero, align 8
  store i32 -1, i32* %result, align 4
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %zero, align 8
  %0 = load %struct._object*, %struct._object** %zero, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %end

if.end:                                           ; preds = %entry
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %1, i32 0, i32 3
  %2 = load %struct._object*, %struct._object** %step, align 8
  %3 = load %struct._object*, %struct._object** %zero, align 8
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %2, %struct._object* %3, i32 4)
  store i32 %call1, i32* %cmp1, align 4
  %4 = load i32, i32* %cmp1, align 4
  %cmp4 = icmp eq i32 %4, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %end

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %cmp1, align 4
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %start, align 8
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call9 = call i32 @PyObject_RichCompareBool(%struct._object* %7, %struct._object* %8, i32 1)
  store i32 %call9, i32* %cmp2, align 4
  %9 = load %struct._object*, %struct._object** %ob.addr, align 8
  %10 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %stop, align 8
  %call10 = call i32 @PyObject_RichCompareBool(%struct._object* %9, %struct._object* %11, i32 0)
  store i32 %call10, i32* %cmp3, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %ob.addr, align 8
  %13 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start11 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %start11, align 8
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %14, i32 1)
  store i32 %call12, i32* %cmp2, align 4
  %15 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop13 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %15, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %stop13, align 8
  %17 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call14 = call i32 @PyObject_RichCompareBool(%struct._object* %16, %struct._object* %17, i32 0)
  store i32 %call14, i32* %cmp3, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  %18 = load i32, i32* %cmp2, align 4
  %cmp16 = icmp eq i32 %18, -1
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %19 = load i32, i32* %cmp3, align 4
  %cmp17 = icmp eq i32 %19, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %end

if.end.19:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* %cmp2, align 4
  %cmp20 = icmp eq i32 %20, 0
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.19
  %21 = load i32, i32* %cmp3, align 4
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.21, %if.end.19
  store i32 0, i32* %result, align 4
  br label %end

if.end.24:                                        ; preds = %lor.lhs.false.21
  %22 = load %struct._object*, %struct._object** %ob.addr, align 8
  %23 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start25 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %23, i32 0, i32 1
  %24 = load %struct._object*, %struct._object** %start25, align 8
  %call26 = call %struct._object* @PyNumber_Subtract(%struct._object* %22, %struct._object* %24)
  store %struct._object* %call26, %struct._object** %tmp1, align 8
  %25 = load %struct._object*, %struct._object** %tmp1, align 8
  %cmp27 = icmp eq %struct._object* %25, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  br label %end

if.end.29:                                        ; preds = %if.end.24
  %26 = load %struct._object*, %struct._object** %tmp1, align 8
  %27 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step30 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %27, i32 0, i32 3
  %28 = load %struct._object*, %struct._object** %step30, align 8
  %call31 = call %struct._object* @PyNumber_Remainder(%struct._object* %26, %struct._object* %28)
  store %struct._object* %call31, %struct._object** %tmp2, align 8
  %29 = load %struct._object*, %struct._object** %tmp2, align 8
  %cmp32 = icmp eq %struct._object* %29, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  br label %end

if.end.34:                                        ; preds = %if.end.29
  %30 = load %struct._object*, %struct._object** %tmp2, align 8
  %31 = load %struct._object*, %struct._object** %zero, align 8
  %call35 = call i32 @PyObject_RichCompareBool(%struct._object* %30, %struct._object* %31, i32 2)
  store i32 %call35, i32* %result, align 4
  br label %end

end:                                              ; preds = %if.end.34, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.5, %if.then
  br label %do.body

do.body:                                          ; preds = %end
  %32 = load %struct._object*, %struct._object** %tmp1, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp36 = icmp ne %struct._object* %33, null
  br i1 %cmp36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %do.body
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.38
  br label %if.end.42

if.else.41:                                       ; preds = %do.body.38
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.42
  br label %if.end.43

if.end.43:                                        ; preds = %do.end, %do.body
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %41 = load %struct._object*, %struct._object** %tmp2, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp46, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  %cmp47 = icmp ne %struct._object* %42, null
  br i1 %cmp47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %do.body.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp50, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %45, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %48(%struct._object* %49)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.45
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %50 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp63, align 8
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8
  %cmp64 = icmp ne %struct._object* %51, null
  br i1 %cmp64, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %do.body.62
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp67, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %54, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %57(%struct._object* %58)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.62
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %59 = load i32, i32* %result, align 4
  ret i32 %59
}

declare i64 @_PySequence_IterSearch(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_subscript(%struct.rangeobject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rangeobject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %self, %struct.rangeobject** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp3, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %7)
  store %struct._object* %call, %struct._object** %i, align 8
  %8 = load %struct._object*, %struct._object** %i, align 8
  %tobool = icmp ne %struct._object* %8, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.rangeobject*, %struct.rangeobject** %self.addr, align 8
  %10 = load %struct._object*, %struct._object** %i, align 8
  %call5 = call %struct._object* @compute_range_item(%struct.rangeobject* %9, %struct._object* %10)
  store %struct._object* %call5, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %i, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %18 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %entry
  %19 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %cmp12 = icmp eq %struct._typeobject* %20, @PySlice_Type
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %21 = load %struct.rangeobject*, %struct.rangeobject** %self.addr, align 8
  %22 = load %struct._object*, %struct._object** %item.addr, align 8
  %call14 = call %struct._object* @compute_slice(%struct.rangeobject* %21, %struct._object* %22)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %24 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %do.end, %if.then.4
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare %struct._object* @PyNumber_Index(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @compute_slice(%struct.rangeobject* %r, %struct._object* %_slice) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %_slice.addr = alloca %struct._object*, align 8
  %slice = alloca %struct.PySliceObject*, align 8
  %result = alloca %struct.rangeobject*, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  %substart = alloca %struct._object*, align 8
  %substop = alloca %struct._object*, align 8
  %substep = alloca %struct._object*, align 8
  %error = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_xdecref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_xdecref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_xdecref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_xdecref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %_slice, %struct._object** %_slice.addr, align 8
  %0 = load %struct._object*, %struct._object** %_slice.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PySliceObject*
  store %struct.PySliceObject* %1, %struct.PySliceObject** %slice, align 8
  store %struct._object* null, %struct._object** %start, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %step, align 8
  store %struct._object* null, %struct._object** %substart, align 8
  store %struct._object* null, %struct._object** %substop, align 8
  store %struct._object* null, %struct._object** %substep, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %slice, align 8
  %3 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %length, align 8
  %call = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %2, %struct._object* %4, %struct._object** %start, %struct._object** %stop, %struct._object** %step)
  store i32 %call, i32* %error, align 4
  %5 = load i32, i32* %error, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %step1, align 8
  %8 = load %struct._object*, %struct._object** %step, align 8
  %call2 = call %struct._object* @PyNumber_Multiply(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call2, %struct._object** %substep, align 8
  %9 = load %struct._object*, %struct._object** %substep, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %fail

if.end.5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %10, %struct._object** %_py_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp6 = icmp ne %struct._object* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %step, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %19 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %20 = load %struct._object*, %struct._object** %start, align 8
  %call14 = call %struct._object* @compute_item(%struct.rangeobject* %19, %struct._object* %20)
  store %struct._object* %call14, %struct._object** %substart, align 8
  %21 = load %struct._object*, %struct._object** %substart, align 8
  %cmp15 = icmp eq %struct._object* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end.13
  br label %fail

if.end.17:                                        ; preds = %do.end.13
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %22, %struct._object** %_py_tmp19, align 8
  %23 = load %struct._object*, %struct._object** %_py_tmp19, align 8
  %cmp20 = icmp ne %struct._object* %23, null
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %do.body.18
  store %struct._object* null, %struct._object** %start, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %24 = load %struct._object*, %struct._object** %_py_tmp19, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %26, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %29(%struct._object* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.18
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %31 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %32 = load %struct._object*, %struct._object** %stop, align 8
  %call35 = call %struct._object* @compute_item(%struct.rangeobject* %31, %struct._object* %32)
  store %struct._object* %call35, %struct._object** %substop, align 8
  %33 = load %struct._object*, %struct._object** %substop, align 8
  %cmp36 = icmp eq %struct._object* %33, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.34
  br label %fail

if.end.38:                                        ; preds = %do.end.34
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.38
  %34 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %34, %struct._object** %_py_tmp40, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp40, align 8
  %cmp41 = icmp ne %struct._object* %35, null
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %do.body.39
  store %struct._object* null, %struct._object** %stop, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %36 = load %struct._object*, %struct._object** %_py_tmp40, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp44, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %38, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %41(%struct._object* %42)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body.39
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %43 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %44 = bitcast %struct.rangeobject* %43 to %struct._object*
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %46 = load %struct._object*, %struct._object** %substart, align 8
  %47 = load %struct._object*, %struct._object** %substop, align 8
  %48 = load %struct._object*, %struct._object** %substep, align 8
  %call57 = call %struct.rangeobject* @make_range_object(%struct._typeobject* %45, %struct._object* %46, %struct._object* %47, %struct._object* %48)
  store %struct.rangeobject* %call57, %struct.rangeobject** %result, align 8
  %49 = load %struct.rangeobject*, %struct.rangeobject** %result, align 8
  %cmp58 = icmp ne %struct.rangeobject* %49, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.end.55
  %50 = load %struct.rangeobject*, %struct.rangeobject** %result, align 8
  %51 = bitcast %struct.rangeobject* %50 to %struct._object*
  store %struct._object* %51, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %do.end.55
  br label %fail

fail:                                             ; preds = %if.end.60, %if.then.37, %if.then.16, %if.then.4
  br label %do.body.61

do.body.61:                                       ; preds = %fail
  %52 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp62 = icmp ne %struct._object* %53, null
  br i1 %cmp62, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %do.body.61
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp65, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %56, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %59(%struct._object* %60)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %do.body.61
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.76
  %61 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp78, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8
  %cmp79 = icmp ne %struct._object* %62, null
  br i1 %cmp79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %do.body.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp82, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %65, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %68(%struct._object* %69)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %do.body.77
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %70 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %70, %struct._object** %_py_xdecref_tmp95, align 8
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  %cmp96 = icmp ne %struct._object* %71, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.94
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp99, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %74, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %77(%struct._object* %78)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.94
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %79 = load %struct._object*, %struct._object** %substart, align 8
  store %struct._object* %79, %struct._object** %_py_xdecref_tmp112, align 8
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  %cmp113 = icmp ne %struct._object* %80, null
  br i1 %cmp113, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %do.body.111
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp116, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %83, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %86(%struct._object* %87)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body.111
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %do.body.128

do.body.128:                                      ; preds = %do.end.127
  %88 = load %struct._object*, %struct._object** %substop, align 8
  store %struct._object* %88, %struct._object** %_py_xdecref_tmp129, align 8
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  %cmp130 = icmp ne %struct._object* %89, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp133, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %92, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %95(%struct._object* %96)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.128
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %97 = load %struct._object*, %struct._object** %substep, align 8
  store %struct._object* %97, %struct._object** %_py_xdecref_tmp146, align 8
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  %cmp147 = icmp ne %struct._object* %98, null
  br i1 %cmp147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %do.body.145
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp150, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %101, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %104(%struct._object* %105)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.body.145
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.161, %if.then.59, %if.then
  %106 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %106
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PySlice_GetLongIndices(%struct.PySliceObject*, %struct._object*, %struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal %struct.rangeobject* @make_range_object(%struct._typeobject* %type, %struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  %retval = alloca %struct.rangeobject*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %start.addr = alloca %struct._object*, align 8
  %stop.addr = alloca %struct._object*, align 8
  %step.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.rangeobject*, align 8
  %length = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %start, %struct._object** %start.addr, align 8
  store %struct._object* %stop, %struct._object** %stop.addr, align 8
  store %struct._object* %step, %struct._object** %step.addr, align 8
  store %struct.rangeobject* null, %struct.rangeobject** %obj, align 8
  %0 = load %struct._object*, %struct._object** %start.addr, align 8
  %1 = load %struct._object*, %struct._object** %stop.addr, align 8
  %2 = load %struct._object*, %struct._object** %step.addr, align 8
  %call = call %struct._object* @compute_range_length(%struct._object* %0, %struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %length, align 8
  %3 = load %struct._object*, %struct._object** %length, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rangeobject* null, %struct.rangeobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* %4)
  %5 = bitcast %struct._object* %call1 to %struct.rangeobject*
  store %struct.rangeobject* %5, %struct.rangeobject** %obj, align 8
  %6 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %cmp2 = icmp eq %struct.rangeobject* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %length, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct.rangeobject* null, %struct.rangeobject** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %start.addr, align 8
  %15 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %start8 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %15, i32 0, i32 1
  store %struct._object* %14, %struct._object** %start8, align 8
  %16 = load %struct._object*, %struct._object** %stop.addr, align 8
  %17 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %stop9 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %17, i32 0, i32 2
  store %struct._object* %16, %struct._object** %stop9, align 8
  %18 = load %struct._object*, %struct._object** %step.addr, align 8
  %19 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %step10 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %19, i32 0, i32 3
  store %struct._object* %18, %struct._object** %step10, align 8
  %20 = load %struct._object*, %struct._object** %length, align 8
  %21 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  %length11 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %21, i32 0, i32 4
  store %struct._object* %20, %struct._object** %length11, align 8
  %22 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8
  store %struct.rangeobject* %22, %struct.rangeobject** %retval
  br label %return

return:                                           ; preds = %if.end.7, %do.end, %if.then
  %23 = load %struct.rangeobject*, %struct.rangeobject** %retval
  ret %struct.rangeobject* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compute_range_length(%struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %start.addr = alloca %struct._object*, align 8
  %stop.addr = alloca %struct._object*, align 8
  %step.addr = alloca %struct._object*, align 8
  %cmp_result = alloca i32, align 4
  %lo = alloca %struct._object*, align 8
  %hi = alloca %struct._object*, align 8
  %diff = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %tmp1 = alloca %struct._object*, align 8
  %tmp2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_xdecref_tmp113 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
  %_py_xdecref_tmp130 = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %_py_xdecref_tmp147 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_xdecref_tmp164 = alloca %struct._object*, align 8
  %_py_decref_tmp168 = alloca %struct._object*, align 8
  %_py_xdecref_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  store %struct._object* %start, %struct._object** %start.addr, align 8
  store %struct._object* %stop, %struct._object** %stop.addr, align 8
  store %struct._object* %step, %struct._object** %step.addr, align 8
  store %struct._object* null, %struct._object** %diff, align 8
  store %struct._object* null, %struct._object** %one, align 8
  store %struct._object* null, %struct._object** %tmp1, align 8
  store %struct._object* null, %struct._object** %tmp2, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %zero, align 8
  %0 = load %struct._object*, %struct._object** %zero, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %step.addr, align 8
  %2 = load %struct._object*, %struct._object** %zero, align 8
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %2, i32 4)
  store i32 %call1, i32* %cmp_result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i32, i32* %cmp_result, align 4
  %cmp5 = icmp eq i32 %10, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %11 = load i32, i32* %cmp_result, align 4
  %cmp8 = icmp eq i32 %11, 1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %start.addr, align 8
  store %struct._object* %12, %struct._object** %lo, align 8
  %13 = load %struct._object*, %struct._object** %stop.addr, align 8
  store %struct._object* %13, %struct._object** %hi, align 8
  %14 = load %struct._object*, %struct._object** %step.addr, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt10, align 8
  br label %if.end.15

if.else.11:                                       ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** %stop.addr, align 8
  store %struct._object* %16, %struct._object** %lo, align 8
  %17 = load %struct._object*, %struct._object** %start.addr, align 8
  store %struct._object* %17, %struct._object** %hi, align 8
  %18 = load %struct._object*, %struct._object** %step.addr, align 8
  %call12 = call %struct._object* @PyNumber_Negative(%struct._object* %18)
  store %struct._object* %call12, %struct._object** %step.addr, align 8
  %19 = load %struct._object*, %struct._object** %step.addr, align 8
  %tobool = icmp ne %struct._object* %19, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.else.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.9
  %20 = load %struct._object*, %struct._object** %lo, align 8
  %21 = load %struct._object*, %struct._object** %hi, align 8
  %call16 = call i32 @PyObject_RichCompareBool(%struct._object* %20, %struct._object* %21, i32 5)
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %if.then.18, label %if.end.36

if.then.18:                                       ; preds = %if.end.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %22 = load %struct._object*, %struct._object** %step.addr, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %23, null
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %26, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %29(%struct._object* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.19
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %call35 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call35, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.15
  %call37 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call37, %struct._object** %one, align 8
  %cmp38 = icmp eq %struct._object* %call37, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  br label %Fail

if.end.40:                                        ; preds = %if.end.36
  %31 = load %struct._object*, %struct._object** %hi, align 8
  %32 = load %struct._object*, %struct._object** %lo, align 8
  %call41 = call %struct._object* @PyNumber_Subtract(%struct._object* %31, %struct._object* %32)
  store %struct._object* %call41, %struct._object** %tmp1, align 8
  %cmp42 = icmp eq %struct._object* %call41, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  br label %Fail

if.end.44:                                        ; preds = %if.end.40
  %33 = load %struct._object*, %struct._object** %tmp1, align 8
  %34 = load %struct._object*, %struct._object** %one, align 8
  %call45 = call %struct._object* @PyNumber_Subtract(%struct._object* %33, %struct._object* %34)
  store %struct._object* %call45, %struct._object** %diff, align 8
  %cmp46 = icmp eq %struct._object* %call45, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %Fail

if.end.48:                                        ; preds = %if.end.44
  %35 = load %struct._object*, %struct._object** %diff, align 8
  %36 = load %struct._object*, %struct._object** %step.addr, align 8
  %call49 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %35, %struct._object* %36)
  store %struct._object* %call49, %struct._object** %tmp2, align 8
  %cmp50 = icmp eq %struct._object* %call49, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  br label %Fail

if.end.52:                                        ; preds = %if.end.48
  %37 = load %struct._object*, %struct._object** %tmp2, align 8
  %38 = load %struct._object*, %struct._object** %one, align 8
  %call53 = call %struct._object* @PyNumber_Add(%struct._object* %37, %struct._object* %38)
  store %struct._object* %call53, %struct._object** %result, align 8
  %cmp54 = icmp eq %struct._object* %call53, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  br label %Fail

if.end.56:                                        ; preds = %if.end.52
  br label %do.body.57

do.body.57:                                       ; preds = %if.end.56
  %39 = load %struct._object*, %struct._object** %tmp2, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp58, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %41, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.57
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %44(%struct._object* %45)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %46 = load %struct._object*, %struct._object** %diff, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp69, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %48, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %51(%struct._object* %52)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %53 = load %struct._object*, %struct._object** %step.addr, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp80, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %55, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.79
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %58(%struct._object* %59)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %60 = load %struct._object*, %struct._object** %tmp1, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp91, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %62, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %65(%struct._object* %66)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %67 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp102, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %69, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %72(%struct._object* %73)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %74 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %74, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39
  br label %do.body.112

do.body.112:                                      ; preds = %Fail
  %75 = load %struct._object*, %struct._object** %tmp2, align 8
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp113, align 8
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp113, align 8
  %cmp114 = icmp ne %struct._object* %76, null
  br i1 %cmp114, label %if.then.115, label %if.end.127

if.then.115:                                      ; preds = %do.body.112
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp113, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp117, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt118, align 8
  %dec119 = add i64 %79, -1
  store i64 %dec119, i64* %ob_refcnt118, align 8
  %cmp120 = icmp ne i64 %dec119, 0
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %do.body.116
  br label %if.end.125

if.else.122:                                      ; preds = %do.body.116
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_dealloc124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc124, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  call void %82(%struct._object* %83)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %if.end.127

if.end.127:                                       ; preds = %do.end.126, %do.body.112
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %84 = load %struct._object*, %struct._object** %diff, align 8
  store %struct._object* %84, %struct._object** %_py_xdecref_tmp130, align 8
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  %cmp131 = icmp ne %struct._object* %85, null
  br i1 %cmp131, label %if.then.132, label %if.end.144

if.then.132:                                      ; preds = %do.body.129
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp134, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt135, align 8
  %dec136 = add i64 %88, -1
  store i64 %dec136, i64* %ob_refcnt135, align 8
  %cmp137 = icmp ne i64 %dec136, 0
  br i1 %cmp137, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %do.body.133
  br label %if.end.142

if.else.139:                                      ; preds = %do.body.133
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  %ob_type140 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type140, align 8
  %tp_dealloc141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc141, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8
  call void %91(%struct._object* %92)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.138
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  br label %if.end.144

if.end.144:                                       ; preds = %do.end.143, %do.body.129
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  br label %do.body.146

do.body.146:                                      ; preds = %do.end.145
  %93 = load %struct._object*, %struct._object** %step.addr, align 8
  store %struct._object* %93, %struct._object** %_py_xdecref_tmp147, align 8
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp147, align 8
  %cmp148 = icmp ne %struct._object* %94, null
  br i1 %cmp148, label %if.then.149, label %if.end.161

if.then.149:                                      ; preds = %do.body.146
  br label %do.body.150

do.body.150:                                      ; preds = %if.then.149
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp147, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp151, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %97, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.150
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.150
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %100(%struct._object* %101)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  br label %if.end.161

if.end.161:                                       ; preds = %do.end.160, %do.body.146
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %do.body.163

do.body.163:                                      ; preds = %do.end.162
  %102 = load %struct._object*, %struct._object** %tmp1, align 8
  store %struct._object* %102, %struct._object** %_py_xdecref_tmp164, align 8
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp164, align 8
  %cmp165 = icmp ne %struct._object* %103, null
  br i1 %cmp165, label %if.then.166, label %if.end.178

if.then.166:                                      ; preds = %do.body.163
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  %104 = load %struct._object*, %struct._object** %_py_xdecref_tmp164, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp168, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt169, align 8
  %dec170 = add i64 %106, -1
  store i64 %dec170, i64* %ob_refcnt169, align 8
  %cmp171 = icmp ne i64 %dec170, 0
  br i1 %cmp171, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %do.body.167
  br label %if.end.176

if.else.173:                                      ; preds = %do.body.167
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_type174 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type174, align 8
  %tp_dealloc175 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc175, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  call void %109(%struct._object* %110)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.then.172
  br label %do.end.177

do.end.177:                                       ; preds = %if.end.176
  br label %if.end.178

if.end.178:                                       ; preds = %do.end.177, %do.body.163
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %do.body.180

do.body.180:                                      ; preds = %do.end.179
  %111 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %111, %struct._object** %_py_xdecref_tmp181, align 8
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8
  %cmp182 = icmp ne %struct._object* %112, null
  br i1 %cmp182, label %if.then.183, label %if.end.195

if.then.183:                                      ; preds = %do.body.180
  br label %do.body.184

do.body.184:                                      ; preds = %if.then.183
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp185, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt186, align 8
  %dec187 = add i64 %115, -1
  store i64 %dec187, i64* %ob_refcnt186, align 8
  %cmp188 = icmp ne i64 %dec187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %do.body.184
  br label %if.end.193

if.else.190:                                      ; preds = %do.body.184
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8
  %tp_dealloc192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc192, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  call void %118(%struct._object* %119)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.189
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %if.end.195

if.end.195:                                       ; preds = %do.end.194, %do.body.180
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.196, %do.end.111, %do.end.34, %if.then.13, %if.then.6, %if.then
  %120 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %120
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @PyObject_Not(%struct._object*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @range_equals(%struct.rangeobject* %r0, %struct.rangeobject* %r1) #0 {
entry:
  %retval = alloca i32, align 4
  %r0.addr = alloca %struct.rangeobject*, align 8
  %r1.addr = alloca %struct.rangeobject*, align 8
  %cmp_result = alloca i32, align 4
  %one = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r0, %struct.rangeobject** %r0.addr, align 8
  store %struct.rangeobject* %r1, %struct.rangeobject** %r1.addr, align 8
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8
  %cmp = icmp eq %struct.rangeobject* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %length, align 8
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8
  %length1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %4, i32 0, i32 4
  %5 = load %struct._object*, %struct._object** %length1, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %3, %struct._object* %5, i32 2)
  store i32 %call, i32* %cmp_result, align 4
  %6 = load i32, i32* %cmp_result, align 4
  %cmp2 = icmp ne i32 %6, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %cmp_result, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %length5 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 4
  %9 = load %struct._object*, %struct._object** %length5, align 8
  %call6 = call i32 @PyObject_Not(%struct._object* %9)
  store i32 %call6, i32* %cmp_result, align 4
  %10 = load i32, i32* %cmp_result, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %11 = load i32, i32* %cmp_result, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %12 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %start, align 8
  %14 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8
  %start10 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %start10, align 8
  %call11 = call i32 @PyObject_RichCompareBool(%struct._object* %13, %struct._object* %15, i32 2)
  store i32 %call11, i32* %cmp_result, align 4
  %16 = load i32, i32* %cmp_result, align 4
  %cmp12 = icmp ne i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %17 = load i32, i32* %cmp_result, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %call15 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call15, %struct._object** %one, align 8
  %18 = load %struct._object*, %struct._object** %one, align 8
  %tobool = icmp ne %struct._object* %18, null
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %19 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %length18 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %19, i32 0, i32 4
  %20 = load %struct._object*, %struct._object** %length18, align 8
  %21 = load %struct._object*, %struct._object** %one, align 8
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %20, %struct._object* %21, i32 2)
  store i32 %call19, i32* %cmp_result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %29 = load i32, i32* %cmp_result, align 4
  %cmp23 = icmp ne i32 %29, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end
  %30 = load i32, i32* %cmp_result, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.25:                                        ; preds = %do.end
  %31 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %31, i32 0, i32 3
  %32 = load %struct._object*, %struct._object** %step, align 8
  %33 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8
  %step26 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %33, i32 0, i32 3
  %34 = load %struct._object*, %struct._object** %step26, align 8
  %call27 = call i32 @PyObject_RichCompareBool(%struct._object* %32, %struct._object* %34, i32 2)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.16, %if.then.13, %if.then.8, %if.then.3, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_reverse(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %range = alloca %struct.rangeobject*, align 8
  %it = alloca %struct.longrangeiterobject*, align 8
  %one = alloca %struct._object*, align 8
  %sum = alloca %struct._object*, align 8
  %diff = alloca %struct._object*, align 8
  %product = alloca %struct._object*, align 8
  %lstart = alloca i64, align 8
  %lstop = alloca i64, align 8
  %lstep = alloca i64, align 8
  %new_start = alloca i64, align 8
  %new_stop = alloca i64, align 8
  %ulen = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.rangeobject*
  store %struct.rangeobject* %1, %struct.rangeobject** %range, align 8
  %2 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %start, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  store i64 %call, i64* %lstart, align 8
  %4 = load i64, i64* %lstart, align 8
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Clear()
  br label %long_range

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %stop, align 8
  %call2 = call i64 @PyLong_AsLong(%struct._object* %6)
  store i64 %call2, i64* %lstop, align 8
  %7 = load i64, i64* %lstop, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.4
  call void @PyErr_Clear()
  br label %long_range

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %8 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %step, align 8
  %call9 = call i64 @PyLong_AsLong(%struct._object* %9)
  store i64 %call9, i64* %lstep, align 8
  %10 = load i64, i64* %lstep, align 8
  %cmp10 = icmp eq i64 %10, -1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool13 = icmp ne %struct._object* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  call void @PyErr_Clear()
  br label %long_range

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end.8
  %11 = load i64, i64* %lstep, align 8
  %cmp16 = icmp eq i64 %11, -9223372036854775808
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  br label %long_range

if.end.18:                                        ; preds = %if.end.15
  %12 = load i64, i64* %lstep, align 8
  %cmp19 = icmp sgt i64 %12, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %13 = load i64, i64* %lstart, align 8
  %sub = sub i64 %13, -9223372036854775808
  %14 = load i64, i64* %lstep, align 8
  %cmp21 = icmp ult i64 %sub, %14
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  br label %long_range

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.29

if.else:                                          ; preds = %if.end.18
  %15 = load i64, i64* %lstart, align 8
  %sub24 = sub i64 9223372036854775807, %15
  %16 = load i64, i64* %lstep, align 8
  %sub25 = sub i64 0, %16
  %cmp26 = icmp ult i64 %sub24, %sub25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  br label %long_range

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.23
  %17 = load i64, i64* %lstart, align 8
  %18 = load i64, i64* %lstop, align 8
  %19 = load i64, i64* %lstep, align 8
  %call30 = call i64 @get_len_of_range(i64 %17, i64 %18, i64 %19)
  store i64 %call30, i64* %ulen, align 8
  %20 = load i64, i64* %ulen, align 8
  %cmp31 = icmp ugt i64 %20, 9223372036854775807
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  br label %long_range

if.end.33:                                        ; preds = %if.end.29
  %21 = load i64, i64* %lstart, align 8
  %22 = load i64, i64* %lstep, align 8
  %sub34 = sub i64 %21, %22
  store i64 %sub34, i64* %new_stop, align 8
  %23 = load i64, i64* %new_stop, align 8
  %24 = load i64, i64* %ulen, align 8
  %25 = load i64, i64* %lstep, align 8
  %mul = mul i64 %24, %25
  %add = add i64 %23, %mul
  store i64 %add, i64* %new_start, align 8
  %26 = load i64, i64* %new_start, align 8
  %27 = load i64, i64* %new_stop, align 8
  %28 = load i64, i64* %lstep, align 8
  %sub35 = sub i64 0, %28
  %call36 = call %struct._object* @fast_range_iter(i64 %26, i64 %27, i64 %sub35)
  store %struct._object* %call36, %struct._object** %retval
  br label %return

long_range:                                       ; preds = %if.then.32, %if.then.27, %if.then.22, %if.then.17, %if.then.14, %if.then.7, %if.then
  %call37 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyLongRangeIter_Type)
  %29 = bitcast %struct._object* %call37 to %struct.longrangeiterobject*
  store %struct.longrangeiterobject* %29, %struct.longrangeiterobject** %it, align 8
  %30 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %cmp38 = icmp eq %struct.longrangeiterobject* %30, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %long_range
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %long_range
  %31 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %31, i32 0, i32 4
  %32 = load %struct._object*, %struct._object** %length, align 8
  %33 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %33, i32 0, i32 4
  store %struct._object* %32, %struct._object** %len, align 8
  %34 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %len41 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %34, i32 0, i32 4
  %35 = load %struct._object*, %struct._object** %len41, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call42 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call42, %struct._object** %one, align 8
  %37 = load %struct._object*, %struct._object** %one, align 8
  %tobool43 = icmp ne %struct._object* %37, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  br label %create_failure

if.end.45:                                        ; preds = %if.end.40
  %38 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %len46 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %38, i32 0, i32 4
  %39 = load %struct._object*, %struct._object** %len46, align 8
  %40 = load %struct._object*, %struct._object** %one, align 8
  %call47 = call %struct._object* @PyNumber_Subtract(%struct._object* %39, %struct._object* %40)
  store %struct._object* %call47, %struct._object** %diff, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.45
  %41 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt48, align 8
  %dec = add i64 %43, -1
  store i64 %dec, i64* %ob_refcnt48, align 8
  %cmp49 = icmp ne i64 %dec, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body
  br label %if.end.52

if.else.51:                                       ; preds = %do.body
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end

do.end:                                           ; preds = %if.end.52
  %48 = load %struct._object*, %struct._object** %diff, align 8
  %tobool53 = icmp ne %struct._object* %48, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.end
  br label %create_failure

if.end.55:                                        ; preds = %do.end
  %49 = load %struct._object*, %struct._object** %diff, align 8
  %50 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %step56 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %50, i32 0, i32 3
  %51 = load %struct._object*, %struct._object** %step56, align 8
  %call57 = call %struct._object* @PyNumber_Multiply(%struct._object* %49, %struct._object* %51)
  store %struct._object* %call57, %struct._object** %product, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.55
  %52 = load %struct._object*, %struct._object** %diff, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp59, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %54, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %57(%struct._object* %58)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %59 = load %struct._object*, %struct._object** %product, align 8
  %tobool69 = icmp ne %struct._object* %59, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %do.end.68
  br label %create_failure

if.end.71:                                        ; preds = %do.end.68
  %60 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %start72 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %60, i32 0, i32 1
  %61 = load %struct._object*, %struct._object** %start72, align 8
  %62 = load %struct._object*, %struct._object** %product, align 8
  %call73 = call %struct._object* @PyNumber_Add(%struct._object* %61, %struct._object* %62)
  store %struct._object* %call73, %struct._object** %sum, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.71
  %63 = load %struct._object*, %struct._object** %product, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp75, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %65, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %68(%struct._object* %69)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %70 = load %struct._object*, %struct._object** %sum, align 8
  %71 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %start85 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %71, i32 0, i32 2
  store %struct._object* %70, %struct._object** %start85, align 8
  %72 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %start86 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %72, i32 0, i32 2
  %73 = load %struct._object*, %struct._object** %start86, align 8
  %tobool87 = icmp ne %struct._object* %73, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %do.end.84
  br label %create_failure

if.end.89:                                        ; preds = %do.end.84
  %74 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8
  %step90 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %74, i32 0, i32 3
  %75 = load %struct._object*, %struct._object** %step90, align 8
  %call91 = call %struct._object* @PyNumber_Negative(%struct._object* %75)
  %76 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %step92 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %76, i32 0, i32 3
  store %struct._object* %call91, %struct._object** %step92, align 8
  %77 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %step93 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %77, i32 0, i32 3
  %78 = load %struct._object*, %struct._object** %step93, align 8
  %tobool94 = icmp ne %struct._object* %78, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.89
  br label %create_failure

if.end.96:                                        ; preds = %if.end.89
  %call97 = call %struct._object* @PyLong_FromLong(i64 0)
  %79 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %79, i32 0, i32 1
  store %struct._object* %call97, %struct._object** %index, align 8
  %80 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %index98 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %80, i32 0, i32 1
  %81 = load %struct._object*, %struct._object** %index98, align 8
  %tobool99 = icmp ne %struct._object* %81, null
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  br label %create_failure

if.end.101:                                       ; preds = %if.end.96
  %82 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %83 = bitcast %struct.longrangeiterobject* %82 to %struct._object*
  store %struct._object* %83, %struct._object** %retval
  br label %return

create_failure:                                   ; preds = %if.then.100, %if.then.95, %if.then.88, %if.then.70, %if.then.54, %if.then.44
  br label %do.body.102

do.body.102:                                      ; preds = %create_failure
  %84 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8
  %85 = bitcast %struct.longrangeiterobject* %84 to %struct._object*
  store %struct._object* %85, %struct._object** %_py_decref_tmp103, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %87, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %90(%struct._object* %91)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.112, %if.end.101, %if.then.39, %if.end.33
  %92 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %92
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_reduce(%struct.rangeobject* %r, %struct._object* %args) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %1 = bitcast %struct.rangeobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %start, align 8
  %5 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %stop, align 8
  %7 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %step, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, %struct._object* %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_count(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %count = alloca i64, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type
  br i1 %cmp2, label %if.then, label %if.else.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %5 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call = call i32 @range_contains_long(%struct.rangeobject* %4, %struct._object* %5)
  store i32 %call, i32* %result, align 4
  %6 = load i32, i32* %result, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %call6 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %call8 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.else.9:                                        ; preds = %lor.lhs.false
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %9 = bitcast %struct.rangeobject* %8 to %struct._object*
  %10 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call10 = call i64 @_PySequence_IterSearch(%struct._object* %9, %struct._object* %10, i32 1)
  store i64 %call10, i64* %count, align 8
  %11 = load i64, i64* %count, align 8
  %cmp11 = icmp eq i64 %11, -1
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else.9
  %12 = load i64, i64* %count, align 8
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.12, %if.else.7, %if.then.5, %if.then.4
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_index(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %contains = alloca i32, align 4
  %index = alloca i64, align 8
  %idx = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type
  br i1 %cmp2, label %if.end.6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %5 = bitcast %struct.rangeobject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call = call i64 @_PySequence_IterSearch(%struct._object* %5, %struct._object* %6, i32 2)
  store i64 %call, i64* %index, align 8
  %7 = load i64, i64* %index, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i64, i64* %index, align 8
  %call5 = call %struct._object* @PyLong_FromSsize_t(i64 %8)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %entry
  %9 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %10 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call7 = call i32 @range_contains_long(%struct.rangeobject* %9, %struct._object* %10)
  store i32 %call7, i32* %contains, align 4
  %11 = load i32, i32* %contains, align 4
  %cmp8 = icmp eq i32 %11, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %12 = load i32, i32* %contains, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.11, label %if.end.22

if.then.11:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %ob.addr, align 8
  %14 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %start, align 8
  %call12 = call %struct._object* @PyNumber_Subtract(%struct._object* %13, %struct._object* %15)
  store %struct._object* %call12, %struct._object** %tmp, align 8
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp13 = icmp eq %struct._object* %16, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.11
  %17 = load %struct._object*, %struct._object** %tmp, align 8
  %18 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %step, align 8
  %call16 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %17, %struct._object* %19)
  store %struct._object* %call16, %struct._object** %idx, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %20 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.21
  %27 = load %struct._object*, %struct._object** %idx, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.10
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %29 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct._object* %29)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %do.end, %if.then.14, %if.then.9, %if.end, %if.then.4
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_len_of_range(i64 %lo, i64 %hi, i64 %step) #0 {
entry:
  %retval = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %step.addr = alloca i64, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store i64 %step, i64* %step.addr, align 8
  %0 = load i64, i64* %step.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %lo.addr, align 8
  %2 = load i64, i64* %hi.addr, align 8
  %cmp1 = icmp slt i64 %1, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %hi.addr, align 8
  %sub = sub i64 %3, 1
  %4 = load i64, i64* %lo.addr, align 8
  %sub2 = sub i64 %sub, %4
  %5 = load i64, i64* %step.addr, align 8
  %div = udiv i64 %sub2, %5
  %add = add i64 1, %div
  store i64 %add, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %step.addr, align 8
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.12

land.lhs.true.4:                                  ; preds = %if.else
  %7 = load i64, i64* %lo.addr, align 8
  %8 = load i64, i64* %hi.addr, align 8
  %cmp5 = icmp sgt i64 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load i64, i64* %lo.addr, align 8
  %sub7 = sub i64 %9, 1
  %10 = load i64, i64* %hi.addr, align 8
  %sub8 = sub i64 %sub7, %10
  %11 = load i64, i64* %step.addr, align 8
  %sub9 = sub i64 0, %11
  %div10 = udiv i64 %sub8, %sub9
  %add11 = add i64 1, %div10
  store i64 %add11, i64* %retval
  br label %return

if.else.12:                                       ; preds = %land.lhs.true.4, %if.else
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.6, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fast_range_iter(i64 %start, i64 %stop, i64 %step) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %stop.addr = alloca i64, align 8
  %step.addr = alloca i64, align 8
  %it = alloca %struct.rangeiterobject*, align 8
  %ulen = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  store i64 %step, i64* %step.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PyRangeIter_Type)
  %0 = bitcast %struct._object* %call to %struct.rangeiterobject*
  store %struct.rangeiterobject* %0, %struct.rangeiterobject** %it, align 8
  %1 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %cmp = icmp eq %struct.rangeiterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  %3 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %start1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %3, i32 0, i32 2
  store i64 %2, i64* %start1, align 8
  %4 = load i64, i64* %step.addr, align 8
  %5 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %step2 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %5, i32 0, i32 3
  store i64 %4, i64* %step2, align 8
  %6 = load i64, i64* %start.addr, align 8
  %7 = load i64, i64* %stop.addr, align 8
  %8 = load i64, i64* %step.addr, align 8
  %call3 = call i64 @get_len_of_range(i64 %6, i64 %7, i64 %8)
  store i64 %call3, i64* %ulen, align 8
  %9 = load i64, i64* %ulen, align 8
  %cmp4 = icmp ugt i64 %9, 9223372036854775807
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %10 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %11 = bitcast %struct.rangeiterobject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %18 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %19 = load i64, i64* %ulen, align 8
  %20 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %20, i32 0, i32 4
  store i64 %19, i64* %len, align 8
  %21 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %21, i32 0, i32 1
  store i64 0, i64* %index, align 8
  %22 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8
  %23 = bitcast %struct.rangeiterobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %do.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @validate_step(%struct._object* %step) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %step.addr = alloca %struct._object*, align 8
  %istep = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %step, %struct._object** %step.addr, align 8
  %0 = load %struct._object*, %struct._object** %step.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %step.addr, align 8
  %call1 = call %struct._object* @PyNumber_Index(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %step.addr, align 8
  %2 = load %struct._object*, %struct._object** %step.addr, align 8
  %tobool2 = icmp ne %struct._object* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %step.addr, align 8
  %call4 = call i64 @PyNumber_AsSsize_t(%struct._object* %3, %struct._object* null)
  store i64 %call4, i64* %istep, align 8
  %4 = load i64, i64* %istep, align 8
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.3
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  call void @PyErr_Clear()
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %if.then.3
  %5 = load i64, i64* %istep, align 8
  %cmp8 = icmp eq i64 %5, 0
  br i1 %cmp8, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** %step.addr, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp10 = icmp ne %struct._object* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %step.addr, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %16 = load %struct._object*, %struct._object** %step.addr, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_len(%struct.rangeiterobject* %r) #0 {
entry:
  %r.addr = alloca %struct.rangeiterobject*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8
  %0 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %0, i32 0, i32 4
  %1 = load i64, i64* %len, align 8
  %2 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %2, i32 0, i32 1
  %3 = load i64, i64* %index, align 8
  %sub = sub i64 %1, %3
  %call = call %struct._object* @PyLong_FromLong(i64 %sub)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_reduce(%struct.rangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeiterobject*, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  %range = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8
  store %struct._object* null, %struct._object** %start, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %step, align 8
  %0 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %start1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %0, i32 0, i32 2
  %1 = load i64, i64* %start1, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %1)
  store %struct._object* %call, %struct._object** %start, align 8
  %2 = load %struct._object*, %struct._object** %start, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %err

if.end:                                           ; preds = %entry
  %3 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %start2 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %3, i32 0, i32 2
  %4 = load i64, i64* %start2, align 8
  %5 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %5, i32 0, i32 4
  %6 = load i64, i64* %len, align 8
  %7 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %step3 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %7, i32 0, i32 3
  %8 = load i64, i64* %step3, align 8
  %mul = mul i64 %6, %8
  %add = add i64 %4, %mul
  %call4 = call %struct._object* @PyLong_FromLong(i64 %add)
  store %struct._object* %call4, %struct._object** %stop, align 8
  %9 = load %struct._object*, %struct._object** %stop, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %err

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %step8 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %10, i32 0, i32 3
  %11 = load i64, i64* %step8, align 8
  %call9 = call %struct._object* @PyLong_FromLong(i64 %11)
  store %struct._object* %call9, %struct._object** %step, align 8
  %12 = load %struct._object*, %struct._object** %step, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %err

if.end.12:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %start, align 8
  %14 = load %struct._object*, %struct._object** %stop, align 8
  %15 = load %struct._object*, %struct._object** %step, align 8
  %call13 = call %struct.rangeobject* @make_range_object(%struct._typeobject* @PyRange_Type, %struct._object* %13, %struct._object* %14, %struct._object* %15)
  %16 = bitcast %struct.rangeobject* %call13 to %struct._object*
  store %struct._object* %16, %struct._object** %range, align 8
  %17 = load %struct._object*, %struct._object** %range, align 8
  %cmp14 = icmp eq %struct._object* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %err

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %18 = load %struct._object*, %struct._object** %range, align 8
  %19 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %19, i32 0, i32 1
  %20 = load i64, i64* %index, align 8
  %call18 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._object* %call17, %struct._object* %18, i64 %20)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.15, %if.then.11, %if.then.6, %if.then
  br label %do.body

do.body:                                          ; preds = %err
  %21 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp19 = icmp ne %struct._object* %22, null
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.24

if.else:                                          ; preds = %do.body.21
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %30 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp28, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp29 = icmp ne %struct._object* %31, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp32, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %34, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %37(%struct._object* %38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.27
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %39 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp45, align 8
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %40, null
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %do.body.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp49, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %43, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %46(%struct._object* %47)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.44
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.60, %if.end.16
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_setstate(%struct.rangeiterobject* %r, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %0)
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
  %2 = load i64, i64* %index, align 8
  %cmp2 = icmp slt i64 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %index, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* %index, align 8
  %4 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %4, i32 0, i32 4
  %5 = load i64, i64* %len, align 8
  %cmp4 = icmp sgt i64 %3, %5
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.else
  %6 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %len6 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %6, i32 0, i32 4
  %7 = load i64, i64* %len6, align 8
  store i64 %7, i64* %index, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %8 = load i64, i64* %index, align 8
  %9 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8
  %index9 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %9, i32 0, i32 1
  store i64 %8, i64* %index9, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_len(%struct.longrangeiterobject* %r, %struct._object* %no_args) #0 {
entry:
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %no_args.addr = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8
  store %struct._object* %no_args, %struct._object** %no_args.addr, align 8
  %0 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %len, align 8
  %2 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %index, align 8
  %call = call %struct._object* @PyNumber_Subtract(%struct._object* %1, %struct._object* %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_reduce(%struct.longrangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %product = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %range = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  %0 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %len, align 8
  %2 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %step, align 8
  %call = call %struct._object* @PyNumber_Multiply(%struct._object* %1, %struct._object* %3)
  store %struct._object* %call, %struct._object** %product, align 8
  %4 = load %struct._object*, %struct._object** %product, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %start, align 8
  %7 = load %struct._object*, %struct._object** %product, align 8
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call1, %struct._object** %stop, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %product, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %stop, align 8
  %cmp5 = icmp eq %struct._object* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %16 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start8 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %start8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt9, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt9, align 8
  %19 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step10 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %step10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %21, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %22 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start13 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %start13, align 8
  %24 = load %struct._object*, %struct._object** %stop, align 8
  %25 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step14 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %25, i32 0, i32 3
  %26 = load %struct._object*, %struct._object** %step14, align 8
  %call15 = call %struct.rangeobject* @make_range_object(%struct._typeobject* @PyRange_Type, %struct._object* %23, %struct._object* %24, %struct._object* %26)
  %27 = bitcast %struct.rangeobject* %call15 to %struct._object*
  store %struct._object* %27, %struct._object** %range, align 8
  %28 = load %struct._object*, %struct._object** %range, align 8
  %cmp16 = icmp eq %struct._object* %28, null
  br i1 %cmp16, label %if.then.17, label %if.end.53

if.then.17:                                       ; preds = %if.end.7
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %29 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %start20 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %29, i32 0, i32 2
  %30 = load %struct._object*, %struct._object** %start20, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp19, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %32, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.18
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.18
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %35(%struct._object* %36)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %37 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp31, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %39, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %42(%struct._object* %43)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %44 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %step43 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %44, i32 0, i32 3
  %45 = load %struct._object*, %struct._object** %step43, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp42, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %47, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %50(%struct._object* %51)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.7
  %call54 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %52 = load %struct._object*, %struct._object** %range, align 8
  %53 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %index, align 8
  %call55 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* %call54, %struct._object* %52, %struct._object* %54)
  store %struct._object* %call55, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.53, %do.end.52, %if.then.6, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_setstate(%struct.longrangeiterobject* %r, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %zero = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %zero, align 8
  %0 = load %struct._object*, %struct._object** %zero, align 8
  %cmp1 = icmp eq %struct._object* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %state.addr, align 8
  %2 = load %struct._object*, %struct._object** %zero, align 8
  %call2 = call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %2, i32 0)
  store i32 %call2, i32* %cmp, align 4
  %3 = load i32, i32* %cmp, align 4
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %index, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp5 = icmp ne %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %do.body
  %7 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index7 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %7, i32 0, i32 1
  store %struct._object* null, %struct._object** %index7, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.6
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %15 = load %struct._object*, %struct._object** %zero, align 8
  %16 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index14 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %16, i32 0, i32 1
  store %struct._object* %15, %struct._object** %index14, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %18 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp17, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %20, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %23(%struct._object* %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %25 = load i32, i32* %cmp, align 4
  %cmp27 = icmp slt i32 %25, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %do.end.26
  %26 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %len, align 8
  %28 = load %struct._object*, %struct._object** %state.addr, align 8
  %call30 = call i32 @PyObject_RichCompareBool(%struct._object* %27, %struct._object* %28, i32 0)
  store i32 %call30, i32* %cmp, align 4
  %29 = load i32, i32* %cmp, align 4
  %cmp31 = icmp slt i32 %29, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  %30 = load i32, i32* %cmp, align 4
  %cmp34 = icmp sgt i32 %30, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %31 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %len36 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %31, i32 0, i32 4
  %32 = load %struct._object*, %struct._object** %len36, align 8
  store %struct._object* %32, %struct._object** %state.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %33 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index40 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %33, i32 0, i32 1
  %34 = load %struct._object*, %struct._object** %index40, align 8
  store %struct._object* %34, %struct._object** %_py_tmp39, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp39, align 8
  %cmp41 = icmp ne %struct._object* %35, null
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.body.38
  %36 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index43 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %36, i32 0, i32 1
  store %struct._object* null, %struct._object** %index43, align 8
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.42
  %37 = load %struct._object*, %struct._object** %_py_tmp39, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp45, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %39, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %42(%struct._object* %43)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.38
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %44 = load %struct._object*, %struct._object** %state.addr, align 8
  %45 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index57 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %45, i32 0, i32 1
  store %struct._object* %44, %struct._object** %index57, align 8
  %46 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8
  %index58 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %46, i32 0, i32 1
  %47 = load %struct._object*, %struct._object** %index58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %48, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc61 = add i64 %49, 1
  store i64 %inc61, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.56, %if.then.32, %if.then.28, %do.end.13, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
