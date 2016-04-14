; ModuleID = 'programs_new/Python-new/rangeobject.bc.ll'
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
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !400, metadata !1015), !dbg !1016
  br label %do.body, !dbg !1017

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !401, metadata !1015), !dbg !1020
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1021, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %1, i32 0, i32 1, !dbg !1022
  %2 = load %struct._object*, %struct._object** %start, align 8, !dbg !1022, !tbaa !1023
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8, !dbg !1020, !tbaa !1011
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1027, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1029
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1030, !tbaa !1031
  %dec = add i64 %4, -1, !dbg !1030
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1030, !tbaa !1031
  %cmp = icmp ne i64 %dec, 0, !dbg !1032
  br i1 %cmp, label %if.then, label %if.else, !dbg !1033

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1034

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1036, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1038
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1038, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4, !dbg !1040
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1040, !tbaa !1041
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1045, !tbaa !1011
  call void %7(%struct._object* %8), !dbg !1046
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1047
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !1047
  br label %do.end, !dbg !1049

do.end:                                           ; preds = %if.end
  br label %do.body.1, !dbg !1050

do.body.1:                                        ; preds = %do.end
  %10 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp2, metadata !403, metadata !1015), !dbg !1053
  %11 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1054, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %11, i32 0, i32 2, !dbg !1055
  %12 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1055, !tbaa !1056
  store %struct._object* %12, %struct._object** %_py_decref_tmp2, align 8, !dbg !1053, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1057, !tbaa !1011
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1059
  %14 = load i64, i64* %ob_refcnt3, align 8, !dbg !1060, !tbaa !1031
  %dec4 = add i64 %14, -1, !dbg !1060
  store i64 %dec4, i64* %ob_refcnt3, align 8, !dbg !1060, !tbaa !1031
  %cmp5 = icmp ne i64 %dec4, 0, !dbg !1061
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !1062

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10, !dbg !1063

if.else.7:                                        ; preds = %do.body.1
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1065, !tbaa !1011
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1067
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1067, !tbaa !1039
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1068
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8, !dbg !1068, !tbaa !1041
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1069, !tbaa !1011
  call void %17(%struct._object* %18), !dbg !1070
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  %19 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !1071
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1071
  br label %do.end.11, !dbg !1072

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12, !dbg !1073

do.body.12:                                       ; preds = %do.end.11
  %20 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1074
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !405, metadata !1015), !dbg !1076
  %21 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1077, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %21, i32 0, i32 3, !dbg !1078
  %22 = load %struct._object*, %struct._object** %step, align 8, !dbg !1078, !tbaa !1079
  store %struct._object* %22, %struct._object** %_py_decref_tmp13, align 8, !dbg !1076, !tbaa !1011
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1080, !tbaa !1011
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1082
  %24 = load i64, i64* %ob_refcnt14, align 8, !dbg !1083, !tbaa !1031
  %dec15 = add i64 %24, -1, !dbg !1083
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1083, !tbaa !1031
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !1084
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1085

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !1086

if.else.18:                                       ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1088, !tbaa !1011
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1090
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1090, !tbaa !1039
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1091
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1091, !tbaa !1041
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1092, !tbaa !1011
  call void %27(%struct._object* %28), !dbg !1093
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %29 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1094
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1094
  br label %do.end.22, !dbg !1095

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23, !dbg !1096

do.body.23:                                       ; preds = %do.end.22
  %30 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !1097
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !407, metadata !1015), !dbg !1099
  %31 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1100, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %31, i32 0, i32 4, !dbg !1101
  %32 = load %struct._object*, %struct._object** %length, align 8, !dbg !1101, !tbaa !1102
  store %struct._object* %32, %struct._object** %_py_decref_tmp24, align 8, !dbg !1099, !tbaa !1011
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1103, !tbaa !1011
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1105
  %34 = load i64, i64* %ob_refcnt25, align 8, !dbg !1106, !tbaa !1031
  %dec26 = add i64 %34, -1, !dbg !1106
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !1106, !tbaa !1031
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !1107
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !1108

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !1109

if.else.29:                                       ; preds = %do.body.23
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1111, !tbaa !1011
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !1113
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1113, !tbaa !1039
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !1114
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !1114, !tbaa !1041
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1115, !tbaa !1011
  call void %37(%struct._object* %38), !dbg !1116
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %39 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !1117
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1117
  br label %do.end.33, !dbg !1118

do.end.33:                                        ; preds = %if.end.32
  %40 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1119, !tbaa !1011
  %41 = bitcast %struct.rangeobject* %40 to i8*, !dbg !1119
  call void @PyObject_Free(i8* %41), !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_repr(%struct.rangeobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %istep = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !413, metadata !1015), !dbg !1122
  %0 = bitcast i64* %istep to i8*, !dbg !1123
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1123
  call void @llvm.dbg.declare(metadata i64* %istep, metadata !414, metadata !1015), !dbg !1124
  %1 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1125, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %1, i32 0, i32 3, !dbg !1126
  %2 = load %struct._object*, %struct._object** %step, align 8, !dbg !1126, !tbaa !1079
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %2, %struct._object* null), !dbg !1127
  store i64 %call, i64* %istep, align 8, !dbg !1128, !tbaa !1129
  %3 = load i64, i64* %istep, align 8, !dbg !1130, !tbaa !1129
  %cmp = icmp ne i64 %3, 1, !dbg !1132
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1133

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %istep, align 8, !dbg !1134, !tbaa !1129
  %cmp1 = icmp eq i64 %4, -1, !dbg !1136
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !1137

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !1138
  %tobool = icmp ne %struct._object* %call2, null, !dbg !1138
  br i1 %tobool, label %if.then, label %if.end, !dbg !1140

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @PyErr_Clear(), !dbg !1141
  br label %if.end, !dbg !1143

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %5 = load i64, i64* %istep, align 8, !dbg !1144, !tbaa !1129
  %cmp3 = icmp eq i64 %5, 1, !dbg !1146
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1147

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1148, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %6, i32 0, i32 1, !dbg !1149
  %7 = load %struct._object*, %struct._object** %start, align 8, !dbg !1149, !tbaa !1023
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1150, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 2, !dbg !1151
  %9 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1151, !tbaa !1056
  %call5 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct._object* %7, %struct._object* %9), !dbg !1152
  store %struct._object* %call5, %struct._object** %retval, !dbg !1153
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1153

if.else:                                          ; preds = %if.end
  %10 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1154, !tbaa !1011
  %start6 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %10, i32 0, i32 1, !dbg !1155
  %11 = load %struct._object*, %struct._object** %start6, align 8, !dbg !1155, !tbaa !1023
  %12 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1156, !tbaa !1011
  %stop7 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %12, i32 0, i32 2, !dbg !1157
  %13 = load %struct._object*, %struct._object** %stop7, align 8, !dbg !1157, !tbaa !1056
  %14 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1158, !tbaa !1011
  %step8 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 3, !dbg !1159
  %15 = load %struct._object*, %struct._object** %step8, align 8, !dbg !1159, !tbaa !1079
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct._object* %11, %struct._object* %13, %struct._object* %15), !dbg !1160
  store %struct._object* %call9, %struct._object** %retval, !dbg !1161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1161

cleanup:                                          ; preds = %if.else, %if.then.4
  %16 = bitcast i64* %istep to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1162
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1162
  ret %struct._object* %17, !dbg !1162
}

; Function Attrs: nounwind uwtable
define internal i64 @range_hash(%struct.rangeobject* %r) #0 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %t = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  %cmp_result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %one = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !651, metadata !1015), !dbg !1163
  %0 = bitcast %struct._object** %t to i8*, !dbg !1164
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1164
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !652, metadata !1015), !dbg !1165
  %1 = bitcast i64* %result to i8*, !dbg !1166
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1166
  call void @llvm.dbg.declare(metadata i64* %result, metadata !653, metadata !1015), !dbg !1167
  store i64 -1, i64* %result, align 8, !dbg !1167, !tbaa !1129
  %2 = bitcast i32* %cmp_result to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %cmp_result, metadata !654, metadata !1015), !dbg !1169
  %call = call %struct._object* @PyTuple_New(i64 3), !dbg !1170
  store %struct._object* %call, %struct._object** %t, align 8, !dbg !1171, !tbaa !1011
  %3 = load %struct._object*, %struct._object** %t, align 8, !dbg !1172, !tbaa !1011
  %tobool = icmp ne %struct._object* %3, null, !dbg !1172
  br i1 %tobool, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, !dbg !1175
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !1175

if.end:                                           ; preds = %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1176, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %4, i32 0, i32 4, !dbg !1177
  %5 = load %struct._object*, %struct._object** %length, align 8, !dbg !1177, !tbaa !1102
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1178
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1179, !tbaa !1031
  %inc = add i64 %6, 1, !dbg !1179
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1179, !tbaa !1031
  %7 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1180, !tbaa !1011
  %length1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %7, i32 0, i32 4, !dbg !1181
  %8 = load %struct._object*, %struct._object** %length1, align 8, !dbg !1181, !tbaa !1102
  %9 = load %struct._object*, %struct._object** %t, align 8, !dbg !1182, !tbaa !1011
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*, !dbg !1183
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1, !dbg !1184
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1185
  store %struct._object* %8, %struct._object** %arrayidx, align 8, !dbg !1186, !tbaa !1011
  %11 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1187, !tbaa !1011
  %length2 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %11, i32 0, i32 4, !dbg !1188
  %12 = load %struct._object*, %struct._object** %length2, align 8, !dbg !1188, !tbaa !1102
  %call3 = call i32 @PyObject_Not(%struct._object* %12), !dbg !1189
  store i32 %call3, i32* %cmp_result, align 4, !dbg !1190, !tbaa !1191
  %13 = load i32, i32* %cmp_result, align 4, !dbg !1192, !tbaa !1191
  %cmp = icmp eq i32 %13, -1, !dbg !1194
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1195

if.then.4:                                        ; preds = %if.end
  br label %end, !dbg !1196

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %cmp_result, align 4, !dbg !1197, !tbaa !1191
  %cmp6 = icmp eq i32 %14, 1, !dbg !1198
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1199

if.then.7:                                        ; preds = %if.end.5
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1200, !tbaa !1031
  %inc8 = add i64 %15, 1, !dbg !1200
  store i64 %inc8, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1200, !tbaa !1031
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1202, !tbaa !1031
  %inc9 = add i64 %16, 1, !dbg !1202
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1202, !tbaa !1031
  %17 = load %struct._object*, %struct._object** %t, align 8, !dbg !1203, !tbaa !1011
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !1204
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !1205
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 1, !dbg !1206
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx11, align 8, !dbg !1207, !tbaa !1011
  %19 = load %struct._object*, %struct._object** %t, align 8, !dbg !1208, !tbaa !1011
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !1209
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !1210
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2, !dbg !1211
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx13, align 8, !dbg !1212, !tbaa !1011
  br label %if.end.45, !dbg !1213

if.else:                                          ; preds = %if.end.5
  %21 = bitcast %struct._object** %one to i8*, !dbg !1214
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1214
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !655, metadata !1015), !dbg !1215
  %22 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1216, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %22, i32 0, i32 1, !dbg !1217
  %23 = load %struct._object*, %struct._object** %start, align 8, !dbg !1217, !tbaa !1023
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1218
  %24 = load i64, i64* %ob_refcnt14, align 8, !dbg !1219, !tbaa !1031
  %inc15 = add i64 %24, 1, !dbg !1219
  store i64 %inc15, i64* %ob_refcnt14, align 8, !dbg !1219, !tbaa !1031
  %25 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1220, !tbaa !1011
  %start16 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %25, i32 0, i32 1, !dbg !1221
  %26 = load %struct._object*, %struct._object** %start16, align 8, !dbg !1221, !tbaa !1023
  %27 = load %struct._object*, %struct._object** %t, align 8, !dbg !1222, !tbaa !1011
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*, !dbg !1223
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1, !dbg !1224
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 1, !dbg !1225
  store %struct._object* %26, %struct._object** %arrayidx18, align 8, !dbg !1226, !tbaa !1011
  %call19 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !1227
  store %struct._object* %call19, %struct._object** %one, align 8, !dbg !1228, !tbaa !1011
  %29 = load %struct._object*, %struct._object** %one, align 8, !dbg !1229, !tbaa !1011
  %tobool20 = icmp ne %struct._object* %29, null, !dbg !1229
  br i1 %tobool20, label %if.end.22, label %if.then.21, !dbg !1231

if.then.21:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1232

if.end.22:                                        ; preds = %if.else
  %30 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1233, !tbaa !1011
  %length23 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %30, i32 0, i32 4, !dbg !1234
  %31 = load %struct._object*, %struct._object** %length23, align 8, !dbg !1234, !tbaa !1102
  %32 = load %struct._object*, %struct._object** %one, align 8, !dbg !1235, !tbaa !1011
  %call24 = call i32 @PyObject_RichCompareBool(%struct._object* %31, %struct._object* %32, i32 2), !dbg !1236
  store i32 %call24, i32* %cmp_result, align 4, !dbg !1237, !tbaa !1191
  br label %do.body, !dbg !1238

do.body:                                          ; preds = %if.end.22
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1239
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !1239
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !658, metadata !1015), !dbg !1241
  %34 = load %struct._object*, %struct._object** %one, align 8, !dbg !1242, !tbaa !1011
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8, !dbg !1241, !tbaa !1011
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1243, !tbaa !1011
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1245
  %36 = load i64, i64* %ob_refcnt25, align 8, !dbg !1246, !tbaa !1031
  %dec = add i64 %36, -1, !dbg !1246
  store i64 %dec, i64* %ob_refcnt25, align 8, !dbg !1246, !tbaa !1031
  %cmp26 = icmp ne i64 %dec, 0, !dbg !1247
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !1248

if.then.27:                                       ; preds = %do.body
  br label %if.end.29, !dbg !1249

if.else.28:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1251, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1253
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1253, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1254
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1254, !tbaa !1041
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1255, !tbaa !1011
  call void %39(%struct._object* %40), !dbg !1256
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1257
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1257
  br label %do.cond, !dbg !1259

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !1260

do.end:                                           ; preds = %do.cond
  %42 = load i32, i32* %cmp_result, align 4, !dbg !1262, !tbaa !1191
  %cmp30 = icmp eq i32 %42, -1, !dbg !1264
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !1265

if.then.31:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1266

if.end.32:                                        ; preds = %do.end
  %43 = load i32, i32* %cmp_result, align 4, !dbg !1267, !tbaa !1191
  %cmp33 = icmp eq i32 %43, 1, !dbg !1269
  br i1 %cmp33, label %if.then.34, label %if.else.38, !dbg !1270

if.then.34:                                       ; preds = %if.end.32
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1271, !tbaa !1031
  %inc35 = add i64 %44, 1, !dbg !1271
  store i64 %inc35, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1271, !tbaa !1031
  %45 = load %struct._object*, %struct._object** %t, align 8, !dbg !1273, !tbaa !1011
  %46 = bitcast %struct._object* %45 to %struct.PyTupleObject*, !dbg !1274
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %46, i32 0, i32 1, !dbg !1275
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 2, !dbg !1276
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx37, align 8, !dbg !1277, !tbaa !1011
  br label %if.end.44, !dbg !1278

if.else.38:                                       ; preds = %if.end.32
  %47 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1279, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %47, i32 0, i32 3, !dbg !1281
  %48 = load %struct._object*, %struct._object** %step, align 8, !dbg !1281, !tbaa !1079
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !1282
  %49 = load i64, i64* %ob_refcnt39, align 8, !dbg !1283, !tbaa !1031
  %inc40 = add i64 %49, 1, !dbg !1283
  store i64 %inc40, i64* %ob_refcnt39, align 8, !dbg !1283, !tbaa !1031
  %50 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !1284, !tbaa !1011
  %step41 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %50, i32 0, i32 3, !dbg !1285
  %51 = load %struct._object*, %struct._object** %step41, align 8, !dbg !1285, !tbaa !1079
  %52 = load %struct._object*, %struct._object** %t, align 8, !dbg !1286, !tbaa !1011
  %53 = bitcast %struct._object* %52 to %struct.PyTupleObject*, !dbg !1287
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %53, i32 0, i32 1, !dbg !1288
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 2, !dbg !1289
  store %struct._object* %51, %struct._object** %arrayidx43, align 8, !dbg !1290, !tbaa !1011
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.38, %if.then.34
  store i32 0, i32* %cleanup.dest.slot, !dbg !1291
  br label %cleanup, !dbg !1291

cleanup:                                          ; preds = %if.end.44, %if.then.31, %if.then.21
  %54 = bitcast %struct._object** %one to i8*, !dbg !1292
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !1292
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 2
  br i1 %SwitchLeaf2, label %end, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.45

if.end.45:                                        ; preds = %cleanup.cont, %if.then.7
  %55 = load %struct._object*, %struct._object** %t, align 8, !dbg !1294, !tbaa !1011
  %call46 = call i64 @PyObject_Hash(%struct._object* %55), !dbg !1295
  store i64 %call46, i64* %result, align 8, !dbg !1296, !tbaa !1129
  br label %end, !dbg !1297

end:                                              ; preds = %LeafBlock.1, %if.end.45, %if.then.4
  br label %do.body.47, !dbg !1298

do.body.47:                                       ; preds = %end
  %56 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %56) #3, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !660, metadata !1015), !dbg !1301
  %57 = load %struct._object*, %struct._object** %t, align 8, !dbg !1302, !tbaa !1011
  store %struct._object* %57, %struct._object** %_py_decref_tmp48, align 8, !dbg !1301, !tbaa !1011
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !1303, !tbaa !1011
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !1305
  %59 = load i64, i64* %ob_refcnt49, align 8, !dbg !1306, !tbaa !1031
  %dec50 = add i64 %59, -1, !dbg !1306
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !1306, !tbaa !1031
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !1307
  br i1 %cmp51, label %if.then.52, label %if.else.53, !dbg !1308

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56, !dbg !1309

if.else.53:                                       ; preds = %do.body.47
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !1311, !tbaa !1011
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !1313
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !1313, !tbaa !1039
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !1314
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !1314, !tbaa !1041
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !1315, !tbaa !1011
  call void %62(%struct._object* %63), !dbg !1316
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %64 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !1317
  br label %do.cond.57, !dbg !1319

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !1320

do.end.58:                                        ; preds = %do.cond.57
  %65 = load i64, i64* %result, align 8, !dbg !1322, !tbaa !1129
  store i64 %65, i64* %retval, !dbg !1323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59, !dbg !1323

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.59

cleanup.59:                                       ; preds = %NewDefault, %do.end.58, %if.then
  %66 = bitcast i32* %cmp_result to i8*, !dbg !1324
  call void @llvm.lifetime.end(i64 4, i8* %66) #3, !dbg !1324
  %67 = bitcast i64* %result to i8*, !dbg !1324
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !1324
  %68 = bitcast %struct._object** %t to i8*, !dbg !1324
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !1324
  %69 = load i64, i64* %retval, !dbg !1324
  ret i64 %69, !dbg !1324
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !664, metadata !1015), !dbg !1325
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !665, metadata !1015), !dbg !1326
  store i32 %op, i32* %op.addr, align 4, !tbaa !1191
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !666, metadata !1015), !dbg !1327
  %0 = bitcast i32* %result to i8*, !dbg !1328
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1328
  call void @llvm.dbg.declare(metadata i32* %result, metadata !667, metadata !1015), !dbg !1329
  %1 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1330, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1332
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1332, !tbaa !1039
  %cmp = icmp eq %struct._typeobject* %2, @PyRange_Type, !dbg !1333
  br i1 %cmp, label %if.end, label %if.then, !dbg !1334

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1335, !tbaa !1031
  %inc = add i64 %3, 1, !dbg !1335
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1335, !tbaa !1031
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1336

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %op.addr, align 4, !dbg !1337, !tbaa !1191
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %if.end
  %Pivot.4 = icmp slt i32 %4, 2
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %4, 4
  br i1 %Pivot, label %sw.bb, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %.off = add i32 %4, -4
  %SwitchLeaf2 = icmp ule i32 %.off, 1
  br i1 %SwitchLeaf2, label %sw.bb.11, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp ule i32 %4, 1
  br i1 %SwitchLeaf, label %sw.bb.11, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1338, !tbaa !1011
  %6 = bitcast %struct._object* %5 to %struct.rangeobject*, !dbg !1340
  %7 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1341, !tbaa !1011
  %8 = bitcast %struct._object* %7 to %struct.rangeobject*, !dbg !1342
  %call = call i32 @range_equals(%struct.rangeobject* %6, %struct.rangeobject* %8), !dbg !1343
  store i32 %call, i32* %result, align 4, !dbg !1344, !tbaa !1191
  %9 = load i32, i32* %result, align 4, !dbg !1345, !tbaa !1191
  %cmp1 = icmp eq i32 %9, -1, !dbg !1347
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1348

if.then.2:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval, !dbg !1349
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1349

if.end.3:                                         ; preds = %sw.bb
  %10 = load i32, i32* %op.addr, align 4, !dbg !1350, !tbaa !1191
  %cmp4 = icmp eq i32 %10, 3, !dbg !1352
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1353

if.then.5:                                        ; preds = %if.end.3
  %11 = load i32, i32* %result, align 4, !dbg !1354, !tbaa !1191
  %tobool = icmp ne i32 %11, 0, !dbg !1355
  %lnot = xor i1 %tobool, true, !dbg !1355
  %lnot.ext = zext i1 %lnot to i32, !dbg !1355
  store i32 %lnot.ext, i32* %result, align 4, !dbg !1356, !tbaa !1191
  br label %if.end.6, !dbg !1357

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %12 = load i32, i32* %result, align 4, !dbg !1358, !tbaa !1191
  %tobool7 = icmp ne i32 %12, 0, !dbg !1358
  br i1 %tobool7, label %if.then.8, label %if.else, !dbg !1360

if.then.8:                                        ; preds = %if.end.6
  %13 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1361, !tbaa !1031
  %inc9 = add i64 %13, 1, !dbg !1361
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1361, !tbaa !1031
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1362

if.else:                                          ; preds = %if.end.6
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1363, !tbaa !1031
  %inc10 = add i64 %14, 1, !dbg !1363
  store i64 %inc10, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1363, !tbaa !1031
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1364
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1364

sw.bb.11:                                         ; preds = %LeafBlock.1, %LeafBlock
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1365, !tbaa !1031
  %inc12 = add i64 %15, 1, !dbg !1365
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1365, !tbaa !1031
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1366
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1366

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %call13 = call i32 @PyErr_BadArgument(), !dbg !1367
  store %struct._object* null, %struct._object** %retval, !dbg !1368
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1368

cleanup:                                          ; preds = %sw.default, %sw.bb.11, %if.else, %if.then.8, %if.then.2, %if.then
  %16 = bitcast i32* %result to i8*, !dbg !1369
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !1369
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1369
  ret %struct._object* %17, !dbg !1369
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !952, metadata !1015), !dbg !1370
  %0 = bitcast %struct.rangeobject** %r to i8*, !dbg !1371
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1371
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r, metadata !953, metadata !1015), !dbg !1372
  %1 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !1373, !tbaa !1011
  %2 = bitcast %struct._object* %1 to %struct.rangeobject*, !dbg !1374
  store %struct.rangeobject* %2, %struct.rangeobject** %r, align 8, !dbg !1372, !tbaa !1011
  %3 = bitcast %struct.longrangeiterobject** %it to i8*, !dbg !1375
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1375
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %it, metadata !954, metadata !1015), !dbg !1376
  %4 = bitcast i64* %lstart to i8*, !dbg !1377
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %lstart, metadata !955, metadata !1015), !dbg !1378
  %5 = bitcast i64* %lstop to i8*, !dbg !1377
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %lstop, metadata !956, metadata !1015), !dbg !1379
  %6 = bitcast i64* %lstep to i8*, !dbg !1377
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %lstep, metadata !957, metadata !1015), !dbg !1380
  %7 = bitcast %struct._object** %int_it to i8*, !dbg !1381
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1381
  call void @llvm.dbg.declare(metadata %struct._object** %int_it, metadata !958, metadata !1015), !dbg !1382
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1383, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 1, !dbg !1384
  %9 = load %struct._object*, %struct._object** %start, align 8, !dbg !1384, !tbaa !1023
  %call = call i64 @PyLong_AsLong(%struct._object* %9), !dbg !1385
  store i64 %call, i64* %lstart, align 8, !dbg !1386, !tbaa !1129
  %10 = load i64, i64* %lstart, align 8, !dbg !1387, !tbaa !1129
  %cmp = icmp eq i64 %10, -1, !dbg !1389
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1390

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1391
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1391
  br i1 %tobool, label %if.then, label %if.end, !dbg !1393

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !1394
  br label %long_range, !dbg !1396

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1397, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %11, i32 0, i32 2, !dbg !1398
  %12 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1398, !tbaa !1056
  %call2 = call i64 @PyLong_AsLong(%struct._object* %12), !dbg !1399
  store i64 %call2, i64* %lstop, align 8, !dbg !1400, !tbaa !1129
  %13 = load i64, i64* %lstop, align 8, !dbg !1401, !tbaa !1129
  %cmp3 = icmp eq i64 %13, -1, !dbg !1403
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8, !dbg !1404

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !1405
  %tobool6 = icmp ne %struct._object* %call5, null, !dbg !1405
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !1407

if.then.7:                                        ; preds = %land.lhs.true.4
  call void @PyErr_Clear(), !dbg !1408
  br label %long_range, !dbg !1410

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %14 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1411, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 3, !dbg !1412
  %15 = load %struct._object*, %struct._object** %step, align 8, !dbg !1412, !tbaa !1079
  %call9 = call i64 @PyLong_AsLong(%struct._object* %15), !dbg !1413
  store i64 %call9, i64* %lstep, align 8, !dbg !1414, !tbaa !1129
  %16 = load i64, i64* %lstep, align 8, !dbg !1415, !tbaa !1129
  %cmp10 = icmp eq i64 %16, -1, !dbg !1417
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15, !dbg !1418

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !1419
  %tobool13 = icmp ne %struct._object* %call12, null, !dbg !1419
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !1421

if.then.14:                                       ; preds = %land.lhs.true.11
  call void @PyErr_Clear(), !dbg !1422
  br label %long_range, !dbg !1424

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end.8
  %17 = load i64, i64* %lstart, align 8, !dbg !1425, !tbaa !1129
  %18 = load i64, i64* %lstop, align 8, !dbg !1426, !tbaa !1129
  %19 = load i64, i64* %lstep, align 8, !dbg !1427, !tbaa !1129
  %call16 = call %struct._object* @fast_range_iter(i64 %17, i64 %18, i64 %19), !dbg !1428
  store %struct._object* %call16, %struct._object** %int_it, align 8, !dbg !1429, !tbaa !1011
  %20 = load %struct._object*, %struct._object** %int_it, align 8, !dbg !1430, !tbaa !1011
  %cmp17 = icmp eq %struct._object* %20, null, !dbg !1432
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22, !dbg !1433

land.lhs.true.18:                                 ; preds = %if.end.15
  %21 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1434, !tbaa !1011
  %call19 = call i32 @PyErr_ExceptionMatches(%struct._object* %21), !dbg !1436
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1436
  br i1 %tobool20, label %if.then.21, label %if.end.22, !dbg !1437

if.then.21:                                       ; preds = %land.lhs.true.18
  call void @PyErr_Clear(), !dbg !1438
  br label %long_range, !dbg !1440

if.end.22:                                        ; preds = %land.lhs.true.18, %if.end.15
  %22 = load %struct._object*, %struct._object** %int_it, align 8, !dbg !1441, !tbaa !1011
  store %struct._object* %22, %struct._object** %retval, !dbg !1442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1442

long_range:                                       ; preds = %if.then.21, %if.then.14, %if.then.7, %if.then
  %call23 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyLongRangeIter_Type), !dbg !1443
  %23 = bitcast %struct._object* %call23 to %struct.longrangeiterobject*, !dbg !1444
  store %struct.longrangeiterobject* %23, %struct.longrangeiterobject** %it, align 8, !dbg !1445, !tbaa !1011
  %24 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1446, !tbaa !1011
  %cmp24 = icmp eq %struct.longrangeiterobject* %24, null, !dbg !1448
  br i1 %cmp24, label %if.then.25, label %if.end.26, !dbg !1449

if.then.25:                                       ; preds = %long_range
  store %struct._object* null, %struct._object** %retval, !dbg !1450
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1450

if.end.26:                                        ; preds = %long_range
  %25 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1451, !tbaa !1011
  %start27 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %25, i32 0, i32 1, !dbg !1452
  %26 = load %struct._object*, %struct._object** %start27, align 8, !dbg !1452, !tbaa !1023
  %27 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1453, !tbaa !1011
  %start28 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %27, i32 0, i32 2, !dbg !1454
  store %struct._object* %26, %struct._object** %start28, align 8, !dbg !1455, !tbaa !1056
  %28 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1456, !tbaa !1011
  %step29 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %28, i32 0, i32 3, !dbg !1457
  %29 = load %struct._object*, %struct._object** %step29, align 8, !dbg !1457, !tbaa !1079
  %30 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1458, !tbaa !1011
  %step30 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %30, i32 0, i32 3, !dbg !1459
  store %struct._object* %29, %struct._object** %step30, align 8, !dbg !1460, !tbaa !1079
  %31 = load %struct.rangeobject*, %struct.rangeobject** %r, align 8, !dbg !1461, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %31, i32 0, i32 4, !dbg !1462
  %32 = load %struct._object*, %struct._object** %length, align 8, !dbg !1462, !tbaa !1102
  %33 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1463, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %33, i32 0, i32 4, !dbg !1464
  store %struct._object* %32, %struct._object** %len, align 8, !dbg !1465, !tbaa !1102
  %34 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1466, !tbaa !1011
  %start31 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %34, i32 0, i32 2, !dbg !1467
  %35 = load %struct._object*, %struct._object** %start31, align 8, !dbg !1467, !tbaa !1056
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1468
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1469, !tbaa !1031
  %inc = add i64 %36, 1, !dbg !1469
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1469, !tbaa !1031
  %37 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1470, !tbaa !1011
  %step32 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %37, i32 0, i32 3, !dbg !1471
  %38 = load %struct._object*, %struct._object** %step32, align 8, !dbg !1471, !tbaa !1079
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1472
  %39 = load i64, i64* %ob_refcnt33, align 8, !dbg !1473, !tbaa !1031
  %inc34 = add i64 %39, 1, !dbg !1473
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !1473, !tbaa !1031
  %40 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1474, !tbaa !1011
  %len35 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %40, i32 0, i32 4, !dbg !1475
  %41 = load %struct._object*, %struct._object** %len35, align 8, !dbg !1475, !tbaa !1102
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1476
  %42 = load i64, i64* %ob_refcnt36, align 8, !dbg !1477, !tbaa !1031
  %inc37 = add i64 %42, 1, !dbg !1477
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !1477, !tbaa !1031
  %call38 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1478
  %43 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1479, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %43, i32 0, i32 1, !dbg !1480
  store %struct._object* %call38, %struct._object** %index, align 8, !dbg !1481, !tbaa !1023
  %44 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1482, !tbaa !1011
  %index39 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %44, i32 0, i32 1, !dbg !1484
  %45 = load %struct._object*, %struct._object** %index39, align 8, !dbg !1484, !tbaa !1023
  %tobool40 = icmp ne %struct._object* %45, null, !dbg !1482
  br i1 %tobool40, label %if.end.42, label %if.then.41, !dbg !1485

if.then.41:                                       ; preds = %if.end.26
  br label %create_failure, !dbg !1486

if.end.42:                                        ; preds = %if.end.26
  %46 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1487, !tbaa !1011
  %47 = bitcast %struct.longrangeiterobject* %46 to %struct._object*, !dbg !1488
  store %struct._object* %47, %struct._object** %retval, !dbg !1489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1489

create_failure:                                   ; preds = %if.then.41
  br label %do.body, !dbg !1490

do.body:                                          ; preds = %create_failure
  %48 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1491
  call void @llvm.lifetime.start(i64 8, i8* %48) #3, !dbg !1491
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !959, metadata !1015), !dbg !1493
  %49 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !1494, !tbaa !1011
  %50 = bitcast %struct.longrangeiterobject* %49 to %struct._object*, !dbg !1495
  store %struct._object* %50, %struct._object** %_py_decref_tmp, align 8, !dbg !1493, !tbaa !1011
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1496, !tbaa !1011
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !1498
  %52 = load i64, i64* %ob_refcnt43, align 8, !dbg !1499, !tbaa !1031
  %dec = add i64 %52, -1, !dbg !1499
  store i64 %dec, i64* %ob_refcnt43, align 8, !dbg !1499, !tbaa !1031
  %cmp44 = icmp ne i64 %dec, 0, !dbg !1500
  br i1 %cmp44, label %if.then.45, label %if.else, !dbg !1501

if.then.45:                                       ; preds = %do.body
  br label %if.end.46, !dbg !1502

if.else:                                          ; preds = %do.body
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1504, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !1506
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1506, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !1507
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1507, !tbaa !1041
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1508, !tbaa !1011
  call void %55(%struct._object* %56), !dbg !1509
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.45
  %57 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1510
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1510
  br label %do.cond, !dbg !1512

do.cond:                                          ; preds = %if.end.46
  br label %do.end, !dbg !1513

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1515
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1515

cleanup:                                          ; preds = %do.end, %if.end.42, %if.then.25, %if.end.22
  %58 = bitcast %struct._object** %int_it to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1516
  %59 = bitcast i64* %lstep to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !1516
  %60 = bitcast i64* %lstop to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %60) #3, !dbg !1516
  %61 = bitcast i64* %lstart to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1516
  %62 = bitcast %struct.longrangeiterobject** %it to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1516
  %63 = bitcast %struct.rangeobject** %r to i8*, !dbg !1516
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !1516
  %64 = load %struct._object*, %struct._object** %retval, !dbg !1516
  ret %struct._object* %64, !dbg !1516
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_xdecref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %_py_xdecref_tmp142 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !752, metadata !1015), !dbg !1517
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !753, metadata !1015), !dbg !1518
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !754, metadata !1015), !dbg !1519
  %0 = bitcast %struct.rangeobject** %obj to i8*, !dbg !1520
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1520
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %obj, metadata !755, metadata !1015), !dbg !1521
  %1 = bitcast %struct._object** %start to i8*, !dbg !1522
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1522
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !756, metadata !1015), !dbg !1523
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1523, !tbaa !1011
  %2 = bitcast %struct._object** %stop to i8*, !dbg !1522
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1522
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !757, metadata !1015), !dbg !1524
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !1524, !tbaa !1011
  %3 = bitcast %struct._object** %step to i8*, !dbg !1522
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1522
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !758, metadata !1015), !dbg !1525
  store %struct._object* null, %struct._object** %step, align 8, !dbg !1525, !tbaa !1011
  %4 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1526, !tbaa !1011
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* %4), !dbg !1528
  %tobool = icmp ne i32 %call, 0, !dbg !1528
  br i1 %tobool, label %if.end, label %if.then, !dbg !1529

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1530

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1531, !tbaa !1011
  %call1 = call i64 @PyTuple_Size(%struct._object* %5), !dbg !1532
  %cmp = icmp sle i64 %call1, 1, !dbg !1533
  br i1 %cmp, label %if.then.2, label %if.else.46, !dbg !1534

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1535, !tbaa !1011
  %call3 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %stop), !dbg !1537
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1537
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !1538

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval, !dbg !1539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1539

if.end.6:                                         ; preds = %if.then.2
  %7 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1540, !tbaa !1011
  %call7 = call %struct._object* @PyNumber_Index(%struct._object* %7), !dbg !1541
  store %struct._object* %call7, %struct._object** %stop, align 8, !dbg !1542, !tbaa !1011
  %8 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1543, !tbaa !1011
  %tobool8 = icmp ne %struct._object* %8, null, !dbg !1543
  br i1 %tobool8, label %if.end.10, label %if.then.9, !dbg !1545

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !1546
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1546

if.end.10:                                        ; preds = %if.end.6
  %call11 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1547
  store %struct._object* %call11, %struct._object** %start, align 8, !dbg !1548, !tbaa !1011
  %9 = load %struct._object*, %struct._object** %start, align 8, !dbg !1549, !tbaa !1011
  %tobool12 = icmp ne %struct._object* %9, null, !dbg !1549
  br i1 %tobool12, label %if.end.17, label %if.then.13, !dbg !1550

if.then.13:                                       ; preds = %if.end.10
  br label %do.body, !dbg !1551

do.body:                                          ; preds = %if.then.13
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1552
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1552
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !759, metadata !1015), !dbg !1554
  %11 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1555, !tbaa !1011
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1554, !tbaa !1011
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1556, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1558
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1559, !tbaa !1031
  %dec = add i64 %13, -1, !dbg !1559
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1559, !tbaa !1031
  %cmp14 = icmp ne i64 %dec, 0, !dbg !1560
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !1561

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !1562

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1564, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1566
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1566, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1567
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1567, !tbaa !1041
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1568, !tbaa !1011
  call void %16(%struct._object* %17), !dbg !1569
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1570
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1570
  br label %do.cond, !dbg !1572

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !1573

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1575
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1575

if.end.17:                                        ; preds = %if.end.10
  %call18 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !1576
  store %struct._object* %call18, %struct._object** %step, align 8, !dbg !1577, !tbaa !1011
  %19 = load %struct._object*, %struct._object** %step, align 8, !dbg !1578, !tbaa !1011
  %tobool19 = icmp ne %struct._object* %19, null, !dbg !1578
  br i1 %tobool19, label %if.end.45, label %if.then.20, !dbg !1579

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21, !dbg !1580

do.body.21:                                       ; preds = %if.then.20
  %20 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1581
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !1581
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !765, metadata !1015), !dbg !1583
  %21 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1584, !tbaa !1011
  store %struct._object* %21, %struct._object** %_py_decref_tmp22, align 8, !dbg !1583, !tbaa !1011
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1585, !tbaa !1011
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1587
  %23 = load i64, i64* %ob_refcnt23, align 8, !dbg !1588, !tbaa !1031
  %dec24 = add i64 %23, -1, !dbg !1588
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1588, !tbaa !1031
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !1589
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !1590

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30, !dbg !1591

if.else.27:                                       ; preds = %do.body.21
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1593, !tbaa !1011
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1595
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1595, !tbaa !1039
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1596
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1596, !tbaa !1041
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1597, !tbaa !1011
  call void %26(%struct._object* %27), !dbg !1598
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %28 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1599
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !1599
  br label %do.cond.31, !dbg !1601

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !1602

do.end.32:                                        ; preds = %do.cond.31
  br label %do.body.33, !dbg !1604

do.body.33:                                       ; preds = %do.end.32
  %29 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1605
  call void @llvm.lifetime.start(i64 8, i8* %29) #3, !dbg !1605
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !769, metadata !1015), !dbg !1607
  %30 = load %struct._object*, %struct._object** %start, align 8, !dbg !1608, !tbaa !1011
  store %struct._object* %30, %struct._object** %_py_decref_tmp34, align 8, !dbg !1607, !tbaa !1011
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1609, !tbaa !1011
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !1611
  %32 = load i64, i64* %ob_refcnt35, align 8, !dbg !1612, !tbaa !1031
  %dec36 = add i64 %32, -1, !dbg !1612
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1612, !tbaa !1031
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1613
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1614

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1615

if.else.39:                                       ; preds = %do.body.33
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1617, !tbaa !1011
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !1619
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1619, !tbaa !1039
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !1620
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1620, !tbaa !1041
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1621, !tbaa !1011
  call void %35(%struct._object* %36), !dbg !1622
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %37 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1623
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !1623
  br label %do.cond.43, !dbg !1624

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1625

do.end.44:                                        ; preds = %do.cond.43
  store %struct._object* null, %struct._object** %retval, !dbg !1627
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1627

if.end.45:                                        ; preds = %if.end.17
  br label %if.end.99, !dbg !1628

if.else.46:                                       ; preds = %if.end
  %38 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1629, !tbaa !1011
  %call47 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 2, i64 3, %struct._object** %start, %struct._object** %stop, %struct._object** %step), !dbg !1631
  %tobool48 = icmp ne i32 %call47, 0, !dbg !1631
  br i1 %tobool48, label %if.end.50, label %if.then.49, !dbg !1632

if.then.49:                                       ; preds = %if.else.46
  store %struct._object* null, %struct._object** %retval, !dbg !1633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1633

if.end.50:                                        ; preds = %if.else.46
  %39 = load %struct._object*, %struct._object** %start, align 8, !dbg !1634, !tbaa !1011
  %call51 = call %struct._object* @PyNumber_Index(%struct._object* %39), !dbg !1635
  store %struct._object* %call51, %struct._object** %start, align 8, !dbg !1636, !tbaa !1011
  %40 = load %struct._object*, %struct._object** %start, align 8, !dbg !1637, !tbaa !1011
  %tobool52 = icmp ne %struct._object* %40, null, !dbg !1637
  br i1 %tobool52, label %if.end.54, label %if.then.53, !dbg !1639

if.then.53:                                       ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval, !dbg !1640
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1640

if.end.54:                                        ; preds = %if.end.50
  %41 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1641, !tbaa !1011
  %call55 = call %struct._object* @PyNumber_Index(%struct._object* %41), !dbg !1642
  store %struct._object* %call55, %struct._object** %stop, align 8, !dbg !1643, !tbaa !1011
  %42 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1644, !tbaa !1011
  %tobool56 = icmp ne %struct._object* %42, null, !dbg !1644
  br i1 %tobool56, label %if.end.70, label %if.then.57, !dbg !1645

if.then.57:                                       ; preds = %if.end.54
  br label %do.body.58, !dbg !1646

do.body.58:                                       ; preds = %if.then.57
  %43 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1647
  call void @llvm.lifetime.start(i64 8, i8* %43) #3, !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !771, metadata !1015), !dbg !1649
  %44 = load %struct._object*, %struct._object** %start, align 8, !dbg !1650, !tbaa !1011
  store %struct._object* %44, %struct._object** %_py_decref_tmp59, align 8, !dbg !1649, !tbaa !1011
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1651, !tbaa !1011
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1653
  %46 = load i64, i64* %ob_refcnt60, align 8, !dbg !1654, !tbaa !1031
  %dec61 = add i64 %46, -1, !dbg !1654
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !1654, !tbaa !1031
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !1655
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !1656

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !1657

if.else.64:                                       ; preds = %do.body.58
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1659, !tbaa !1011
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1661
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !1661, !tbaa !1039
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !1662
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !1662, !tbaa !1041
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1663, !tbaa !1011
  call void %49(%struct._object* %50), !dbg !1664
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %51 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1665
  call void @llvm.lifetime.end(i64 8, i8* %51) #3, !dbg !1665
  br label %do.cond.68, !dbg !1667

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !1668

do.end.69:                                        ; preds = %do.cond.68
  store %struct._object* null, %struct._object** %retval, !dbg !1670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1670

if.end.70:                                        ; preds = %if.end.54
  %52 = load %struct._object*, %struct._object** %step, align 8, !dbg !1671, !tbaa !1011
  %call71 = call %struct._object* @validate_step(%struct._object* %52), !dbg !1672
  store %struct._object* %call71, %struct._object** %step, align 8, !dbg !1673, !tbaa !1011
  %53 = load %struct._object*, %struct._object** %step, align 8, !dbg !1674, !tbaa !1011
  %tobool72 = icmp ne %struct._object* %53, null, !dbg !1674
  br i1 %tobool72, label %if.end.98, label %if.then.73, !dbg !1675

if.then.73:                                       ; preds = %if.end.70
  br label %do.body.74, !dbg !1676

do.body.74:                                       ; preds = %if.then.73
  %54 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !1677
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !1677
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp75, metadata !776, metadata !1015), !dbg !1679
  %55 = load %struct._object*, %struct._object** %start, align 8, !dbg !1680, !tbaa !1011
  store %struct._object* %55, %struct._object** %_py_decref_tmp75, align 8, !dbg !1679, !tbaa !1011
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !1681, !tbaa !1011
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1683
  %57 = load i64, i64* %ob_refcnt76, align 8, !dbg !1684, !tbaa !1031
  %dec77 = add i64 %57, -1, !dbg !1684
  store i64 %dec77, i64* %ob_refcnt76, align 8, !dbg !1684, !tbaa !1031
  %cmp78 = icmp ne i64 %dec77, 0, !dbg !1685
  br i1 %cmp78, label %if.then.79, label %if.else.80, !dbg !1686

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83, !dbg !1687

if.else.80:                                       ; preds = %do.body.74
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !1689, !tbaa !1011
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1691
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1691, !tbaa !1039
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1692
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1692, !tbaa !1041
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !1693, !tbaa !1011
  call void %60(%struct._object* %61), !dbg !1694
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  %62 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !1695
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1695
  br label %do.cond.84, !dbg !1697

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85, !dbg !1698

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86, !dbg !1700

do.body.86:                                       ; preds = %do.end.85
  %63 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !1701
  call void @llvm.lifetime.start(i64 8, i8* %63) #3, !dbg !1701
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp87, metadata !780, metadata !1015), !dbg !1703
  %64 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1704, !tbaa !1011
  store %struct._object* %64, %struct._object** %_py_decref_tmp87, align 8, !dbg !1703, !tbaa !1011
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1705, !tbaa !1011
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1707
  %66 = load i64, i64* %ob_refcnt88, align 8, !dbg !1708, !tbaa !1031
  %dec89 = add i64 %66, -1, !dbg !1708
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1708, !tbaa !1031
  %cmp90 = icmp ne i64 %dec89, 0, !dbg !1709
  br i1 %cmp90, label %if.then.91, label %if.else.92, !dbg !1710

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95, !dbg !1711

if.else.92:                                       ; preds = %do.body.86
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1713, !tbaa !1011
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1715
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1715, !tbaa !1039
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1716
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1716, !tbaa !1041
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8, !dbg !1717, !tbaa !1011
  call void %69(%struct._object* %70), !dbg !1718
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  %71 = bitcast %struct._object** %_py_decref_tmp87 to i8*, !dbg !1719
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !1719
  br label %do.cond.96, !dbg !1720

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !1721

do.end.97:                                        ; preds = %do.cond.96
  store %struct._object* null, %struct._object** %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1723

if.end.98:                                        ; preds = %if.end.70
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.45
  %72 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1724, !tbaa !1011
  %73 = load %struct._object*, %struct._object** %start, align 8, !dbg !1725, !tbaa !1011
  %74 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1726, !tbaa !1011
  %75 = load %struct._object*, %struct._object** %step, align 8, !dbg !1727, !tbaa !1011
  %call100 = call %struct.rangeobject* @make_range_object(%struct._typeobject* %72, %struct._object* %73, %struct._object* %74, %struct._object* %75), !dbg !1728
  store %struct.rangeobject* %call100, %struct.rangeobject** %obj, align 8, !dbg !1729, !tbaa !1011
  %76 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !1730, !tbaa !1011
  %cmp101 = icmp ne %struct.rangeobject* %76, null, !dbg !1732
  br i1 %cmp101, label %if.then.102, label %if.end.103, !dbg !1733

if.then.102:                                      ; preds = %if.end.99
  %77 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !1734, !tbaa !1011
  %78 = bitcast %struct.rangeobject* %77 to %struct._object*, !dbg !1735
  store %struct._object* %78, %struct._object** %retval, !dbg !1736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1736

if.end.103:                                       ; preds = %if.end.99
  br label %do.body.104, !dbg !1737

do.body.104:                                      ; preds = %if.end.103
  %79 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1738
  call void @llvm.lifetime.start(i64 8, i8* %79) #3, !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !782, metadata !1015), !dbg !1740
  %80 = load %struct._object*, %struct._object** %start, align 8, !dbg !1741, !tbaa !1011
  store %struct._object* %80, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1740, !tbaa !1011
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1742, !tbaa !1011
  %cmp105 = icmp ne %struct._object* %81, null, !dbg !1743
  br i1 %cmp105, label %if.then.106, label %if.end.119, !dbg !1744

if.then.106:                                      ; preds = %do.body.104
  br label %do.body.107, !dbg !1745

do.body.107:                                      ; preds = %if.then.106
  %82 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !1747
  call void @llvm.lifetime.start(i64 8, i8* %82) #3, !dbg !1747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp108, metadata !784, metadata !1015), !dbg !1749
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1750, !tbaa !1011
  store %struct._object* %83, %struct._object** %_py_decref_tmp108, align 8, !dbg !1749, !tbaa !1011
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1751, !tbaa !1011
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0, !dbg !1753
  %85 = load i64, i64* %ob_refcnt109, align 8, !dbg !1754, !tbaa !1031
  %dec110 = add i64 %85, -1, !dbg !1754
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !1754, !tbaa !1031
  %cmp111 = icmp ne i64 %dec110, 0, !dbg !1755
  br i1 %cmp111, label %if.then.112, label %if.else.113, !dbg !1756

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116, !dbg !1757

if.else.113:                                      ; preds = %do.body.107
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1759, !tbaa !1011
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1, !dbg !1761
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8, !dbg !1761, !tbaa !1039
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4, !dbg !1762
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !1762, !tbaa !1041
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !1763, !tbaa !1011
  call void %88(%struct._object* %89), !dbg !1764
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  %90 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %90) #3, !dbg !1765
  br label %do.cond.117, !dbg !1767

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118, !dbg !1768

do.end.118:                                       ; preds = %do.cond.117
  br label %if.end.119, !dbg !1770

if.end.119:                                       ; preds = %do.end.118, %do.body.104
  %91 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1772
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !1772
  br label %do.cond.120, !dbg !1775

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121, !dbg !1776

do.end.121:                                       ; preds = %do.cond.120
  br label %do.body.122, !dbg !1778

do.body.122:                                      ; preds = %do.end.121
  %92 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !1779
  call void @llvm.lifetime.start(i64 8, i8* %92) #3, !dbg !1779
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp123, metadata !787, metadata !1015), !dbg !1781
  %93 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1782, !tbaa !1011
  store %struct._object* %93, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !1781, !tbaa !1011
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !1783, !tbaa !1011
  %cmp124 = icmp ne %struct._object* %94, null, !dbg !1784
  br i1 %cmp124, label %if.then.125, label %if.end.138, !dbg !1785

if.then.125:                                      ; preds = %do.body.122
  br label %do.body.126, !dbg !1786

do.body.126:                                      ; preds = %if.then.125
  %95 = bitcast %struct._object** %_py_decref_tmp127 to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 8, i8* %95) #3, !dbg !1788
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp127, metadata !789, metadata !1015), !dbg !1790
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !1791, !tbaa !1011
  store %struct._object* %96, %struct._object** %_py_decref_tmp127, align 8, !dbg !1790, !tbaa !1011
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !1792, !tbaa !1011
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !1794
  %98 = load i64, i64* %ob_refcnt128, align 8, !dbg !1795, !tbaa !1031
  %dec129 = add i64 %98, -1, !dbg !1795
  store i64 %dec129, i64* %ob_refcnt128, align 8, !dbg !1795, !tbaa !1031
  %cmp130 = icmp ne i64 %dec129, 0, !dbg !1796
  br i1 %cmp130, label %if.then.131, label %if.else.132, !dbg !1797

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135, !dbg !1798

if.else.132:                                      ; preds = %do.body.126
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !1800, !tbaa !1011
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !1802
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8, !dbg !1802, !tbaa !1039
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !1803
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8, !dbg !1803, !tbaa !1041
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !1804, !tbaa !1011
  call void %101(%struct._object* %102), !dbg !1805
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  %103 = bitcast %struct._object** %_py_decref_tmp127 to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %103) #3, !dbg !1806
  br label %do.cond.136, !dbg !1808

do.cond.136:                                      ; preds = %if.end.135
  br label %do.end.137, !dbg !1809

do.end.137:                                       ; preds = %do.cond.136
  br label %if.end.138, !dbg !1811

if.end.138:                                       ; preds = %do.end.137, %do.body.122
  %104 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !1813
  call void @llvm.lifetime.end(i64 8, i8* %104) #3, !dbg !1813
  br label %do.cond.139, !dbg !1814

do.cond.139:                                      ; preds = %if.end.138
  br label %do.end.140, !dbg !1815

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141, !dbg !1817

do.body.141:                                      ; preds = %do.end.140
  %105 = bitcast %struct._object** %_py_xdecref_tmp142 to i8*, !dbg !1818
  call void @llvm.lifetime.start(i64 8, i8* %105) #3, !dbg !1818
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp142, metadata !792, metadata !1015), !dbg !1820
  %106 = load %struct._object*, %struct._object** %step, align 8, !dbg !1821, !tbaa !1011
  store %struct._object* %106, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !1820, !tbaa !1011
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !1822, !tbaa !1011
  %cmp143 = icmp ne %struct._object* %107, null, !dbg !1823
  br i1 %cmp143, label %if.then.144, label %if.end.157, !dbg !1824

if.then.144:                                      ; preds = %do.body.141
  br label %do.body.145, !dbg !1825

do.body.145:                                      ; preds = %if.then.144
  %108 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !1827
  call void @llvm.lifetime.start(i64 8, i8* %108) #3, !dbg !1827
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp146, metadata !794, metadata !1015), !dbg !1829
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !1830, !tbaa !1011
  store %struct._object* %109, %struct._object** %_py_decref_tmp146, align 8, !dbg !1829, !tbaa !1011
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !1831, !tbaa !1011
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0, !dbg !1833
  %111 = load i64, i64* %ob_refcnt147, align 8, !dbg !1834, !tbaa !1031
  %dec148 = add i64 %111, -1, !dbg !1834
  store i64 %dec148, i64* %ob_refcnt147, align 8, !dbg !1834, !tbaa !1031
  %cmp149 = icmp ne i64 %dec148, 0, !dbg !1835
  br i1 %cmp149, label %if.then.150, label %if.else.151, !dbg !1836

if.then.150:                                      ; preds = %do.body.145
  br label %if.end.154, !dbg !1837

if.else.151:                                      ; preds = %do.body.145
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !1839, !tbaa !1011
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1, !dbg !1841
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8, !dbg !1841, !tbaa !1039
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4, !dbg !1842
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8, !dbg !1842, !tbaa !1041
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !1843, !tbaa !1011
  call void %114(%struct._object* %115), !dbg !1844
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  %116 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !1845
  call void @llvm.lifetime.end(i64 8, i8* %116) #3, !dbg !1845
  br label %do.cond.155, !dbg !1847

do.cond.155:                                      ; preds = %if.end.154
  br label %do.end.156, !dbg !1848

do.end.156:                                       ; preds = %do.cond.155
  br label %if.end.157, !dbg !1850

if.end.157:                                       ; preds = %do.end.156, %do.body.141
  %117 = bitcast %struct._object** %_py_xdecref_tmp142 to i8*, !dbg !1852
  call void @llvm.lifetime.end(i64 8, i8* %117) #3, !dbg !1852
  br label %do.cond.158, !dbg !1853

do.cond.158:                                      ; preds = %if.end.157
  br label %do.end.159, !dbg !1854

do.end.159:                                       ; preds = %do.cond.158
  store %struct._object* null, %struct._object** %retval, !dbg !1856
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1856

cleanup:                                          ; preds = %do.end.159, %if.then.102, %do.end.97, %do.end.69, %if.then.53, %if.then.49, %do.end.44, %do.end, %if.then.9, %if.then.5, %if.then
  %118 = bitcast %struct._object** %step to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %118) #3, !dbg !1857
  %119 = bitcast %struct._object** %stop to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %119) #3, !dbg !1857
  %120 = bitcast %struct._object** %start to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %120) #3, !dbg !1857
  %121 = bitcast %struct.rangeobject** %obj to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %121) #3, !dbg !1857
  %122 = load %struct._object*, %struct._object** %retval, !dbg !1857
  ret %struct._object* %122, !dbg !1857
}

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_next(%struct.rangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeiterobject*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeiterobject** %r.addr, metadata !816, metadata !1015), !dbg !1858
  %0 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !1859, !tbaa !1011
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %0, i32 0, i32 1, !dbg !1861
  %1 = load i64, i64* %index, align 8, !dbg !1861, !tbaa !1862
  %2 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !1864, !tbaa !1011
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %2, i32 0, i32 4, !dbg !1865
  %3 = load i64, i64* %len, align 8, !dbg !1865, !tbaa !1866
  %cmp = icmp slt i64 %1, %3, !dbg !1867
  br i1 %cmp, label %if.then, label %if.end, !dbg !1868

if.then:                                          ; preds = %entry
  %4 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !1869, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %4, i32 0, i32 2, !dbg !1870
  %5 = load i64, i64* %start, align 8, !dbg !1870, !tbaa !1871
  %6 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !1872, !tbaa !1011
  %index1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %6, i32 0, i32 1, !dbg !1873
  %7 = load i64, i64* %index1, align 8, !dbg !1874, !tbaa !1862
  %inc = add i64 %7, 1, !dbg !1874
  store i64 %inc, i64* %index1, align 8, !dbg !1874, !tbaa !1862
  %8 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !1875, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %8, i32 0, i32 3, !dbg !1876
  %9 = load i64, i64* %step, align 8, !dbg !1876, !tbaa !1877
  %mul = mul i64 %7, %9, !dbg !1878
  %add = add i64 %5, %mul, !dbg !1879
  %call = call %struct._object* @PyLong_FromLong(i64 %add), !dbg !1880
  store %struct._object* %call, %struct._object** %retval, !dbg !1881
  br label %return, !dbg !1881

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1882
  br label %return, !dbg !1882

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1883
  ret %struct._object* %10, !dbg !1883
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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !851, metadata !1015), !dbg !1884
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !852, metadata !1015), !dbg !1885
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !853, metadata !1015), !dbg !1886
  %0 = bitcast i64* %start to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1887
  call void @llvm.dbg.declare(metadata i64* %start, metadata !854, metadata !1015), !dbg !1888
  %1 = bitcast i64* %stop to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1887
  call void @llvm.dbg.declare(metadata i64* %stop, metadata !855, metadata !1015), !dbg !1889
  %2 = bitcast i64* %step to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1887
  call void @llvm.dbg.declare(metadata i64* %step, metadata !856, metadata !1015), !dbg !1890
  %3 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1891, !tbaa !1011
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), %struct._object* %3), !dbg !1893
  %tobool = icmp ne i32 %call, 0, !dbg !1893
  br i1 %tobool, label %if.end, label %if.then, !dbg !1894

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1895
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1895

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1896, !tbaa !1011
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i64* %start, i64* %stop, i64* %step), !dbg !1898
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1898
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1899

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1900

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %start, align 8, !dbg !1901, !tbaa !1129
  %6 = load i64, i64* %stop, align 8, !dbg !1902, !tbaa !1129
  %7 = load i64, i64* %step, align 8, !dbg !1903, !tbaa !1129
  %call5 = call %struct._object* @fast_range_iter(i64 %5, i64 %6, i64 %7), !dbg !1904
  store %struct._object* %call5, %struct._object** %retval, !dbg !1905
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1905

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %8 = bitcast i64* %step to i8*, !dbg !1906
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1906
  %9 = bitcast i64* %stop to i8*, !dbg !1906
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !1906
  %10 = bitcast i64* %start to i8*, !dbg !1906
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !1906
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1906
  ret %struct._object* %11, !dbg !1906
}

; Function Attrs: nounwind uwtable
define internal void @longrangeiter_dealloc(%struct.longrangeiterobject* %r) #0 {
entry:
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %r.addr, metadata !861, metadata !1015), !dbg !1907
  br label %do.body, !dbg !1908

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1909
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1909
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !862, metadata !1015), !dbg !1911
  %1 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !1912, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %1, i32 0, i32 1, !dbg !1913
  %2 = load %struct._object*, %struct._object** %index, align 8, !dbg !1913, !tbaa !1023
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1911, !tbaa !1011
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1914, !tbaa !1011
  %cmp = icmp ne %struct._object* %3, null, !dbg !1915
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1916

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1917

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1919
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1919
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !864, metadata !1015), !dbg !1921
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1922, !tbaa !1011
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !1921, !tbaa !1011
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1923, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1925
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1926, !tbaa !1031
  %dec = add i64 %7, -1, !dbg !1926
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1926, !tbaa !1031
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1927
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1928

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1929

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1931, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1933
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1933, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !1934
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1934, !tbaa !1041
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1935, !tbaa !1011
  call void %10(%struct._object* %11), !dbg !1936
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1937
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !1937
  br label %do.cond, !dbg !1939

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1940

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1942

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1944
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1944
  br label %do.end.6, !dbg !1947

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !1948

do.body.7:                                        ; preds = %do.end.6
  %14 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !867, metadata !1015), !dbg !1951
  %15 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !1952, !tbaa !1011
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %15, i32 0, i32 2, !dbg !1953
  %16 = load %struct._object*, %struct._object** %start, align 8, !dbg !1953, !tbaa !1056
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1951, !tbaa !1011
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1954, !tbaa !1011
  %cmp9 = icmp ne %struct._object* %17, null, !dbg !1955
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !1956

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !1957

do.body.11:                                       ; preds = %if.then.10
  %18 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1959
  call void @llvm.lifetime.start(i64 8, i8* %18) #3, !dbg !1959
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !869, metadata !1015), !dbg !1961
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1962, !tbaa !1011
  store %struct._object* %19, %struct._object** %_py_decref_tmp12, align 8, !dbg !1961, !tbaa !1011
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1963, !tbaa !1011
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1965
  %21 = load i64, i64* %ob_refcnt13, align 8, !dbg !1966, !tbaa !1031
  %dec14 = add i64 %21, -1, !dbg !1966
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1966, !tbaa !1031
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !1967
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !1968

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !1969

if.else.17:                                       ; preds = %do.body.11
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1971, !tbaa !1011
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1973
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1973, !tbaa !1039
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1974
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1974, !tbaa !1041
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1975, !tbaa !1011
  call void %24(%struct._object* %25), !dbg !1976
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %26 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1977
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1977
  br label %do.cond.21, !dbg !1979

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1980

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !1982

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %27 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1984
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1984
  br label %do.end.25, !dbg !1985

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !1986

do.body.26:                                       ; preds = %do.end.25
  %28 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !1987
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1987
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !872, metadata !1015), !dbg !1989
  %29 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !1990, !tbaa !1011
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %29, i32 0, i32 3, !dbg !1991
  %30 = load %struct._object*, %struct._object** %step, align 8, !dbg !1991, !tbaa !1079
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1989, !tbaa !1011
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1992, !tbaa !1011
  %cmp28 = icmp ne %struct._object* %31, null, !dbg !1993
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !1994

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !1995

do.body.30:                                       ; preds = %if.then.29
  %32 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1997
  call void @llvm.lifetime.start(i64 8, i8* %32) #3, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !874, metadata !1015), !dbg !1999
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !2000, !tbaa !1011
  store %struct._object* %33, %struct._object** %_py_decref_tmp31, align 8, !dbg !1999, !tbaa !1011
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2001, !tbaa !1011
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !2003
  %35 = load i64, i64* %ob_refcnt32, align 8, !dbg !2004, !tbaa !1031
  %dec33 = add i64 %35, -1, !dbg !2004
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2004, !tbaa !1031
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !2005
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !2006

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !2007

if.else.36:                                       ; preds = %do.body.30
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2009, !tbaa !1011
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !2011
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !2011, !tbaa !1039
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !2012
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2012, !tbaa !1041
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2013, !tbaa !1011
  call void %38(%struct._object* %39), !dbg !2014
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %40 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2015
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !2015
  br label %do.cond.40, !dbg !2017

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !2018

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !2020

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %41 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !2022
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !2022
  br label %do.end.44, !dbg !2023

do.end.44:                                        ; preds = %if.end.42
  br label %do.body.45, !dbg !2024

do.body.45:                                       ; preds = %do.end.44
  %42 = bitcast %struct._object** %_py_xdecref_tmp46 to i8*, !dbg !2025
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !2025
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp46, metadata !877, metadata !1015), !dbg !2027
  %43 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2028, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %43, i32 0, i32 4, !dbg !2029
  %44 = load %struct._object*, %struct._object** %len, align 8, !dbg !2029, !tbaa !1102
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp46, align 8, !dbg !2027, !tbaa !1011
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8, !dbg !2030, !tbaa !1011
  %cmp47 = icmp ne %struct._object* %45, null, !dbg !2031
  br i1 %cmp47, label %if.then.48, label %if.end.61, !dbg !2032

if.then.48:                                       ; preds = %do.body.45
  br label %do.body.49, !dbg !2033

do.body.49:                                       ; preds = %if.then.48
  %46 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2035
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !2035
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !879, metadata !1015), !dbg !2037
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8, !dbg !2038, !tbaa !1011
  store %struct._object* %47, %struct._object** %_py_decref_tmp50, align 8, !dbg !2037, !tbaa !1011
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2039, !tbaa !1011
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2041
  %49 = load i64, i64* %ob_refcnt51, align 8, !dbg !2042, !tbaa !1031
  %dec52 = add i64 %49, -1, !dbg !2042
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !2042, !tbaa !1031
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !2043
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !2044

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !2045

if.else.55:                                       ; preds = %do.body.49
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2047, !tbaa !1011
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2049
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !2049, !tbaa !1039
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !2050
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !2050, !tbaa !1041
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2051, !tbaa !1011
  call void %52(%struct._object* %53), !dbg !2052
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %54 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !2053
  br label %do.cond.59, !dbg !2055

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !2056

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61, !dbg !2058

if.end.61:                                        ; preds = %do.end.60, %do.body.45
  %55 = bitcast %struct._object** %_py_xdecref_tmp46 to i8*, !dbg !2060
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !2060
  br label %do.end.63, !dbg !2061

do.end.63:                                        ; preds = %if.end.61
  %56 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2062, !tbaa !1011
  %57 = bitcast %struct.longrangeiterobject* %56 to i8*, !dbg !2062
  call void @PyObject_Free(i8* %57), !dbg !2063
  ret void, !dbg !2064
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %r.addr, metadata !886, metadata !1015), !dbg !2065
  %0 = bitcast %struct._object** %one to i8*, !dbg !2066
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !887, metadata !1015), !dbg !2067
  %1 = bitcast %struct._object** %product to i8*, !dbg !2066
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct._object** %product, metadata !888, metadata !1015), !dbg !2068
  %2 = bitcast %struct._object** %new_index to i8*, !dbg !2066
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct._object** %new_index, metadata !889, metadata !1015), !dbg !2069
  %3 = bitcast %struct._object** %result to i8*, !dbg !2066
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !890, metadata !1015), !dbg !2070
  %4 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2071, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %4, i32 0, i32 1, !dbg !2073
  %5 = load %struct._object*, %struct._object** %index, align 8, !dbg !2073, !tbaa !1023
  %6 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2074, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %6, i32 0, i32 4, !dbg !2075
  %7 = load %struct._object*, %struct._object** %len, align 8, !dbg !2075, !tbaa !1102
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 0), !dbg !2076
  %cmp = icmp ne i32 %call, 1, !dbg !2077
  br i1 %cmp, label %if.then, label %if.end, !dbg !2078

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2079

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !2080
  store %struct._object* %call1, %struct._object** %one, align 8, !dbg !2081, !tbaa !1011
  %8 = load %struct._object*, %struct._object** %one, align 8, !dbg !2082, !tbaa !1011
  %tobool = icmp ne %struct._object* %8, null, !dbg !2082
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2084

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2085
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2085

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2086, !tbaa !1011
  %index4 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %9, i32 0, i32 1, !dbg !2087
  %10 = load %struct._object*, %struct._object** %index4, align 8, !dbg !2087, !tbaa !1023
  %11 = load %struct._object*, %struct._object** %one, align 8, !dbg !2088, !tbaa !1011
  %call5 = call %struct._object* @PyNumber_Add(%struct._object* %10, %struct._object* %11), !dbg !2089
  store %struct._object* %call5, %struct._object** %new_index, align 8, !dbg !2090, !tbaa !1011
  br label %do.body, !dbg !2091

do.body:                                          ; preds = %if.end.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2092
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !2092
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !891, metadata !1015), !dbg !2094
  %13 = load %struct._object*, %struct._object** %one, align 8, !dbg !2095, !tbaa !1011
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !2094, !tbaa !1011
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2096, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !2098
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !2099, !tbaa !1031
  %dec = add i64 %15, -1, !dbg !2099
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2099, !tbaa !1031
  %cmp6 = icmp ne i64 %dec, 0, !dbg !2100
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2101

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !2102

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2104, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2106
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2106, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !2107
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2107, !tbaa !1041
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2108, !tbaa !1011
  call void %18(%struct._object* %19), !dbg !2109
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2110
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !2110
  br label %do.cond, !dbg !2112

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !2113

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %new_index, align 8, !dbg !2115, !tbaa !1011
  %tobool9 = icmp ne %struct._object* %21, null, !dbg !2115
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !2117

if.then.10:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2118

if.end.11:                                        ; preds = %do.end
  %22 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2119, !tbaa !1011
  %index12 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %22, i32 0, i32 1, !dbg !2120
  %23 = load %struct._object*, %struct._object** %index12, align 8, !dbg !2120, !tbaa !1023
  %24 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2121, !tbaa !1011
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %24, i32 0, i32 3, !dbg !2122
  %25 = load %struct._object*, %struct._object** %step, align 8, !dbg !2122, !tbaa !1079
  %call13 = call %struct._object* @PyNumber_Multiply(%struct._object* %23, %struct._object* %25), !dbg !2123
  store %struct._object* %call13, %struct._object** %product, align 8, !dbg !2124, !tbaa !1011
  %26 = load %struct._object*, %struct._object** %product, align 8, !dbg !2125, !tbaa !1011
  %tobool14 = icmp ne %struct._object* %26, null, !dbg !2125
  br i1 %tobool14, label %if.end.28, label %if.then.15, !dbg !2126

if.then.15:                                       ; preds = %if.end.11
  br label %do.body.16, !dbg !2127

do.body.16:                                       ; preds = %if.then.15
  %27 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2128
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !2128
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !893, metadata !1015), !dbg !2130
  %28 = load %struct._object*, %struct._object** %new_index, align 8, !dbg !2131, !tbaa !1011
  store %struct._object* %28, %struct._object** %_py_decref_tmp17, align 8, !dbg !2130, !tbaa !1011
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2132, !tbaa !1011
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2134
  %30 = load i64, i64* %ob_refcnt18, align 8, !dbg !2135, !tbaa !1031
  %dec19 = add i64 %30, -1, !dbg !2135
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !2135, !tbaa !1031
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !2136
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !2137

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !2138

if.else.22:                                       ; preds = %do.body.16
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2140, !tbaa !1011
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2142
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2142, !tbaa !1039
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2143
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !2143, !tbaa !1041
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !2144, !tbaa !1011
  call void %33(%struct._object* %34), !dbg !2145
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %35 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !2146
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2146
  br label %do.cond.26, !dbg !2148

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !2149

do.end.27:                                        ; preds = %do.cond.26
  store %struct._object* null, %struct._object** %retval, !dbg !2151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2151

if.end.28:                                        ; preds = %if.end.11
  %36 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2152, !tbaa !1011
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %36, i32 0, i32 2, !dbg !2153
  %37 = load %struct._object*, %struct._object** %start, align 8, !dbg !2153, !tbaa !1056
  %38 = load %struct._object*, %struct._object** %product, align 8, !dbg !2154, !tbaa !1011
  %call29 = call %struct._object* @PyNumber_Add(%struct._object* %37, %struct._object* %38), !dbg !2155
  store %struct._object* %call29, %struct._object** %result, align 8, !dbg !2156, !tbaa !1011
  br label %do.body.30, !dbg !2157

do.body.30:                                       ; preds = %if.end.28
  %39 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2158
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !2158
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !897, metadata !1015), !dbg !2160
  %40 = load %struct._object*, %struct._object** %product, align 8, !dbg !2161, !tbaa !1011
  store %struct._object* %40, %struct._object** %_py_decref_tmp31, align 8, !dbg !2160, !tbaa !1011
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2162, !tbaa !1011
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2164
  %42 = load i64, i64* %ob_refcnt32, align 8, !dbg !2165, !tbaa !1031
  %dec33 = add i64 %42, -1, !dbg !2165
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2165, !tbaa !1031
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !2166
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !2167

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !2168

if.else.36:                                       ; preds = %do.body.30
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2170, !tbaa !1011
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2172
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !2172, !tbaa !1039
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2173
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2173, !tbaa !1041
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2174, !tbaa !1011
  call void %45(%struct._object* %46), !dbg !2175
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %47 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2176
  call void @llvm.lifetime.end(i64 8, i8* %47) #3, !dbg !2176
  br label %do.cond.40, !dbg !2177

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !2178

do.end.41:                                        ; preds = %do.cond.40
  %48 = load %struct._object*, %struct._object** %result, align 8, !dbg !2180, !tbaa !1011
  %tobool42 = icmp ne %struct._object* %48, null, !dbg !2180
  br i1 %tobool42, label %if.then.43, label %if.else.58, !dbg !2181

if.then.43:                                       ; preds = %do.end.41
  br label %do.body.44, !dbg !2182

do.body.44:                                       ; preds = %if.then.43
  %49 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !2183
  call void @llvm.lifetime.start(i64 8, i8* %49) #3, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !899, metadata !1015), !dbg !2185
  %50 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2186, !tbaa !1011
  %index46 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %50, i32 0, i32 1, !dbg !2187
  %51 = load %struct._object*, %struct._object** %index46, align 8, !dbg !2187, !tbaa !1023
  store %struct._object* %51, %struct._object** %_py_decref_tmp45, align 8, !dbg !2185, !tbaa !1011
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2188, !tbaa !1011
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !2190
  %53 = load i64, i64* %ob_refcnt47, align 8, !dbg !2191, !tbaa !1031
  %dec48 = add i64 %53, -1, !dbg !2191
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !2191, !tbaa !1031
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !2192
  br i1 %cmp49, label %if.then.50, label %if.else.51, !dbg !2193

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54, !dbg !2194

if.else.51:                                       ; preds = %do.body.44
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2196, !tbaa !1011
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !2198
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !2198, !tbaa !1039
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !2199
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !2199, !tbaa !1041
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !2200, !tbaa !1011
  call void %56(%struct._object* %57), !dbg !2201
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %58 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !2202
  br label %do.cond.55, !dbg !2204

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !2205

do.end.56:                                        ; preds = %do.cond.55
  %59 = load %struct._object*, %struct._object** %new_index, align 8, !dbg !2207, !tbaa !1011
  %60 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !2208, !tbaa !1011
  %index57 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %60, i32 0, i32 1, !dbg !2209
  store %struct._object* %59, %struct._object** %index57, align 8, !dbg !2210, !tbaa !1023
  br label %if.end.71, !dbg !2211

if.else.58:                                       ; preds = %do.end.41
  br label %do.body.59, !dbg !2212

do.body.59:                                       ; preds = %if.else.58
  %61 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !2213
  call void @llvm.lifetime.start(i64 8, i8* %61) #3, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp60, metadata !903, metadata !1015), !dbg !2215
  %62 = load %struct._object*, %struct._object** %new_index, align 8, !dbg !2216, !tbaa !1011
  store %struct._object* %62, %struct._object** %_py_decref_tmp60, align 8, !dbg !2215, !tbaa !1011
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2217, !tbaa !1011
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !2219
  %64 = load i64, i64* %ob_refcnt61, align 8, !dbg !2220, !tbaa !1031
  %dec62 = add i64 %64, -1, !dbg !2220
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !2220, !tbaa !1031
  %cmp63 = icmp ne i64 %dec62, 0, !dbg !2221
  br i1 %cmp63, label %if.then.64, label %if.else.65, !dbg !2222

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68, !dbg !2223

if.else.65:                                       ; preds = %do.body.59
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2225, !tbaa !1011
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !2227
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !2227, !tbaa !1039
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !2228
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !2228, !tbaa !1041
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2229, !tbaa !1011
  call void %67(%struct._object* %68), !dbg !2230
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  %69 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !2231
  call void @llvm.lifetime.end(i64 8, i8* %69) #3, !dbg !2231
  br label %do.cond.69, !dbg !2233

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !2234

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.56
  %70 = load %struct._object*, %struct._object** %result, align 8, !dbg !2236, !tbaa !1011
  store %struct._object* %70, %struct._object** %retval, !dbg !2237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2237

cleanup:                                          ; preds = %if.end.71, %do.end.27, %if.then.10, %if.then.2, %if.then
  %71 = bitcast %struct._object** %result to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !2238
  %72 = bitcast %struct._object** %new_index to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !2238
  %73 = bitcast %struct._object** %product to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !2238
  %74 = bitcast %struct._object** %one to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !2238
  %75 = load %struct._object*, %struct._object** %retval, !dbg !2238
  ret %struct._object* %75, !dbg !2238
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @range_length(%struct.rangeobject* %r) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !419, metadata !1015), !dbg !2239
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2240, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %0, i32 0, i32 4, !dbg !2241
  %1 = load %struct._object*, %struct._object** %length, align 8, !dbg !2241, !tbaa !1102
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %1), !dbg !2242
  ret i64 %call, !dbg !2243
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_item(%struct.rangeobject* %r, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %i.addr = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !424, metadata !1015), !dbg !2244
  store i64 %i, i64* %i.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !425, metadata !1015), !dbg !2245
  %0 = bitcast %struct._object** %res to i8*, !dbg !2246
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2246
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !426, metadata !1015), !dbg !2247
  %1 = bitcast %struct._object** %arg to i8*, !dbg !2246
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2246
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !427, metadata !1015), !dbg !2248
  %2 = load i64, i64* %i.addr, align 8, !dbg !2249, !tbaa !1129
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2), !dbg !2250
  store %struct._object* %call, %struct._object** %arg, align 8, !dbg !2248, !tbaa !1011
  %3 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2251, !tbaa !1011
  %tobool = icmp ne %struct._object* %3, null, !dbg !2251
  br i1 %tobool, label %if.end, label %if.then, !dbg !2253

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2254

if.end:                                           ; preds = %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2256, !tbaa !1011
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2257, !tbaa !1011
  %call1 = call %struct._object* @compute_range_item(%struct.rangeobject* %4, %struct._object* %5), !dbg !2258
  store %struct._object* %call1, %struct._object** %res, align 8, !dbg !2259, !tbaa !1011
  br label %do.body, !dbg !2260

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2261
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !2261
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !428, metadata !1015), !dbg !2263
  %7 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2264, !tbaa !1011
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2263, !tbaa !1011
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2265, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2267
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2268, !tbaa !1031
  %dec = add i64 %9, -1, !dbg !2268
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2268, !tbaa !1031
  %cmp = icmp ne i64 %dec, 0, !dbg !2269
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !2270

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !2271

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2273, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2275
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2275, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2276
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2276, !tbaa !1041
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2277, !tbaa !1011
  call void %12(%struct._object* %13), !dbg !2278
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2279
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !2279
  br label %do.cond, !dbg !2281

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !2282

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %res, align 8, !dbg !2284, !tbaa !1011
  store %struct._object* %15, %struct._object** %retval, !dbg !2285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2285

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct._object** %arg to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2286
  %17 = bitcast %struct._object** %res to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !2286
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2286
  ret %struct._object* %18, !dbg !2286
}

; Function Attrs: nounwind uwtable
define internal i32 @range_contains(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !474, metadata !1015), !dbg !2287
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !475, metadata !1015), !dbg !2288
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2289, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2291
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2291, !tbaa !1039
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type, !dbg !2292
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2293

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2294, !tbaa !1011
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2296
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2296, !tbaa !1039
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type, !dbg !2297
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2298

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2299, !tbaa !1011
  %5 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2300, !tbaa !1011
  %call = call i32 @range_contains_long(%struct.rangeobject* %4, %struct._object* %5), !dbg !2301
  store i32 %call, i32* %retval, !dbg !2302
  br label %return, !dbg !2302

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2303, !tbaa !1011
  %7 = bitcast %struct.rangeobject* %6 to %struct._object*, !dbg !2304
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2305, !tbaa !1011
  %call3 = call i64 @_PySequence_IterSearch(%struct._object* %7, %struct._object* %8, i32 3), !dbg !2306
  %conv = trunc i64 %call3 to i32, !dbg !2307
  store i32 %conv, i32* %retval, !dbg !2308
  br label %return, !dbg !2308

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, !dbg !2309
  ret i32 %9, !dbg !2309
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !434, metadata !1015), !dbg !2310
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !435, metadata !1015), !dbg !2311
  %0 = bitcast i32* %cmp_result to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2312
  call void @llvm.dbg.declare(metadata i32* %cmp_result, metadata !436, metadata !1015), !dbg !2313
  %1 = bitcast %struct._object** %i to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2314
  call void @llvm.dbg.declare(metadata %struct._object** %i, metadata !437, metadata !1015), !dbg !2315
  %2 = bitcast %struct._object** %result to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2314
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !438, metadata !1015), !dbg !2316
  %3 = bitcast %struct._object** %zero to i8*, !dbg !2317
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2317
  call void @llvm.dbg.declare(metadata %struct._object** %zero, metadata !439, metadata !1015), !dbg !2318
  %call = call %struct._object* @PyLong_FromLong(i64 0), !dbg !2319
  store %struct._object* %call, %struct._object** %zero, align 8, !dbg !2318, !tbaa !1011
  %4 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2320, !tbaa !1011
  %cmp = icmp eq %struct._object* %4, null, !dbg !2322
  br i1 %cmp, label %if.then, label %if.end, !dbg !2323

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2324
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2324

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2325, !tbaa !1011
  %6 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2326, !tbaa !1011
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %6, i32 0), !dbg !2327
  store i32 %call1, i32* %cmp_result, align 4, !dbg !2328, !tbaa !1191
  %7 = load i32, i32* %cmp_result, align 4, !dbg !2329, !tbaa !1191
  %cmp2 = icmp eq i32 %7, -1, !dbg !2330
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !2331

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !2332

do.body:                                          ; preds = %if.then.3
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2333
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !440, metadata !1015), !dbg !2335
  %9 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2336, !tbaa !1011
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !2335, !tbaa !1011
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2337, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !2339
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2340, !tbaa !1031
  %dec = add i64 %11, -1, !dbg !2340
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2340, !tbaa !1031
  %cmp4 = icmp ne i64 %dec, 0, !dbg !2341
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2342

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !2343

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2345, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2347
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2347, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !2348
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2348, !tbaa !1041
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2349, !tbaa !1011
  call void %14(%struct._object* %15), !dbg !2350
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2351
  br label %do.cond, !dbg !2353

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !2354

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2356
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2356

if.end.7:                                         ; preds = %if.end
  %17 = load i32, i32* %cmp_result, align 4, !dbg !2357, !tbaa !1191
  %cmp8 = icmp eq i32 %17, 1, !dbg !2358
  br i1 %cmp8, label %if.then.9, label %if.else.25, !dbg !2359

if.then.9:                                        ; preds = %if.end.7
  %18 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2360, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %18, i32 0, i32 4, !dbg !2361
  %19 = load %struct._object*, %struct._object** %length, align 8, !dbg !2361, !tbaa !1102
  %20 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2362, !tbaa !1011
  %call10 = call %struct._object* @PyNumber_Add(%struct._object* %19, %struct._object* %20), !dbg !2363
  store %struct._object* %call10, %struct._object** %i, align 8, !dbg !2364, !tbaa !1011
  %21 = load %struct._object*, %struct._object** %i, align 8, !dbg !2365, !tbaa !1011
  %tobool = icmp ne %struct._object* %21, null, !dbg !2365
  br i1 %tobool, label %if.end.24, label %if.then.11, !dbg !2366

if.then.11:                                       ; preds = %if.then.9
  br label %do.body.12, !dbg !2367

do.body.12:                                       ; preds = %if.then.11
  %22 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !2368
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !2368
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !444, metadata !1015), !dbg !2370
  %23 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2371, !tbaa !1011
  store %struct._object* %23, %struct._object** %_py_decref_tmp13, align 8, !dbg !2370, !tbaa !1011
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2372, !tbaa !1011
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2374
  %25 = load i64, i64* %ob_refcnt14, align 8, !dbg !2375, !tbaa !1031
  %dec15 = add i64 %25, -1, !dbg !2375
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !2375, !tbaa !1031
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !2376
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !2377

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !2378

if.else.18:                                       ; preds = %do.body.12
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2380, !tbaa !1011
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2382
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2382, !tbaa !1039
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2383
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !2383, !tbaa !1041
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2384, !tbaa !1011
  call void %28(%struct._object* %29), !dbg !2385
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %30 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !2386
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2386
  br label %do.cond.22, !dbg !2388

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !2389

do.end.23:                                        ; preds = %do.cond.22
  store %struct._object* null, %struct._object** %retval, !dbg !2391
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2391

if.end.24:                                        ; preds = %if.then.9
  br label %if.end.27, !dbg !2392

if.else.25:                                       ; preds = %if.end.7
  %31 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2393, !tbaa !1011
  store %struct._object* %31, %struct._object** %i, align 8, !dbg !2395, !tbaa !1011
  %32 = load %struct._object*, %struct._object** %i, align 8, !dbg !2396, !tbaa !1011
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2397
  %33 = load i64, i64* %ob_refcnt26, align 8, !dbg !2398, !tbaa !1031
  %inc = add i64 %33, 1, !dbg !2398
  store i64 %inc, i64* %ob_refcnt26, align 8, !dbg !2398, !tbaa !1031
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.end.24
  %34 = load %struct._object*, %struct._object** %i, align 8, !dbg !2399, !tbaa !1011
  %35 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2400, !tbaa !1011
  %call28 = call i32 @PyObject_RichCompareBool(%struct._object* %34, %struct._object* %35, i32 0), !dbg !2401
  store i32 %call28, i32* %cmp_result, align 4, !dbg !2402, !tbaa !1191
  br label %do.body.29, !dbg !2403

do.body.29:                                       ; preds = %if.end.27
  %36 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !2404
  call void @llvm.lifetime.start(i64 8, i8* %36) #3, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !450, metadata !1015), !dbg !2406
  %37 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2407, !tbaa !1011
  store %struct._object* %37, %struct._object** %_py_decref_tmp30, align 8, !dbg !2406, !tbaa !1011
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !2408, !tbaa !1011
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !2410
  %39 = load i64, i64* %ob_refcnt31, align 8, !dbg !2411, !tbaa !1031
  %dec32 = add i64 %39, -1, !dbg !2411
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !2411, !tbaa !1031
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !2412
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !2413

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !2414

if.else.35:                                       ; preds = %do.body.29
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !2416, !tbaa !1011
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !2418
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !2418, !tbaa !1039
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !2419
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !2419, !tbaa !1041
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !2420, !tbaa !1011
  call void %42(%struct._object* %43), !dbg !2421
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %44 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !2422
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !2422
  br label %do.cond.39, !dbg !2424

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !2425

do.end.40:                                        ; preds = %do.cond.39
  %45 = load i32, i32* %cmp_result, align 4, !dbg !2427, !tbaa !1191
  %cmp41 = icmp eq i32 %45, 0, !dbg !2429
  br i1 %cmp41, label %if.then.42, label %if.end.45, !dbg !2430

if.then.42:                                       ; preds = %do.end.40
  %46 = load %struct._object*, %struct._object** %i, align 8, !dbg !2431, !tbaa !1011
  %47 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2433, !tbaa !1011
  %length43 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %47, i32 0, i32 4, !dbg !2434
  %48 = load %struct._object*, %struct._object** %length43, align 8, !dbg !2434, !tbaa !1102
  %call44 = call i32 @PyObject_RichCompareBool(%struct._object* %46, %struct._object* %48, i32 5), !dbg !2435
  store i32 %call44, i32* %cmp_result, align 4, !dbg !2436, !tbaa !1191
  br label %if.end.45, !dbg !2437

if.end.45:                                        ; preds = %if.then.42, %do.end.40
  %49 = load i32, i32* %cmp_result, align 4, !dbg !2438, !tbaa !1191
  %cmp46 = icmp eq i32 %49, -1, !dbg !2439
  br i1 %cmp46, label %if.then.47, label %if.end.60, !dbg !2440

if.then.47:                                       ; preds = %if.end.45
  br label %do.body.48, !dbg !2441

do.body.48:                                       ; preds = %if.then.47
  %50 = bitcast %struct._object** %_py_decref_tmp49 to i8*, !dbg !2442
  call void @llvm.lifetime.start(i64 8, i8* %50) #3, !dbg !2442
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp49, metadata !452, metadata !1015), !dbg !2444
  %51 = load %struct._object*, %struct._object** %i, align 8, !dbg !2445, !tbaa !1011
  store %struct._object* %51, %struct._object** %_py_decref_tmp49, align 8, !dbg !2444, !tbaa !1011
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2446, !tbaa !1011
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !2448
  %53 = load i64, i64* %ob_refcnt50, align 8, !dbg !2449, !tbaa !1031
  %dec51 = add i64 %53, -1, !dbg !2449
  store i64 %dec51, i64* %ob_refcnt50, align 8, !dbg !2449, !tbaa !1031
  %cmp52 = icmp ne i64 %dec51, 0, !dbg !2450
  br i1 %cmp52, label %if.then.53, label %if.else.54, !dbg !2451

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57, !dbg !2452

if.else.54:                                       ; preds = %do.body.48
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2454, !tbaa !1011
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !2456
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !2456, !tbaa !1039
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !2457
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !2457, !tbaa !1041
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8, !dbg !2458, !tbaa !1011
  call void %56(%struct._object* %57), !dbg !2459
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  %58 = bitcast %struct._object** %_py_decref_tmp49 to i8*, !dbg !2460
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !2460
  br label %do.cond.58, !dbg !2462

do.cond.58:                                       ; preds = %if.end.57
  br label %do.end.59, !dbg !2463

do.end.59:                                        ; preds = %do.cond.58
  store %struct._object* null, %struct._object** %retval, !dbg !2465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2465

if.end.60:                                        ; preds = %if.end.45
  %59 = load i32, i32* %cmp_result, align 4, !dbg !2466, !tbaa !1191
  %cmp61 = icmp eq i32 %59, 1, !dbg !2467
  br i1 %cmp61, label %if.then.62, label %if.end.75, !dbg !2468

if.then.62:                                       ; preds = %if.end.60
  br label %do.body.63, !dbg !2469

do.body.63:                                       ; preds = %if.then.62
  %60 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2470
  call void @llvm.lifetime.start(i64 8, i8* %60) #3, !dbg !2470
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !456, metadata !1015), !dbg !2472
  %61 = load %struct._object*, %struct._object** %i, align 8, !dbg !2473, !tbaa !1011
  store %struct._object* %61, %struct._object** %_py_decref_tmp64, align 8, !dbg !2472, !tbaa !1011
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2474, !tbaa !1011
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !2476
  %63 = load i64, i64* %ob_refcnt65, align 8, !dbg !2477, !tbaa !1031
  %dec66 = add i64 %63, -1, !dbg !2477
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2477, !tbaa !1031
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !2478
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !2479

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72, !dbg !2480

if.else.69:                                       ; preds = %do.body.63
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2482, !tbaa !1011
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !2484
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !2484, !tbaa !1039
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !2485
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !2485, !tbaa !1041
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2486, !tbaa !1011
  call void %66(%struct._object* %67), !dbg !2487
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %68 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2488
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !2488
  br label %do.cond.73, !dbg !2490

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !2491

do.end.74:                                        ; preds = %do.cond.73
  %69 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2493, !tbaa !1011
  call void @PyErr_SetString(%struct._object* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)), !dbg !2494
  store %struct._object* null, %struct._object** %retval, !dbg !2495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2495

if.end.75:                                        ; preds = %if.end.60
  %70 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2496, !tbaa !1011
  %71 = load %struct._object*, %struct._object** %i, align 8, !dbg !2497, !tbaa !1011
  %call76 = call %struct._object* @compute_item(%struct.rangeobject* %70, %struct._object* %71), !dbg !2498
  store %struct._object* %call76, %struct._object** %result, align 8, !dbg !2499, !tbaa !1011
  br label %do.body.77, !dbg !2500

do.body.77:                                       ; preds = %if.end.75
  %72 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !2501
  call void @llvm.lifetime.start(i64 8, i8* %72) #3, !dbg !2501
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp78, metadata !460, metadata !1015), !dbg !2503
  %73 = load %struct._object*, %struct._object** %i, align 8, !dbg !2504, !tbaa !1011
  store %struct._object* %73, %struct._object** %_py_decref_tmp78, align 8, !dbg !2503, !tbaa !1011
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !2505, !tbaa !1011
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !2507
  %75 = load i64, i64* %ob_refcnt79, align 8, !dbg !2508, !tbaa !1031
  %dec80 = add i64 %75, -1, !dbg !2508
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !2508, !tbaa !1031
  %cmp81 = icmp ne i64 %dec80, 0, !dbg !2509
  br i1 %cmp81, label %if.then.82, label %if.else.83, !dbg !2510

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86, !dbg !2511

if.else.83:                                       ; preds = %do.body.77
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !2513, !tbaa !1011
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !2515
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !2515, !tbaa !1039
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !2516
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8, !dbg !2516, !tbaa !1041
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !2517, !tbaa !1011
  call void %78(%struct._object* %79), !dbg !2518
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  %80 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !2519
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !2519
  br label %do.cond.87, !dbg !2520

do.cond.87:                                       ; preds = %if.end.86
  br label %do.end.88, !dbg !2521

do.end.88:                                        ; preds = %do.cond.87
  %81 = load %struct._object*, %struct._object** %result, align 8, !dbg !2523, !tbaa !1011
  store %struct._object* %81, %struct._object** %retval, !dbg !2524
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2524

cleanup:                                          ; preds = %do.end.88, %do.end.74, %do.end.59, %do.end.23, %do.end, %if.then
  %82 = bitcast %struct._object** %zero to i8*, !dbg !2525
  call void @llvm.lifetime.end(i64 8, i8* %82) #3, !dbg !2525
  %83 = bitcast %struct._object** %result to i8*, !dbg !2525
  call void @llvm.lifetime.end(i64 8, i8* %83) #3, !dbg !2525
  %84 = bitcast %struct._object** %i to i8*, !dbg !2525
  call void @llvm.lifetime.end(i64 8, i8* %84) #3, !dbg !2525
  %85 = bitcast i32* %cmp_result to i8*, !dbg !2525
  call void @llvm.lifetime.end(i64 4, i8* %85) #3, !dbg !2525
  %86 = load %struct._object*, %struct._object** %retval, !dbg !2525
  ret %struct._object* %86, !dbg !2525
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !464, metadata !1015), !dbg !2526
  store %struct._object* %i, %struct._object** %i.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %i.addr, metadata !465, metadata !1015), !dbg !2527
  %0 = bitcast %struct._object** %incr to i8*, !dbg !2528
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2528
  call void @llvm.dbg.declare(metadata %struct._object** %incr, metadata !466, metadata !1015), !dbg !2529
  %1 = bitcast %struct._object** %result to i8*, !dbg !2528
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2528
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !467, metadata !1015), !dbg !2530
  %2 = load %struct._object*, %struct._object** %i.addr, align 8, !dbg !2531, !tbaa !1011
  %3 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2532, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %3, i32 0, i32 3, !dbg !2533
  %4 = load %struct._object*, %struct._object** %step, align 8, !dbg !2533, !tbaa !1079
  %call = call %struct._object* @PyNumber_Multiply(%struct._object* %2, %struct._object* %4), !dbg !2534
  store %struct._object* %call, %struct._object** %incr, align 8, !dbg !2535, !tbaa !1011
  %5 = load %struct._object*, %struct._object** %incr, align 8, !dbg !2536, !tbaa !1011
  %tobool = icmp ne %struct._object* %5, null, !dbg !2536
  br i1 %tobool, label %if.end, label %if.then, !dbg !2538

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2539

if.end:                                           ; preds = %entry
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2540, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %6, i32 0, i32 1, !dbg !2541
  %7 = load %struct._object*, %struct._object** %start, align 8, !dbg !2541, !tbaa !1023
  %8 = load %struct._object*, %struct._object** %incr, align 8, !dbg !2542, !tbaa !1011
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %7, %struct._object* %8), !dbg !2543
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !2544, !tbaa !1011
  br label %do.body, !dbg !2545

do.body:                                          ; preds = %if.end
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2546
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !2546
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !468, metadata !1015), !dbg !2548
  %10 = load %struct._object*, %struct._object** %incr, align 8, !dbg !2549, !tbaa !1011
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !2548, !tbaa !1011
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2550, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2552
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2553, !tbaa !1031
  %dec = add i64 %12, -1, !dbg !2553
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2553, !tbaa !1031
  %cmp = icmp ne i64 %dec, 0, !dbg !2554
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !2555

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !2556

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2558, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2560
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2560, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !2561
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2561, !tbaa !1041
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2562, !tbaa !1011
  call void %15(%struct._object* %16), !dbg !2563
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !2564
  br label %do.cond, !dbg !2566

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !2567

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %result, align 8, !dbg !2569, !tbaa !1011
  store %struct._object* %18, %struct._object** %retval, !dbg !2570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2570

cleanup:                                          ; preds = %do.end, %if.then
  %19 = bitcast %struct._object** %result to i8*, !dbg !2571
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2571
  %20 = bitcast %struct._object** %incr to i8*, !dbg !2571
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !2571
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2571
  ret %struct._object* %21, !dbg !2571
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
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !478, metadata !1015), !dbg !2572
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !479, metadata !1015), !dbg !2573
  %0 = bitcast i32* %cmp1 to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2574
  call void @llvm.dbg.declare(metadata i32* %cmp1, metadata !480, metadata !1015), !dbg !2575
  %1 = bitcast i32* %cmp2 to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !2574
  call void @llvm.dbg.declare(metadata i32* %cmp2, metadata !481, metadata !1015), !dbg !2576
  %2 = bitcast i32* %cmp3 to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2574
  call void @llvm.dbg.declare(metadata i32* %cmp3, metadata !482, metadata !1015), !dbg !2577
  %3 = bitcast %struct._object** %tmp1 to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2578
  call void @llvm.dbg.declare(metadata %struct._object** %tmp1, metadata !483, metadata !1015), !dbg !2579
  store %struct._object* null, %struct._object** %tmp1, align 8, !dbg !2579, !tbaa !1011
  %4 = bitcast %struct._object** %tmp2 to i8*, !dbg !2580
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2580
  call void @llvm.dbg.declare(metadata %struct._object** %tmp2, metadata !484, metadata !1015), !dbg !2581
  store %struct._object* null, %struct._object** %tmp2, align 8, !dbg !2581, !tbaa !1011
  %5 = bitcast %struct._object** %zero to i8*, !dbg !2582
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2582
  call void @llvm.dbg.declare(metadata %struct._object** %zero, metadata !485, metadata !1015), !dbg !2583
  store %struct._object* null, %struct._object** %zero, align 8, !dbg !2583, !tbaa !1011
  %6 = bitcast i32* %result to i8*, !dbg !2584
  call void @llvm.lifetime.start(i64 4, i8* %6) #3, !dbg !2584
  call void @llvm.dbg.declare(metadata i32* %result, metadata !486, metadata !1015), !dbg !2585
  store i32 -1, i32* %result, align 4, !dbg !2585, !tbaa !1191
  %call = call %struct._object* @PyLong_FromLong(i64 0), !dbg !2586
  store %struct._object* %call, %struct._object** %zero, align 8, !dbg !2587, !tbaa !1011
  %7 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2588, !tbaa !1011
  %cmp = icmp eq %struct._object* %7, null, !dbg !2590
  br i1 %cmp, label %if.then, label %if.end, !dbg !2591

if.then:                                          ; preds = %entry
  br label %end, !dbg !2592

if.end:                                           ; preds = %entry
  %8 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2593, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %8, i32 0, i32 3, !dbg !2594
  %9 = load %struct._object*, %struct._object** %step, align 8, !dbg !2594, !tbaa !1079
  %10 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2595, !tbaa !1011
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %9, %struct._object* %10, i32 4), !dbg !2596
  store i32 %call1, i32* %cmp1, align 4, !dbg !2597, !tbaa !1191
  %11 = load i32, i32* %cmp1, align 4, !dbg !2598, !tbaa !1191
  %cmp4 = icmp eq i32 %11, -1, !dbg !2600
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2601

if.then.5:                                        ; preds = %if.end
  br label %end, !dbg !2602

if.end.6:                                         ; preds = %if.end
  %12 = load i32, i32* %cmp1, align 4, !dbg !2603, !tbaa !1191
  %cmp7 = icmp eq i32 %12, 1, !dbg !2605
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2606

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2607, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %13, i32 0, i32 1, !dbg !2609
  %14 = load %struct._object*, %struct._object** %start, align 8, !dbg !2609, !tbaa !1023
  %15 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2610, !tbaa !1011
  %call9 = call i32 @PyObject_RichCompareBool(%struct._object* %14, %struct._object* %15, i32 1), !dbg !2611
  store i32 %call9, i32* %cmp2, align 4, !dbg !2612, !tbaa !1191
  %16 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2613, !tbaa !1011
  %17 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2614, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %17, i32 0, i32 2, !dbg !2615
  %18 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2615, !tbaa !1056
  %call10 = call i32 @PyObject_RichCompareBool(%struct._object* %16, %struct._object* %18, i32 0), !dbg !2616
  store i32 %call10, i32* %cmp3, align 4, !dbg !2617, !tbaa !1191
  br label %if.end.15, !dbg !2618

if.else:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2619, !tbaa !1011
  %20 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2621, !tbaa !1011
  %start11 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %20, i32 0, i32 1, !dbg !2622
  %21 = load %struct._object*, %struct._object** %start11, align 8, !dbg !2622, !tbaa !1023
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %19, %struct._object* %21, i32 1), !dbg !2623
  store i32 %call12, i32* %cmp2, align 4, !dbg !2624, !tbaa !1191
  %22 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2625, !tbaa !1011
  %stop13 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %22, i32 0, i32 2, !dbg !2626
  %23 = load %struct._object*, %struct._object** %stop13, align 8, !dbg !2626, !tbaa !1056
  %24 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2627, !tbaa !1011
  %call14 = call i32 @PyObject_RichCompareBool(%struct._object* %23, %struct._object* %24, i32 0), !dbg !2628
  store i32 %call14, i32* %cmp3, align 4, !dbg !2629, !tbaa !1191
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  %25 = load i32, i32* %cmp2, align 4, !dbg !2630, !tbaa !1191
  %cmp16 = icmp eq i32 %25, -1, !dbg !2632
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false, !dbg !2633

lor.lhs.false:                                    ; preds = %if.end.15
  %26 = load i32, i32* %cmp3, align 4, !dbg !2634, !tbaa !1191
  %cmp17 = icmp eq i32 %26, -1, !dbg !2636
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2637

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %end, !dbg !2638

if.end.19:                                        ; preds = %lor.lhs.false
  %27 = load i32, i32* %cmp2, align 4, !dbg !2639, !tbaa !1191
  %cmp20 = icmp eq i32 %27, 0, !dbg !2641
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21, !dbg !2642

lor.lhs.false.21:                                 ; preds = %if.end.19
  %28 = load i32, i32* %cmp3, align 4, !dbg !2643, !tbaa !1191
  %cmp22 = icmp eq i32 %28, 0, !dbg !2645
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !2646

if.then.23:                                       ; preds = %lor.lhs.false.21, %if.end.19
  store i32 0, i32* %result, align 4, !dbg !2647, !tbaa !1191
  br label %end, !dbg !2649

if.end.24:                                        ; preds = %lor.lhs.false.21
  %29 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2650, !tbaa !1011
  %30 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2651, !tbaa !1011
  %start25 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %30, i32 0, i32 1, !dbg !2652
  %31 = load %struct._object*, %struct._object** %start25, align 8, !dbg !2652, !tbaa !1023
  %call26 = call %struct._object* @PyNumber_Subtract(%struct._object* %29, %struct._object* %31), !dbg !2653
  store %struct._object* %call26, %struct._object** %tmp1, align 8, !dbg !2654, !tbaa !1011
  %32 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !2655, !tbaa !1011
  %cmp27 = icmp eq %struct._object* %32, null, !dbg !2657
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !2658

if.then.28:                                       ; preds = %if.end.24
  br label %end, !dbg !2659

if.end.29:                                        ; preds = %if.end.24
  %33 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !2660, !tbaa !1011
  %34 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2661, !tbaa !1011
  %step30 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %34, i32 0, i32 3, !dbg !2662
  %35 = load %struct._object*, %struct._object** %step30, align 8, !dbg !2662, !tbaa !1079
  %call31 = call %struct._object* @PyNumber_Remainder(%struct._object* %33, %struct._object* %35), !dbg !2663
  store %struct._object* %call31, %struct._object** %tmp2, align 8, !dbg !2664, !tbaa !1011
  %36 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !2665, !tbaa !1011
  %cmp32 = icmp eq %struct._object* %36, null, !dbg !2667
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !2668

if.then.33:                                       ; preds = %if.end.29
  br label %end, !dbg !2669

if.end.34:                                        ; preds = %if.end.29
  %37 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !2670, !tbaa !1011
  %38 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2671, !tbaa !1011
  %call35 = call i32 @PyObject_RichCompareBool(%struct._object* %37, %struct._object* %38, i32 2), !dbg !2672
  store i32 %call35, i32* %result, align 4, !dbg !2673, !tbaa !1191
  br label %end, !dbg !2674

end:                                              ; preds = %if.end.34, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.5, %if.then
  br label %do.body, !dbg !2675

do.body:                                          ; preds = %end
  %39 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2676
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !2676
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !487, metadata !1015), !dbg !2678
  %40 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !2679, !tbaa !1011
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2678, !tbaa !1011
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2680, !tbaa !1011
  %cmp36 = icmp ne %struct._object* %41, null, !dbg !2681
  br i1 %cmp36, label %if.then.37, label %if.end.43, !dbg !2682

if.then.37:                                       ; preds = %do.body
  br label %do.body.38, !dbg !2683

do.body.38:                                       ; preds = %if.then.37
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2685
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !2685
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !489, metadata !1015), !dbg !2687
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2688, !tbaa !1011
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !2687, !tbaa !1011
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2689, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !2691
  %45 = load i64, i64* %ob_refcnt, align 8, !dbg !2692, !tbaa !1031
  %dec = add i64 %45, -1, !dbg !2692
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2692, !tbaa !1031
  %cmp39 = icmp ne i64 %dec, 0, !dbg !2693
  br i1 %cmp39, label %if.then.40, label %if.else.41, !dbg !2694

if.then.40:                                       ; preds = %do.body.38
  br label %if.end.42, !dbg !2695

if.else.41:                                       ; preds = %do.body.38
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2697, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !2699
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2699, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !2700
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2700, !tbaa !1041
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2701, !tbaa !1011
  call void %48(%struct._object* %49), !dbg !2702
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2703
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !2703
  br label %do.cond, !dbg !2705

do.cond:                                          ; preds = %if.end.42
  br label %do.end, !dbg !2706

do.end:                                           ; preds = %do.cond
  br label %if.end.43, !dbg !2708

if.end.43:                                        ; preds = %do.end, %do.body
  %51 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2710
  call void @llvm.lifetime.end(i64 8, i8* %51) #3, !dbg !2710
  br label %do.cond.44, !dbg !2713

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2714

do.end.45:                                        ; preds = %do.cond.44
  br label %do.body.46, !dbg !2716

do.body.46:                                       ; preds = %do.end.45
  %52 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !2717
  call void @llvm.lifetime.start(i64 8, i8* %52) #3, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp47, metadata !492, metadata !1015), !dbg !2719
  %53 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !2720, !tbaa !1011
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !2719, !tbaa !1011
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !2721, !tbaa !1011
  %cmp48 = icmp ne %struct._object* %54, null, !dbg !2722
  br i1 %cmp48, label %if.then.49, label %if.end.62, !dbg !2723

if.then.49:                                       ; preds = %do.body.46
  br label %do.body.50, !dbg !2724

do.body.50:                                       ; preds = %if.then.49
  %55 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !2726
  call void @llvm.lifetime.start(i64 8, i8* %55) #3, !dbg !2726
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !494, metadata !1015), !dbg !2728
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !2729, !tbaa !1011
  store %struct._object* %56, %struct._object** %_py_decref_tmp51, align 8, !dbg !2728, !tbaa !1011
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2730, !tbaa !1011
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !2732
  %58 = load i64, i64* %ob_refcnt52, align 8, !dbg !2733, !tbaa !1031
  %dec53 = add i64 %58, -1, !dbg !2733
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !2733, !tbaa !1031
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !2734
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !2735

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !2736

if.else.56:                                       ; preds = %do.body.50
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2738, !tbaa !1011
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !2740
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !2740, !tbaa !1039
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !2741
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !2741, !tbaa !1041
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2742, !tbaa !1011
  call void %61(%struct._object* %62), !dbg !2743
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %63 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !2744
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !2744
  br label %do.cond.60, !dbg !2746

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !2747

do.end.61:                                        ; preds = %do.cond.60
  br label %if.end.62, !dbg !2749

if.end.62:                                        ; preds = %do.end.61, %do.body.46
  %64 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !2751
  br label %do.cond.63, !dbg !2752

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !2753

do.end.64:                                        ; preds = %do.cond.63
  br label %do.body.65, !dbg !2755

do.body.65:                                       ; preds = %do.end.64
  %65 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !2756
  call void @llvm.lifetime.start(i64 8, i8* %65) #3, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp66, metadata !497, metadata !1015), !dbg !2758
  %66 = load %struct._object*, %struct._object** %zero, align 8, !dbg !2759, !tbaa !1011
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !2758, !tbaa !1011
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !2760, !tbaa !1011
  %cmp67 = icmp ne %struct._object* %67, null, !dbg !2761
  br i1 %cmp67, label %if.then.68, label %if.end.81, !dbg !2762

if.then.68:                                       ; preds = %do.body.65
  br label %do.body.69, !dbg !2763

do.body.69:                                       ; preds = %if.then.68
  %68 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !2765
  call void @llvm.lifetime.start(i64 8, i8* %68) #3, !dbg !2765
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp70, metadata !499, metadata !1015), !dbg !2767
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !2768, !tbaa !1011
  store %struct._object* %69, %struct._object** %_py_decref_tmp70, align 8, !dbg !2767, !tbaa !1011
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2769, !tbaa !1011
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !2771
  %71 = load i64, i64* %ob_refcnt71, align 8, !dbg !2772, !tbaa !1031
  %dec72 = add i64 %71, -1, !dbg !2772
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !2772, !tbaa !1031
  %cmp73 = icmp ne i64 %dec72, 0, !dbg !2773
  br i1 %cmp73, label %if.then.74, label %if.else.75, !dbg !2774

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78, !dbg !2775

if.else.75:                                       ; preds = %do.body.69
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2777, !tbaa !1011
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !2779
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !2779, !tbaa !1039
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !2780
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !2780, !tbaa !1041
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2781, !tbaa !1011
  call void %74(%struct._object* %75), !dbg !2782
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %76 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !2783
  call void @llvm.lifetime.end(i64 8, i8* %76) #3, !dbg !2783
  br label %do.cond.79, !dbg !2785

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !2786

do.end.80:                                        ; preds = %do.cond.79
  br label %if.end.81, !dbg !2788

if.end.81:                                        ; preds = %do.end.80, %do.body.65
  %77 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !2790
  call void @llvm.lifetime.end(i64 8, i8* %77) #3, !dbg !2790
  br label %do.cond.82, !dbg !2791

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !2792

do.end.83:                                        ; preds = %do.cond.82
  %78 = load i32, i32* %result, align 4, !dbg !2794, !tbaa !1191
  %79 = bitcast i32* %result to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %79) #3, !dbg !2795
  %80 = bitcast %struct._object** %zero to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !2795
  %81 = bitcast %struct._object** %tmp2 to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 8, i8* %81) #3, !dbg !2795
  %82 = bitcast %struct._object** %tmp1 to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 8, i8* %82) #3, !dbg !2795
  %83 = bitcast i32* %cmp3 to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %83) #3, !dbg !2795
  %84 = bitcast i32* %cmp2 to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %84) #3, !dbg !2795
  %85 = bitcast i32* %cmp1 to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %85) #3, !dbg !2795
  ret i32 %78, !dbg !2796
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %self, %struct.rangeobject** %self.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %self.addr, metadata !504, metadata !1015), !dbg !2797
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !505, metadata !1015), !dbg !2798
  %0 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2799, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2800
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2800, !tbaa !1039
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10, !dbg !2801
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !2801, !tbaa !2802
  %cmp = icmp ne %struct.PyNumberMethods* %2, null, !dbg !2803
  br i1 %cmp, label %land.lhs.true, label %if.end.11, !dbg !2804

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2805, !tbaa !1011
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2807
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2807, !tbaa !1039
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10, !dbg !2808
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8, !dbg !2808, !tbaa !2802
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33, !dbg !2809
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !2809, !tbaa !2810
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null, !dbg !2812
  br i1 %cmp3, label %if.then, label %if.end.11, !dbg !2813

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast %struct._object** %i to i8*, !dbg !2814
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._object** %i, metadata !506, metadata !1015), !dbg !2815
  %8 = bitcast %struct._object** %result to i8*, !dbg !2814
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !509, metadata !1015), !dbg !2816
  %9 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2817, !tbaa !1011
  %call = call %struct._object* @PyNumber_Index(%struct._object* %9), !dbg !2818
  store %struct._object* %call, %struct._object** %i, align 8, !dbg !2819, !tbaa !1011
  %10 = load %struct._object*, %struct._object** %i, align 8, !dbg !2820, !tbaa !1011
  %tobool = icmp ne %struct._object* %10, null, !dbg !2820
  br i1 %tobool, label %if.end, label %if.then.4, !dbg !2822

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2823

if.end:                                           ; preds = %if.then
  %11 = load %struct.rangeobject*, %struct.rangeobject** %self.addr, align 8, !dbg !2824, !tbaa !1011
  %12 = load %struct._object*, %struct._object** %i, align 8, !dbg !2825, !tbaa !1011
  %call5 = call %struct._object* @compute_range_item(%struct.rangeobject* %11, %struct._object* %12), !dbg !2826
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !2827, !tbaa !1011
  br label %do.body, !dbg !2828

do.body:                                          ; preds = %if.end
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2829
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !510, metadata !1015), !dbg !2831
  %14 = load %struct._object*, %struct._object** %i, align 8, !dbg !2832, !tbaa !1011
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2831, !tbaa !1011
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2833, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2835
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2836, !tbaa !1031
  %dec = add i64 %16, -1, !dbg !2836
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2836, !tbaa !1031
  %cmp6 = icmp ne i64 %dec, 0, !dbg !2837
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2838

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2839

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2841, !tbaa !1011
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2843
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2843, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2844
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2844, !tbaa !1041
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2845, !tbaa !1011
  call void %19(%struct._object* %20), !dbg !2846
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2847
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2847
  br label %do.cond, !dbg !2849

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2850

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** %result, align 8, !dbg !2852, !tbaa !1011
  store %struct._object* %22, %struct._object** %retval, !dbg !2853
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2853

cleanup:                                          ; preds = %do.end, %if.then.4
  %23 = bitcast %struct._object** %result to i8*, !dbg !2854
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !2854
  %24 = bitcast %struct._object** %i to i8*, !dbg !2854
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2854
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %entry
  %25 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2855, !tbaa !1011
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !2857
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2857, !tbaa !1039
  %cmp13 = icmp eq %struct._typeobject* %26, @PySlice_Type, !dbg !2858
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !2859

if.then.14:                                       ; preds = %if.end.11
  %27 = load %struct.rangeobject*, %struct.rangeobject** %self.addr, align 8, !dbg !2860, !tbaa !1011
  %28 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2862, !tbaa !1011
  %call15 = call %struct._object* @compute_slice(%struct.rangeobject* %27, %struct._object* %28), !dbg !2863
  store %struct._object* %call15, %struct._object** %retval, !dbg !2864
  br label %return, !dbg !2864

if.end.16:                                        ; preds = %if.end.11
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2865, !tbaa !1011
  %30 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !2866, !tbaa !1011
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !2867
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !2867, !tbaa !1039
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 1, !dbg !2868
  %32 = load i8*, i8** %tp_name, align 8, !dbg !2868, !tbaa !2869
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i8* %32), !dbg !2870
  store %struct._object* null, %struct._object** %retval, !dbg !2871
  br label %return, !dbg !2871

return:                                           ; preds = %if.end.16, %if.then.14, %cleanup
  %33 = load %struct._object*, %struct._object** %retval, !dbg !2872
  ret %struct._object* %33, !dbg !2872
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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_xdecref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_xdecref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_xdecref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %_py_xdecref_tmp142 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  %_py_xdecref_tmp161 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !514, metadata !1015), !dbg !2873
  store %struct._object* %_slice, %struct._object** %_slice.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %_slice.addr, metadata !515, metadata !1015), !dbg !2874
  %0 = bitcast %struct.PySliceObject** %slice to i8*, !dbg !2875
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2875
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %slice, metadata !516, metadata !1015), !dbg !2876
  %1 = load %struct._object*, %struct._object** %_slice.addr, align 8, !dbg !2877, !tbaa !1011
  %2 = bitcast %struct._object* %1 to %struct.PySliceObject*, !dbg !2878
  store %struct.PySliceObject* %2, %struct.PySliceObject** %slice, align 8, !dbg !2876, !tbaa !1011
  %3 = bitcast %struct.rangeobject** %result to i8*, !dbg !2879
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2879
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %result, metadata !517, metadata !1015), !dbg !2880
  %4 = bitcast %struct._object** %start to i8*, !dbg !2881
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !518, metadata !1015), !dbg !2882
  store %struct._object* null, %struct._object** %start, align 8, !dbg !2882, !tbaa !1011
  %5 = bitcast %struct._object** %stop to i8*, !dbg !2881
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !519, metadata !1015), !dbg !2883
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !2883, !tbaa !1011
  %6 = bitcast %struct._object** %step to i8*, !dbg !2881
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !520, metadata !1015), !dbg !2884
  store %struct._object* null, %struct._object** %step, align 8, !dbg !2884, !tbaa !1011
  %7 = bitcast %struct._object** %substart to i8*, !dbg !2885
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2885
  call void @llvm.dbg.declare(metadata %struct._object** %substart, metadata !521, metadata !1015), !dbg !2886
  store %struct._object* null, %struct._object** %substart, align 8, !dbg !2886, !tbaa !1011
  %8 = bitcast %struct._object** %substop to i8*, !dbg !2885
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2885
  call void @llvm.dbg.declare(metadata %struct._object** %substop, metadata !522, metadata !1015), !dbg !2887
  store %struct._object* null, %struct._object** %substop, align 8, !dbg !2887, !tbaa !1011
  %9 = bitcast %struct._object** %substep to i8*, !dbg !2885
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !2885
  call void @llvm.dbg.declare(metadata %struct._object** %substep, metadata !523, metadata !1015), !dbg !2888
  store %struct._object* null, %struct._object** %substep, align 8, !dbg !2888, !tbaa !1011
  %10 = bitcast i32* %error to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 4, i8* %10) #3, !dbg !2889
  call void @llvm.dbg.declare(metadata i32* %error, metadata !524, metadata !1015), !dbg !2890
  %11 = load %struct.PySliceObject*, %struct.PySliceObject** %slice, align 8, !dbg !2891, !tbaa !1011
  %12 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2892, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %12, i32 0, i32 4, !dbg !2893
  %13 = load %struct._object*, %struct._object** %length, align 8, !dbg !2893, !tbaa !1102
  %call = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %11, %struct._object* %13, %struct._object** %start, %struct._object** %stop, %struct._object** %step), !dbg !2894
  store i32 %call, i32* %error, align 4, !dbg !2895, !tbaa !1191
  %14 = load i32, i32* %error, align 4, !dbg !2896, !tbaa !1191
  %cmp = icmp eq i32 %14, -1, !dbg !2898
  br i1 %cmp, label %if.then, label %if.end, !dbg !2899

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2900

if.end:                                           ; preds = %entry
  %15 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2901, !tbaa !1011
  %step1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %15, i32 0, i32 3, !dbg !2902
  %16 = load %struct._object*, %struct._object** %step1, align 8, !dbg !2902, !tbaa !1079
  %17 = load %struct._object*, %struct._object** %step, align 8, !dbg !2903, !tbaa !1011
  %call2 = call %struct._object* @PyNumber_Multiply(%struct._object* %16, %struct._object* %17), !dbg !2904
  store %struct._object* %call2, %struct._object** %substep, align 8, !dbg !2905, !tbaa !1011
  %18 = load %struct._object*, %struct._object** %substep, align 8, !dbg !2906, !tbaa !1011
  %cmp3 = icmp eq %struct._object* %18, null, !dbg !2908
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2909

if.then.4:                                        ; preds = %if.end
  br label %fail, !dbg !2910

if.end.5:                                         ; preds = %if.end
  br label %do.body, !dbg !2912

do.body:                                          ; preds = %if.end.5
  %19 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2913
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !2913
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !525, metadata !1015), !dbg !2915
  %20 = load %struct._object*, %struct._object** %step, align 8, !dbg !2916, !tbaa !1011
  store %struct._object* %20, %struct._object** %_py_tmp, align 8, !dbg !2915, !tbaa !1011
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2917, !tbaa !1011
  %cmp6 = icmp ne %struct._object* %21, null, !dbg !2918
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2919

if.then.7:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %step, align 8, !dbg !2920, !tbaa !1011
  br label %do.body.8, !dbg !2922

do.body.8:                                        ; preds = %if.then.7
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !2923
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !527, metadata !1015), !dbg !2925
  %23 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2926, !tbaa !1011
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2925, !tbaa !1011
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2927, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2929
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !2930, !tbaa !1031
  %dec = add i64 %25, -1, !dbg !2930
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2930, !tbaa !1031
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2931
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2932

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2933

if.else:                                          ; preds = %do.body.8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2935, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2937
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2937, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2938
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2938, !tbaa !1041
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2939, !tbaa !1011
  call void %28(%struct._object* %29), !dbg !2940
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2941
  br label %do.cond, !dbg !2943

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2944

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2946

if.end.12:                                        ; preds = %do.end, %do.body
  %31 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2948
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !2948
  br label %do.cond.13, !dbg !2951

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2952

do.end.14:                                        ; preds = %do.cond.13
  %32 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !2954, !tbaa !1011
  %33 = load %struct._object*, %struct._object** %start, align 8, !dbg !2955, !tbaa !1011
  %call15 = call %struct._object* @compute_item(%struct.rangeobject* %32, %struct._object* %33), !dbg !2956
  store %struct._object* %call15, %struct._object** %substart, align 8, !dbg !2957, !tbaa !1011
  %34 = load %struct._object*, %struct._object** %substart, align 8, !dbg !2958, !tbaa !1011
  %cmp16 = icmp eq %struct._object* %34, null, !dbg !2960
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2961

if.then.17:                                       ; preds = %do.end.14
  br label %fail, !dbg !2962

if.end.18:                                        ; preds = %do.end.14
  br label %do.body.19, !dbg !2964

do.body.19:                                       ; preds = %if.end.18
  %35 = bitcast %struct._object** %_py_tmp20 to i8*, !dbg !2965
  call void @llvm.lifetime.start(i64 8, i8* %35) #3, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp20, metadata !531, metadata !1015), !dbg !2967
  %36 = load %struct._object*, %struct._object** %start, align 8, !dbg !2968, !tbaa !1011
  store %struct._object* %36, %struct._object** %_py_tmp20, align 8, !dbg !2967, !tbaa !1011
  %37 = load %struct._object*, %struct._object** %_py_tmp20, align 8, !dbg !2969, !tbaa !1011
  %cmp21 = icmp ne %struct._object* %37, null, !dbg !2970
  br i1 %cmp21, label %if.then.22, label %if.end.35, !dbg !2971

if.then.22:                                       ; preds = %do.body.19
  store %struct._object* null, %struct._object** %start, align 8, !dbg !2972, !tbaa !1011
  br label %do.body.23, !dbg !2974

do.body.23:                                       ; preds = %if.then.22
  %38 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2975
  call void @llvm.lifetime.start(i64 8, i8* %38) #3, !dbg !2975
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !533, metadata !1015), !dbg !2977
  %39 = load %struct._object*, %struct._object** %_py_tmp20, align 8, !dbg !2978, !tbaa !1011
  store %struct._object* %39, %struct._object** %_py_decref_tmp24, align 8, !dbg !2977, !tbaa !1011
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2979, !tbaa !1011
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2981
  %41 = load i64, i64* %ob_refcnt25, align 8, !dbg !2982, !tbaa !1031
  %dec26 = add i64 %41, -1, !dbg !2982
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !2982, !tbaa !1031
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !2983
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !2984

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !2985

if.else.29:                                       ; preds = %do.body.23
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2987, !tbaa !1011
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !2989
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2989, !tbaa !1039
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !2990
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !2990, !tbaa !1041
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2991, !tbaa !1011
  call void %44(%struct._object* %45), !dbg !2992
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %46 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2993
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !2993
  br label %do.cond.33, !dbg !2995

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !2996

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !2998

if.end.35:                                        ; preds = %do.end.34, %do.body.19
  %47 = bitcast %struct._object** %_py_tmp20 to i8*, !dbg !3000
  call void @llvm.lifetime.end(i64 8, i8* %47) #3, !dbg !3000
  br label %do.cond.36, !dbg !3001

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !3002

do.end.37:                                        ; preds = %do.cond.36
  %48 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !3004, !tbaa !1011
  %49 = load %struct._object*, %struct._object** %stop, align 8, !dbg !3005, !tbaa !1011
  %call38 = call %struct._object* @compute_item(%struct.rangeobject* %48, %struct._object* %49), !dbg !3006
  store %struct._object* %call38, %struct._object** %substop, align 8, !dbg !3007, !tbaa !1011
  %50 = load %struct._object*, %struct._object** %substop, align 8, !dbg !3008, !tbaa !1011
  %cmp39 = icmp eq %struct._object* %50, null, !dbg !3010
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !3011

if.then.40:                                       ; preds = %do.end.37
  br label %fail, !dbg !3012

if.end.41:                                        ; preds = %do.end.37
  br label %do.body.42, !dbg !3014

do.body.42:                                       ; preds = %if.end.41
  %51 = bitcast %struct._object** %_py_tmp43 to i8*, !dbg !3015
  call void @llvm.lifetime.start(i64 8, i8* %51) #3, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp43, metadata !537, metadata !1015), !dbg !3017
  %52 = load %struct._object*, %struct._object** %stop, align 8, !dbg !3018, !tbaa !1011
  store %struct._object* %52, %struct._object** %_py_tmp43, align 8, !dbg !3017, !tbaa !1011
  %53 = load %struct._object*, %struct._object** %_py_tmp43, align 8, !dbg !3019, !tbaa !1011
  %cmp44 = icmp ne %struct._object* %53, null, !dbg !3020
  br i1 %cmp44, label %if.then.45, label %if.end.58, !dbg !3021

if.then.45:                                       ; preds = %do.body.42
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !3022, !tbaa !1011
  br label %do.body.46, !dbg !3024

do.body.46:                                       ; preds = %if.then.45
  %54 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !3025
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !3025
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp47, metadata !539, metadata !1015), !dbg !3027
  %55 = load %struct._object*, %struct._object** %_py_tmp43, align 8, !dbg !3028, !tbaa !1011
  store %struct._object* %55, %struct._object** %_py_decref_tmp47, align 8, !dbg !3027, !tbaa !1011
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !3029, !tbaa !1011
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !3031
  %57 = load i64, i64* %ob_refcnt48, align 8, !dbg !3032, !tbaa !1031
  %dec49 = add i64 %57, -1, !dbg !3032
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !3032, !tbaa !1031
  %cmp50 = icmp ne i64 %dec49, 0, !dbg !3033
  br i1 %cmp50, label %if.then.51, label %if.else.52, !dbg !3034

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55, !dbg !3035

if.else.52:                                       ; preds = %do.body.46
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !3037, !tbaa !1011
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !3039
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !3039, !tbaa !1039
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !3040
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !3040, !tbaa !1041
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !3041, !tbaa !1011
  call void %60(%struct._object* %61), !dbg !3042
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %62 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !3043
  br label %do.cond.56, !dbg !3045

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !3046

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58, !dbg !3048

if.end.58:                                        ; preds = %do.end.57, %do.body.42
  %63 = bitcast %struct._object** %_py_tmp43 to i8*, !dbg !3050
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !3050
  br label %do.cond.59, !dbg !3051

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !3052

do.end.60:                                        ; preds = %do.cond.59
  %64 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !3054, !tbaa !1011
  %65 = bitcast %struct.rangeobject* %64 to %struct._object*, !dbg !3055
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !3056
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !3056, !tbaa !1039
  %67 = load %struct._object*, %struct._object** %substart, align 8, !dbg !3057, !tbaa !1011
  %68 = load %struct._object*, %struct._object** %substop, align 8, !dbg !3058, !tbaa !1011
  %69 = load %struct._object*, %struct._object** %substep, align 8, !dbg !3059, !tbaa !1011
  %call62 = call %struct.rangeobject* @make_range_object(%struct._typeobject* %66, %struct._object* %67, %struct._object* %68, %struct._object* %69), !dbg !3060
  store %struct.rangeobject* %call62, %struct.rangeobject** %result, align 8, !dbg !3061, !tbaa !1011
  %70 = load %struct.rangeobject*, %struct.rangeobject** %result, align 8, !dbg !3062, !tbaa !1011
  %cmp63 = icmp ne %struct.rangeobject* %70, null, !dbg !3064
  br i1 %cmp63, label %if.then.64, label %if.end.65, !dbg !3065

if.then.64:                                       ; preds = %do.end.60
  %71 = load %struct.rangeobject*, %struct.rangeobject** %result, align 8, !dbg !3066, !tbaa !1011
  %72 = bitcast %struct.rangeobject* %71 to %struct._object*, !dbg !3068
  store %struct._object* %72, %struct._object** %retval, !dbg !3069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3069

if.end.65:                                        ; preds = %do.end.60
  br label %fail, !dbg !3070

fail:                                             ; preds = %if.end.65, %if.then.40, %if.then.17, %if.then.4
  br label %do.body.66, !dbg !3072

do.body.66:                                       ; preds = %fail
  %73 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 8, i8* %73) #3, !dbg !3073
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !543, metadata !1015), !dbg !3075
  %74 = load %struct._object*, %struct._object** %start, align 8, !dbg !3076, !tbaa !1011
  store %struct._object* %74, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3075, !tbaa !1011
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3077, !tbaa !1011
  %cmp67 = icmp ne %struct._object* %75, null, !dbg !3078
  br i1 %cmp67, label %if.then.68, label %if.end.81, !dbg !3079

if.then.68:                                       ; preds = %do.body.66
  br label %do.body.69, !dbg !3080

do.body.69:                                       ; preds = %if.then.68
  %76 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !3082
  call void @llvm.lifetime.start(i64 8, i8* %76) #3, !dbg !3082
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp70, metadata !545, metadata !1015), !dbg !3084
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3085, !tbaa !1011
  store %struct._object* %77, %struct._object** %_py_decref_tmp70, align 8, !dbg !3084, !tbaa !1011
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3086, !tbaa !1011
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !3088
  %79 = load i64, i64* %ob_refcnt71, align 8, !dbg !3089, !tbaa !1031
  %dec72 = add i64 %79, -1, !dbg !3089
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !3089, !tbaa !1031
  %cmp73 = icmp ne i64 %dec72, 0, !dbg !3090
  br i1 %cmp73, label %if.then.74, label %if.else.75, !dbg !3091

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78, !dbg !3092

if.else.75:                                       ; preds = %do.body.69
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3094, !tbaa !1011
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !3096
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !3096, !tbaa !1039
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !3097
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !3097, !tbaa !1041
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3098, !tbaa !1011
  call void %82(%struct._object* %83), !dbg !3099
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %84 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !3100
  call void @llvm.lifetime.end(i64 8, i8* %84) #3, !dbg !3100
  br label %do.cond.79, !dbg !3102

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !3103

do.end.80:                                        ; preds = %do.cond.79
  br label %if.end.81, !dbg !3105

if.end.81:                                        ; preds = %do.end.80, %do.body.66
  %85 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3107
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !3107
  br label %do.cond.82, !dbg !3108

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !3109

do.end.83:                                        ; preds = %do.cond.82
  br label %do.body.84, !dbg !3111

do.body.84:                                       ; preds = %do.end.83
  %86 = bitcast %struct._object** %_py_xdecref_tmp85 to i8*, !dbg !3112
  call void @llvm.lifetime.start(i64 8, i8* %86) #3, !dbg !3112
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp85, metadata !548, metadata !1015), !dbg !3114
  %87 = load %struct._object*, %struct._object** %stop, align 8, !dbg !3115, !tbaa !1011
  store %struct._object* %87, %struct._object** %_py_xdecref_tmp85, align 8, !dbg !3114, !tbaa !1011
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8, !dbg !3116, !tbaa !1011
  %cmp86 = icmp ne %struct._object* %88, null, !dbg !3117
  br i1 %cmp86, label %if.then.87, label %if.end.100, !dbg !3118

if.then.87:                                       ; preds = %do.body.84
  br label %do.body.88, !dbg !3119

do.body.88:                                       ; preds = %if.then.87
  %89 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !3121
  call void @llvm.lifetime.start(i64 8, i8* %89) #3, !dbg !3121
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !550, metadata !1015), !dbg !3123
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8, !dbg !3124, !tbaa !1011
  store %struct._object* %90, %struct._object** %_py_decref_tmp89, align 8, !dbg !3123, !tbaa !1011
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3125, !tbaa !1011
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !3127
  %92 = load i64, i64* %ob_refcnt90, align 8, !dbg !3128, !tbaa !1031
  %dec91 = add i64 %92, -1, !dbg !3128
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !3128, !tbaa !1031
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !3129
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !3130

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !3131

if.else.94:                                       ; preds = %do.body.88
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3133, !tbaa !1011
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !3135
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !3135, !tbaa !1039
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !3136
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !3136, !tbaa !1041
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !3137, !tbaa !1011
  call void %95(%struct._object* %96), !dbg !3138
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %97 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !3139
  call void @llvm.lifetime.end(i64 8, i8* %97) #3, !dbg !3139
  br label %do.cond.98, !dbg !3141

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !3142

do.end.99:                                        ; preds = %do.cond.98
  br label %if.end.100, !dbg !3144

if.end.100:                                       ; preds = %do.end.99, %do.body.84
  %98 = bitcast %struct._object** %_py_xdecref_tmp85 to i8*, !dbg !3146
  call void @llvm.lifetime.end(i64 8, i8* %98) #3, !dbg !3146
  br label %do.cond.101, !dbg !3147

do.cond.101:                                      ; preds = %if.end.100
  br label %do.end.102, !dbg !3148

do.end.102:                                       ; preds = %do.cond.101
  br label %do.body.103, !dbg !3150

do.body.103:                                      ; preds = %do.end.102
  %99 = bitcast %struct._object** %_py_xdecref_tmp104 to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 8, i8* %99) #3, !dbg !3151
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp104, metadata !553, metadata !1015), !dbg !3153
  %100 = load %struct._object*, %struct._object** %step, align 8, !dbg !3154, !tbaa !1011
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp104, align 8, !dbg !3153, !tbaa !1011
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp104, align 8, !dbg !3155, !tbaa !1011
  %cmp105 = icmp ne %struct._object* %101, null, !dbg !3156
  br i1 %cmp105, label %if.then.106, label %if.end.119, !dbg !3157

if.then.106:                                      ; preds = %do.body.103
  br label %do.body.107, !dbg !3158

do.body.107:                                      ; preds = %if.then.106
  %102 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !3160
  call void @llvm.lifetime.start(i64 8, i8* %102) #3, !dbg !3160
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp108, metadata !555, metadata !1015), !dbg !3162
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp104, align 8, !dbg !3163, !tbaa !1011
  store %struct._object* %103, %struct._object** %_py_decref_tmp108, align 8, !dbg !3162, !tbaa !1011
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3164, !tbaa !1011
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !3166
  %105 = load i64, i64* %ob_refcnt109, align 8, !dbg !3167, !tbaa !1031
  %dec110 = add i64 %105, -1, !dbg !3167
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !3167, !tbaa !1031
  %cmp111 = icmp ne i64 %dec110, 0, !dbg !3168
  br i1 %cmp111, label %if.then.112, label %if.else.113, !dbg !3169

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116, !dbg !3170

if.else.113:                                      ; preds = %do.body.107
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3172, !tbaa !1011
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !3174
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8, !dbg !3174, !tbaa !1039
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !3175
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !3175, !tbaa !1041
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3176, !tbaa !1011
  call void %108(%struct._object* %109), !dbg !3177
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  %110 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !3178
  call void @llvm.lifetime.end(i64 8, i8* %110) #3, !dbg !3178
  br label %do.cond.117, !dbg !3180

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118, !dbg !3181

do.end.118:                                       ; preds = %do.cond.117
  br label %if.end.119, !dbg !3183

if.end.119:                                       ; preds = %do.end.118, %do.body.103
  %111 = bitcast %struct._object** %_py_xdecref_tmp104 to i8*, !dbg !3185
  call void @llvm.lifetime.end(i64 8, i8* %111) #3, !dbg !3185
  br label %do.cond.120, !dbg !3186

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121, !dbg !3187

do.end.121:                                       ; preds = %do.cond.120
  br label %do.body.122, !dbg !3189

do.body.122:                                      ; preds = %do.end.121
  %112 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !3190
  call void @llvm.lifetime.start(i64 8, i8* %112) #3, !dbg !3190
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp123, metadata !558, metadata !1015), !dbg !3192
  %113 = load %struct._object*, %struct._object** %substart, align 8, !dbg !3193, !tbaa !1011
  store %struct._object* %113, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3192, !tbaa !1011
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3194, !tbaa !1011
  %cmp124 = icmp ne %struct._object* %114, null, !dbg !3195
  br i1 %cmp124, label %if.then.125, label %if.end.138, !dbg !3196

if.then.125:                                      ; preds = %do.body.122
  br label %do.body.126, !dbg !3197

do.body.126:                                      ; preds = %if.then.125
  %115 = bitcast %struct._object** %_py_decref_tmp127 to i8*, !dbg !3199
  call void @llvm.lifetime.start(i64 8, i8* %115) #3, !dbg !3199
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp127, metadata !560, metadata !1015), !dbg !3201
  %116 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3202, !tbaa !1011
  store %struct._object* %116, %struct._object** %_py_decref_tmp127, align 8, !dbg !3201, !tbaa !1011
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !3203, !tbaa !1011
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0, !dbg !3205
  %118 = load i64, i64* %ob_refcnt128, align 8, !dbg !3206, !tbaa !1031
  %dec129 = add i64 %118, -1, !dbg !3206
  store i64 %dec129, i64* %ob_refcnt128, align 8, !dbg !3206, !tbaa !1031
  %cmp130 = icmp ne i64 %dec129, 0, !dbg !3207
  br i1 %cmp130, label %if.then.131, label %if.else.132, !dbg !3208

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135, !dbg !3209

if.else.132:                                      ; preds = %do.body.126
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !3211, !tbaa !1011
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1, !dbg !3213
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8, !dbg !3213, !tbaa !1039
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4, !dbg !3214
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8, !dbg !3214, !tbaa !1041
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8, !dbg !3215, !tbaa !1011
  call void %121(%struct._object* %122), !dbg !3216
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  %123 = bitcast %struct._object** %_py_decref_tmp127 to i8*, !dbg !3217
  call void @llvm.lifetime.end(i64 8, i8* %123) #3, !dbg !3217
  br label %do.cond.136, !dbg !3219

do.cond.136:                                      ; preds = %if.end.135
  br label %do.end.137, !dbg !3220

do.end.137:                                       ; preds = %do.cond.136
  br label %if.end.138, !dbg !3222

if.end.138:                                       ; preds = %do.end.137, %do.body.122
  %124 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !3224
  call void @llvm.lifetime.end(i64 8, i8* %124) #3, !dbg !3224
  br label %do.cond.139, !dbg !3225

do.cond.139:                                      ; preds = %if.end.138
  br label %do.end.140, !dbg !3226

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141, !dbg !3228

do.body.141:                                      ; preds = %do.end.140
  %125 = bitcast %struct._object** %_py_xdecref_tmp142 to i8*, !dbg !3229
  call void @llvm.lifetime.start(i64 8, i8* %125) #3, !dbg !3229
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp142, metadata !563, metadata !1015), !dbg !3231
  %126 = load %struct._object*, %struct._object** %substop, align 8, !dbg !3232, !tbaa !1011
  store %struct._object* %126, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !3231, !tbaa !1011
  %127 = load %struct._object*, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !3233, !tbaa !1011
  %cmp143 = icmp ne %struct._object* %127, null, !dbg !3234
  br i1 %cmp143, label %if.then.144, label %if.end.157, !dbg !3235

if.then.144:                                      ; preds = %do.body.141
  br label %do.body.145, !dbg !3236

do.body.145:                                      ; preds = %if.then.144
  %128 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !3238
  call void @llvm.lifetime.start(i64 8, i8* %128) #3, !dbg !3238
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp146, metadata !565, metadata !1015), !dbg !3240
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp142, align 8, !dbg !3241, !tbaa !1011
  store %struct._object* %129, %struct._object** %_py_decref_tmp146, align 8, !dbg !3240, !tbaa !1011
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !3242, !tbaa !1011
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0, !dbg !3244
  %131 = load i64, i64* %ob_refcnt147, align 8, !dbg !3245, !tbaa !1031
  %dec148 = add i64 %131, -1, !dbg !3245
  store i64 %dec148, i64* %ob_refcnt147, align 8, !dbg !3245, !tbaa !1031
  %cmp149 = icmp ne i64 %dec148, 0, !dbg !3246
  br i1 %cmp149, label %if.then.150, label %if.else.151, !dbg !3247

if.then.150:                                      ; preds = %do.body.145
  br label %if.end.154, !dbg !3248

if.else.151:                                      ; preds = %do.body.145
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !3250, !tbaa !1011
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1, !dbg !3252
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8, !dbg !3252, !tbaa !1039
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4, !dbg !3253
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8, !dbg !3253, !tbaa !1041
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !3254, !tbaa !1011
  call void %134(%struct._object* %135), !dbg !3255
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  %136 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !3256
  call void @llvm.lifetime.end(i64 8, i8* %136) #3, !dbg !3256
  br label %do.cond.155, !dbg !3258

do.cond.155:                                      ; preds = %if.end.154
  br label %do.end.156, !dbg !3259

do.end.156:                                       ; preds = %do.cond.155
  br label %if.end.157, !dbg !3261

if.end.157:                                       ; preds = %do.end.156, %do.body.141
  %137 = bitcast %struct._object** %_py_xdecref_tmp142 to i8*, !dbg !3263
  call void @llvm.lifetime.end(i64 8, i8* %137) #3, !dbg !3263
  br label %do.cond.158, !dbg !3264

do.cond.158:                                      ; preds = %if.end.157
  br label %do.end.159, !dbg !3265

do.end.159:                                       ; preds = %do.cond.158
  br label %do.body.160, !dbg !3267

do.body.160:                                      ; preds = %do.end.159
  %138 = bitcast %struct._object** %_py_xdecref_tmp161 to i8*, !dbg !3268
  call void @llvm.lifetime.start(i64 8, i8* %138) #3, !dbg !3268
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp161, metadata !568, metadata !1015), !dbg !3270
  %139 = load %struct._object*, %struct._object** %substep, align 8, !dbg !3271, !tbaa !1011
  store %struct._object* %139, %struct._object** %_py_xdecref_tmp161, align 8, !dbg !3270, !tbaa !1011
  %140 = load %struct._object*, %struct._object** %_py_xdecref_tmp161, align 8, !dbg !3272, !tbaa !1011
  %cmp162 = icmp ne %struct._object* %140, null, !dbg !3273
  br i1 %cmp162, label %if.then.163, label %if.end.176, !dbg !3274

if.then.163:                                      ; preds = %do.body.160
  br label %do.body.164, !dbg !3275

do.body.164:                                      ; preds = %if.then.163
  %141 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !3277
  call void @llvm.lifetime.start(i64 8, i8* %141) #3, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp165, metadata !570, metadata !1015), !dbg !3279
  %142 = load %struct._object*, %struct._object** %_py_xdecref_tmp161, align 8, !dbg !3280, !tbaa !1011
  store %struct._object* %142, %struct._object** %_py_decref_tmp165, align 8, !dbg !3279, !tbaa !1011
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !3281, !tbaa !1011
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0, !dbg !3283
  %144 = load i64, i64* %ob_refcnt166, align 8, !dbg !3284, !tbaa !1031
  %dec167 = add i64 %144, -1, !dbg !3284
  store i64 %dec167, i64* %ob_refcnt166, align 8, !dbg !3284, !tbaa !1031
  %cmp168 = icmp ne i64 %dec167, 0, !dbg !3285
  br i1 %cmp168, label %if.then.169, label %if.else.170, !dbg !3286

if.then.169:                                      ; preds = %do.body.164
  br label %if.end.173, !dbg !3287

if.else.170:                                      ; preds = %do.body.164
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !3289, !tbaa !1011
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1, !dbg !3291
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8, !dbg !3291, !tbaa !1039
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4, !dbg !3292
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8, !dbg !3292, !tbaa !1041
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !3293, !tbaa !1011
  call void %147(%struct._object* %148), !dbg !3294
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.169
  %149 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !3295
  call void @llvm.lifetime.end(i64 8, i8* %149) #3, !dbg !3295
  br label %do.cond.174, !dbg !3297

do.cond.174:                                      ; preds = %if.end.173
  br label %do.end.175, !dbg !3298

do.end.175:                                       ; preds = %do.cond.174
  br label %if.end.176, !dbg !3300

if.end.176:                                       ; preds = %do.end.175, %do.body.160
  %150 = bitcast %struct._object** %_py_xdecref_tmp161 to i8*, !dbg !3302
  call void @llvm.lifetime.end(i64 8, i8* %150) #3, !dbg !3302
  br label %do.cond.177, !dbg !3303

do.cond.177:                                      ; preds = %if.end.176
  br label %do.end.178, !dbg !3304

do.end.178:                                       ; preds = %do.cond.177
  store %struct._object* null, %struct._object** %retval, !dbg !3306
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3306

cleanup:                                          ; preds = %do.end.178, %if.then.64, %if.then
  %151 = bitcast i32* %error to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 4, i8* %151) #3, !dbg !3307
  %152 = bitcast %struct._object** %substep to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %152) #3, !dbg !3307
  %153 = bitcast %struct._object** %substop to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %153) #3, !dbg !3307
  %154 = bitcast %struct._object** %substart to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %154) #3, !dbg !3307
  %155 = bitcast %struct._object** %step to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %155) #3, !dbg !3307
  %156 = bitcast %struct._object** %stop to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %156) #3, !dbg !3307
  %157 = bitcast %struct._object** %start to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %157) #3, !dbg !3307
  %158 = bitcast %struct.rangeobject** %result to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %158) #3, !dbg !3307
  %159 = bitcast %struct.PySliceObject** %slice to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %159) #3, !dbg !3307
  %160 = load %struct._object*, %struct._object** %retval, !dbg !3307
  ret %struct._object* %160, !dbg !3307
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !579, metadata !1015), !dbg !3308
  store %struct._object* %start, %struct._object** %start.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %start.addr, metadata !580, metadata !1015), !dbg !3309
  store %struct._object* %stop, %struct._object** %stop.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %stop.addr, metadata !581, metadata !1015), !dbg !3310
  store %struct._object* %step, %struct._object** %step.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %step.addr, metadata !582, metadata !1015), !dbg !3311
  %0 = bitcast %struct.rangeobject** %obj to i8*, !dbg !3312
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3312
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %obj, metadata !583, metadata !1015), !dbg !3313
  store %struct.rangeobject* null, %struct.rangeobject** %obj, align 8, !dbg !3313, !tbaa !1011
  %1 = bitcast %struct._object** %length to i8*, !dbg !3314
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3314
  call void @llvm.dbg.declare(metadata %struct._object** %length, metadata !584, metadata !1015), !dbg !3315
  %2 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !3316, !tbaa !1011
  %3 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !3317, !tbaa !1011
  %4 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3318, !tbaa !1011
  %call = call %struct._object* @compute_range_length(%struct._object* %2, %struct._object* %3, %struct._object* %4), !dbg !3319
  store %struct._object* %call, %struct._object** %length, align 8, !dbg !3320, !tbaa !1011
  %5 = load %struct._object*, %struct._object** %length, align 8, !dbg !3321, !tbaa !1011
  %cmp = icmp eq %struct._object* %5, null, !dbg !3323
  br i1 %cmp, label %if.then, label %if.end, !dbg !3324

if.then:                                          ; preds = %entry
  store %struct.rangeobject* null, %struct.rangeobject** %retval, !dbg !3325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3325

if.end:                                           ; preds = %entry
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3327, !tbaa !1011
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* %6), !dbg !3328
  %7 = bitcast %struct._object* %call1 to %struct.rangeobject*, !dbg !3329
  store %struct.rangeobject* %7, %struct.rangeobject** %obj, align 8, !dbg !3330, !tbaa !1011
  %8 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3331, !tbaa !1011
  %cmp2 = icmp eq %struct.rangeobject* %8, null, !dbg !3332
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !3333

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !3334

do.body:                                          ; preds = %if.then.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3335
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !3335
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !585, metadata !1015), !dbg !3337
  %10 = load %struct._object*, %struct._object** %length, align 8, !dbg !3338, !tbaa !1011
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !3337, !tbaa !1011
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3339, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !3341
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !3342, !tbaa !1031
  %dec = add i64 %12, -1, !dbg !3342
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3342, !tbaa !1031
  %cmp4 = icmp ne i64 %dec, 0, !dbg !3343
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !3344

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !3345

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3347, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3349
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3349, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !3350
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3350, !tbaa !1041
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3351, !tbaa !1011
  call void %15(%struct._object* %16), !dbg !3352
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3353
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !3353
  br label %do.cond, !dbg !3355

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !3356

do.end:                                           ; preds = %do.cond
  store %struct.rangeobject* null, %struct.rangeobject** %retval, !dbg !3358
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3358

if.end.7:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !3359, !tbaa !1011
  %19 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3360, !tbaa !1011
  %start8 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %19, i32 0, i32 1, !dbg !3361
  store %struct._object* %18, %struct._object** %start8, align 8, !dbg !3362, !tbaa !1023
  %20 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !3363, !tbaa !1011
  %21 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3364, !tbaa !1011
  %stop9 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %21, i32 0, i32 2, !dbg !3365
  store %struct._object* %20, %struct._object** %stop9, align 8, !dbg !3366, !tbaa !1056
  %22 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3367, !tbaa !1011
  %23 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3368, !tbaa !1011
  %step10 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %23, i32 0, i32 3, !dbg !3369
  store %struct._object* %22, %struct._object** %step10, align 8, !dbg !3370, !tbaa !1079
  %24 = load %struct._object*, %struct._object** %length, align 8, !dbg !3371, !tbaa !1011
  %25 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3372, !tbaa !1011
  %length11 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %25, i32 0, i32 4, !dbg !3373
  store %struct._object* %24, %struct._object** %length11, align 8, !dbg !3374, !tbaa !1102
  %26 = load %struct.rangeobject*, %struct.rangeobject** %obj, align 8, !dbg !3375, !tbaa !1011
  store %struct.rangeobject* %26, %struct.rangeobject** %retval, !dbg !3376
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3376

cleanup:                                          ; preds = %if.end.7, %do.end, %if.then
  %27 = bitcast %struct._object** %length to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !3377
  %28 = bitcast %struct.rangeobject** %obj to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !3377
  %29 = load %struct.rangeobject*, %struct.rangeobject** %retval, !dbg !3377
  ret %struct.rangeobject* %29, !dbg !3377
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_xdecref_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_xdecref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_xdecref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %_py_xdecref_tmp177 = alloca %struct._object*, align 8
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_xdecref_tmp196 = alloca %struct._object*, align 8
  %_py_decref_tmp200 = alloca %struct._object*, align 8
  store %struct._object* %start, %struct._object** %start.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %start.addr, metadata !591, metadata !1015), !dbg !3378
  store %struct._object* %stop, %struct._object** %stop.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %stop.addr, metadata !592, metadata !1015), !dbg !3379
  store %struct._object* %step, %struct._object** %step.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %step.addr, metadata !593, metadata !1015), !dbg !3380
  %0 = bitcast i32* %cmp_result to i8*, !dbg !3381
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !3381
  call void @llvm.dbg.declare(metadata i32* %cmp_result, metadata !594, metadata !1015), !dbg !3382
  %1 = bitcast %struct._object** %lo to i8*, !dbg !3383
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3383
  call void @llvm.dbg.declare(metadata %struct._object** %lo, metadata !595, metadata !1015), !dbg !3384
  %2 = bitcast %struct._object** %hi to i8*, !dbg !3383
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3383
  call void @llvm.dbg.declare(metadata %struct._object** %hi, metadata !596, metadata !1015), !dbg !3385
  %3 = bitcast %struct._object** %diff to i8*, !dbg !3386
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3386
  call void @llvm.dbg.declare(metadata %struct._object** %diff, metadata !597, metadata !1015), !dbg !3387
  store %struct._object* null, %struct._object** %diff, align 8, !dbg !3387, !tbaa !1011
  %4 = bitcast %struct._object** %one to i8*, !dbg !3388
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3388
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !598, metadata !1015), !dbg !3389
  store %struct._object* null, %struct._object** %one, align 8, !dbg !3389, !tbaa !1011
  %5 = bitcast %struct._object** %tmp1 to i8*, !dbg !3390
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !3390
  call void @llvm.dbg.declare(metadata %struct._object** %tmp1, metadata !599, metadata !1015), !dbg !3391
  store %struct._object* null, %struct._object** %tmp1, align 8, !dbg !3391, !tbaa !1011
  %6 = bitcast %struct._object** %tmp2 to i8*, !dbg !3390
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !3390
  call void @llvm.dbg.declare(metadata %struct._object** %tmp2, metadata !600, metadata !1015), !dbg !3392
  store %struct._object* null, %struct._object** %tmp2, align 8, !dbg !3392, !tbaa !1011
  %7 = bitcast %struct._object** %result to i8*, !dbg !3390
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !3390
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !601, metadata !1015), !dbg !3393
  %8 = bitcast %struct._object** %zero to i8*, !dbg !3394
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct._object** %zero, metadata !602, metadata !1015), !dbg !3395
  %call = call %struct._object* @PyLong_FromLong(i64 0), !dbg !3396
  store %struct._object* %call, %struct._object** %zero, align 8, !dbg !3395, !tbaa !1011
  %9 = load %struct._object*, %struct._object** %zero, align 8, !dbg !3397, !tbaa !1011
  %cmp = icmp eq %struct._object* %9, null, !dbg !3399
  br i1 %cmp, label %if.then, label %if.end, !dbg !3400

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3401
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3401

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3402, !tbaa !1011
  %11 = load %struct._object*, %struct._object** %zero, align 8, !dbg !3403, !tbaa !1011
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %10, %struct._object* %11, i32 4), !dbg !3404
  store i32 %call1, i32* %cmp_result, align 4, !dbg !3405, !tbaa !1191
  br label %do.body, !dbg !3406

do.body:                                          ; preds = %if.end
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3407
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3407
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !603, metadata !1015), !dbg !3409
  %13 = load %struct._object*, %struct._object** %zero, align 8, !dbg !3410, !tbaa !1011
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !3409, !tbaa !1011
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3411, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3413
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !3414, !tbaa !1031
  %dec = add i64 %15, -1, !dbg !3414
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3414, !tbaa !1031
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3415
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3416

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !3417

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3419, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !3421
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3421, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !3422
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3422, !tbaa !1041
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3423, !tbaa !1011
  call void %18(%struct._object* %19), !dbg !3424
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3425
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !3425
  br label %do.cond, !dbg !3427

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3428

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %cmp_result, align 4, !dbg !3430, !tbaa !1191
  %cmp5 = icmp eq i32 %21, -1, !dbg !3432
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3433

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !3434
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3434

if.end.7:                                         ; preds = %do.end
  %22 = load i32, i32* %cmp_result, align 4, !dbg !3435, !tbaa !1191
  %cmp8 = icmp eq i32 %22, 1, !dbg !3437
  br i1 %cmp8, label %if.then.9, label %if.else.11, !dbg !3438

if.then.9:                                        ; preds = %if.end.7
  %23 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !3439, !tbaa !1011
  store %struct._object* %23, %struct._object** %lo, align 8, !dbg !3441, !tbaa !1011
  %24 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !3442, !tbaa !1011
  store %struct._object* %24, %struct._object** %hi, align 8, !dbg !3443, !tbaa !1011
  %25 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3444, !tbaa !1011
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !3445
  %26 = load i64, i64* %ob_refcnt10, align 8, !dbg !3446, !tbaa !1031
  %inc = add i64 %26, 1, !dbg !3446
  store i64 %inc, i64* %ob_refcnt10, align 8, !dbg !3446, !tbaa !1031
  br label %if.end.15, !dbg !3447

if.else.11:                                       ; preds = %if.end.7
  %27 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !3448, !tbaa !1011
  store %struct._object* %27, %struct._object** %lo, align 8, !dbg !3450, !tbaa !1011
  %28 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !3451, !tbaa !1011
  store %struct._object* %28, %struct._object** %hi, align 8, !dbg !3452, !tbaa !1011
  %29 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3453, !tbaa !1011
  %call12 = call %struct._object* @PyNumber_Negative(%struct._object* %29), !dbg !3454
  store %struct._object* %call12, %struct._object** %step.addr, align 8, !dbg !3455, !tbaa !1011
  %30 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3456, !tbaa !1011
  %tobool = icmp ne %struct._object* %30, null, !dbg !3456
  br i1 %tobool, label %if.end.14, label %if.then.13, !dbg !3458

if.then.13:                                       ; preds = %if.else.11
  store %struct._object* null, %struct._object** %retval, !dbg !3459
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3459

if.end.14:                                        ; preds = %if.else.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.9
  %31 = load %struct._object*, %struct._object** %lo, align 8, !dbg !3460, !tbaa !1011
  %32 = load %struct._object*, %struct._object** %hi, align 8, !dbg !3461, !tbaa !1011
  %call16 = call i32 @PyObject_RichCompareBool(%struct._object* %31, %struct._object* %32, i32 5), !dbg !3462
  %cmp17 = icmp eq i32 %call16, 1, !dbg !3463
  br i1 %cmp17, label %if.then.18, label %if.end.38, !dbg !3464

if.then.18:                                       ; preds = %if.end.15
  br label %do.body.19, !dbg !3465

do.body.19:                                       ; preds = %if.then.18
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3466
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !3466
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !605, metadata !1015), !dbg !3468
  %34 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3469, !tbaa !1011
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3468, !tbaa !1011
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3470, !tbaa !1011
  %cmp20 = icmp ne %struct._object* %35, null, !dbg !3471
  br i1 %cmp20, label %if.then.21, label %if.end.34, !dbg !3472

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22, !dbg !3473

do.body.22:                                       ; preds = %if.then.21
  %36 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3475
  call void @llvm.lifetime.start(i64 8, i8* %36) #3, !dbg !3475
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !609, metadata !1015), !dbg !3477
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3478, !tbaa !1011
  store %struct._object* %37, %struct._object** %_py_decref_tmp23, align 8, !dbg !3477, !tbaa !1011
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3479, !tbaa !1011
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !3481
  %39 = load i64, i64* %ob_refcnt24, align 8, !dbg !3482, !tbaa !1031
  %dec25 = add i64 %39, -1, !dbg !3482
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !3482, !tbaa !1031
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !3483
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !3484

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !3485

if.else.28:                                       ; preds = %do.body.22
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3487, !tbaa !1011
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !3489
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3489, !tbaa !1039
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !3490
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !3490, !tbaa !1041
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3491, !tbaa !1011
  call void %42(%struct._object* %43), !dbg !3492
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %44 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !3493
  br label %do.cond.32, !dbg !3495

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !3496

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34, !dbg !3498

if.end.34:                                        ; preds = %do.end.33, %do.body.19
  %45 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3500
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !3500
  br label %do.cond.35, !dbg !3503

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !3504

do.end.36:                                        ; preds = %do.cond.35
  %call37 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !3506
  store %struct._object* %call37, %struct._object** %retval, !dbg !3507
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3507

if.end.38:                                        ; preds = %if.end.15
  %call39 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !3508
  store %struct._object* %call39, %struct._object** %one, align 8, !dbg !3510, !tbaa !1011
  %cmp40 = icmp eq %struct._object* %call39, null, !dbg !3511
  br i1 %cmp40, label %if.then.41, label %if.end.42, !dbg !3512

if.then.41:                                       ; preds = %if.end.38
  br label %Fail, !dbg !3513

if.end.42:                                        ; preds = %if.end.38
  %46 = load %struct._object*, %struct._object** %hi, align 8, !dbg !3514, !tbaa !1011
  %47 = load %struct._object*, %struct._object** %lo, align 8, !dbg !3516, !tbaa !1011
  %call43 = call %struct._object* @PyNumber_Subtract(%struct._object* %46, %struct._object* %47), !dbg !3517
  store %struct._object* %call43, %struct._object** %tmp1, align 8, !dbg !3518, !tbaa !1011
  %cmp44 = icmp eq %struct._object* %call43, null, !dbg !3519
  br i1 %cmp44, label %if.then.45, label %if.end.46, !dbg !3520

if.then.45:                                       ; preds = %if.end.42
  br label %Fail, !dbg !3521

if.end.46:                                        ; preds = %if.end.42
  %48 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !3522, !tbaa !1011
  %49 = load %struct._object*, %struct._object** %one, align 8, !dbg !3524, !tbaa !1011
  %call47 = call %struct._object* @PyNumber_Subtract(%struct._object* %48, %struct._object* %49), !dbg !3525
  store %struct._object* %call47, %struct._object** %diff, align 8, !dbg !3526, !tbaa !1011
  %cmp48 = icmp eq %struct._object* %call47, null, !dbg !3527
  br i1 %cmp48, label %if.then.49, label %if.end.50, !dbg !3528

if.then.49:                                       ; preds = %if.end.46
  br label %Fail, !dbg !3529

if.end.50:                                        ; preds = %if.end.46
  %50 = load %struct._object*, %struct._object** %diff, align 8, !dbg !3530, !tbaa !1011
  %51 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3532, !tbaa !1011
  %call51 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %50, %struct._object* %51), !dbg !3533
  store %struct._object* %call51, %struct._object** %tmp2, align 8, !dbg !3534, !tbaa !1011
  %cmp52 = icmp eq %struct._object* %call51, null, !dbg !3535
  br i1 %cmp52, label %if.then.53, label %if.end.54, !dbg !3536

if.then.53:                                       ; preds = %if.end.50
  br label %Fail, !dbg !3537

if.end.54:                                        ; preds = %if.end.50
  %52 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !3538, !tbaa !1011
  %53 = load %struct._object*, %struct._object** %one, align 8, !dbg !3540, !tbaa !1011
  %call55 = call %struct._object* @PyNumber_Add(%struct._object* %52, %struct._object* %53), !dbg !3541
  store %struct._object* %call55, %struct._object** %result, align 8, !dbg !3542, !tbaa !1011
  %cmp56 = icmp eq %struct._object* %call55, null, !dbg !3543
  br i1 %cmp56, label %if.then.57, label %if.end.58, !dbg !3544

if.then.57:                                       ; preds = %if.end.54
  br label %Fail, !dbg !3545

if.end.58:                                        ; preds = %if.end.54
  br label %do.body.59, !dbg !3546

do.body.59:                                       ; preds = %if.end.58
  %54 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !3547
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !3547
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp60, metadata !612, metadata !1015), !dbg !3549
  %55 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !3550, !tbaa !1011
  store %struct._object* %55, %struct._object** %_py_decref_tmp60, align 8, !dbg !3549, !tbaa !1011
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !3551, !tbaa !1011
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !3553
  %57 = load i64, i64* %ob_refcnt61, align 8, !dbg !3554, !tbaa !1031
  %dec62 = add i64 %57, -1, !dbg !3554
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !3554, !tbaa !1031
  %cmp63 = icmp ne i64 %dec62, 0, !dbg !3555
  br i1 %cmp63, label %if.then.64, label %if.else.65, !dbg !3556

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68, !dbg !3557

if.else.65:                                       ; preds = %do.body.59
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !3559, !tbaa !1011
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !3561
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !3561, !tbaa !1039
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !3562
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !3562, !tbaa !1041
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !3563, !tbaa !1011
  call void %60(%struct._object* %61), !dbg !3564
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  %62 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !3565
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !3565
  br label %do.cond.69, !dbg !3566

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !3567

do.end.70:                                        ; preds = %do.cond.69
  br label %do.body.71, !dbg !3569

do.body.71:                                       ; preds = %do.end.70
  %63 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !3570
  call void @llvm.lifetime.start(i64 8, i8* %63) #3, !dbg !3570
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp72, metadata !614, metadata !1015), !dbg !3572
  %64 = load %struct._object*, %struct._object** %diff, align 8, !dbg !3573, !tbaa !1011
  store %struct._object* %64, %struct._object** %_py_decref_tmp72, align 8, !dbg !3572, !tbaa !1011
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3574, !tbaa !1011
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !3576
  %66 = load i64, i64* %ob_refcnt73, align 8, !dbg !3577, !tbaa !1031
  %dec74 = add i64 %66, -1, !dbg !3577
  store i64 %dec74, i64* %ob_refcnt73, align 8, !dbg !3577, !tbaa !1031
  %cmp75 = icmp ne i64 %dec74, 0, !dbg !3578
  br i1 %cmp75, label %if.then.76, label %if.else.77, !dbg !3579

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80, !dbg !3580

if.else.77:                                       ; preds = %do.body.71
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3582, !tbaa !1011
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !3584
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8, !dbg !3584, !tbaa !1039
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !3585
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8, !dbg !3585, !tbaa !1041
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3586, !tbaa !1011
  call void %69(%struct._object* %70), !dbg !3587
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  %71 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !3588
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !3588
  br label %do.cond.81, !dbg !3589

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !3590

do.end.82:                                        ; preds = %do.cond.81
  br label %do.body.83, !dbg !3592

do.body.83:                                       ; preds = %do.end.82
  %72 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !3593
  call void @llvm.lifetime.start(i64 8, i8* %72) #3, !dbg !3593
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !616, metadata !1015), !dbg !3595
  %73 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3596, !tbaa !1011
  store %struct._object* %73, %struct._object** %_py_decref_tmp84, align 8, !dbg !3595, !tbaa !1011
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !3597, !tbaa !1011
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !3599
  %75 = load i64, i64* %ob_refcnt85, align 8, !dbg !3600, !tbaa !1031
  %dec86 = add i64 %75, -1, !dbg !3600
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !3600, !tbaa !1031
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !3601
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !3602

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !3603

if.else.89:                                       ; preds = %do.body.83
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !3605, !tbaa !1011
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !3607
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !3607, !tbaa !1039
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !3608
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !3608, !tbaa !1041
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !3609, !tbaa !1011
  call void %78(%struct._object* %79), !dbg !3610
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %80 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !3611
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !3611
  br label %do.cond.93, !dbg !3612

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !3613

do.end.94:                                        ; preds = %do.cond.93
  br label %do.body.95, !dbg !3615

do.body.95:                                       ; preds = %do.end.94
  %81 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !3616
  call void @llvm.lifetime.start(i64 8, i8* %81) #3, !dbg !3616
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp96, metadata !618, metadata !1015), !dbg !3618
  %82 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !3619, !tbaa !1011
  store %struct._object* %82, %struct._object** %_py_decref_tmp96, align 8, !dbg !3618, !tbaa !1011
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !3620, !tbaa !1011
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0, !dbg !3622
  %84 = load i64, i64* %ob_refcnt97, align 8, !dbg !3623, !tbaa !1031
  %dec98 = add i64 %84, -1, !dbg !3623
  store i64 %dec98, i64* %ob_refcnt97, align 8, !dbg !3623, !tbaa !1031
  %cmp99 = icmp ne i64 %dec98, 0, !dbg !3624
  br i1 %cmp99, label %if.then.100, label %if.else.101, !dbg !3625

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104, !dbg !3626

if.else.101:                                      ; preds = %do.body.95
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !3628, !tbaa !1011
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1, !dbg !3630
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !3630, !tbaa !1039
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4, !dbg !3631
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !3631, !tbaa !1041
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !3632, !tbaa !1011
  call void %87(%struct._object* %88), !dbg !3633
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %89 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !3634
  call void @llvm.lifetime.end(i64 8, i8* %89) #3, !dbg !3634
  br label %do.cond.105, !dbg !3635

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !3636

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107, !dbg !3638

do.body.107:                                      ; preds = %do.end.106
  %90 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !3639
  call void @llvm.lifetime.start(i64 8, i8* %90) #3, !dbg !3639
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp108, metadata !620, metadata !1015), !dbg !3641
  %91 = load %struct._object*, %struct._object** %one, align 8, !dbg !3642, !tbaa !1011
  store %struct._object* %91, %struct._object** %_py_decref_tmp108, align 8, !dbg !3641, !tbaa !1011
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3643, !tbaa !1011
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0, !dbg !3645
  %93 = load i64, i64* %ob_refcnt109, align 8, !dbg !3646, !tbaa !1031
  %dec110 = add i64 %93, -1, !dbg !3646
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !3646, !tbaa !1031
  %cmp111 = icmp ne i64 %dec110, 0, !dbg !3647
  br i1 %cmp111, label %if.then.112, label %if.else.113, !dbg !3648

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116, !dbg !3649

if.else.113:                                      ; preds = %do.body.107
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3651, !tbaa !1011
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1, !dbg !3653
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8, !dbg !3653, !tbaa !1039
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4, !dbg !3654
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !3654, !tbaa !1041
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8, !dbg !3655, !tbaa !1011
  call void %96(%struct._object* %97), !dbg !3656
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  %98 = bitcast %struct._object** %_py_decref_tmp108 to i8*, !dbg !3657
  call void @llvm.lifetime.end(i64 8, i8* %98) #3, !dbg !3657
  br label %do.cond.117, !dbg !3658

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118, !dbg !3659

do.end.118:                                       ; preds = %do.cond.117
  %99 = load %struct._object*, %struct._object** %result, align 8, !dbg !3661, !tbaa !1011
  store %struct._object* %99, %struct._object** %retval, !dbg !3662
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3662

Fail:                                             ; preds = %if.then.57, %if.then.53, %if.then.49, %if.then.45, %if.then.41
  br label %do.body.119, !dbg !3663

do.body.119:                                      ; preds = %Fail
  %100 = bitcast %struct._object** %_py_xdecref_tmp120 to i8*, !dbg !3664
  call void @llvm.lifetime.start(i64 8, i8* %100) #3, !dbg !3664
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp120, metadata !622, metadata !1015), !dbg !3666
  %101 = load %struct._object*, %struct._object** %tmp2, align 8, !dbg !3667, !tbaa !1011
  store %struct._object* %101, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !3666, !tbaa !1011
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !3668, !tbaa !1011
  %cmp121 = icmp ne %struct._object* %102, null, !dbg !3669
  br i1 %cmp121, label %if.then.122, label %if.end.135, !dbg !3670

if.then.122:                                      ; preds = %do.body.119
  br label %do.body.123, !dbg !3671

do.body.123:                                      ; preds = %if.then.122
  %103 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !3673
  call void @llvm.lifetime.start(i64 8, i8* %103) #3, !dbg !3673
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp124, metadata !624, metadata !1015), !dbg !3675
  %104 = load %struct._object*, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !3676, !tbaa !1011
  store %struct._object* %104, %struct._object** %_py_decref_tmp124, align 8, !dbg !3675, !tbaa !1011
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !3677, !tbaa !1011
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !3679
  %106 = load i64, i64* %ob_refcnt125, align 8, !dbg !3680, !tbaa !1031
  %dec126 = add i64 %106, -1, !dbg !3680
  store i64 %dec126, i64* %ob_refcnt125, align 8, !dbg !3680, !tbaa !1031
  %cmp127 = icmp ne i64 %dec126, 0, !dbg !3681
  br i1 %cmp127, label %if.then.128, label %if.else.129, !dbg !3682

if.then.128:                                      ; preds = %do.body.123
  br label %if.end.132, !dbg !3683

if.else.129:                                      ; preds = %do.body.123
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !3685, !tbaa !1011
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !3687
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !3687, !tbaa !1039
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !3688
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8, !dbg !3688, !tbaa !1041
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !3689, !tbaa !1011
  call void %109(%struct._object* %110), !dbg !3690
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  %111 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !3691
  call void @llvm.lifetime.end(i64 8, i8* %111) #3, !dbg !3691
  br label %do.cond.133, !dbg !3693

do.cond.133:                                      ; preds = %if.end.132
  br label %do.end.134, !dbg !3694

do.end.134:                                       ; preds = %do.cond.133
  br label %if.end.135, !dbg !3696

if.end.135:                                       ; preds = %do.end.134, %do.body.119
  %112 = bitcast %struct._object** %_py_xdecref_tmp120 to i8*, !dbg !3698
  call void @llvm.lifetime.end(i64 8, i8* %112) #3, !dbg !3698
  br label %do.cond.136, !dbg !3701

do.cond.136:                                      ; preds = %if.end.135
  br label %do.end.137, !dbg !3702

do.end.137:                                       ; preds = %do.cond.136
  br label %do.body.138, !dbg !3704

do.body.138:                                      ; preds = %do.end.137
  %113 = bitcast %struct._object** %_py_xdecref_tmp139 to i8*, !dbg !3705
  call void @llvm.lifetime.start(i64 8, i8* %113) #3, !dbg !3705
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp139, metadata !627, metadata !1015), !dbg !3707
  %114 = load %struct._object*, %struct._object** %diff, align 8, !dbg !3708, !tbaa !1011
  store %struct._object* %114, %struct._object** %_py_xdecref_tmp139, align 8, !dbg !3707, !tbaa !1011
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8, !dbg !3709, !tbaa !1011
  %cmp140 = icmp ne %struct._object* %115, null, !dbg !3710
  br i1 %cmp140, label %if.then.141, label %if.end.154, !dbg !3711

if.then.141:                                      ; preds = %do.body.138
  br label %do.body.142, !dbg !3712

do.body.142:                                      ; preds = %if.then.141
  %116 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !3714
  call void @llvm.lifetime.start(i64 8, i8* %116) #3, !dbg !3714
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp143, metadata !629, metadata !1015), !dbg !3716
  %117 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8, !dbg !3717, !tbaa !1011
  store %struct._object* %117, %struct._object** %_py_decref_tmp143, align 8, !dbg !3716, !tbaa !1011
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !3718, !tbaa !1011
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0, !dbg !3720
  %119 = load i64, i64* %ob_refcnt144, align 8, !dbg !3721, !tbaa !1031
  %dec145 = add i64 %119, -1, !dbg !3721
  store i64 %dec145, i64* %ob_refcnt144, align 8, !dbg !3721, !tbaa !1031
  %cmp146 = icmp ne i64 %dec145, 0, !dbg !3722
  br i1 %cmp146, label %if.then.147, label %if.else.148, !dbg !3723

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151, !dbg !3724

if.else.148:                                      ; preds = %do.body.142
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !3726, !tbaa !1011
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1, !dbg !3728
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8, !dbg !3728, !tbaa !1039
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4, !dbg !3729
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8, !dbg !3729, !tbaa !1041
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !3730, !tbaa !1011
  call void %122(%struct._object* %123), !dbg !3731
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  %124 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !3732
  call void @llvm.lifetime.end(i64 8, i8* %124) #3, !dbg !3732
  br label %do.cond.152, !dbg !3734

do.cond.152:                                      ; preds = %if.end.151
  br label %do.end.153, !dbg !3735

do.end.153:                                       ; preds = %do.cond.152
  br label %if.end.154, !dbg !3737

if.end.154:                                       ; preds = %do.end.153, %do.body.138
  %125 = bitcast %struct._object** %_py_xdecref_tmp139 to i8*, !dbg !3739
  call void @llvm.lifetime.end(i64 8, i8* %125) #3, !dbg !3739
  br label %do.cond.155, !dbg !3740

do.cond.155:                                      ; preds = %if.end.154
  br label %do.end.156, !dbg !3741

do.end.156:                                       ; preds = %do.cond.155
  br label %do.body.157, !dbg !3743

do.body.157:                                      ; preds = %do.end.156
  %126 = bitcast %struct._object** %_py_xdecref_tmp158 to i8*, !dbg !3744
  call void @llvm.lifetime.start(i64 8, i8* %126) #3, !dbg !3744
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp158, metadata !632, metadata !1015), !dbg !3746
  %127 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !3747, !tbaa !1011
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp158, align 8, !dbg !3746, !tbaa !1011
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8, !dbg !3748, !tbaa !1011
  %cmp159 = icmp ne %struct._object* %128, null, !dbg !3749
  br i1 %cmp159, label %if.then.160, label %if.end.173, !dbg !3750

if.then.160:                                      ; preds = %do.body.157
  br label %do.body.161, !dbg !3751

do.body.161:                                      ; preds = %if.then.160
  %129 = bitcast %struct._object** %_py_decref_tmp162 to i8*, !dbg !3753
  call void @llvm.lifetime.start(i64 8, i8* %129) #3, !dbg !3753
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp162, metadata !634, metadata !1015), !dbg !3755
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8, !dbg !3756, !tbaa !1011
  store %struct._object* %130, %struct._object** %_py_decref_tmp162, align 8, !dbg !3755, !tbaa !1011
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3757, !tbaa !1011
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0, !dbg !3759
  %132 = load i64, i64* %ob_refcnt163, align 8, !dbg !3760, !tbaa !1031
  %dec164 = add i64 %132, -1, !dbg !3760
  store i64 %dec164, i64* %ob_refcnt163, align 8, !dbg !3760, !tbaa !1031
  %cmp165 = icmp ne i64 %dec164, 0, !dbg !3761
  br i1 %cmp165, label %if.then.166, label %if.else.167, !dbg !3762

if.then.166:                                      ; preds = %do.body.161
  br label %if.end.170, !dbg !3763

if.else.167:                                      ; preds = %do.body.161
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3765, !tbaa !1011
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1, !dbg !3767
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8, !dbg !3767, !tbaa !1039
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4, !dbg !3768
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8, !dbg !3768, !tbaa !1041
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3769, !tbaa !1011
  call void %135(%struct._object* %136), !dbg !3770
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  %137 = bitcast %struct._object** %_py_decref_tmp162 to i8*, !dbg !3771
  call void @llvm.lifetime.end(i64 8, i8* %137) #3, !dbg !3771
  br label %do.cond.171, !dbg !3773

do.cond.171:                                      ; preds = %if.end.170
  br label %do.end.172, !dbg !3774

do.end.172:                                       ; preds = %do.cond.171
  br label %if.end.173, !dbg !3776

if.end.173:                                       ; preds = %do.end.172, %do.body.157
  %138 = bitcast %struct._object** %_py_xdecref_tmp158 to i8*, !dbg !3778
  call void @llvm.lifetime.end(i64 8, i8* %138) #3, !dbg !3778
  br label %do.cond.174, !dbg !3779

do.cond.174:                                      ; preds = %if.end.173
  br label %do.end.175, !dbg !3780

do.end.175:                                       ; preds = %do.cond.174
  br label %do.body.176, !dbg !3782

do.body.176:                                      ; preds = %do.end.175
  %139 = bitcast %struct._object** %_py_xdecref_tmp177 to i8*, !dbg !3783
  call void @llvm.lifetime.start(i64 8, i8* %139) #3, !dbg !3783
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp177, metadata !637, metadata !1015), !dbg !3785
  %140 = load %struct._object*, %struct._object** %tmp1, align 8, !dbg !3786, !tbaa !1011
  store %struct._object* %140, %struct._object** %_py_xdecref_tmp177, align 8, !dbg !3785, !tbaa !1011
  %141 = load %struct._object*, %struct._object** %_py_xdecref_tmp177, align 8, !dbg !3787, !tbaa !1011
  %cmp178 = icmp ne %struct._object* %141, null, !dbg !3788
  br i1 %cmp178, label %if.then.179, label %if.end.192, !dbg !3789

if.then.179:                                      ; preds = %do.body.176
  br label %do.body.180, !dbg !3790

do.body.180:                                      ; preds = %if.then.179
  %142 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !3792
  call void @llvm.lifetime.start(i64 8, i8* %142) #3, !dbg !3792
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp181, metadata !639, metadata !1015), !dbg !3794
  %143 = load %struct._object*, %struct._object** %_py_xdecref_tmp177, align 8, !dbg !3795, !tbaa !1011
  store %struct._object* %143, %struct._object** %_py_decref_tmp181, align 8, !dbg !3794, !tbaa !1011
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !3796, !tbaa !1011
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0, !dbg !3798
  %145 = load i64, i64* %ob_refcnt182, align 8, !dbg !3799, !tbaa !1031
  %dec183 = add i64 %145, -1, !dbg !3799
  store i64 %dec183, i64* %ob_refcnt182, align 8, !dbg !3799, !tbaa !1031
  %cmp184 = icmp ne i64 %dec183, 0, !dbg !3800
  br i1 %cmp184, label %if.then.185, label %if.else.186, !dbg !3801

if.then.185:                                      ; preds = %do.body.180
  br label %if.end.189, !dbg !3802

if.else.186:                                      ; preds = %do.body.180
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !3804, !tbaa !1011
  %ob_type187 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1, !dbg !3806
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type187, align 8, !dbg !3806, !tbaa !1039
  %tp_dealloc188 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4, !dbg !3807
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188, align 8, !dbg !3807, !tbaa !1041
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !3808, !tbaa !1011
  call void %148(%struct._object* %149), !dbg !3809
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.185
  %150 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !3810
  call void @llvm.lifetime.end(i64 8, i8* %150) #3, !dbg !3810
  br label %do.cond.190, !dbg !3812

do.cond.190:                                      ; preds = %if.end.189
  br label %do.end.191, !dbg !3813

do.end.191:                                       ; preds = %do.cond.190
  br label %if.end.192, !dbg !3815

if.end.192:                                       ; preds = %do.end.191, %do.body.176
  %151 = bitcast %struct._object** %_py_xdecref_tmp177 to i8*, !dbg !3817
  call void @llvm.lifetime.end(i64 8, i8* %151) #3, !dbg !3817
  br label %do.cond.193, !dbg !3818

do.cond.193:                                      ; preds = %if.end.192
  br label %do.end.194, !dbg !3819

do.end.194:                                       ; preds = %do.cond.193
  br label %do.body.195, !dbg !3821

do.body.195:                                      ; preds = %do.end.194
  %152 = bitcast %struct._object** %_py_xdecref_tmp196 to i8*, !dbg !3822
  call void @llvm.lifetime.start(i64 8, i8* %152) #3, !dbg !3822
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp196, metadata !642, metadata !1015), !dbg !3824
  %153 = load %struct._object*, %struct._object** %one, align 8, !dbg !3825, !tbaa !1011
  store %struct._object* %153, %struct._object** %_py_xdecref_tmp196, align 8, !dbg !3824, !tbaa !1011
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp196, align 8, !dbg !3826, !tbaa !1011
  %cmp197 = icmp ne %struct._object* %154, null, !dbg !3827
  br i1 %cmp197, label %if.then.198, label %if.end.211, !dbg !3828

if.then.198:                                      ; preds = %do.body.195
  br label %do.body.199, !dbg !3829

do.body.199:                                      ; preds = %if.then.198
  %155 = bitcast %struct._object** %_py_decref_tmp200 to i8*, !dbg !3831
  call void @llvm.lifetime.start(i64 8, i8* %155) #3, !dbg !3831
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp200, metadata !644, metadata !1015), !dbg !3833
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp196, align 8, !dbg !3834, !tbaa !1011
  store %struct._object* %156, %struct._object** %_py_decref_tmp200, align 8, !dbg !3833, !tbaa !1011
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8, !dbg !3835, !tbaa !1011
  %ob_refcnt201 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0, !dbg !3837
  %158 = load i64, i64* %ob_refcnt201, align 8, !dbg !3838, !tbaa !1031
  %dec202 = add i64 %158, -1, !dbg !3838
  store i64 %dec202, i64* %ob_refcnt201, align 8, !dbg !3838, !tbaa !1031
  %cmp203 = icmp ne i64 %dec202, 0, !dbg !3839
  br i1 %cmp203, label %if.then.204, label %if.else.205, !dbg !3840

if.then.204:                                      ; preds = %do.body.199
  br label %if.end.208, !dbg !3841

if.else.205:                                      ; preds = %do.body.199
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8, !dbg !3843, !tbaa !1011
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 1, !dbg !3845
  %160 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8, !dbg !3845, !tbaa !1039
  %tp_dealloc207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %160, i32 0, i32 4, !dbg !3846
  %161 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207, align 8, !dbg !3846, !tbaa !1041
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8, !dbg !3847, !tbaa !1011
  call void %161(%struct._object* %162), !dbg !3848
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.then.204
  %163 = bitcast %struct._object** %_py_decref_tmp200 to i8*, !dbg !3849
  call void @llvm.lifetime.end(i64 8, i8* %163) #3, !dbg !3849
  br label %do.cond.209, !dbg !3851

do.cond.209:                                      ; preds = %if.end.208
  br label %do.end.210, !dbg !3852

do.end.210:                                       ; preds = %do.cond.209
  br label %if.end.211, !dbg !3854

if.end.211:                                       ; preds = %do.end.210, %do.body.195
  %164 = bitcast %struct._object** %_py_xdecref_tmp196 to i8*, !dbg !3856
  call void @llvm.lifetime.end(i64 8, i8* %164) #3, !dbg !3856
  br label %do.cond.212, !dbg !3857

do.cond.212:                                      ; preds = %if.end.211
  br label %do.end.213, !dbg !3858

do.end.213:                                       ; preds = %do.cond.212
  store %struct._object* null, %struct._object** %retval, !dbg !3860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3860

cleanup:                                          ; preds = %do.end.213, %do.end.118, %do.end.36, %if.then.13, %if.then.6, %if.then
  %165 = bitcast %struct._object** %zero to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %165) #3, !dbg !3861
  %166 = bitcast %struct._object** %result to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %166) #3, !dbg !3861
  %167 = bitcast %struct._object** %tmp2 to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %167) #3, !dbg !3861
  %168 = bitcast %struct._object** %tmp1 to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %168) #3, !dbg !3861
  %169 = bitcast %struct._object** %one to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %169) #3, !dbg !3861
  %170 = bitcast %struct._object** %diff to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %170) #3, !dbg !3861
  %171 = bitcast %struct._object** %hi to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %171) #3, !dbg !3861
  %172 = bitcast %struct._object** %lo to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 8, i8* %172) #3, !dbg !3861
  %173 = bitcast i32* %cmp_result to i8*, !dbg !3861
  call void @llvm.lifetime.end(i64 4, i8* %173) #3, !dbg !3861
  %174 = load %struct._object*, %struct._object** %retval, !dbg !3861
  ret %struct._object* %174, !dbg !3861
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r0, %struct.rangeobject** %r0.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r0.addr, metadata !672, metadata !1015), !dbg !3862
  store %struct.rangeobject* %r1, %struct.rangeobject** %r1.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r1.addr, metadata !673, metadata !1015), !dbg !3863
  %0 = bitcast i32* %cmp_result to i8*, !dbg !3864
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !3864
  call void @llvm.dbg.declare(metadata i32* %cmp_result, metadata !674, metadata !1015), !dbg !3865
  %1 = bitcast %struct._object** %one to i8*, !dbg !3866
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3866
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !675, metadata !1015), !dbg !3867
  %2 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3868, !tbaa !1011
  %3 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8, !dbg !3870, !tbaa !1011
  %cmp = icmp eq %struct.rangeobject* %2, %3, !dbg !3871
  br i1 %cmp, label %if.then, label %if.end, !dbg !3872

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !3873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3873

if.end:                                           ; preds = %entry
  %4 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3874, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %4, i32 0, i32 4, !dbg !3875
  %5 = load %struct._object*, %struct._object** %length, align 8, !dbg !3875, !tbaa !1102
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8, !dbg !3876, !tbaa !1011
  %length1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %6, i32 0, i32 4, !dbg !3877
  %7 = load %struct._object*, %struct._object** %length1, align 8, !dbg !3877, !tbaa !1102
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 2), !dbg !3878
  store i32 %call, i32* %cmp_result, align 4, !dbg !3879, !tbaa !1191
  %8 = load i32, i32* %cmp_result, align 4, !dbg !3880, !tbaa !1191
  %cmp2 = icmp ne i32 %8, 1, !dbg !3882
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3883

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %cmp_result, align 4, !dbg !3884, !tbaa !1191
  store i32 %9, i32* %retval, !dbg !3885
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3885

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3886, !tbaa !1011
  %length5 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %10, i32 0, i32 4, !dbg !3887
  %11 = load %struct._object*, %struct._object** %length5, align 8, !dbg !3887, !tbaa !1102
  %call6 = call i32 @PyObject_Not(%struct._object* %11), !dbg !3888
  store i32 %call6, i32* %cmp_result, align 4, !dbg !3889, !tbaa !1191
  %12 = load i32, i32* %cmp_result, align 4, !dbg !3890, !tbaa !1191
  %cmp7 = icmp ne i32 %12, 0, !dbg !3892
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3893

if.then.8:                                        ; preds = %if.end.4
  %13 = load i32, i32* %cmp_result, align 4, !dbg !3894, !tbaa !1191
  store i32 %13, i32* %retval, !dbg !3895
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3895

if.end.9:                                         ; preds = %if.end.4
  %14 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3896, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 1, !dbg !3897
  %15 = load %struct._object*, %struct._object** %start, align 8, !dbg !3897, !tbaa !1023
  %16 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8, !dbg !3898, !tbaa !1011
  %start10 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %16, i32 0, i32 1, !dbg !3899
  %17 = load %struct._object*, %struct._object** %start10, align 8, !dbg !3899, !tbaa !1023
  %call11 = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %17, i32 2), !dbg !3900
  store i32 %call11, i32* %cmp_result, align 4, !dbg !3901, !tbaa !1191
  %18 = load i32, i32* %cmp_result, align 4, !dbg !3902, !tbaa !1191
  %cmp12 = icmp ne i32 %18, 1, !dbg !3904
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !3905

if.then.13:                                       ; preds = %if.end.9
  %19 = load i32, i32* %cmp_result, align 4, !dbg !3906, !tbaa !1191
  store i32 %19, i32* %retval, !dbg !3907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3907

if.end.14:                                        ; preds = %if.end.9
  %call15 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !3908
  store %struct._object* %call15, %struct._object** %one, align 8, !dbg !3909, !tbaa !1011
  %20 = load %struct._object*, %struct._object** %one, align 8, !dbg !3910, !tbaa !1011
  %tobool = icmp ne %struct._object* %20, null, !dbg !3910
  br i1 %tobool, label %if.end.17, label %if.then.16, !dbg !3912

if.then.16:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval, !dbg !3913
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3913

if.end.17:                                        ; preds = %if.end.14
  %21 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3914, !tbaa !1011
  %length18 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %21, i32 0, i32 4, !dbg !3915
  %22 = load %struct._object*, %struct._object** %length18, align 8, !dbg !3915, !tbaa !1102
  %23 = load %struct._object*, %struct._object** %one, align 8, !dbg !3916, !tbaa !1011
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %22, %struct._object* %23, i32 2), !dbg !3917
  store i32 %call19, i32* %cmp_result, align 4, !dbg !3918, !tbaa !1191
  br label %do.body, !dbg !3919

do.body:                                          ; preds = %if.end.17
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3920
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !3920
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !676, metadata !1015), !dbg !3922
  %25 = load %struct._object*, %struct._object** %one, align 8, !dbg !3923, !tbaa !1011
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !3922, !tbaa !1011
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3924, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !3926
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !3927, !tbaa !1031
  %dec = add i64 %27, -1, !dbg !3927
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3927, !tbaa !1031
  %cmp20 = icmp ne i64 %dec, 0, !dbg !3928
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3929

if.then.21:                                       ; preds = %do.body
  br label %if.end.22, !dbg !3930

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3932, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !3934
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3934, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !3935
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3935, !tbaa !1041
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3936, !tbaa !1011
  call void %30(%struct._object* %31), !dbg !3937
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3938
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !3938
  br label %do.cond, !dbg !3940

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !3941

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %cmp_result, align 4, !dbg !3943, !tbaa !1191
  %cmp23 = icmp ne i32 %33, 0, !dbg !3945
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !3946

if.then.24:                                       ; preds = %do.end
  %34 = load i32, i32* %cmp_result, align 4, !dbg !3947, !tbaa !1191
  store i32 %34, i32* %retval, !dbg !3948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3948

if.end.25:                                        ; preds = %do.end
  %35 = load %struct.rangeobject*, %struct.rangeobject** %r0.addr, align 8, !dbg !3949, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %35, i32 0, i32 3, !dbg !3950
  %36 = load %struct._object*, %struct._object** %step, align 8, !dbg !3950, !tbaa !1079
  %37 = load %struct.rangeobject*, %struct.rangeobject** %r1.addr, align 8, !dbg !3951, !tbaa !1011
  %step26 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %37, i32 0, i32 3, !dbg !3952
  %38 = load %struct._object*, %struct._object** %step26, align 8, !dbg !3952, !tbaa !1079
  %call27 = call i32 @PyObject_RichCompareBool(%struct._object* %36, %struct._object* %38, i32 2), !dbg !3953
  store i32 %call27, i32* %retval, !dbg !3954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3954

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.16, %if.then.13, %if.then.8, %if.then.3, %if.then
  %39 = bitcast %struct._object** %one to i8*, !dbg !3955
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !3955
  %40 = bitcast i32* %cmp_result to i8*, !dbg !3955
  call void @llvm.lifetime.end(i64 4, i8* %40) #3, !dbg !3955
  %41 = load i32, i32* %retval, !dbg !3955
  ret i32 %41, !dbg !3955
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !680, metadata !1015), !dbg !3956
  %0 = bitcast %struct.rangeobject** %range to i8*, !dbg !3957
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3957
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %range, metadata !681, metadata !1015), !dbg !3958
  %1 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !3959, !tbaa !1011
  %2 = bitcast %struct._object* %1 to %struct.rangeobject*, !dbg !3960
  store %struct.rangeobject* %2, %struct.rangeobject** %range, align 8, !dbg !3958, !tbaa !1011
  %3 = bitcast %struct.longrangeiterobject** %it to i8*, !dbg !3961
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3961
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %it, metadata !682, metadata !1015), !dbg !3962
  %4 = bitcast %struct._object** %one to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !683, metadata !1015), !dbg !3964
  %5 = bitcast %struct._object** %sum to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct._object** %sum, metadata !684, metadata !1015), !dbg !3965
  %6 = bitcast %struct._object** %diff to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct._object** %diff, metadata !685, metadata !1015), !dbg !3966
  %7 = bitcast %struct._object** %product to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct._object** %product, metadata !686, metadata !1015), !dbg !3967
  %8 = bitcast i64* %lstart to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !3968
  call void @llvm.dbg.declare(metadata i64* %lstart, metadata !687, metadata !1015), !dbg !3969
  %9 = bitcast i64* %lstop to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !3968
  call void @llvm.dbg.declare(metadata i64* %lstop, metadata !688, metadata !1015), !dbg !3970
  %10 = bitcast i64* %lstep to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !3968
  call void @llvm.dbg.declare(metadata i64* %lstep, metadata !689, metadata !1015), !dbg !3971
  %11 = bitcast i64* %new_start to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !3968
  call void @llvm.dbg.declare(metadata i64* %new_start, metadata !690, metadata !1015), !dbg !3972
  %12 = bitcast i64* %new_stop to i8*, !dbg !3968
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3968
  call void @llvm.dbg.declare(metadata i64* %new_stop, metadata !691, metadata !1015), !dbg !3973
  %13 = bitcast i64* %ulen to i8*, !dbg !3974
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !3974
  call void @llvm.dbg.declare(metadata i64* %ulen, metadata !692, metadata !1015), !dbg !3975
  %14 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !3976, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %14, i32 0, i32 1, !dbg !3977
  %15 = load %struct._object*, %struct._object** %start, align 8, !dbg !3977, !tbaa !1023
  %call = call i64 @PyLong_AsLong(%struct._object* %15), !dbg !3978
  store i64 %call, i64* %lstart, align 8, !dbg !3979, !tbaa !1129
  %16 = load i64, i64* %lstart, align 8, !dbg !3980, !tbaa !1129
  %cmp = icmp eq i64 %16, -1, !dbg !3982
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3983

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !3984
  %tobool = icmp ne %struct._object* %call1, null, !dbg !3984
  br i1 %tobool, label %if.then, label %if.end, !dbg !3986

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !3987
  br label %long_range, !dbg !3989

if.end:                                           ; preds = %land.lhs.true, %entry
  %17 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !3990, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %17, i32 0, i32 2, !dbg !3991
  %18 = load %struct._object*, %struct._object** %stop, align 8, !dbg !3991, !tbaa !1056
  %call2 = call i64 @PyLong_AsLong(%struct._object* %18), !dbg !3992
  store i64 %call2, i64* %lstop, align 8, !dbg !3993, !tbaa !1129
  %19 = load i64, i64* %lstop, align 8, !dbg !3994, !tbaa !1129
  %cmp3 = icmp eq i64 %19, -1, !dbg !3996
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8, !dbg !3997

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !3998
  %tobool6 = icmp ne %struct._object* %call5, null, !dbg !3998
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !4000

if.then.7:                                        ; preds = %land.lhs.true.4
  call void @PyErr_Clear(), !dbg !4001
  br label %long_range, !dbg !4003

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %20 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !4004, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %20, i32 0, i32 3, !dbg !4005
  %21 = load %struct._object*, %struct._object** %step, align 8, !dbg !4005, !tbaa !1079
  %call9 = call i64 @PyLong_AsLong(%struct._object* %21), !dbg !4006
  store i64 %call9, i64* %lstep, align 8, !dbg !4007, !tbaa !1129
  %22 = load i64, i64* %lstep, align 8, !dbg !4008, !tbaa !1129
  %cmp10 = icmp eq i64 %22, -1, !dbg !4010
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15, !dbg !4011

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !4012
  %tobool13 = icmp ne %struct._object* %call12, null, !dbg !4012
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !4014

if.then.14:                                       ; preds = %land.lhs.true.11
  call void @PyErr_Clear(), !dbg !4015
  br label %long_range, !dbg !4017

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end.8
  %23 = load i64, i64* %lstep, align 8, !dbg !4018, !tbaa !1129
  %cmp16 = icmp eq i64 %23, -9223372036854775808, !dbg !4020
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !4021

if.then.17:                                       ; preds = %if.end.15
  br label %long_range, !dbg !4022

if.end.18:                                        ; preds = %if.end.15
  %24 = load i64, i64* %lstep, align 8, !dbg !4023, !tbaa !1129
  %cmp19 = icmp sgt i64 %24, 0, !dbg !4025
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !4026

if.then.20:                                       ; preds = %if.end.18
  %25 = load i64, i64* %lstart, align 8, !dbg !4027, !tbaa !1129
  %sub = sub i64 %25, -9223372036854775808, !dbg !4030
  %26 = load i64, i64* %lstep, align 8, !dbg !4031, !tbaa !1129
  %cmp21 = icmp ult i64 %sub, %26, !dbg !4032
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !4033

if.then.22:                                       ; preds = %if.then.20
  br label %long_range, !dbg !4034

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.29, !dbg !4035

if.else:                                          ; preds = %if.end.18
  %27 = load i64, i64* %lstart, align 8, !dbg !4036, !tbaa !1129
  %sub24 = sub i64 9223372036854775807, %27, !dbg !4039
  %28 = load i64, i64* %lstep, align 8, !dbg !4040, !tbaa !1129
  %sub25 = sub i64 0, %28, !dbg !4041
  %cmp26 = icmp ult i64 %sub24, %sub25, !dbg !4042
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !4043

if.then.27:                                       ; preds = %if.else
  br label %long_range, !dbg !4044

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.23
  %29 = load i64, i64* %lstart, align 8, !dbg !4045, !tbaa !1129
  %30 = load i64, i64* %lstop, align 8, !dbg !4046, !tbaa !1129
  %31 = load i64, i64* %lstep, align 8, !dbg !4047, !tbaa !1129
  %call30 = call i64 @get_len_of_range(i64 %29, i64 %30, i64 %31), !dbg !4048
  store i64 %call30, i64* %ulen, align 8, !dbg !4049, !tbaa !1129
  %32 = load i64, i64* %ulen, align 8, !dbg !4050, !tbaa !1129
  %cmp31 = icmp ugt i64 %32, 9223372036854775807, !dbg !4052
  br i1 %cmp31, label %if.then.32, label %if.end.33, !dbg !4053

if.then.32:                                       ; preds = %if.end.29
  br label %long_range, !dbg !4054

if.end.33:                                        ; preds = %if.end.29
  %33 = load i64, i64* %lstart, align 8, !dbg !4055, !tbaa !1129
  %34 = load i64, i64* %lstep, align 8, !dbg !4056, !tbaa !1129
  %sub34 = sub i64 %33, %34, !dbg !4057
  store i64 %sub34, i64* %new_stop, align 8, !dbg !4058, !tbaa !1129
  %35 = load i64, i64* %new_stop, align 8, !dbg !4059, !tbaa !1129
  %36 = load i64, i64* %ulen, align 8, !dbg !4060, !tbaa !1129
  %37 = load i64, i64* %lstep, align 8, !dbg !4061, !tbaa !1129
  %mul = mul i64 %36, %37, !dbg !4062
  %add = add i64 %35, %mul, !dbg !4063
  store i64 %add, i64* %new_start, align 8, !dbg !4064, !tbaa !1129
  %38 = load i64, i64* %new_start, align 8, !dbg !4065, !tbaa !1129
  %39 = load i64, i64* %new_stop, align 8, !dbg !4066, !tbaa !1129
  %40 = load i64, i64* %lstep, align 8, !dbg !4067, !tbaa !1129
  %sub35 = sub i64 0, %40, !dbg !4068
  %call36 = call %struct._object* @fast_range_iter(i64 %38, i64 %39, i64 %sub35), !dbg !4069
  store %struct._object* %call36, %struct._object** %retval, !dbg !4070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4070

long_range:                                       ; preds = %if.then.32, %if.then.27, %if.then.22, %if.then.17, %if.then.14, %if.then.7, %if.then
  %call37 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyLongRangeIter_Type), !dbg !4071
  %41 = bitcast %struct._object* %call37 to %struct.longrangeiterobject*, !dbg !4072
  store %struct.longrangeiterobject* %41, %struct.longrangeiterobject** %it, align 8, !dbg !4073, !tbaa !1011
  %42 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4074, !tbaa !1011
  %cmp38 = icmp eq %struct.longrangeiterobject* %42, null, !dbg !4076
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !4077

if.then.39:                                       ; preds = %long_range
  store %struct._object* null, %struct._object** %retval, !dbg !4078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4078

if.end.40:                                        ; preds = %long_range
  %43 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !4079, !tbaa !1011
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %43, i32 0, i32 4, !dbg !4080
  %44 = load %struct._object*, %struct._object** %length, align 8, !dbg !4080, !tbaa !1102
  %45 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4081, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %45, i32 0, i32 4, !dbg !4082
  store %struct._object* %44, %struct._object** %len, align 8, !dbg !4083, !tbaa !1102
  %46 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4084, !tbaa !1011
  %len41 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %46, i32 0, i32 4, !dbg !4085
  %47 = load %struct._object*, %struct._object** %len41, align 8, !dbg !4085, !tbaa !1102
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !4086
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !4087, !tbaa !1031
  %inc = add i64 %48, 1, !dbg !4087
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4087, !tbaa !1031
  %call42 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !4088
  store %struct._object* %call42, %struct._object** %one, align 8, !dbg !4089, !tbaa !1011
  %49 = load %struct._object*, %struct._object** %one, align 8, !dbg !4090, !tbaa !1011
  %tobool43 = icmp ne %struct._object* %49, null, !dbg !4090
  br i1 %tobool43, label %if.end.45, label %if.then.44, !dbg !4092

if.then.44:                                       ; preds = %if.end.40
  br label %create_failure, !dbg !4093

if.end.45:                                        ; preds = %if.end.40
  %50 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4094, !tbaa !1011
  %len46 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %50, i32 0, i32 4, !dbg !4095
  %51 = load %struct._object*, %struct._object** %len46, align 8, !dbg !4095, !tbaa !1102
  %52 = load %struct._object*, %struct._object** %one, align 8, !dbg !4096, !tbaa !1011
  %call47 = call %struct._object* @PyNumber_Subtract(%struct._object* %51, %struct._object* %52), !dbg !4097
  store %struct._object* %call47, %struct._object** %diff, align 8, !dbg !4098, !tbaa !1011
  br label %do.body, !dbg !4099

do.body:                                          ; preds = %if.end.45
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4100
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !4100
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !693, metadata !1015), !dbg !4102
  %54 = load %struct._object*, %struct._object** %one, align 8, !dbg !4103, !tbaa !1011
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8, !dbg !4102, !tbaa !1011
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4104, !tbaa !1011
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4106
  %56 = load i64, i64* %ob_refcnt48, align 8, !dbg !4107, !tbaa !1031
  %dec = add i64 %56, -1, !dbg !4107
  store i64 %dec, i64* %ob_refcnt48, align 8, !dbg !4107, !tbaa !1031
  %cmp49 = icmp ne i64 %dec, 0, !dbg !4108
  br i1 %cmp49, label %if.then.50, label %if.else.51, !dbg !4109

if.then.50:                                       ; preds = %do.body
  br label %if.end.52, !dbg !4110

if.else.51:                                       ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4112, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4114
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4114, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4115
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4115, !tbaa !1041
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4116, !tbaa !1011
  call void %59(%struct._object* %60), !dbg !4117
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  %61 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4118
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !4118
  br label %do.cond, !dbg !4120

do.cond:                                          ; preds = %if.end.52
  br label %do.end, !dbg !4121

do.end:                                           ; preds = %do.cond
  %62 = load %struct._object*, %struct._object** %diff, align 8, !dbg !4123, !tbaa !1011
  %tobool53 = icmp ne %struct._object* %62, null, !dbg !4123
  br i1 %tobool53, label %if.end.55, label %if.then.54, !dbg !4125

if.then.54:                                       ; preds = %do.end
  br label %create_failure, !dbg !4126

if.end.55:                                        ; preds = %do.end
  %63 = load %struct._object*, %struct._object** %diff, align 8, !dbg !4127, !tbaa !1011
  %64 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !4128, !tbaa !1011
  %step56 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %64, i32 0, i32 3, !dbg !4129
  %65 = load %struct._object*, %struct._object** %step56, align 8, !dbg !4129, !tbaa !1079
  %call57 = call %struct._object* @PyNumber_Multiply(%struct._object* %63, %struct._object* %65), !dbg !4130
  store %struct._object* %call57, %struct._object** %product, align 8, !dbg !4131, !tbaa !1011
  br label %do.body.58, !dbg !4132

do.body.58:                                       ; preds = %if.end.55
  %66 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 8, i8* %66) #3, !dbg !4133
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !695, metadata !1015), !dbg !4135
  %67 = load %struct._object*, %struct._object** %diff, align 8, !dbg !4136, !tbaa !1011
  store %struct._object* %67, %struct._object** %_py_decref_tmp59, align 8, !dbg !4135, !tbaa !1011
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4137, !tbaa !1011
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !4139
  %69 = load i64, i64* %ob_refcnt60, align 8, !dbg !4140, !tbaa !1031
  %dec61 = add i64 %69, -1, !dbg !4140
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !4140, !tbaa !1031
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !4141
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !4142

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !4143

if.else.64:                                       ; preds = %do.body.58
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4145, !tbaa !1011
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !4147
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !4147, !tbaa !1039
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !4148
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !4148, !tbaa !1041
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4149, !tbaa !1011
  call void %72(%struct._object* %73), !dbg !4150
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %74 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4151
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !4151
  br label %do.cond.68, !dbg !4152

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !4153

do.end.69:                                        ; preds = %do.cond.68
  %75 = load %struct._object*, %struct._object** %product, align 8, !dbg !4155, !tbaa !1011
  %tobool70 = icmp ne %struct._object* %75, null, !dbg !4155
  br i1 %tobool70, label %if.end.72, label %if.then.71, !dbg !4157

if.then.71:                                       ; preds = %do.end.69
  br label %create_failure, !dbg !4158

if.end.72:                                        ; preds = %do.end.69
  %76 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !4159, !tbaa !1011
  %start73 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %76, i32 0, i32 1, !dbg !4160
  %77 = load %struct._object*, %struct._object** %start73, align 8, !dbg !4160, !tbaa !1023
  %78 = load %struct._object*, %struct._object** %product, align 8, !dbg !4161, !tbaa !1011
  %call74 = call %struct._object* @PyNumber_Add(%struct._object* %77, %struct._object* %78), !dbg !4162
  store %struct._object* %call74, %struct._object** %sum, align 8, !dbg !4163, !tbaa !1011
  br label %do.body.75, !dbg !4164

do.body.75:                                       ; preds = %if.end.72
  %79 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !4165
  call void @llvm.lifetime.start(i64 8, i8* %79) #3, !dbg !4165
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp76, metadata !697, metadata !1015), !dbg !4167
  %80 = load %struct._object*, %struct._object** %product, align 8, !dbg !4168, !tbaa !1011
  store %struct._object* %80, %struct._object** %_py_decref_tmp76, align 8, !dbg !4167, !tbaa !1011
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !4169, !tbaa !1011
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0, !dbg !4171
  %82 = load i64, i64* %ob_refcnt77, align 8, !dbg !4172, !tbaa !1031
  %dec78 = add i64 %82, -1, !dbg !4172
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !4172, !tbaa !1031
  %cmp79 = icmp ne i64 %dec78, 0, !dbg !4173
  br i1 %cmp79, label %if.then.80, label %if.else.81, !dbg !4174

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84, !dbg !4175

if.else.81:                                       ; preds = %do.body.75
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !4177, !tbaa !1011
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1, !dbg !4179
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !4179, !tbaa !1039
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4, !dbg !4180
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !4180, !tbaa !1041
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !4181, !tbaa !1011
  call void %85(%struct._object* %86), !dbg !4182
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  %87 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !4183
  call void @llvm.lifetime.end(i64 8, i8* %87) #3, !dbg !4183
  br label %do.cond.85, !dbg !4184

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86, !dbg !4185

do.end.86:                                        ; preds = %do.cond.85
  %88 = load %struct._object*, %struct._object** %sum, align 8, !dbg !4187, !tbaa !1011
  %89 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4188, !tbaa !1011
  %start87 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %89, i32 0, i32 2, !dbg !4189
  store %struct._object* %88, %struct._object** %start87, align 8, !dbg !4190, !tbaa !1056
  %90 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4191, !tbaa !1011
  %start88 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %90, i32 0, i32 2, !dbg !4193
  %91 = load %struct._object*, %struct._object** %start88, align 8, !dbg !4193, !tbaa !1056
  %tobool89 = icmp ne %struct._object* %91, null, !dbg !4191
  br i1 %tobool89, label %if.end.91, label %if.then.90, !dbg !4194

if.then.90:                                       ; preds = %do.end.86
  br label %create_failure, !dbg !4195

if.end.91:                                        ; preds = %do.end.86
  %92 = load %struct.rangeobject*, %struct.rangeobject** %range, align 8, !dbg !4196, !tbaa !1011
  %step92 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %92, i32 0, i32 3, !dbg !4197
  %93 = load %struct._object*, %struct._object** %step92, align 8, !dbg !4197, !tbaa !1079
  %call93 = call %struct._object* @PyNumber_Negative(%struct._object* %93), !dbg !4198
  %94 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4199, !tbaa !1011
  %step94 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %94, i32 0, i32 3, !dbg !4200
  store %struct._object* %call93, %struct._object** %step94, align 8, !dbg !4201, !tbaa !1079
  %95 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4202, !tbaa !1011
  %step95 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %95, i32 0, i32 3, !dbg !4204
  %96 = load %struct._object*, %struct._object** %step95, align 8, !dbg !4204, !tbaa !1079
  %tobool96 = icmp ne %struct._object* %96, null, !dbg !4202
  br i1 %tobool96, label %if.end.98, label %if.then.97, !dbg !4205

if.then.97:                                       ; preds = %if.end.91
  br label %create_failure, !dbg !4206

if.end.98:                                        ; preds = %if.end.91
  %call99 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !4207
  %97 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4208, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %97, i32 0, i32 1, !dbg !4209
  store %struct._object* %call99, %struct._object** %index, align 8, !dbg !4210, !tbaa !1023
  %98 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4211, !tbaa !1011
  %index100 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %98, i32 0, i32 1, !dbg !4213
  %99 = load %struct._object*, %struct._object** %index100, align 8, !dbg !4213, !tbaa !1023
  %tobool101 = icmp ne %struct._object* %99, null, !dbg !4211
  br i1 %tobool101, label %if.end.103, label %if.then.102, !dbg !4214

if.then.102:                                      ; preds = %if.end.98
  br label %create_failure, !dbg !4215

if.end.103:                                       ; preds = %if.end.98
  %100 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4216, !tbaa !1011
  %101 = bitcast %struct.longrangeiterobject* %100 to %struct._object*, !dbg !4217
  store %struct._object* %101, %struct._object** %retval, !dbg !4218
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4218

create_failure:                                   ; preds = %if.then.102, %if.then.97, %if.then.90, %if.then.71, %if.then.54, %if.then.44
  br label %do.body.104, !dbg !4219

do.body.104:                                      ; preds = %create_failure
  %102 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !4220
  call void @llvm.lifetime.start(i64 8, i8* %102) #3, !dbg !4220
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp105, metadata !699, metadata !1015), !dbg !4222
  %103 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %it, align 8, !dbg !4223, !tbaa !1011
  %104 = bitcast %struct.longrangeiterobject* %103 to %struct._object*, !dbg !4224
  store %struct._object* %104, %struct._object** %_py_decref_tmp105, align 8, !dbg !4222, !tbaa !1011
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4225, !tbaa !1011
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !4227
  %106 = load i64, i64* %ob_refcnt106, align 8, !dbg !4228, !tbaa !1031
  %dec107 = add i64 %106, -1, !dbg !4228
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !4228, !tbaa !1031
  %cmp108 = icmp ne i64 %dec107, 0, !dbg !4229
  br i1 %cmp108, label %if.then.109, label %if.else.110, !dbg !4230

if.then.109:                                      ; preds = %do.body.104
  br label %if.end.113, !dbg !4231

if.else.110:                                      ; preds = %do.body.104
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4233, !tbaa !1011
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !4235
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !4235, !tbaa !1039
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !4236
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !4236, !tbaa !1041
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4237, !tbaa !1011
  call void %109(%struct._object* %110), !dbg !4238
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  %111 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !4239
  call void @llvm.lifetime.end(i64 8, i8* %111) #3, !dbg !4239
  br label %do.cond.114, !dbg !4240

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115, !dbg !4241

do.end.115:                                       ; preds = %do.cond.114
  store %struct._object* null, %struct._object** %retval, !dbg !4243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4243

cleanup:                                          ; preds = %do.end.115, %if.end.103, %if.then.39, %if.end.33
  %112 = bitcast i64* %ulen to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %112) #3, !dbg !4244
  %113 = bitcast i64* %new_stop to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %113) #3, !dbg !4244
  %114 = bitcast i64* %new_start to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %114) #3, !dbg !4244
  %115 = bitcast i64* %lstep to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %115) #3, !dbg !4244
  %116 = bitcast i64* %lstop to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %116) #3, !dbg !4244
  %117 = bitcast i64* %lstart to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %117) #3, !dbg !4244
  %118 = bitcast %struct._object** %product to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %118) #3, !dbg !4244
  %119 = bitcast %struct._object** %diff to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %119) #3, !dbg !4244
  %120 = bitcast %struct._object** %sum to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %120) #3, !dbg !4244
  %121 = bitcast %struct._object** %one to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %121) #3, !dbg !4244
  %122 = bitcast %struct.longrangeiterobject** %it to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %122) #3, !dbg !4244
  %123 = bitcast %struct.rangeobject** %range to i8*, !dbg !4244
  call void @llvm.lifetime.end(i64 8, i8* %123) #3, !dbg !4244
  %124 = load %struct._object*, %struct._object** %retval, !dbg !4244
  ret %struct._object* %124, !dbg !4244
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_reduce(%struct.rangeobject* %r, %struct._object* %args) #0 {
entry:
  %r.addr = alloca %struct.rangeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !723, metadata !1015), !dbg !4245
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !724, metadata !1015), !dbg !4246
  %0 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4247, !tbaa !1011
  %1 = bitcast %struct.rangeobject* %0 to %struct._object*, !dbg !4248
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4249
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4249, !tbaa !1039
  %3 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4250, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %3, i32 0, i32 1, !dbg !4251
  %4 = load %struct._object*, %struct._object** %start, align 8, !dbg !4251, !tbaa !1023
  %5 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4252, !tbaa !1011
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %5, i32 0, i32 2, !dbg !4253
  %6 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4253, !tbaa !1056
  %7 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4254, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %7, i32 0, i32 3, !dbg !4255
  %8 = load %struct._object*, %struct._object** %step, align 8, !dbg !4255, !tbaa !1079
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, %struct._object* %8), !dbg !4256
  ret %struct._object* %call, !dbg !4257
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_count(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count = alloca i64, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !727, metadata !1015), !dbg !4258
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !728, metadata !1015), !dbg !4259
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4260, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4261
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4261, !tbaa !1039
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type, !dbg !4262
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4263

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4264, !tbaa !1011
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4266
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4266, !tbaa !1039
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type, !dbg !4267
  br i1 %cmp2, label %if.then, label %if.else.9, !dbg !4268

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast i32* %result to i8*, !dbg !4269
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !4269
  call void @llvm.dbg.declare(metadata i32* %result, metadata !729, metadata !1015), !dbg !4270
  %5 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4271, !tbaa !1011
  %6 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4272, !tbaa !1011
  %call = call i32 @range_contains_long(%struct.rangeobject* %5, %struct._object* %6), !dbg !4273
  store i32 %call, i32* %result, align 4, !dbg !4270, !tbaa !1191
  %7 = load i32, i32* %result, align 4, !dbg !4274, !tbaa !1191
  %cmp3 = icmp eq i32 %7, -1, !dbg !4276
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !4277

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4278

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %result, align 4, !dbg !4279, !tbaa !1191
  %tobool = icmp ne i32 %8, 0, !dbg !4279
  br i1 %tobool, label %if.then.5, label %if.else.7, !dbg !4281

if.then.5:                                        ; preds = %if.else
  %call6 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !4282
  store %struct._object* %call6, %struct._object** %retval, !dbg !4283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4283

if.else.7:                                        ; preds = %if.else
  %call8 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !4284
  store %struct._object* %call8, %struct._object** %retval, !dbg !4285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4285

cleanup:                                          ; preds = %if.else.7, %if.then.5, %if.then.4
  %9 = bitcast i32* %result to i8*, !dbg !4286
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !4286
  br label %return

if.else.9:                                        ; preds = %lor.lhs.false
  %10 = bitcast i64* %count to i8*, !dbg !4287
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !4287
  call void @llvm.dbg.declare(metadata i64* %count, metadata !732, metadata !1015), !dbg !4288
  %11 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4289, !tbaa !1011
  %12 = bitcast %struct.rangeobject* %11 to %struct._object*, !dbg !4290
  %13 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4291, !tbaa !1011
  %call10 = call i64 @_PySequence_IterSearch(%struct._object* %12, %struct._object* %13, i32 1), !dbg !4292
  store i64 %call10, i64* %count, align 8, !dbg !4293, !tbaa !1129
  %14 = load i64, i64* %count, align 8, !dbg !4294, !tbaa !1129
  %cmp11 = icmp eq i64 %14, -1, !dbg !4296
  br i1 %cmp11, label %if.then.12, label %if.end, !dbg !4297

if.then.12:                                       ; preds = %if.else.9
  store %struct._object* null, %struct._object** %retval, !dbg !4298
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !4298

if.end:                                           ; preds = %if.else.9
  %15 = load i64, i64* %count, align 8, !dbg !4299, !tbaa !1129
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %15), !dbg !4300
  store %struct._object* %call13, %struct._object** %retval, !dbg !4301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !4301

cleanup.14:                                       ; preds = %if.end, %if.then.12
  %16 = bitcast i64* %count to i8*, !dbg !4302
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !4302
  br label %return

return:                                           ; preds = %cleanup.14, %cleanup
  %17 = load %struct._object*, %struct._object** %retval, !dbg !4303
  ret %struct._object* %17, !dbg !4303
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_index(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeobject*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %contains = alloca i32, align 4
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %idx = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rangeobject* %r, %struct.rangeobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeobject** %r.addr, metadata !736, metadata !1015), !dbg !4304
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !737, metadata !1015), !dbg !4305
  %0 = bitcast i32* %contains to i8*, !dbg !4306
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !4306
  call void @llvm.dbg.declare(metadata i32* %contains, metadata !738, metadata !1015), !dbg !4307
  %1 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4308, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4309
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4309, !tbaa !1039
  %cmp = icmp eq %struct._typeobject* %2, @PyLong_Type, !dbg !4310
  br i1 %cmp, label %if.end.6, label %land.lhs.true, !dbg !4311

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4312, !tbaa !1011
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4314
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4314, !tbaa !1039
  %cmp2 = icmp eq %struct._typeobject* %4, @PyBool_Type, !dbg !4315
  br i1 %cmp2, label %if.end.6, label %if.then, !dbg !4316

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i64* %index to i8*, !dbg !4317
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !4317
  call void @llvm.dbg.declare(metadata i64* %index, metadata !739, metadata !1015), !dbg !4318
  %6 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4319, !tbaa !1011
  %7 = bitcast %struct.rangeobject* %6 to %struct._object*, !dbg !4320
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4321, !tbaa !1011
  %call = call i64 @_PySequence_IterSearch(%struct._object* %7, %struct._object* %8, i32 2), !dbg !4322
  store i64 %call, i64* %index, align 8, !dbg !4323, !tbaa !1129
  %9 = load i64, i64* %index, align 8, !dbg !4324, !tbaa !1129
  %cmp3 = icmp eq i64 %9, -1, !dbg !4326
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !4327

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4328
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4328

if.end:                                           ; preds = %if.then
  %10 = load i64, i64* %index, align 8, !dbg !4329, !tbaa !1129
  %call5 = call %struct._object* @PyLong_FromSsize_t(i64 %10), !dbg !4330
  store %struct._object* %call5, %struct._object** %retval, !dbg !4331
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4331

cleanup:                                          ; preds = %if.end, %if.then.4
  %11 = bitcast i64* %index to i8*, !dbg !4332
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !4332
  br label %cleanup.26

if.end.6:                                         ; preds = %land.lhs.true, %entry
  %12 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4333, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4334, !tbaa !1011
  %call7 = call i32 @range_contains_long(%struct.rangeobject* %12, %struct._object* %13), !dbg !4335
  store i32 %call7, i32* %contains, align 4, !dbg !4336, !tbaa !1191
  %14 = load i32, i32* %contains, align 4, !dbg !4337, !tbaa !1191
  %cmp8 = icmp eq i32 %14, -1, !dbg !4339
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !4340

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !4341
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26, !dbg !4341

if.end.10:                                        ; preds = %if.end.6
  %15 = load i32, i32* %contains, align 4, !dbg !4342, !tbaa !1191
  %tobool = icmp ne i32 %15, 0, !dbg !4342
  br i1 %tobool, label %if.then.11, label %if.end.24, !dbg !4343

if.then.11:                                       ; preds = %if.end.10
  %16 = bitcast %struct._object** %idx to i8*, !dbg !4344
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !4344
  call void @llvm.dbg.declare(metadata %struct._object** %idx, metadata !742, metadata !1015), !dbg !4345
  %17 = bitcast %struct._object** %tmp to i8*, !dbg !4344
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !4344
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !745, metadata !1015), !dbg !4346
  %18 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4347, !tbaa !1011
  %19 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4348, !tbaa !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %19, i32 0, i32 1, !dbg !4349
  %20 = load %struct._object*, %struct._object** %start, align 8, !dbg !4349, !tbaa !1023
  %call12 = call %struct._object* @PyNumber_Subtract(%struct._object* %18, %struct._object* %20), !dbg !4350
  store %struct._object* %call12, %struct._object** %tmp, align 8, !dbg !4346, !tbaa !1011
  %21 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4351, !tbaa !1011
  %cmp13 = icmp eq %struct._object* %21, null, !dbg !4353
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !4354

if.then.14:                                       ; preds = %if.then.11
  store %struct._object* null, %struct._object** %retval, !dbg !4355
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !4355

if.end.15:                                        ; preds = %if.then.11
  %22 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4356, !tbaa !1011
  %23 = load %struct.rangeobject*, %struct.rangeobject** %r.addr, align 8, !dbg !4357, !tbaa !1011
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %23, i32 0, i32 3, !dbg !4358
  %24 = load %struct._object*, %struct._object** %step, align 8, !dbg !4358, !tbaa !1079
  %call16 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %22, %struct._object* %24), !dbg !4359
  store %struct._object* %call16, %struct._object** %idx, align 8, !dbg !4360, !tbaa !1011
  br label %do.body, !dbg !4361

do.body:                                          ; preds = %if.end.15
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4362
  call void @llvm.lifetime.start(i64 8, i8* %25) #3, !dbg !4362
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !746, metadata !1015), !dbg !4364
  %26 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4365, !tbaa !1011
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !4364, !tbaa !1011
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4366, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !4368
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !4369, !tbaa !1031
  %dec = add i64 %28, -1, !dbg !4369
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4369, !tbaa !1031
  %cmp18 = icmp ne i64 %dec, 0, !dbg !4370
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !4371

if.then.19:                                       ; preds = %do.body
  br label %if.end.21, !dbg !4372

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4374, !tbaa !1011
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !4376
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !4376, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !4377
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4377, !tbaa !1041
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4378, !tbaa !1011
  call void %31(%struct._object* %32), !dbg !4379
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4380
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !4380
  br label %do.cond, !dbg !4382

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !4383

do.end:                                           ; preds = %do.cond
  %34 = load %struct._object*, %struct._object** %idx, align 8, !dbg !4385, !tbaa !1011
  store %struct._object* %34, %struct._object** %retval, !dbg !4386
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !4386

cleanup.22:                                       ; preds = %do.end, %if.then.14
  %35 = bitcast %struct._object** %tmp to i8*, !dbg !4387
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !4387
  %36 = bitcast %struct._object** %idx to i8*, !dbg !4387
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !4387
  br label %cleanup.26

if.end.24:                                        ; preds = %if.end.10
  %37 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4388, !tbaa !1011
  %38 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !4389, !tbaa !1011
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct._object* %38), !dbg !4390
  store %struct._object* null, %struct._object** %retval, !dbg !4391
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26, !dbg !4391

cleanup.26:                                       ; preds = %if.end.24, %cleanup.22, %if.then.9, %cleanup
  %39 = bitcast i32* %contains to i8*, !dbg !4392
  call void @llvm.lifetime.end(i64 4, i8* %39) #3, !dbg !4392
  %40 = load %struct._object*, %struct._object** %retval, !dbg !4392
  ret %struct._object* %40, !dbg !4392
}

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_len_of_range(i64 %lo, i64 %hi, i64 %step) #0 {
entry:
  %retval = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %step.addr = alloca i64, align 8
  store i64 %lo, i64* %lo.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %lo.addr, metadata !705, metadata !1015), !dbg !4393
  store i64 %hi, i64* %hi.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %hi.addr, metadata !706, metadata !1015), !dbg !4394
  store i64 %step, i64* %step.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %step.addr, metadata !707, metadata !1015), !dbg !4395
  %0 = load i64, i64* %step.addr, align 8, !dbg !4396, !tbaa !1129
  %cmp = icmp sgt i64 %0, 0, !dbg !4398
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4399

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %lo.addr, align 8, !dbg !4400, !tbaa !1129
  %2 = load i64, i64* %hi.addr, align 8, !dbg !4402, !tbaa !1129
  %cmp1 = icmp slt i64 %1, %2, !dbg !4403
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4404

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %hi.addr, align 8, !dbg !4405, !tbaa !1129
  %sub = sub i64 %3, 1, !dbg !4406
  %4 = load i64, i64* %lo.addr, align 8, !dbg !4407, !tbaa !1129
  %sub2 = sub i64 %sub, %4, !dbg !4408
  %5 = load i64, i64* %step.addr, align 8, !dbg !4409, !tbaa !1129
  %div = udiv i64 %sub2, %5, !dbg !4410
  %add = add i64 1, %div, !dbg !4411
  store i64 %add, i64* %retval, !dbg !4412
  br label %return, !dbg !4412

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %step.addr, align 8, !dbg !4413, !tbaa !1129
  %cmp3 = icmp slt i64 %6, 0, !dbg !4415
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.12, !dbg !4416

land.lhs.true.4:                                  ; preds = %if.else
  %7 = load i64, i64* %lo.addr, align 8, !dbg !4417, !tbaa !1129
  %8 = load i64, i64* %hi.addr, align 8, !dbg !4419, !tbaa !1129
  %cmp5 = icmp sgt i64 %7, %8, !dbg !4420
  br i1 %cmp5, label %if.then.6, label %if.else.12, !dbg !4421

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load i64, i64* %lo.addr, align 8, !dbg !4422, !tbaa !1129
  %sub7 = sub i64 %9, 1, !dbg !4423
  %10 = load i64, i64* %hi.addr, align 8, !dbg !4424, !tbaa !1129
  %sub8 = sub i64 %sub7, %10, !dbg !4425
  %11 = load i64, i64* %step.addr, align 8, !dbg !4426, !tbaa !1129
  %sub9 = sub i64 0, %11, !dbg !4427
  %div10 = udiv i64 %sub8, %sub9, !dbg !4428
  %add11 = add i64 1, %div10, !dbg !4429
  store i64 %add11, i64* %retval, !dbg !4430
  br label %return, !dbg !4430

if.else.12:                                       ; preds = %land.lhs.true.4, %if.else
  store i64 0, i64* %retval, !dbg !4431
  br label %return, !dbg !4431

return:                                           ; preds = %if.else.12, %if.then.6, %if.then
  %12 = load i64, i64* %retval, !dbg !4432
  ret i64 %12, !dbg !4432
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 %start, i64* %start.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !712, metadata !1015), !dbg !4433
  store i64 %stop, i64* %stop.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %stop.addr, metadata !713, metadata !1015), !dbg !4434
  store i64 %step, i64* %step.addr, align 8, !tbaa !1129
  call void @llvm.dbg.declare(metadata i64* %step.addr, metadata !714, metadata !1015), !dbg !4435
  %0 = bitcast %struct.rangeiterobject** %it to i8*, !dbg !4436
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4436
  call void @llvm.dbg.declare(metadata %struct.rangeiterobject** %it, metadata !715, metadata !1015), !dbg !4437
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PyRangeIter_Type), !dbg !4438
  %1 = bitcast %struct._object* %call to %struct.rangeiterobject*, !dbg !4439
  store %struct.rangeiterobject* %1, %struct.rangeiterobject** %it, align 8, !dbg !4437, !tbaa !1011
  %2 = bitcast i64* %ulen to i8*, !dbg !4440
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !4440
  call void @llvm.dbg.declare(metadata i64* %ulen, metadata !716, metadata !1015), !dbg !4441
  %3 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4442, !tbaa !1011
  %cmp = icmp eq %struct.rangeiterobject* %3, null, !dbg !4444
  br i1 %cmp, label %if.then, label %if.end, !dbg !4445

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4446
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4446

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %start.addr, align 8, !dbg !4447, !tbaa !1129
  %5 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4448, !tbaa !1011
  %start1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %5, i32 0, i32 2, !dbg !4449
  store i64 %4, i64* %start1, align 8, !dbg !4450, !tbaa !1871
  %6 = load i64, i64* %step.addr, align 8, !dbg !4451, !tbaa !1129
  %7 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4452, !tbaa !1011
  %step2 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %7, i32 0, i32 3, !dbg !4453
  store i64 %6, i64* %step2, align 8, !dbg !4454, !tbaa !1877
  %8 = load i64, i64* %start.addr, align 8, !dbg !4455, !tbaa !1129
  %9 = load i64, i64* %stop.addr, align 8, !dbg !4456, !tbaa !1129
  %10 = load i64, i64* %step.addr, align 8, !dbg !4457, !tbaa !1129
  %call3 = call i64 @get_len_of_range(i64 %8, i64 %9, i64 %10), !dbg !4458
  store i64 %call3, i64* %ulen, align 8, !dbg !4459, !tbaa !1129
  %11 = load i64, i64* %ulen, align 8, !dbg !4460, !tbaa !1129
  %cmp4 = icmp ugt i64 %11, 9223372036854775807, !dbg !4461
  br i1 %cmp4, label %if.then.5, label %if.end.9, !dbg !4462

if.then.5:                                        ; preds = %if.end
  br label %do.body, !dbg !4463

do.body:                                          ; preds = %if.then.5
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4464
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !4464
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !717, metadata !1015), !dbg !4466
  %13 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4467, !tbaa !1011
  %14 = bitcast %struct.rangeiterobject* %13 to %struct._object*, !dbg !4468
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !4466, !tbaa !1011
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4469, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !4471
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !4472, !tbaa !1031
  %dec = add i64 %16, -1, !dbg !4472
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4472, !tbaa !1031
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4473
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !4474

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !4475

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4477, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !4479
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4479, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !4480
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4480, !tbaa !1041
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4481, !tbaa !1011
  call void %19(%struct._object* %20), !dbg !4482
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4483
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !4483
  br label %do.cond, !dbg !4485

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4486

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4488, !tbaa !1011
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0)), !dbg !4489
  store %struct._object* null, %struct._object** %retval, !dbg !4490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4490

if.end.9:                                         ; preds = %if.end
  %23 = load i64, i64* %ulen, align 8, !dbg !4491, !tbaa !1129
  %24 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4492, !tbaa !1011
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %24, i32 0, i32 4, !dbg !4493
  store i64 %23, i64* %len, align 8, !dbg !4494, !tbaa !1866
  %25 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4495, !tbaa !1011
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %25, i32 0, i32 1, !dbg !4496
  store i64 0, i64* %index, align 8, !dbg !4497, !tbaa !1862
  %26 = load %struct.rangeiterobject*, %struct.rangeiterobject** %it, align 8, !dbg !4498, !tbaa !1011
  %27 = bitcast %struct.rangeiterobject* %26 to %struct._object*, !dbg !4499
  store %struct._object* %27, %struct._object** %retval, !dbg !4500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4500

cleanup:                                          ; preds = %if.end.9, %do.end, %if.then
  %28 = bitcast i64* %ulen to i8*, !dbg !4501
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !4501
  %29 = bitcast %struct.rangeiterobject** %it to i8*, !dbg !4501
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !4501
  %30 = load %struct._object*, %struct._object** %retval, !dbg !4501
  ret %struct._object* %30, !dbg !4501
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
  store %struct._object* %step, %struct._object** %step.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %step.addr, metadata !799, metadata !1015), !dbg !4502
  %0 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4503, !tbaa !1011
  %tobool = icmp ne %struct._object* %0, null, !dbg !4503
  br i1 %tobool, label %if.end, label %if.then, !dbg !4505

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 1), !dbg !4506
  store %struct._object* %call, %struct._object** %retval, !dbg !4507
  br label %return, !dbg !4507

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4508, !tbaa !1011
  %call1 = call %struct._object* @PyNumber_Index(%struct._object* %1), !dbg !4509
  store %struct._object* %call1, %struct._object** %step.addr, align 8, !dbg !4510, !tbaa !1011
  %2 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4511, !tbaa !1011
  %tobool2 = icmp ne %struct._object* %2, null, !dbg !4511
  br i1 %tobool2, label %if.then.3, label %if.end.22, !dbg !4512

if.then.3:                                        ; preds = %if.end
  %3 = bitcast i64* %istep to i8*, !dbg !4513
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !4513
  call void @llvm.dbg.declare(metadata i64* %istep, metadata !800, metadata !1015), !dbg !4514
  %4 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4515, !tbaa !1011
  %call4 = call i64 @PyNumber_AsSsize_t(%struct._object* %4, %struct._object* null), !dbg !4516
  store i64 %call4, i64* %istep, align 8, !dbg !4514, !tbaa !1129
  %5 = load i64, i64* %istep, align 8, !dbg !4517, !tbaa !1129
  %cmp = icmp eq i64 %5, -1, !dbg !4518
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4519

land.lhs.true:                                    ; preds = %if.then.3
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !4520
  %tobool6 = icmp ne %struct._object* %call5, null, !dbg !4520
  br i1 %tobool6, label %if.then.7, label %if.else, !dbg !4522

if.then.7:                                        ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !4523
  br label %if.end.21, !dbg !4525

if.else:                                          ; preds = %land.lhs.true, %if.then.3
  %6 = load i64, i64* %istep, align 8, !dbg !4526, !tbaa !1129
  %cmp8 = icmp eq i64 %6, 0, !dbg !4527
  br i1 %cmp8, label %if.then.9, label %if.end.20, !dbg !4528

if.then.9:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4529, !tbaa !1011
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0)), !dbg !4530
  br label %do.body, !dbg !4531

do.body:                                          ; preds = %if.then.9
  %8 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4532
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !4532
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !803, metadata !1015), !dbg !4534
  %9 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4535, !tbaa !1011
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !4534, !tbaa !1011
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4536, !tbaa !1011
  %cmp10 = icmp ne %struct._object* %10, null, !dbg !4537
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !4538

if.then.11:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %step.addr, align 8, !dbg !4539, !tbaa !1011
  br label %do.body.12, !dbg !4541

do.body.12:                                       ; preds = %if.then.11
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4542
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !4542
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !808, metadata !1015), !dbg !4544
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4545, !tbaa !1011
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4544, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4546, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4548
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4549, !tbaa !1031
  %dec = add i64 %14, -1, !dbg !4549
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4549, !tbaa !1031
  %cmp13 = icmp ne i64 %dec, 0, !dbg !4550
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !4551

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16, !dbg !4552

if.else.15:                                       ; preds = %do.body.12
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4554, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4556
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4556, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4557
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4557, !tbaa !1041
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4558, !tbaa !1011
  call void %17(%struct._object* %18), !dbg !4559
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4560
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !4560
  br label %do.cond, !dbg !4562

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !4563

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !4565

if.end.17:                                        ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4567
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !4567
  br label %do.cond.18, !dbg !4570

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !4571

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.20, !dbg !4573

if.end.20:                                        ; preds = %do.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  %21 = bitcast i64* %istep to i8*, !dbg !4574
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !4574
  br label %if.end.22, !dbg !4575

if.end.22:                                        ; preds = %if.end.21, %if.end
  %22 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !4576, !tbaa !1011
  store %struct._object* %22, %struct._object** %retval, !dbg !4577
  br label %return, !dbg !4577

return:                                           ; preds = %if.end.22, %if.then
  %23 = load %struct._object*, %struct._object** %retval, !dbg !4578
  ret %struct._object* %23, !dbg !4578
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_len(%struct.rangeiterobject* %r) #0 {
entry:
  %r.addr = alloca %struct.rangeiterobject*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeiterobject** %r.addr, metadata !819, metadata !1015), !dbg !4579
  %0 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4580, !tbaa !1011
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %0, i32 0, i32 4, !dbg !4581
  %1 = load i64, i64* %len, align 8, !dbg !4581, !tbaa !1866
  %2 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4582, !tbaa !1011
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %2, i32 0, i32 1, !dbg !4583
  %3 = load i64, i64* %index, align 8, !dbg !4583, !tbaa !1862
  %sub = sub i64 %1, %3, !dbg !4584
  %call = call %struct._object* @PyLong_FromLong(i64 %sub), !dbg !4585
  ret %struct._object* %call, !dbg !4586
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_xdecref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeiterobject** %r.addr, metadata !822, metadata !1015), !dbg !4587
  %0 = bitcast %struct._object** %start to i8*, !dbg !4588
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4588
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !823, metadata !1015), !dbg !4589
  store %struct._object* null, %struct._object** %start, align 8, !dbg !4589, !tbaa !1011
  %1 = bitcast %struct._object** %stop to i8*, !dbg !4588
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4588
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !824, metadata !1015), !dbg !4590
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !4590, !tbaa !1011
  %2 = bitcast %struct._object** %step to i8*, !dbg !4588
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !4588
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !825, metadata !1015), !dbg !4591
  store %struct._object* null, %struct._object** %step, align 8, !dbg !4591, !tbaa !1011
  %3 = bitcast %struct._object** %range to i8*, !dbg !4592
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !4592
  call void @llvm.dbg.declare(metadata %struct._object** %range, metadata !826, metadata !1015), !dbg !4593
  %4 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4594, !tbaa !1011
  %start1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %4, i32 0, i32 2, !dbg !4595
  %5 = load i64, i64* %start1, align 8, !dbg !4595, !tbaa !1871
  %call = call %struct._object* @PyLong_FromLong(i64 %5), !dbg !4596
  store %struct._object* %call, %struct._object** %start, align 8, !dbg !4597, !tbaa !1011
  %6 = load %struct._object*, %struct._object** %start, align 8, !dbg !4598, !tbaa !1011
  %cmp = icmp eq %struct._object* %6, null, !dbg !4600
  br i1 %cmp, label %if.then, label %if.end, !dbg !4601

if.then:                                          ; preds = %entry
  br label %err, !dbg !4602

if.end:                                           ; preds = %entry
  %7 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4603, !tbaa !1011
  %start2 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %7, i32 0, i32 2, !dbg !4604
  %8 = load i64, i64* %start2, align 8, !dbg !4604, !tbaa !1871
  %9 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4605, !tbaa !1011
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %9, i32 0, i32 4, !dbg !4606
  %10 = load i64, i64* %len, align 8, !dbg !4606, !tbaa !1866
  %11 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4607, !tbaa !1011
  %step3 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %11, i32 0, i32 3, !dbg !4608
  %12 = load i64, i64* %step3, align 8, !dbg !4608, !tbaa !1877
  %mul = mul i64 %10, %12, !dbg !4609
  %add = add i64 %8, %mul, !dbg !4610
  %call4 = call %struct._object* @PyLong_FromLong(i64 %add), !dbg !4611
  store %struct._object* %call4, %struct._object** %stop, align 8, !dbg !4612, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4613, !tbaa !1011
  %cmp5 = icmp eq %struct._object* %13, null, !dbg !4615
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !4616

if.then.6:                                        ; preds = %if.end
  br label %err, !dbg !4617

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4618, !tbaa !1011
  %step8 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %14, i32 0, i32 3, !dbg !4619
  %15 = load i64, i64* %step8, align 8, !dbg !4619, !tbaa !1877
  %call9 = call %struct._object* @PyLong_FromLong(i64 %15), !dbg !4620
  store %struct._object* %call9, %struct._object** %step, align 8, !dbg !4621, !tbaa !1011
  %16 = load %struct._object*, %struct._object** %step, align 8, !dbg !4622, !tbaa !1011
  %cmp10 = icmp eq %struct._object* %16, null, !dbg !4624
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4625

if.then.11:                                       ; preds = %if.end.7
  br label %err, !dbg !4626

if.end.12:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %start, align 8, !dbg !4627, !tbaa !1011
  %18 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4628, !tbaa !1011
  %19 = load %struct._object*, %struct._object** %step, align 8, !dbg !4629, !tbaa !1011
  %call13 = call %struct.rangeobject* @make_range_object(%struct._typeobject* @PyRange_Type, %struct._object* %17, %struct._object* %18, %struct._object* %19), !dbg !4630
  %20 = bitcast %struct.rangeobject* %call13 to %struct._object*, !dbg !4631
  store %struct._object* %20, %struct._object** %range, align 8, !dbg !4632, !tbaa !1011
  %21 = load %struct._object*, %struct._object** %range, align 8, !dbg !4633, !tbaa !1011
  %cmp14 = icmp eq %struct._object* %21, null, !dbg !4635
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !4636

if.then.15:                                       ; preds = %if.end.12
  br label %err, !dbg !4637

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !4638
  %22 = load %struct._object*, %struct._object** %range, align 8, !dbg !4639, !tbaa !1011
  %23 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4640, !tbaa !1011
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %23, i32 0, i32 1, !dbg !4641
  %24 = load i64, i64* %index, align 8, !dbg !4641, !tbaa !1862
  %call18 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._object* %call17, %struct._object* %22, i64 %24), !dbg !4642
  store %struct._object* %call18, %struct._object** %retval, !dbg !4643
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4643

err:                                              ; preds = %if.then.15, %if.then.11, %if.then.6, %if.then
  br label %do.body, !dbg !4644

do.body:                                          ; preds = %err
  %25 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4645
  call void @llvm.lifetime.start(i64 8, i8* %25) #3, !dbg !4645
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !827, metadata !1015), !dbg !4647
  %26 = load %struct._object*, %struct._object** %start, align 8, !dbg !4648, !tbaa !1011
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4647, !tbaa !1011
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4649, !tbaa !1011
  %cmp19 = icmp ne %struct._object* %27, null, !dbg !4650
  br i1 %cmp19, label %if.then.20, label %if.end.25, !dbg !4651

if.then.20:                                       ; preds = %do.body
  br label %do.body.21, !dbg !4652

do.body.21:                                       ; preds = %if.then.20
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4654
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !4654
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !829, metadata !1015), !dbg !4656
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4657, !tbaa !1011
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !4656, !tbaa !1011
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4658, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !4660
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !4661, !tbaa !1031
  %dec = add i64 %31, -1, !dbg !4661
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4661, !tbaa !1031
  %cmp22 = icmp ne i64 %dec, 0, !dbg !4662
  br i1 %cmp22, label %if.then.23, label %if.else, !dbg !4663

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.24, !dbg !4664

if.else:                                          ; preds = %do.body.21
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4666, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !4668
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4668, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !4669
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4669, !tbaa !1041
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4670, !tbaa !1011
  call void %34(%struct._object* %35), !dbg !4671
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4672
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !4672
  br label %do.cond, !dbg !4674

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !4675

do.end:                                           ; preds = %do.cond
  br label %if.end.25, !dbg !4677

if.end.25:                                        ; preds = %do.end, %do.body
  %37 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4679
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !4679
  br label %do.cond.26, !dbg !4682

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !4683

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !4685

do.body.28:                                       ; preds = %do.end.27
  %38 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !4686
  call void @llvm.lifetime.start(i64 8, i8* %38) #3, !dbg !4686
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp29, metadata !832, metadata !1015), !dbg !4688
  %39 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4689, !tbaa !1011
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !4688, !tbaa !1011
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !4690, !tbaa !1011
  %cmp30 = icmp ne %struct._object* %40, null, !dbg !4691
  br i1 %cmp30, label %if.then.31, label %if.end.44, !dbg !4692

if.then.31:                                       ; preds = %do.body.28
  br label %do.body.32, !dbg !4693

do.body.32:                                       ; preds = %if.then.31
  %41 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !4695
  call void @llvm.lifetime.start(i64 8, i8* %41) #3, !dbg !4695
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !834, metadata !1015), !dbg !4697
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !4698, !tbaa !1011
  store %struct._object* %42, %struct._object** %_py_decref_tmp33, align 8, !dbg !4697, !tbaa !1011
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4699, !tbaa !1011
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !4701
  %44 = load i64, i64* %ob_refcnt34, align 8, !dbg !4702, !tbaa !1031
  %dec35 = add i64 %44, -1, !dbg !4702
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !4702, !tbaa !1031
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !4703
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !4704

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !4705

if.else.38:                                       ; preds = %do.body.32
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4707, !tbaa !1011
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !4709
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !4709, !tbaa !1039
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !4710
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !4710, !tbaa !1041
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4711, !tbaa !1011
  call void %47(%struct._object* %48), !dbg !4712
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %49 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !4713
  call void @llvm.lifetime.end(i64 8, i8* %49) #3, !dbg !4713
  br label %do.cond.42, !dbg !4715

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !4716

do.end.43:                                        ; preds = %do.cond.42
  br label %if.end.44, !dbg !4718

if.end.44:                                        ; preds = %do.end.43, %do.body.28
  %50 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !4720
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !4720
  br label %do.cond.45, !dbg !4721

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !4722

do.end.46:                                        ; preds = %do.cond.45
  br label %do.body.47, !dbg !4724

do.body.47:                                       ; preds = %do.end.46
  %51 = bitcast %struct._object** %_py_xdecref_tmp48 to i8*, !dbg !4725
  call void @llvm.lifetime.start(i64 8, i8* %51) #3, !dbg !4725
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp48, metadata !837, metadata !1015), !dbg !4727
  %52 = load %struct._object*, %struct._object** %step, align 8, !dbg !4728, !tbaa !1011
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp48, align 8, !dbg !4727, !tbaa !1011
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp48, align 8, !dbg !4729, !tbaa !1011
  %cmp49 = icmp ne %struct._object* %53, null, !dbg !4730
  br i1 %cmp49, label %if.then.50, label %if.end.63, !dbg !4731

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51, !dbg !4732

do.body.51:                                       ; preds = %if.then.50
  %54 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !4734
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !4734
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp52, metadata !839, metadata !1015), !dbg !4736
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp48, align 8, !dbg !4737, !tbaa !1011
  store %struct._object* %55, %struct._object** %_py_decref_tmp52, align 8, !dbg !4736, !tbaa !1011
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !4738, !tbaa !1011
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !4740
  %57 = load i64, i64* %ob_refcnt53, align 8, !dbg !4741, !tbaa !1031
  %dec54 = add i64 %57, -1, !dbg !4741
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !4741, !tbaa !1031
  %cmp55 = icmp ne i64 %dec54, 0, !dbg !4742
  br i1 %cmp55, label %if.then.56, label %if.else.57, !dbg !4743

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60, !dbg !4744

if.else.57:                                       ; preds = %do.body.51
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !4746, !tbaa !1011
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !4748
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !4748, !tbaa !1039
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !4749
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !4749, !tbaa !1041
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !4750, !tbaa !1011
  call void %60(%struct._object* %61), !dbg !4751
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %62 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !4752
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !4752
  br label %do.cond.61, !dbg !4754

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !4755

do.end.62:                                        ; preds = %do.cond.61
  br label %if.end.63, !dbg !4757

if.end.63:                                        ; preds = %do.end.62, %do.body.47
  %63 = bitcast %struct._object** %_py_xdecref_tmp48 to i8*, !dbg !4759
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !4759
  br label %do.cond.64, !dbg !4760

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !4761

do.end.65:                                        ; preds = %do.cond.64
  store %struct._object* null, %struct._object** %retval, !dbg !4763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4763

cleanup:                                          ; preds = %do.end.65, %if.end.16
  %64 = bitcast %struct._object** %range to i8*, !dbg !4764
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !4764
  %65 = bitcast %struct._object** %step to i8*, !dbg !4764
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !4764
  %66 = bitcast %struct._object** %stop to i8*, !dbg !4764
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !4764
  %67 = bitcast %struct._object** %start to i8*, !dbg !4764
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !4764
  %68 = load %struct._object*, %struct._object** %retval, !dbg !4764
  ret %struct._object* %68, !dbg !4764
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_setstate(%struct.rangeiterobject* %r, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.rangeiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rangeiterobject* %r, %struct.rangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.rangeiterobject** %r.addr, metadata !846, metadata !1015), !dbg !4765
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !847, metadata !1015), !dbg !4766
  %0 = bitcast i64* %index to i8*, !dbg !4767
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %index, metadata !848, metadata !1015), !dbg !4768
  %1 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !4769, !tbaa !1011
  %call = call i64 @PyLong_AsLong(%struct._object* %1), !dbg !4770
  store i64 %call, i64* %index, align 8, !dbg !4768, !tbaa !1129
  %2 = load i64, i64* %index, align 8, !dbg !4771, !tbaa !1129
  %cmp = icmp eq i64 %2, -1, !dbg !4773
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4774

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4775
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4775
  br i1 %tobool, label %if.then, label %if.end, !dbg !4777

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !4778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4778

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %index, align 8, !dbg !4779, !tbaa !1129
  %cmp2 = icmp slt i64 %3, 0, !dbg !4781
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4782

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %index, align 8, !dbg !4783, !tbaa !1129
  br label %if.end.8, !dbg !4784

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* %index, align 8, !dbg !4785, !tbaa !1129
  %5 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4787, !tbaa !1011
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %5, i32 0, i32 4, !dbg !4788
  %6 = load i64, i64* %len, align 8, !dbg !4788, !tbaa !1866
  %cmp4 = icmp sgt i64 %4, %6, !dbg !4789
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !4790

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4791, !tbaa !1011
  %len6 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %7, i32 0, i32 4, !dbg !4792
  %8 = load i64, i64* %len6, align 8, !dbg !4792, !tbaa !1866
  store i64 %8, i64* %index, align 8, !dbg !4793, !tbaa !1129
  br label %if.end.7, !dbg !4794

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %9 = load i64, i64* %index, align 8, !dbg !4795, !tbaa !1129
  %10 = load %struct.rangeiterobject*, %struct.rangeiterobject** %r.addr, align 8, !dbg !4796, !tbaa !1011
  %index9 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %10, i32 0, i32 1, !dbg !4797
  store i64 %9, i64* %index9, align 8, !dbg !4798, !tbaa !1862
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4799, !tbaa !1031
  %inc = add i64 %11, 1, !dbg !4799
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4799, !tbaa !1031
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4800
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4800

cleanup:                                          ; preds = %if.end.8, %if.then
  %12 = bitcast i64* %index to i8*, !dbg !4801
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !4801
  %13 = load %struct._object*, %struct._object** %retval, !dbg !4801
  ret %struct._object* %13, !dbg !4801
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_len(%struct.longrangeiterobject* %r, %struct._object* %no_args) #0 {
entry:
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %no_args.addr = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %r.addr, metadata !910, metadata !1015), !dbg !4802
  store %struct._object* %no_args, %struct._object** %no_args.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %no_args.addr, metadata !911, metadata !1015), !dbg !4803
  %0 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4804, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %0, i32 0, i32 4, !dbg !4805
  %1 = load %struct._object*, %struct._object** %len, align 8, !dbg !4805, !tbaa !1102
  %2 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4806, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %2, i32 0, i32 1, !dbg !4807
  %3 = load %struct._object*, %struct._object** %index, align 8, !dbg !4807, !tbaa !1023
  %call = call %struct._object* @PyNumber_Subtract(%struct._object* %1, %struct._object* %3), !dbg !4808
  ret %struct._object* %call, !dbg !4809
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_reduce(%struct.longrangeiterobject* %r) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %product = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %range = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %r.addr, metadata !914, metadata !1015), !dbg !4810
  %0 = bitcast %struct._object** %product to i8*, !dbg !4811
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4811
  call void @llvm.dbg.declare(metadata %struct._object** %product, metadata !915, metadata !1015), !dbg !4812
  %1 = bitcast %struct._object** %stop to i8*, !dbg !4811
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4811
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !916, metadata !1015), !dbg !4813
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !4813, !tbaa !1011
  %2 = bitcast %struct._object** %range to i8*, !dbg !4814
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !4814
  call void @llvm.dbg.declare(metadata %struct._object** %range, metadata !917, metadata !1015), !dbg !4815
  %3 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4816, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %3, i32 0, i32 4, !dbg !4817
  %4 = load %struct._object*, %struct._object** %len, align 8, !dbg !4817, !tbaa !1102
  %5 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4818, !tbaa !1011
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %5, i32 0, i32 3, !dbg !4819
  %6 = load %struct._object*, %struct._object** %step, align 8, !dbg !4819, !tbaa !1079
  %call = call %struct._object* @PyNumber_Multiply(%struct._object* %4, %struct._object* %6), !dbg !4820
  store %struct._object* %call, %struct._object** %product, align 8, !dbg !4821, !tbaa !1011
  %7 = load %struct._object*, %struct._object** %product, align 8, !dbg !4822, !tbaa !1011
  %cmp = icmp eq %struct._object* %7, null, !dbg !4824
  br i1 %cmp, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4826
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4826

if.end:                                           ; preds = %entry
  %8 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4827, !tbaa !1011
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %8, i32 0, i32 2, !dbg !4828
  %9 = load %struct._object*, %struct._object** %start, align 8, !dbg !4828, !tbaa !1056
  %10 = load %struct._object*, %struct._object** %product, align 8, !dbg !4829, !tbaa !1011
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %9, %struct._object* %10), !dbg !4830
  store %struct._object* %call1, %struct._object** %stop, align 8, !dbg !4831, !tbaa !1011
  br label %do.body, !dbg !4832

do.body:                                          ; preds = %if.end
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4833
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !4833
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !918, metadata !1015), !dbg !4835
  %12 = load %struct._object*, %struct._object** %product, align 8, !dbg !4836, !tbaa !1011
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4835, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4837, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4839
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4840, !tbaa !1031
  %dec = add i64 %14, -1, !dbg !4840
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4840, !tbaa !1031
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4841
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4842

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4843

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4845, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4847
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4847, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4848
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4848, !tbaa !1041
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4849, !tbaa !1011
  call void %17(%struct._object* %18), !dbg !4850
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4851
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !4851
  br label %do.cond, !dbg !4853

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4854

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4856, !tbaa !1011
  %cmp5 = icmp eq %struct._object* %20, null, !dbg !4858
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !4859

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !4860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4860

if.end.7:                                         ; preds = %do.end
  %21 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4861, !tbaa !1011
  %start8 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %21, i32 0, i32 2, !dbg !4862
  %22 = load %struct._object*, %struct._object** %start8, align 8, !dbg !4862, !tbaa !1056
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !4863
  %23 = load i64, i64* %ob_refcnt9, align 8, !dbg !4864, !tbaa !1031
  %inc = add i64 %23, 1, !dbg !4864
  store i64 %inc, i64* %ob_refcnt9, align 8, !dbg !4864, !tbaa !1031
  %24 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4865, !tbaa !1011
  %step10 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %24, i32 0, i32 3, !dbg !4866
  %25 = load %struct._object*, %struct._object** %step10, align 8, !dbg !4866, !tbaa !1079
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !4867
  %26 = load i64, i64* %ob_refcnt11, align 8, !dbg !4868, !tbaa !1031
  %inc12 = add i64 %26, 1, !dbg !4868
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !4868, !tbaa !1031
  %27 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4869, !tbaa !1011
  %start13 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %27, i32 0, i32 2, !dbg !4870
  %28 = load %struct._object*, %struct._object** %start13, align 8, !dbg !4870, !tbaa !1056
  %29 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4871, !tbaa !1011
  %30 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4872, !tbaa !1011
  %step14 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %30, i32 0, i32 3, !dbg !4873
  %31 = load %struct._object*, %struct._object** %step14, align 8, !dbg !4873, !tbaa !1079
  %call15 = call %struct.rangeobject* @make_range_object(%struct._typeobject* @PyRange_Type, %struct._object* %28, %struct._object* %29, %struct._object* %31), !dbg !4874
  %32 = bitcast %struct.rangeobject* %call15 to %struct._object*, !dbg !4875
  store %struct._object* %32, %struct._object** %range, align 8, !dbg !4876, !tbaa !1011
  %33 = load %struct._object*, %struct._object** %range, align 8, !dbg !4877, !tbaa !1011
  %cmp16 = icmp eq %struct._object* %33, null, !dbg !4878
  br i1 %cmp16, label %if.then.17, label %if.end.56, !dbg !4879

if.then.17:                                       ; preds = %if.end.7
  br label %do.body.18, !dbg !4880

do.body.18:                                       ; preds = %if.then.17
  %34 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !4881
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !4881
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !920, metadata !1015), !dbg !4883
  %35 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4884, !tbaa !1011
  %start20 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %35, i32 0, i32 2, !dbg !4885
  %36 = load %struct._object*, %struct._object** %start20, align 8, !dbg !4885, !tbaa !1056
  store %struct._object* %36, %struct._object** %_py_decref_tmp19, align 8, !dbg !4883, !tbaa !1011
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !4886, !tbaa !1011
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !4888
  %38 = load i64, i64* %ob_refcnt21, align 8, !dbg !4889, !tbaa !1031
  %dec22 = add i64 %38, -1, !dbg !4889
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !4889, !tbaa !1031
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !4890
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !4891

if.then.24:                                       ; preds = %do.body.18
  br label %if.end.28, !dbg !4892

if.else.25:                                       ; preds = %do.body.18
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !4894, !tbaa !1011
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !4896
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !4896, !tbaa !1039
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !4897
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !4897, !tbaa !1041
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !4898, !tbaa !1011
  call void %41(%struct._object* %42), !dbg !4899
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %43 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !4900
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !4900
  br label %do.cond.29, !dbg !4902

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !4903

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31, !dbg !4905

do.body.31:                                       ; preds = %do.end.30
  %44 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !4906
  call void @llvm.lifetime.start(i64 8, i8* %44) #3, !dbg !4906
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !924, metadata !1015), !dbg !4908
  %45 = load %struct._object*, %struct._object** %stop, align 8, !dbg !4909, !tbaa !1011
  store %struct._object* %45, %struct._object** %_py_decref_tmp32, align 8, !dbg !4908, !tbaa !1011
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !4910, !tbaa !1011
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !4912
  %47 = load i64, i64* %ob_refcnt33, align 8, !dbg !4913, !tbaa !1031
  %dec34 = add i64 %47, -1, !dbg !4913
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !4913, !tbaa !1031
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !4914
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !4915

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !4916

if.else.37:                                       ; preds = %do.body.31
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !4918, !tbaa !1011
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !4920
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !4920, !tbaa !1039
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !4921
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !4921, !tbaa !1041
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !4922, !tbaa !1011
  call void %50(%struct._object* %51), !dbg !4923
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %52 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !4924
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !4924
  br label %do.cond.41, !dbg !4925

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !4926

do.end.42:                                        ; preds = %do.cond.41
  br label %do.body.43, !dbg !4928

do.body.43:                                       ; preds = %do.end.42
  %53 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !4929
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !4929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp44, metadata !926, metadata !1015), !dbg !4931
  %54 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4932, !tbaa !1011
  %step45 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %54, i32 0, i32 3, !dbg !4933
  %55 = load %struct._object*, %struct._object** %step45, align 8, !dbg !4933, !tbaa !1079
  store %struct._object* %55, %struct._object** %_py_decref_tmp44, align 8, !dbg !4931, !tbaa !1011
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !4934, !tbaa !1011
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !4936
  %57 = load i64, i64* %ob_refcnt46, align 8, !dbg !4937, !tbaa !1031
  %dec47 = add i64 %57, -1, !dbg !4937
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !4937, !tbaa !1031
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !4938
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !4939

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53, !dbg !4940

if.else.50:                                       ; preds = %do.body.43
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !4942, !tbaa !1011
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !4944
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !4944, !tbaa !1039
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !4945
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !4945, !tbaa !1041
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !4946, !tbaa !1011
  call void %60(%struct._object* %61), !dbg !4947
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %62 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !4948
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !4948
  br label %do.cond.54, !dbg !4949

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !4950

do.end.55:                                        ; preds = %do.cond.54
  store %struct._object* null, %struct._object** %retval, !dbg !4952
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4952

if.end.56:                                        ; preds = %if.end.7
  %call57 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !4953
  %63 = load %struct._object*, %struct._object** %range, align 8, !dbg !4954, !tbaa !1011
  %64 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4955, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %64, i32 0, i32 1, !dbg !4956
  %65 = load %struct._object*, %struct._object** %index, align 8, !dbg !4956, !tbaa !1023
  %call58 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* %call57, %struct._object* %63, %struct._object* %65), !dbg !4957
  store %struct._object* %call58, %struct._object** %retval, !dbg !4958
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4958

cleanup:                                          ; preds = %if.end.56, %do.end.55, %if.then.6, %if.then
  %66 = bitcast %struct._object** %range to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !4959
  %67 = bitcast %struct._object** %stop to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !4959
  %68 = bitcast %struct._object** %product to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !4959
  %69 = load %struct._object*, %struct._object** %retval, !dbg !4959
  ret %struct._object* %69, !dbg !4959
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_setstate(%struct.longrangeiterobject* %r, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %r.addr = alloca %struct.longrangeiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %zero = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  store %struct.longrangeiterobject* %r, %struct.longrangeiterobject** %r.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct.longrangeiterobject** %r.addr, metadata !930, metadata !1015), !dbg !4960
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !931, metadata !1015), !dbg !4961
  %0 = bitcast i32* %cmp to i8*, !dbg !4962
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !4962
  call void @llvm.dbg.declare(metadata i32* %cmp, metadata !932, metadata !1015), !dbg !4963
  %1 = bitcast %struct._object** %zero to i8*, !dbg !4964
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4964
  call void @llvm.dbg.declare(metadata %struct._object** %zero, metadata !933, metadata !1015), !dbg !4965
  %call = call %struct._object* @PyLong_FromLong(i64 0), !dbg !4966
  store %struct._object* %call, %struct._object** %zero, align 8, !dbg !4965, !tbaa !1011
  %2 = load %struct._object*, %struct._object** %zero, align 8, !dbg !4967, !tbaa !1011
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !4969
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4970

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4971

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !4972, !tbaa !1011
  %4 = load %struct._object*, %struct._object** %zero, align 8, !dbg !4973, !tbaa !1011
  %call2 = call i32 @PyObject_RichCompareBool(%struct._object* %3, %struct._object* %4, i32 0), !dbg !4974
  store i32 %call2, i32* %cmp, align 4, !dbg !4975, !tbaa !1191
  %5 = load i32, i32* %cmp, align 4, !dbg !4976, !tbaa !1191
  %cmp3 = icmp sgt i32 %5, 0, !dbg !4977
  br i1 %cmp3, label %if.then.4, label %if.end.16, !dbg !4978

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !4979

do.body:                                          ; preds = %if.then.4
  %6 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4980
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !4980
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !934, metadata !1015), !dbg !4982
  %7 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4983, !tbaa !1011
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %7, i32 0, i32 1, !dbg !4984
  %8 = load %struct._object*, %struct._object** %index, align 8, !dbg !4984, !tbaa !1023
  store %struct._object* %8, %struct._object** %_py_tmp, align 8, !dbg !4982, !tbaa !1011
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4985, !tbaa !1011
  %cmp5 = icmp ne %struct._object* %9, null, !dbg !4986
  br i1 %cmp5, label %if.then.6, label %if.end.12, !dbg !4987

if.then.6:                                        ; preds = %do.body
  %10 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !4988, !tbaa !1011
  %index7 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %10, i32 0, i32 1, !dbg !4990
  store %struct._object* null, %struct._object** %index7, align 8, !dbg !4991, !tbaa !1023
  br label %do.body.8, !dbg !4992

do.body.8:                                        ; preds = %if.then.6
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4993
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !4993
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !938, metadata !1015), !dbg !4995
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4996, !tbaa !1011
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4995, !tbaa !1011
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4997, !tbaa !1011
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4999
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !5000, !tbaa !1031
  %dec = add i64 %14, -1, !dbg !5000
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5000, !tbaa !1031
  %cmp9 = icmp ne i64 %dec, 0, !dbg !5001
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !5002

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !5003

if.else:                                          ; preds = %do.body.8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5005, !tbaa !1011
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5007
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5007, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !5008
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5008, !tbaa !1041
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5009, !tbaa !1011
  call void %17(%struct._object* %18), !dbg !5010
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5011
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !5011
  br label %do.cond, !dbg !5013

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !5014

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !5016

if.end.12:                                        ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_tmp to i8*, !dbg !5018
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !5018
  br label %do.cond.13, !dbg !5021

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !5022

do.end.14:                                        ; preds = %do.cond.13
  %21 = load %struct._object*, %struct._object** %zero, align 8, !dbg !5024, !tbaa !1011
  %22 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5025, !tbaa !1011
  %index15 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %22, i32 0, i32 1, !dbg !5026
  store %struct._object* %21, %struct._object** %index15, align 8, !dbg !5027, !tbaa !1023
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5028, !tbaa !1031
  %inc = add i64 %23, 1, !dbg !5028
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5028, !tbaa !1031
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !5029
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5029

if.end.16:                                        ; preds = %if.end
  br label %do.body.17, !dbg !5030

do.body.17:                                       ; preds = %if.end.16
  %24 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !5031
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !5031
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !942, metadata !1015), !dbg !5033
  %25 = load %struct._object*, %struct._object** %zero, align 8, !dbg !5034, !tbaa !1011
  store %struct._object* %25, %struct._object** %_py_decref_tmp18, align 8, !dbg !5033, !tbaa !1011
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !5035, !tbaa !1011
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !5037
  %27 = load i64, i64* %ob_refcnt19, align 8, !dbg !5038, !tbaa !1031
  %dec20 = add i64 %27, -1, !dbg !5038
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !5038, !tbaa !1031
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !5039
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !5040

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !5041

if.else.23:                                       ; preds = %do.body.17
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !5043, !tbaa !1011
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !5045
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !5045, !tbaa !1039
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !5046
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !5046, !tbaa !1041
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !5047, !tbaa !1011
  call void %30(%struct._object* %31), !dbg !5048
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %32 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !5049
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !5049
  br label %do.cond.27, !dbg !5051

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !5052

do.end.28:                                        ; preds = %do.cond.27
  %33 = load i32, i32* %cmp, align 4, !dbg !5054, !tbaa !1191
  %cmp29 = icmp slt i32 %33, 0, !dbg !5056
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !5057

if.then.30:                                       ; preds = %do.end.28
  store %struct._object* null, %struct._object** %retval, !dbg !5058
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5058

if.end.31:                                        ; preds = %do.end.28
  %34 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5059, !tbaa !1011
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %34, i32 0, i32 4, !dbg !5060
  %35 = load %struct._object*, %struct._object** %len, align 8, !dbg !5060, !tbaa !1102
  %36 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !5061, !tbaa !1011
  %call32 = call i32 @PyObject_RichCompareBool(%struct._object* %35, %struct._object* %36, i32 0), !dbg !5062
  store i32 %call32, i32* %cmp, align 4, !dbg !5063, !tbaa !1191
  %37 = load i32, i32* %cmp, align 4, !dbg !5064, !tbaa !1191
  %cmp33 = icmp slt i32 %37, 0, !dbg !5066
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !5067

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval, !dbg !5068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5068

if.end.35:                                        ; preds = %if.end.31
  %38 = load i32, i32* %cmp, align 4, !dbg !5069, !tbaa !1191
  %cmp36 = icmp sgt i32 %38, 0, !dbg !5071
  br i1 %cmp36, label %if.then.37, label %if.end.39, !dbg !5072

if.then.37:                                       ; preds = %if.end.35
  %39 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5073, !tbaa !1011
  %len38 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %39, i32 0, i32 4, !dbg !5074
  %40 = load %struct._object*, %struct._object** %len38, align 8, !dbg !5074, !tbaa !1102
  store %struct._object* %40, %struct._object** %state.addr, align 8, !dbg !5075, !tbaa !1011
  br label %if.end.39, !dbg !5076

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  br label %do.body.40, !dbg !5077

do.body.40:                                       ; preds = %if.end.39
  %41 = bitcast %struct._object** %_py_tmp41 to i8*, !dbg !5078
  call void @llvm.lifetime.start(i64 8, i8* %41) #3, !dbg !5078
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp41, metadata !944, metadata !1015), !dbg !5080
  %42 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5081, !tbaa !1011
  %index42 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %42, i32 0, i32 1, !dbg !5082
  %43 = load %struct._object*, %struct._object** %index42, align 8, !dbg !5082, !tbaa !1023
  store %struct._object* %43, %struct._object** %_py_tmp41, align 8, !dbg !5080, !tbaa !1011
  %44 = load %struct._object*, %struct._object** %_py_tmp41, align 8, !dbg !5083, !tbaa !1011
  %cmp43 = icmp ne %struct._object* %44, null, !dbg !5084
  br i1 %cmp43, label %if.then.44, label %if.end.58, !dbg !5085

if.then.44:                                       ; preds = %do.body.40
  %45 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5086, !tbaa !1011
  %index45 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %45, i32 0, i32 1, !dbg !5088
  store %struct._object* null, %struct._object** %index45, align 8, !dbg !5089, !tbaa !1023
  br label %do.body.46, !dbg !5090

do.body.46:                                       ; preds = %if.then.44
  %46 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !5091
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !5091
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp47, metadata !946, metadata !1015), !dbg !5093
  %47 = load %struct._object*, %struct._object** %_py_tmp41, align 8, !dbg !5094, !tbaa !1011
  store %struct._object* %47, %struct._object** %_py_decref_tmp47, align 8, !dbg !5093, !tbaa !1011
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !5095, !tbaa !1011
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !5097
  %49 = load i64, i64* %ob_refcnt48, align 8, !dbg !5098, !tbaa !1031
  %dec49 = add i64 %49, -1, !dbg !5098
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !5098, !tbaa !1031
  %cmp50 = icmp ne i64 %dec49, 0, !dbg !5099
  br i1 %cmp50, label %if.then.51, label %if.else.52, !dbg !5100

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55, !dbg !5101

if.else.52:                                       ; preds = %do.body.46
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !5103, !tbaa !1011
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !5105
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !5105, !tbaa !1039
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !5106
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !5106, !tbaa !1041
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !5107, !tbaa !1011
  call void %52(%struct._object* %53), !dbg !5108
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %54 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !5109
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !5109
  br label %do.cond.56, !dbg !5111

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !5112

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58, !dbg !5114

if.end.58:                                        ; preds = %do.end.57, %do.body.40
  %55 = bitcast %struct._object** %_py_tmp41 to i8*, !dbg !5116
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !5116
  br label %do.cond.59, !dbg !5119

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !5120

do.end.60:                                        ; preds = %do.cond.59
  %56 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !5122, !tbaa !1011
  %57 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5123, !tbaa !1011
  %index61 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %57, i32 0, i32 1, !dbg !5124
  store %struct._object* %56, %struct._object** %index61, align 8, !dbg !5125, !tbaa !1023
  %58 = load %struct.longrangeiterobject*, %struct.longrangeiterobject** %r.addr, align 8, !dbg !5126, !tbaa !1011
  %index62 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %58, i32 0, i32 1, !dbg !5127
  %59 = load %struct._object*, %struct._object** %index62, align 8, !dbg !5127, !tbaa !1023
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0, !dbg !5128
  %60 = load i64, i64* %ob_refcnt63, align 8, !dbg !5129, !tbaa !1031
  %inc64 = add i64 %60, 1, !dbg !5129
  store i64 %inc64, i64* %ob_refcnt63, align 8, !dbg !5129, !tbaa !1031
  %61 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5130, !tbaa !1031
  %inc65 = add i64 %61, 1, !dbg !5130
  store i64 %inc65, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5130, !tbaa !1031
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !5131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5131

cleanup:                                          ; preds = %do.end.60, %if.then.34, %if.then.30, %do.end.14, %if.then
  %62 = bitcast %struct._object** %zero to i8*, !dbg !5132
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !5132
  %63 = bitcast i32* %cmp to i8*, !dbg !5132
  call void @llvm.lifetime.end(i64 4, i8* %63) #3, !dbg !5132
  %64 = load %struct._object*, %struct._object** %retval, !dbg !5132
  ret %struct._object* %64, !dbg !5132
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1008, !1009}
!llvm.ident = !{!1010}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !395, globals: !961)
!1 = !DIFile(filename: "rangeobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !43, !350, !359, !369, !96, !16, !377, !386}
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
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
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
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !51, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !43, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !10, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !43, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !51, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !51, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!4, !4, !89}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!43, !4, !4, !89}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!4, !18, !10}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!4, !18, !4, !4}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !89}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySliceObject", file: !352, line: 25, baseType: !353)
!352 = !DIFile(filename: "Include/sliceobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 22, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 23, baseType: !5, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "rangeobject", file: !361, line: 19, baseType: !362)
!361 = !DIFile(filename: "Objects/rangeobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 13, size: 384, align: 64, elements: !363)
!363 = !{!364, !365, !366, !367, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !362, file: !361, line: 14, baseType: !5, size: 128, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !362, file: !361, line: 15, baseType: !4, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !362, file: !361, line: 16, baseType: !4, size: 64, align: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !362, file: !361, line: 17, baseType: !4, size: 64, align: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !362, file: !361, line: 18, baseType: !4, size: 64, align: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !371, line: 33, baseType: !372)
!371 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!372 = !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 25, size: 256, align: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !372, file: !371, line: 26, baseType: !22, size: 192, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !372, file: !371, line: 27, baseType: !376, size: 64, align: 64, offset: 192)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 64, elements: !81)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "longrangeiterobject", file: !361, line: 949, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 943, size: 384, align: 64, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !379, file: !361, line: 944, baseType: !5, size: 128, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !379, file: !361, line: 945, baseType: !4, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !379, file: !361, line: 946, baseType: !4, size: 64, align: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !379, file: !361, line: 947, baseType: !4, size: 64, align: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !379, file: !361, line: 948, baseType: !4, size: 64, align: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "rangeiterobject", file: !361, line: 753, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 747, size: 384, align: 64, elements: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !388, file: !361, line: 748, baseType: !5, size: 128, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !388, file: !361, line: 749, baseType: !16, size: 64, align: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !388, file: !361, line: 750, baseType: !16, size: 64, align: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !388, file: !361, line: 751, baseType: !16, size: 64, align: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !388, file: !361, line: 752, baseType: !16, size: 64, align: 64, offset: 320)
!395 = !{!396, !409, !415, !420, !430, !462, !470, !476, !502, !512, !573, !589, !647, !662, !668, !678, !701, !708, !721, !725, !734, !748, !797, !812, !817, !820, !842, !849, !857, !882, !906, !912, !928, !950}
!396 = !DISubprogram(name: "range_dealloc", scope: !361, file: !361, line: 145, type: !397, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.rangeobject*)* @range_dealloc, variables: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !359}
!399 = !{!400, !401, !403, !405, !407}
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !396, file: !361, line: 145, type: !359)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !402, file: !361, line: 147, type: !4)
!402 = distinct !DILexicalBlock(scope: !396, file: !361, line: 147, column: 8)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !404, file: !361, line: 148, type: !4)
!404 = distinct !DILexicalBlock(scope: !396, file: !361, line: 148, column: 8)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !361, line: 149, type: !4)
!406 = distinct !DILexicalBlock(scope: !396, file: !361, line: 149, column: 8)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !408, file: !361, line: 150, type: !4)
!408 = distinct !DILexicalBlock(scope: !396, file: !361, line: 150, column: 8)
!409 = !DISubprogram(name: "range_repr", scope: !361, file: !361, line: 616, type: !410, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*)* @range_repr, variables: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!4, !359}
!412 = !{!413, !414}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !409, file: !361, line: 616, type: !359)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istep", scope: !409, file: !361, line: 618, type: !10)
!415 = !DISubprogram(name: "range_length", scope: !361, file: !361, line: 230, type: !416, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.rangeobject*)* @range_length, variables: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!10, !359}
!418 = !{!419}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !415, file: !361, line: 230, type: !359)
!420 = !DISubprogram(name: "range_item", scope: !361, file: !361, line: 310, type: !421, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, i64)* @range_item, variables: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!4, !359, !10}
!423 = !{!424, !425, !426, !427, !428}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !420, file: !361, line: 310, type: !359)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !420, file: !361, line: 310, type: !10)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !420, file: !361, line: 312, type: !4)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !420, file: !361, line: 312, type: !4)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !429, file: !361, line: 317, type: !4)
!429 = distinct !DILexicalBlock(scope: !420, file: !361, line: 317, column: 8)
!430 = !DISubprogram(name: "compute_range_item", scope: !361, file: !361, line: 251, type: !431, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @compute_range_item, variables: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!4, !359, !4}
!433 = !{!434, !435, !436, !437, !438, !439, !440, !444, !450, !452, !456, !460}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !430, file: !361, line: 251, type: !359)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !430, file: !361, line: 251, type: !4)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !430, file: !361, line: 253, type: !43)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !430, file: !361, line: 254, type: !4)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !430, file: !361, line: 254, type: !4)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !430, file: !361, line: 256, type: !4)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !361, line: 269, type: !4)
!441 = distinct !DILexicalBlock(scope: !442, file: !361, line: 269, column: 12)
!442 = distinct !DILexicalBlock(scope: !443, file: !361, line: 268, column: 27)
!443 = distinct !DILexicalBlock(scope: !430, file: !361, line: 268, column: 9)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !361, line: 275, type: !4)
!445 = distinct !DILexicalBlock(scope: !446, file: !361, line: 275, column: 12)
!446 = distinct !DILexicalBlock(scope: !447, file: !361, line: 274, column: 15)
!447 = distinct !DILexicalBlock(scope: !448, file: !361, line: 274, column: 11)
!448 = distinct !DILexicalBlock(scope: !449, file: !361, line: 272, column: 26)
!449 = distinct !DILexicalBlock(scope: !430, file: !361, line: 272, column: 9)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !361, line: 289, type: !4)
!451 = distinct !DILexicalBlock(scope: !430, file: !361, line: 289, column: 8)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !361, line: 294, type: !4)
!453 = distinct !DILexicalBlock(scope: !454, file: !361, line: 294, column: 11)
!454 = distinct !DILexicalBlock(scope: !455, file: !361, line: 293, column: 27)
!455 = distinct !DILexicalBlock(scope: !430, file: !361, line: 293, column: 9)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !361, line: 298, type: !4)
!457 = distinct !DILexicalBlock(scope: !458, file: !361, line: 298, column: 12)
!458 = distinct !DILexicalBlock(scope: !459, file: !361, line: 297, column: 26)
!459 = distinct !DILexicalBlock(scope: !430, file: !361, line: 297, column: 9)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !461, file: !361, line: 305, type: !4)
!461 = distinct !DILexicalBlock(scope: !430, file: !361, line: 305, column: 8)
!462 = !DISubprogram(name: "compute_item", scope: !361, file: !361, line: 236, type: !431, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @compute_item, variables: !463)
!463 = !{!464, !465, !466, !467, !468}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !462, file: !361, line: 236, type: !359)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !462, file: !361, line: 236, type: !4)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !462, file: !361, line: 238, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !462, file: !361, line: 238, type: !4)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !469, file: !361, line: 246, type: !4)
!469 = distinct !DILexicalBlock(scope: !462, file: !361, line: 246, column: 8)
!470 = !DISubprogram(name: "range_contains", scope: !361, file: !361, line: 412, type: !471, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rangeobject*, %struct._object*)* @range_contains, variables: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!43, !359, !4}
!473 = !{!474, !475}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !470, file: !361, line: 412, type: !359)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !470, file: !361, line: 412, type: !4)
!476 = !DISubprogram(name: "range_contains_long", scope: !361, file: !361, line: 362, type: !471, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rangeobject*, %struct._object*)* @range_contains_long, variables: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !489, !492, !494, !497, !499}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !476, file: !361, line: 362, type: !359)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !476, file: !361, line: 362, type: !4)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp1", scope: !476, file: !361, line: 364, type: !43)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp2", scope: !476, file: !361, line: 364, type: !43)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp3", scope: !476, file: !361, line: 364, type: !43)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp1", scope: !476, file: !361, line: 365, type: !4)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp2", scope: !476, file: !361, line: 366, type: !4)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !476, file: !361, line: 367, type: !4)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !476, file: !361, line: 368, type: !43)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !488, file: !361, line: 405, type: !4)
!488 = distinct !DILexicalBlock(scope: !476, file: !361, line: 405, column: 8)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !490, file: !361, line: 405, type: !4)
!490 = distinct !DILexicalBlock(scope: !491, file: !361, line: 405, column: 96)
!491 = distinct !DILexicalBlock(scope: !488, file: !361, line: 405, column: 62)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !493, file: !361, line: 406, type: !4)
!493 = distinct !DILexicalBlock(scope: !476, file: !361, line: 406, column: 8)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !361, line: 406, type: !4)
!495 = distinct !DILexicalBlock(scope: !496, file: !361, line: 406, column: 96)
!496 = distinct !DILexicalBlock(scope: !493, file: !361, line: 406, column: 62)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !498, file: !361, line: 407, type: !4)
!498 = distinct !DILexicalBlock(scope: !476, file: !361, line: 407, column: 8)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !361, line: 407, type: !4)
!500 = distinct !DILexicalBlock(scope: !501, file: !361, line: 407, column: 96)
!501 = distinct !DILexicalBlock(scope: !498, file: !361, line: 407, column: 62)
!502 = !DISubprogram(name: "range_subscript", scope: !361, file: !361, line: 644, type: !431, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_subscript, variables: !503)
!503 = !{!504, !505, !506, !509, !510}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !502, file: !361, line: 644, type: !359)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !502, file: !361, line: 644, type: !4)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !507, file: !361, line: 647, type: !4)
!507 = distinct !DILexicalBlock(scope: !508, file: !361, line: 646, column: 113)
!508 = distinct !DILexicalBlock(scope: !502, file: !361, line: 646, column: 9)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !507, file: !361, line: 647, type: !4)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !511, file: !361, line: 652, type: !4)
!511 = distinct !DILexicalBlock(scope: !507, file: !361, line: 652, column: 12)
!512 = !DISubprogram(name: "compute_slice", scope: !361, file: !361, line: 322, type: !431, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @compute_slice, variables: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !527, !531, !533, !537, !539, !543, !545, !548, !550, !553, !555, !558, !560, !563, !565, !568, !570}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !512, file: !361, line: 322, type: !359)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_slice", arg: 2, scope: !512, file: !361, line: 322, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice", scope: !512, file: !361, line: 324, type: !350)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !512, file: !361, line: 325, type: !359)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !512, file: !361, line: 326, type: !4)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !512, file: !361, line: 326, type: !4)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !512, file: !361, line: 326, type: !4)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substart", scope: !512, file: !361, line: 327, type: !4)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substop", scope: !512, file: !361, line: 327, type: !4)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substep", scope: !512, file: !361, line: 327, type: !4)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !512, file: !361, line: 328, type: !43)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !526, file: !361, line: 336, type: !4)
!526 = distinct !DILexicalBlock(scope: !512, file: !361, line: 336, column: 8)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !528, file: !361, line: 336, type: !4)
!528 = distinct !DILexicalBlock(scope: !529, file: !361, line: 336, column: 103)
!529 = distinct !DILexicalBlock(scope: !530, file: !361, line: 336, column: 77)
!530 = distinct !DILexicalBlock(scope: !526, file: !361, line: 336, column: 54)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !532, file: !361, line: 340, type: !4)
!532 = distinct !DILexicalBlock(scope: !512, file: !361, line: 340, column: 8)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !534, file: !361, line: 340, type: !4)
!534 = distinct !DILexicalBlock(scope: !535, file: !361, line: 340, column: 105)
!535 = distinct !DILexicalBlock(scope: !536, file: !361, line: 340, column: 78)
!536 = distinct !DILexicalBlock(scope: !532, file: !361, line: 340, column: 55)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !538, file: !361, line: 344, type: !4)
!538 = distinct !DILexicalBlock(scope: !512, file: !361, line: 344, column: 8)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !540, file: !361, line: 344, type: !4)
!540 = distinct !DILexicalBlock(scope: !541, file: !361, line: 344, column: 103)
!541 = distinct !DILexicalBlock(scope: !542, file: !361, line: 344, column: 77)
!542 = distinct !DILexicalBlock(scope: !538, file: !361, line: 344, column: 54)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !544, file: !361, line: 351, type: !4)
!544 = distinct !DILexicalBlock(scope: !512, file: !361, line: 351, column: 8)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !546, file: !361, line: 351, type: !4)
!546 = distinct !DILexicalBlock(scope: !547, file: !361, line: 351, column: 97)
!547 = distinct !DILexicalBlock(scope: !544, file: !361, line: 351, column: 63)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !549, file: !361, line: 352, type: !4)
!549 = distinct !DILexicalBlock(scope: !512, file: !361, line: 352, column: 8)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !551, file: !361, line: 352, type: !4)
!551 = distinct !DILexicalBlock(scope: !552, file: !361, line: 352, column: 96)
!552 = distinct !DILexicalBlock(scope: !549, file: !361, line: 352, column: 62)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !554, file: !361, line: 353, type: !4)
!554 = distinct !DILexicalBlock(scope: !512, file: !361, line: 353, column: 8)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !556, file: !361, line: 353, type: !4)
!556 = distinct !DILexicalBlock(scope: !557, file: !361, line: 353, column: 96)
!557 = distinct !DILexicalBlock(scope: !554, file: !361, line: 353, column: 62)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !559, file: !361, line: 354, type: !4)
!559 = distinct !DILexicalBlock(scope: !512, file: !361, line: 354, column: 8)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !561, file: !361, line: 354, type: !4)
!561 = distinct !DILexicalBlock(scope: !562, file: !361, line: 354, column: 100)
!562 = distinct !DILexicalBlock(scope: !559, file: !361, line: 354, column: 66)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !564, file: !361, line: 355, type: !4)
!564 = distinct !DILexicalBlock(scope: !512, file: !361, line: 355, column: 8)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !566, file: !361, line: 355, type: !4)
!566 = distinct !DILexicalBlock(scope: !567, file: !361, line: 355, column: 99)
!567 = distinct !DILexicalBlock(scope: !564, file: !361, line: 355, column: 65)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !569, file: !361, line: 356, type: !4)
!569 = distinct !DILexicalBlock(scope: !512, file: !361, line: 356, column: 8)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !571, file: !361, line: 356, type: !4)
!571 = distinct !DILexicalBlock(scope: !572, file: !361, line: 356, column: 99)
!572 = distinct !DILexicalBlock(scope: !569, file: !361, line: 356, column: 65)
!573 = !DISubprogram(name: "make_range_object", scope: !361, file: !361, line: 52, type: !574, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: %struct.rangeobject* (%struct._typeobject*, %struct._object*, %struct._object*, %struct._object*)* @make_range_object, variables: !578)
!574 = !DISubroutineType(types: !575)
!575 = !{!359, !576, !4, !4, !4}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!578 = !{!579, !580, !581, !582, !583, !584, !585}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !573, file: !361, line: 52, type: !576)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !573, file: !361, line: 52, type: !4)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 3, scope: !573, file: !361, line: 53, type: !4)
!582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 4, scope: !573, file: !361, line: 53, type: !4)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !573, file: !361, line: 55, type: !359)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !573, file: !361, line: 56, type: !4)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !361, line: 63, type: !4)
!586 = distinct !DILexicalBlock(scope: !587, file: !361, line: 63, column: 12)
!587 = distinct !DILexicalBlock(scope: !588, file: !361, line: 62, column: 28)
!588 = distinct !DILexicalBlock(scope: !573, file: !361, line: 62, column: 9)
!589 = !DISubprogram(name: "compute_range_length", scope: !361, file: !361, line: 159, type: !135, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @compute_range_length, variables: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !605, !609, !612, !614, !616, !618, !620, !622, !624, !627, !629, !632, !634, !637, !639, !642, !644}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !589, file: !361, line: 159, type: !4)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !589, file: !361, line: 159, type: !4)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !589, file: !361, line: 159, type: !4)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !589, file: !361, line: 165, type: !43)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !589, file: !361, line: 166, type: !4)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !589, file: !361, line: 166, type: !4)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !589, file: !361, line: 167, type: !4)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !589, file: !361, line: 168, type: !4)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp1", scope: !589, file: !361, line: 169, type: !4)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp2", scope: !589, file: !361, line: 169, type: !4)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !589, file: !361, line: 169, type: !4)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !589, file: !361, line: 172, type: !4)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !604, file: !361, line: 176, type: !4)
!604 = distinct !DILexicalBlock(scope: !589, file: !361, line: 176, column: 8)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !606, file: !361, line: 194, type: !4)
!606 = distinct !DILexicalBlock(scope: !607, file: !361, line: 194, column: 12)
!607 = distinct !DILexicalBlock(scope: !608, file: !361, line: 193, column: 51)
!608 = distinct !DILexicalBlock(scope: !589, file: !361, line: 193, column: 9)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !361, line: 194, type: !4)
!610 = distinct !DILexicalBlock(scope: !611, file: !361, line: 194, column: 100)
!611 = distinct !DILexicalBlock(scope: !606, file: !361, line: 194, column: 66)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !361, line: 213, type: !4)
!613 = distinct !DILexicalBlock(scope: !589, file: !361, line: 213, column: 8)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !615, file: !361, line: 214, type: !4)
!615 = distinct !DILexicalBlock(scope: !589, file: !361, line: 214, column: 8)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !361, line: 215, type: !4)
!617 = distinct !DILexicalBlock(scope: !589, file: !361, line: 215, column: 8)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !361, line: 216, type: !4)
!619 = distinct !DILexicalBlock(scope: !589, file: !361, line: 216, column: 8)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !621, file: !361, line: 217, type: !4)
!621 = distinct !DILexicalBlock(scope: !589, file: !361, line: 217, column: 8)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !623, file: !361, line: 221, type: !4)
!623 = distinct !DILexicalBlock(scope: !589, file: !361, line: 221, column: 8)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !625, file: !361, line: 221, type: !4)
!625 = distinct !DILexicalBlock(scope: !626, file: !361, line: 221, column: 96)
!626 = distinct !DILexicalBlock(scope: !623, file: !361, line: 221, column: 62)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !628, file: !361, line: 222, type: !4)
!628 = distinct !DILexicalBlock(scope: !589, file: !361, line: 222, column: 8)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !630, file: !361, line: 222, type: !4)
!630 = distinct !DILexicalBlock(scope: !631, file: !361, line: 222, column: 96)
!631 = distinct !DILexicalBlock(scope: !628, file: !361, line: 222, column: 62)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !633, file: !361, line: 223, type: !4)
!633 = distinct !DILexicalBlock(scope: !589, file: !361, line: 223, column: 8)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !635, file: !361, line: 223, type: !4)
!635 = distinct !DILexicalBlock(scope: !636, file: !361, line: 223, column: 96)
!636 = distinct !DILexicalBlock(scope: !633, file: !361, line: 223, column: 62)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !638, file: !361, line: 224, type: !4)
!638 = distinct !DILexicalBlock(scope: !589, file: !361, line: 224, column: 8)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !640, file: !361, line: 224, type: !4)
!640 = distinct !DILexicalBlock(scope: !641, file: !361, line: 224, column: 96)
!641 = distinct !DILexicalBlock(scope: !638, file: !361, line: 224, column: 62)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !643, file: !361, line: 225, type: !4)
!643 = distinct !DILexicalBlock(scope: !589, file: !361, line: 225, column: 8)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !645, file: !361, line: 225, type: !4)
!645 = distinct !DILexicalBlock(scope: !646, file: !361, line: 225, column: 95)
!646 = distinct !DILexicalBlock(scope: !643, file: !361, line: 225, column: 61)
!647 = !DISubprogram(name: "range_hash", scope: !361, file: !361, line: 506, type: !648, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.rangeobject*)* @range_hash, variables: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!218, !359}
!650 = !{!651, !652, !653, !654, !655, !658, !660}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !647, file: !361, line: 506, type: !359)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !647, file: !361, line: 508, type: !4)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !647, file: !361, line: 509, type: !218)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !647, file: !361, line: 510, type: !43)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !656, file: !361, line: 527, type: !4)
!656 = distinct !DILexicalBlock(scope: !657, file: !361, line: 526, column: 10)
!657 = distinct !DILexicalBlock(scope: !647, file: !361, line: 520, column: 9)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !659, file: !361, line: 534, type: !4)
!659 = distinct !DILexicalBlock(scope: !656, file: !361, line: 534, column: 12)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !361, line: 548, type: !4)
!661 = distinct !DILexicalBlock(scope: !647, file: !361, line: 548, column: 8)
!662 = !DISubprogram(name: "range_richcompare", scope: !361, file: !361, line: 468, type: !271, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @range_richcompare, variables: !663)
!663 = !{!664, !665, !666, !667}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !662, file: !361, line: 468, type: !4)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !662, file: !361, line: 468, type: !4)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !662, file: !361, line: 468, type: !43)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !662, file: !361, line: 470, type: !43)
!668 = !DISubprogram(name: "range_equals", scope: !361, file: !361, line: 437, type: !669, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rangeobject*, %struct.rangeobject*)* @range_equals, variables: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!43, !359, !359}
!671 = !{!672, !673, !674, !675, !676}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r0", arg: 1, scope: !668, file: !361, line: 437, type: !359)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 2, scope: !668, file: !361, line: 437, type: !359)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !668, file: !361, line: 439, type: !43)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !668, file: !361, line: 440, type: !4)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !677, file: !361, line: 460, type: !4)
!677 = distinct !DILexicalBlock(scope: !668, file: !361, line: 460, column: 8)
!678 = !DISubprogram(name: "range_reverse", scope: !361, file: !361, line: 1164, type: !116, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @range_reverse, variables: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !695, !697, !699}
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !678, file: !361, line: 1164, type: !4)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !678, file: !361, line: 1166, type: !359)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !678, file: !361, line: 1167, type: !377)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !678, file: !361, line: 1168, type: !4)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !678, file: !361, line: 1168, type: !4)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !678, file: !361, line: 1168, type: !4)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !678, file: !361, line: 1168, type: !4)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstart", scope: !678, file: !361, line: 1169, type: !16)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstop", scope: !678, file: !361, line: 1169, type: !16)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstep", scope: !678, file: !361, line: 1169, type: !16)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_start", scope: !678, file: !361, line: 1169, type: !16)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_stop", scope: !678, file: !361, line: 1169, type: !16)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ulen", scope: !678, file: !361, line: 1170, type: !96)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !361, line: 1247, type: !4)
!694 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1247, column: 8)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !696, file: !361, line: 1252, type: !4)
!696 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1252, column: 8)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !698, file: !361, line: 1257, type: !4)
!698 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1257, column: 8)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !361, line: 1273, type: !4)
!700 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1273, column: 8)
!701 = !DISubprogram(name: "get_len_of_range", scope: !361, file: !361, line: 880, type: !702, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @get_len_of_range, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!96, !16, !16, !16}
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 1, scope: !701, file: !361, line: 880, type: !16)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 2, scope: !701, file: !361, line: 880, type: !16)
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !701, file: !361, line: 880, type: !16)
!708 = !DISubprogram(name: "fast_range_iter", scope: !361, file: !361, line: 908, type: !709, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, i64, i64)* @fast_range_iter, variables: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{!4, !16, !16, !16}
!711 = !{!712, !713, !714, !715, !716, !717}
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !708, file: !361, line: 908, type: !16)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !708, file: !361, line: 908, type: !16)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !708, file: !361, line: 908, type: !16)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !708, file: !361, line: 910, type: !386)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ulen", scope: !708, file: !361, line: 911, type: !96)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !718, file: !361, line: 918, type: !4)
!718 = distinct !DILexicalBlock(scope: !719, file: !361, line: 918, column: 12)
!719 = distinct !DILexicalBlock(scope: !720, file: !361, line: 917, column: 53)
!720 = distinct !DILexicalBlock(scope: !708, file: !361, line: 917, column: 9)
!721 = !DISubprogram(name: "range_reduce", scope: !361, file: !361, line: 637, type: !431, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_reduce, variables: !722)
!722 = !{!723, !724}
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !721, file: !361, line: 637, type: !359)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !721, file: !361, line: 637, type: !4)
!725 = !DISubprogram(name: "range_count", scope: !361, file: !361, line: 553, type: !431, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_count, variables: !726)
!726 = !{!727, !728, !729, !732}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !725, file: !361, line: 553, type: !359)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !725, file: !361, line: 553, type: !4)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !730, file: !361, line: 556, type: !43)
!730 = distinct !DILexicalBlock(scope: !731, file: !361, line: 555, column: 107)
!731 = distinct !DILexicalBlock(scope: !725, file: !361, line: 555, column: 9)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !733, file: !361, line: 564, type: !10)
!733 = distinct !DILexicalBlock(scope: !731, file: !361, line: 563, column: 12)
!734 = !DISubprogram(name: "range_index", scope: !361, file: !361, line: 573, type: !431, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_index, variables: !735)
!735 = !{!736, !737, !738, !739, !742, !745, !746}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !734, file: !361, line: 573, type: !359)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !734, file: !361, line: 573, type: !4)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "contains", scope: !734, file: !361, line: 575, type: !43)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !740, file: !361, line: 578, type: !10)
!740 = distinct !DILexicalBlock(scope: !741, file: !361, line: 577, column: 109)
!741 = distinct !DILexicalBlock(scope: !734, file: !361, line: 577, column: 9)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !743, file: !361, line: 590, type: !4)
!743 = distinct !DILexicalBlock(scope: !744, file: !361, line: 589, column: 19)
!744 = distinct !DILexicalBlock(scope: !734, file: !361, line: 589, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !743, file: !361, line: 590, type: !4)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !747, file: !361, line: 595, type: !4)
!747 = distinct !DILexicalBlock(scope: !743, file: !361, line: 595, column: 12)
!748 = !DISubprogram(name: "range_new", scope: !361, file: !361, line: 79, type: !749, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @range_new, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!4, !576, !4, !4}
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !765, !769, !771, !776, !780, !782, !784, !787, !789, !792, !794}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !748, file: !361, line: 79, type: !576)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !748, file: !361, line: 79, type: !4)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !748, file: !361, line: 79, type: !4)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !748, file: !361, line: 81, type: !359)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !748, file: !361, line: 82, type: !4)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !748, file: !361, line: 82, type: !4)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !748, file: !361, line: 82, type: !4)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !760, file: !361, line: 95, type: !4)
!760 = distinct !DILexicalBlock(scope: !761, file: !361, line: 95, column: 16)
!761 = distinct !DILexicalBlock(scope: !762, file: !361, line: 94, column: 21)
!762 = distinct !DILexicalBlock(scope: !763, file: !361, line: 94, column: 13)
!763 = distinct !DILexicalBlock(scope: !764, file: !361, line: 87, column: 34)
!764 = distinct !DILexicalBlock(scope: !748, file: !361, line: 87, column: 9)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !361, line: 100, type: !4)
!766 = distinct !DILexicalBlock(scope: !767, file: !361, line: 100, column: 16)
!767 = distinct !DILexicalBlock(scope: !768, file: !361, line: 99, column: 20)
!768 = distinct !DILexicalBlock(scope: !763, file: !361, line: 99, column: 13)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !770, file: !361, line: 101, type: !4)
!770 = distinct !DILexicalBlock(scope: !767, file: !361, line: 101, column: 16)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !772, file: !361, line: 116, type: !4)
!772 = distinct !DILexicalBlock(scope: !773, file: !361, line: 116, column: 16)
!773 = distinct !DILexicalBlock(scope: !774, file: !361, line: 115, column: 20)
!774 = distinct !DILexicalBlock(scope: !775, file: !361, line: 115, column: 13)
!775 = distinct !DILexicalBlock(scope: !764, file: !361, line: 105, column: 10)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !777, file: !361, line: 121, type: !4)
!777 = distinct !DILexicalBlock(scope: !778, file: !361, line: 121, column: 16)
!778 = distinct !DILexicalBlock(scope: !779, file: !361, line: 120, column: 20)
!779 = distinct !DILexicalBlock(scope: !775, file: !361, line: 120, column: 13)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !781, file: !361, line: 122, type: !4)
!781 = distinct !DILexicalBlock(scope: !778, file: !361, line: 122, column: 16)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !783, file: !361, line: 132, type: !4)
!783 = distinct !DILexicalBlock(scope: !748, file: !361, line: 132, column: 8)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !785, file: !361, line: 132, type: !4)
!785 = distinct !DILexicalBlock(scope: !786, file: !361, line: 132, column: 97)
!786 = distinct !DILexicalBlock(scope: !783, file: !361, line: 132, column: 63)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !788, file: !361, line: 133, type: !4)
!788 = distinct !DILexicalBlock(scope: !748, file: !361, line: 133, column: 8)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !790, file: !361, line: 133, type: !4)
!790 = distinct !DILexicalBlock(scope: !791, file: !361, line: 133, column: 96)
!791 = distinct !DILexicalBlock(scope: !788, file: !361, line: 133, column: 62)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !793, file: !361, line: 134, type: !4)
!793 = distinct !DILexicalBlock(scope: !748, file: !361, line: 134, column: 8)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !795, file: !361, line: 134, type: !4)
!795 = distinct !DILexicalBlock(scope: !796, file: !361, line: 134, column: 96)
!796 = distinct !DILexicalBlock(scope: !793, file: !361, line: 134, column: 62)
!797 = !DISubprogram(name: "validate_step", scope: !361, file: !361, line: 25, type: !116, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @validate_step, variables: !798)
!798 = !{!799, !800, !803, !808}
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 1, scope: !797, file: !361, line: 25, type: !4)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istep", scope: !801, file: !361, line: 33, type: !10)
!801 = distinct !DILexicalBlock(scope: !802, file: !361, line: 32, column: 15)
!802 = distinct !DILexicalBlock(scope: !797, file: !361, line: 32, column: 9)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !804, file: !361, line: 41, type: !4)
!804 = distinct !DILexicalBlock(scope: !805, file: !361, line: 41, column: 16)
!805 = distinct !DILexicalBlock(scope: !806, file: !361, line: 38, column: 30)
!806 = distinct !DILexicalBlock(scope: !807, file: !361, line: 38, column: 18)
!807 = distinct !DILexicalBlock(scope: !801, file: !361, line: 34, column: 13)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !361, line: 41, type: !4)
!809 = distinct !DILexicalBlock(scope: !810, file: !361, line: 41, column: 111)
!810 = distinct !DILexicalBlock(scope: !811, file: !361, line: 41, column: 85)
!811 = distinct !DILexicalBlock(scope: !804, file: !361, line: 41, column: 62)
!812 = !DISubprogram(name: "rangeiter_next", scope: !361, file: !361, line: 756, type: !813, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_next, variables: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!4, !386}
!815 = !{!816}
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !812, file: !361, line: 756, type: !386)
!817 = !DISubprogram(name: "rangeiter_len", scope: !361, file: !361, line: 767, type: !813, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_len, variables: !818)
!818 = !{!819}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !817, file: !361, line: 767, type: !386)
!820 = !DISubprogram(name: "rangeiter_reduce", scope: !361, file: !361, line: 776, type: !813, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_reduce, variables: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !829, !832, !834, !837, !839}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !820, file: !361, line: 776, type: !386)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !820, file: !361, line: 778, type: !4)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !820, file: !361, line: 778, type: !4)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !820, file: !361, line: 778, type: !4)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !820, file: !361, line: 779, type: !4)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !828, file: !361, line: 798, type: !4)
!828 = distinct !DILexicalBlock(scope: !820, file: !361, line: 798, column: 8)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !830, file: !361, line: 798, type: !4)
!830 = distinct !DILexicalBlock(scope: !831, file: !361, line: 798, column: 97)
!831 = distinct !DILexicalBlock(scope: !828, file: !361, line: 798, column: 63)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !833, file: !361, line: 799, type: !4)
!833 = distinct !DILexicalBlock(scope: !820, file: !361, line: 799, column: 8)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !361, line: 799, type: !4)
!835 = distinct !DILexicalBlock(scope: !836, file: !361, line: 799, column: 96)
!836 = distinct !DILexicalBlock(scope: !833, file: !361, line: 799, column: 62)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !838, file: !361, line: 800, type: !4)
!838 = distinct !DILexicalBlock(scope: !820, file: !361, line: 800, column: 8)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !840, file: !361, line: 800, type: !4)
!840 = distinct !DILexicalBlock(scope: !841, file: !361, line: 800, column: 96)
!841 = distinct !DILexicalBlock(scope: !838, file: !361, line: 800, column: 62)
!842 = !DISubprogram(name: "rangeiter_setstate", scope: !361, file: !361, line: 805, type: !843, isLocal: true, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*, %struct._object*)* @rangeiter_setstate, variables: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!4, !386, !4}
!845 = !{!846, !847, !848}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !842, file: !361, line: 805, type: !386)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !842, file: !361, line: 805, type: !4)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !842, file: !361, line: 807, type: !16)
!849 = !DISubprogram(name: "rangeiter_new", scope: !361, file: !361, line: 929, type: !749, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rangeiter_new, variables: !850)
!850 = !{!851, !852, !853, !854, !855, !856}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !849, file: !361, line: 929, type: !576)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !849, file: !361, line: 929, type: !4)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !849, file: !361, line: 929, type: !4)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !849, file: !361, line: 931, type: !16)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !849, file: !361, line: 931, type: !16)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !849, file: !361, line: 931, type: !16)
!857 = !DISubprogram(name: "longrangeiter_dealloc", scope: !361, file: !361, line: 1028, type: !858, isLocal: true, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.longrangeiterobject*)* @longrangeiter_dealloc, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !377}
!860 = !{!861, !862, !864, !867, !869, !872, !874, !877, !879}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !857, file: !361, line: 1028, type: !377)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !863, file: !361, line: 1030, type: !4)
!863 = distinct !DILexicalBlock(scope: !857, file: !361, line: 1030, column: 8)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !361, line: 1030, type: !4)
!865 = distinct !DILexicalBlock(scope: !866, file: !361, line: 1030, column: 100)
!866 = distinct !DILexicalBlock(scope: !863, file: !361, line: 1030, column: 66)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !868, file: !361, line: 1031, type: !4)
!868 = distinct !DILexicalBlock(scope: !857, file: !361, line: 1031, column: 8)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !870, file: !361, line: 1031, type: !4)
!870 = distinct !DILexicalBlock(scope: !871, file: !361, line: 1031, column: 100)
!871 = distinct !DILexicalBlock(scope: !868, file: !361, line: 1031, column: 66)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !873, file: !361, line: 1032, type: !4)
!873 = distinct !DILexicalBlock(scope: !857, file: !361, line: 1032, column: 8)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !361, line: 1032, type: !4)
!875 = distinct !DILexicalBlock(scope: !876, file: !361, line: 1032, column: 99)
!876 = distinct !DILexicalBlock(scope: !873, file: !361, line: 1032, column: 65)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !878, file: !361, line: 1033, type: !4)
!878 = distinct !DILexicalBlock(scope: !857, file: !361, line: 1033, column: 8)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !880, file: !361, line: 1033, type: !4)
!880 = distinct !DILexicalBlock(scope: !881, file: !361, line: 1033, column: 98)
!881 = distinct !DILexicalBlock(scope: !878, file: !361, line: 1033, column: 64)
!882 = !DISubprogram(name: "longrangeiter_next", scope: !361, file: !361, line: 1038, type: !883, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*)* @longrangeiter_next, variables: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!4, !377}
!885 = !{!886, !887, !888, !889, !890, !891, !893, !897, !899, !903}
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !882, file: !361, line: 1038, type: !377)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !882, file: !361, line: 1040, type: !4)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !882, file: !361, line: 1040, type: !4)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_index", scope: !882, file: !361, line: 1040, type: !4)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !882, file: !361, line: 1040, type: !4)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !892, file: !361, line: 1049, type: !4)
!892 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1049, column: 8)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !894, file: !361, line: 1055, type: !4)
!894 = distinct !DILexicalBlock(scope: !895, file: !361, line: 1055, column: 12)
!895 = distinct !DILexicalBlock(scope: !896, file: !361, line: 1054, column: 19)
!896 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1054, column: 9)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !898, file: !361, line: 1060, type: !4)
!898 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1060, column: 8)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !900, file: !361, line: 1062, type: !4)
!900 = distinct !DILexicalBlock(scope: !901, file: !361, line: 1062, column: 12)
!901 = distinct !DILexicalBlock(scope: !902, file: !361, line: 1061, column: 17)
!902 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1061, column: 9)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !904, file: !361, line: 1066, type: !4)
!904 = distinct !DILexicalBlock(scope: !905, file: !361, line: 1066, column: 12)
!905 = distinct !DILexicalBlock(scope: !902, file: !361, line: 1065, column: 10)
!906 = !DISubprogram(name: "longrangeiter_len", scope: !361, file: !361, line: 952, type: !907, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_len, variables: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!4, !377, !4}
!909 = !{!910, !911}
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !906, file: !361, line: 952, type: !377)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "no_args", arg: 2, scope: !906, file: !361, line: 952, type: !4)
!912 = !DISubprogram(name: "longrangeiter_reduce", scope: !361, file: !361, line: 958, type: !883, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*)* @longrangeiter_reduce, variables: !913)
!913 = !{!914, !915, !916, !917, !918, !920, !924, !926}
!914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !912, file: !361, line: 958, type: !377)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !912, file: !361, line: 960, type: !4)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !912, file: !361, line: 960, type: !4)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !912, file: !361, line: 961, type: !4)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !919, file: !361, line: 968, type: !4)
!919 = distinct !DILexicalBlock(scope: !912, file: !361, line: 968, column: 8)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !921, file: !361, line: 976, type: !4)
!921 = distinct !DILexicalBlock(scope: !922, file: !361, line: 976, column: 12)
!922 = distinct !DILexicalBlock(scope: !923, file: !361, line: 975, column: 30)
!923 = distinct !DILexicalBlock(scope: !912, file: !361, line: 975, column: 9)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !925, file: !361, line: 977, type: !4)
!925 = distinct !DILexicalBlock(scope: !922, file: !361, line: 977, column: 12)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !927, file: !361, line: 978, type: !4)
!927 = distinct !DILexicalBlock(scope: !922, file: !361, line: 978, column: 12)
!928 = !DISubprogram(name: "longrangeiter_setstate", scope: !361, file: !361, line: 987, type: !907, isLocal: true, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_setstate, variables: !929)
!929 = !{!930, !931, !932, !933, !934, !938, !942, !944, !946}
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !928, file: !361, line: 987, type: !377)
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !928, file: !361, line: 987, type: !4)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !928, file: !361, line: 989, type: !43)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !928, file: !361, line: 992, type: !4)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !935, file: !361, line: 997, type: !4)
!935 = distinct !DILexicalBlock(scope: !936, file: !361, line: 997, column: 12)
!936 = distinct !DILexicalBlock(scope: !937, file: !361, line: 996, column: 18)
!937 = distinct !DILexicalBlock(scope: !928, file: !361, line: 996, column: 9)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !939, file: !361, line: 997, type: !4)
!939 = distinct !DILexicalBlock(scope: !940, file: !361, line: 997, column: 115)
!940 = distinct !DILexicalBlock(scope: !941, file: !361, line: 997, column: 85)
!941 = distinct !DILexicalBlock(scope: !935, file: !361, line: 997, column: 62)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !943, file: !361, line: 1001, type: !4)
!943 = distinct !DILexicalBlock(scope: !928, file: !361, line: 1001, column: 8)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !945, file: !361, line: 1011, type: !4)
!945 = distinct !DILexicalBlock(scope: !928, file: !361, line: 1011, column: 8)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !947, file: !361, line: 1011, type: !4)
!947 = distinct !DILexicalBlock(scope: !948, file: !361, line: 1011, column: 111)
!948 = distinct !DILexicalBlock(scope: !949, file: !361, line: 1011, column: 81)
!949 = distinct !DILexicalBlock(scope: !945, file: !361, line: 1011, column: 58)
!950 = !DISubprogram(name: "range_iter", scope: !361, file: !361, line: 1106, type: !116, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @range_iter, variables: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959}
!952 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !950, file: !361, line: 1106, type: !4)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !950, file: !361, line: 1108, type: !359)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !950, file: !361, line: 1109, type: !377)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstart", scope: !950, file: !361, line: 1110, type: !16)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstop", scope: !950, file: !361, line: 1110, type: !16)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstep", scope: !950, file: !361, line: 1110, type: !16)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "int_it", scope: !950, file: !361, line: 1111, type: !4)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !960, file: !361, line: 1159, type: !4)
!960 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1159, column: 8)
!961 = !{!962, !963, !964, !965, !966, !967, !971, !976, !980, !984, !988, !993, !995, !999, !1003, !1007}
!962 = !DIGlobalVariable(name: "PyRange_Type", scope: !0, file: !361, line: 699, type: !577, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyRange_Type)
!963 = !DIGlobalVariable(name: "PyRangeIter_Type", scope: !0, file: !361, line: 834, type: !577, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyRangeIter_Type)
!964 = !DIGlobalVariable(name: "PyLongRangeIter_Type", scope: !0, file: !361, line: 1072, type: !577, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyLongRangeIter_Type)
!965 = !DIGlobalVariable(name: "range_as_sequence", scope: !0, file: !361, line: 604, type: !172, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @range_as_sequence)
!966 = !DIGlobalVariable(name: "range_as_mapping", scope: !0, file: !361, line: 665, type: !203, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @range_as_mapping)
!967 = !DIGlobalVariable(name: "range_doc", scope: !0, file: !361, line: 138, type: !968, isLocal: true, isDefinition: true, variable: [137 x i8]* @range_doc)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1096, align: 8, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 137)
!971 = !DIGlobalVariable(name: "range_methods", scope: !0, file: !361, line: 684, type: !972, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @range_methods)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 1280, align: 64, elements: !974)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!974 = !{!975}
!975 = !DISubrange(count: 5)
!976 = !DIGlobalVariable(name: "reverse_doc", scope: !0, file: !361, line: 674, type: !977, isLocal: true, isDefinition: true, variable: [27 x i8]* @reverse_doc)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 216, align: 8, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 27)
!980 = !DIGlobalVariable(name: "count_doc", scope: !0, file: !361, line: 677, type: !981, isLocal: true, isDefinition: true, variable: [77 x i8]* @count_doc)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 616, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 77)
!984 = !DIGlobalVariable(name: "index_doc", scope: !0, file: !361, line: 680, type: !985, isLocal: true, isDefinition: true, variable: [125 x i8]* @index_doc)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1000, align: 8, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 125)
!988 = !DIGlobalVariable(name: "range_members", scope: !0, file: !361, line: 692, type: !989, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @range_members)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 1280, align: 64, elements: !991)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!991 = !{!992}
!992 = !DISubrange(count: 4)
!993 = !DIGlobalVariable(name: "rangeiter_methods", scope: !0, file: !361, line: 822, type: !994, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @rangeiter_methods)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 1024, align: 64, elements: !991)
!995 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !361, line: 772, type: !996, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 440, align: 8, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 55)
!999 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !361, line: 819, type: !1000, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 312, align: 8, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 39)
!1003 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !361, line: 820, type: !1004, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, align: 8, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 38)
!1007 = !DIGlobalVariable(name: "longrangeiter_methods", scope: !0, file: !361, line: 1017, type: !994, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @longrangeiter_methods)
!1008 = !{i32 2, !"Dwarf Version", i32 4}
!1009 = !{i32 2, !"Debug Info Version", i32 3}
!1010 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"any pointer", !1013, i64 0}
!1013 = !{!"omnipotent char", !1014, i64 0}
!1014 = !{!"Simple C/C++ TBAA"}
!1015 = !DIExpression()
!1016 = !DILocation(line: 145, column: 28, scope: !396)
!1017 = !DILocation(line: 147, column: 5, scope: !396)
!1018 = !DILocation(line: 147, column: 10, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !402, file: !361, discriminator: 1)
!1020 = !DILocation(line: 147, column: 20, scope: !402)
!1021 = !DILocation(line: 147, column: 50, scope: !402)
!1022 = !DILocation(line: 147, column: 53, scope: !402)
!1023 = !{!1024, !1012, i64 16}
!1024 = !{!"", !1025, i64 0, !1012, i64 16, !1012, i64 24, !1012, i64 32, !1012, i64 40}
!1025 = !{!"_object", !1026, i64 0, !1012, i64 8}
!1026 = !{!"long", !1013, i64 0}
!1027 = !DILocation(line: 147, column: 69, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !402, file: !361, line: 147, column: 66)
!1029 = !DILocation(line: 147, column: 86, scope: !1028)
!1030 = !DILocation(line: 147, column: 66, scope: !1028)
!1031 = !{!1025, !1026, i64 0}
!1032 = !DILocation(line: 147, column: 96, scope: !1028)
!1033 = !DILocation(line: 147, column: 66, scope: !402)
!1034 = !DILocation(line: 147, column: 66, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !402, file: !361, discriminator: 2)
!1036 = !DILocation(line: 147, column: 127, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1028, file: !361, discriminator: 3)
!1038 = !DILocation(line: 147, column: 145, scope: !1028)
!1039 = !{!1025, !1012, i64 8}
!1040 = !DILocation(line: 147, column: 155, scope: !1028)
!1041 = !{!1042, !1012, i64 48}
!1042 = !{!"_typeobject", !1043, i64 0, !1012, i64 24, !1026, i64 32, !1026, i64 40, !1012, i64 48, !1012, i64 56, !1012, i64 64, !1012, i64 72, !1012, i64 80, !1012, i64 88, !1012, i64 96, !1012, i64 104, !1012, i64 112, !1012, i64 120, !1012, i64 128, !1012, i64 136, !1012, i64 144, !1012, i64 152, !1012, i64 160, !1026, i64 168, !1012, i64 176, !1012, i64 184, !1012, i64 192, !1012, i64 200, !1026, i64 208, !1012, i64 216, !1012, i64 224, !1012, i64 232, !1012, i64 240, !1012, i64 248, !1012, i64 256, !1012, i64 264, !1012, i64 272, !1012, i64 280, !1026, i64 288, !1012, i64 296, !1012, i64 304, !1012, i64 312, !1012, i64 320, !1012, i64 328, !1012, i64 336, !1012, i64 344, !1012, i64 352, !1012, i64 360, !1012, i64 368, !1012, i64 376, !1044, i64 384, !1012, i64 392}
!1043 = !{!"", !1025, i64 0, !1026, i64 16}
!1044 = !{!"int", !1013, i64 0}
!1045 = !DILocation(line: 147, column: 180, scope: !1028)
!1046 = !DILocation(line: 147, column: 111, scope: !1028)
!1047 = !DILocation(line: 147, column: 199, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !396, file: !361, discriminator: 4)
!1049 = !DILocation(line: 147, column: 199, scope: !402)
!1050 = !DILocation(line: 148, column: 5, scope: !396)
!1051 = !DILocation(line: 148, column: 10, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !404, file: !361, discriminator: 1)
!1053 = !DILocation(line: 148, column: 20, scope: !404)
!1054 = !DILocation(line: 148, column: 50, scope: !404)
!1055 = !DILocation(line: 148, column: 53, scope: !404)
!1056 = !{!1024, !1012, i64 24}
!1057 = !DILocation(line: 148, column: 68, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !404, file: !361, line: 148, column: 65)
!1059 = !DILocation(line: 148, column: 85, scope: !1058)
!1060 = !DILocation(line: 148, column: 65, scope: !1058)
!1061 = !DILocation(line: 148, column: 95, scope: !1058)
!1062 = !DILocation(line: 148, column: 65, scope: !404)
!1063 = !DILocation(line: 148, column: 65, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !404, file: !361, discriminator: 2)
!1065 = !DILocation(line: 148, column: 126, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1058, file: !361, discriminator: 3)
!1067 = !DILocation(line: 148, column: 144, scope: !1058)
!1068 = !DILocation(line: 148, column: 154, scope: !1058)
!1069 = !DILocation(line: 148, column: 179, scope: !1058)
!1070 = !DILocation(line: 148, column: 110, scope: !1058)
!1071 = !DILocation(line: 148, column: 198, scope: !1048)
!1072 = !DILocation(line: 148, column: 198, scope: !404)
!1073 = !DILocation(line: 149, column: 5, scope: !396)
!1074 = !DILocation(line: 149, column: 10, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !406, file: !361, discriminator: 1)
!1076 = !DILocation(line: 149, column: 20, scope: !406)
!1077 = !DILocation(line: 149, column: 50, scope: !406)
!1078 = !DILocation(line: 149, column: 53, scope: !406)
!1079 = !{!1024, !1012, i64 32}
!1080 = !DILocation(line: 149, column: 68, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !406, file: !361, line: 149, column: 65)
!1082 = !DILocation(line: 149, column: 85, scope: !1081)
!1083 = !DILocation(line: 149, column: 65, scope: !1081)
!1084 = !DILocation(line: 149, column: 95, scope: !1081)
!1085 = !DILocation(line: 149, column: 65, scope: !406)
!1086 = !DILocation(line: 149, column: 65, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !406, file: !361, discriminator: 2)
!1088 = !DILocation(line: 149, column: 126, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1081, file: !361, discriminator: 3)
!1090 = !DILocation(line: 149, column: 144, scope: !1081)
!1091 = !DILocation(line: 149, column: 154, scope: !1081)
!1092 = !DILocation(line: 149, column: 179, scope: !1081)
!1093 = !DILocation(line: 149, column: 110, scope: !1081)
!1094 = !DILocation(line: 149, column: 198, scope: !1048)
!1095 = !DILocation(line: 149, column: 198, scope: !406)
!1096 = !DILocation(line: 150, column: 5, scope: !396)
!1097 = !DILocation(line: 150, column: 10, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !408, file: !361, discriminator: 1)
!1099 = !DILocation(line: 150, column: 20, scope: !408)
!1100 = !DILocation(line: 150, column: 50, scope: !408)
!1101 = !DILocation(line: 150, column: 53, scope: !408)
!1102 = !{!1024, !1012, i64 40}
!1103 = !DILocation(line: 150, column: 70, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !408, file: !361, line: 150, column: 67)
!1105 = !DILocation(line: 150, column: 87, scope: !1104)
!1106 = !DILocation(line: 150, column: 67, scope: !1104)
!1107 = !DILocation(line: 150, column: 97, scope: !1104)
!1108 = !DILocation(line: 150, column: 67, scope: !408)
!1109 = !DILocation(line: 150, column: 67, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !408, file: !361, discriminator: 2)
!1111 = !DILocation(line: 150, column: 128, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1104, file: !361, discriminator: 3)
!1113 = !DILocation(line: 150, column: 146, scope: !1104)
!1114 = !DILocation(line: 150, column: 156, scope: !1104)
!1115 = !DILocation(line: 150, column: 181, scope: !1104)
!1116 = !DILocation(line: 150, column: 112, scope: !1104)
!1117 = !DILocation(line: 150, column: 200, scope: !1048)
!1118 = !DILocation(line: 150, column: 200, scope: !408)
!1119 = !DILocation(line: 151, column: 19, scope: !396)
!1120 = !DILocation(line: 151, column: 5, scope: !396)
!1121 = !DILocation(line: 152, column: 1, scope: !396)
!1122 = !DILocation(line: 616, column: 25, scope: !409)
!1123 = !DILocation(line: 618, column: 5, scope: !409)
!1124 = !DILocation(line: 618, column: 16, scope: !409)
!1125 = !DILocation(line: 623, column: 32, scope: !409)
!1126 = !DILocation(line: 623, column: 35, scope: !409)
!1127 = !DILocation(line: 623, column: 13, scope: !409)
!1128 = !DILocation(line: 623, column: 11, scope: !409)
!1129 = !{!1026, !1026, i64 0}
!1130 = !DILocation(line: 624, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !409, file: !361, line: 624, column: 9)
!1132 = !DILocation(line: 624, column: 15, scope: !1131)
!1133 = !DILocation(line: 624, column: 20, scope: !1131)
!1134 = !DILocation(line: 624, column: 24, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1131, file: !361, discriminator: 1)
!1136 = !DILocation(line: 624, column: 30, scope: !1131)
!1137 = !DILocation(line: 624, column: 36, scope: !1131)
!1138 = !DILocation(line: 624, column: 39, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1131, file: !361, discriminator: 2)
!1140 = !DILocation(line: 624, column: 9, scope: !409)
!1141 = !DILocation(line: 625, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1131, file: !361, line: 624, column: 58)
!1143 = !DILocation(line: 626, column: 5, scope: !1142)
!1144 = !DILocation(line: 628, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !409, file: !361, line: 628, column: 9)
!1146 = !DILocation(line: 628, column: 15, scope: !1145)
!1147 = !DILocation(line: 628, column: 9, scope: !409)
!1148 = !DILocation(line: 629, column: 54, scope: !1145)
!1149 = !DILocation(line: 629, column: 57, scope: !1145)
!1150 = !DILocation(line: 629, column: 64, scope: !1145)
!1151 = !DILocation(line: 629, column: 67, scope: !1145)
!1152 = !DILocation(line: 629, column: 16, scope: !1145)
!1153 = !DILocation(line: 629, column: 9, scope: !1145)
!1154 = !DILocation(line: 632, column: 37, scope: !1145)
!1155 = !DILocation(line: 632, column: 40, scope: !1145)
!1156 = !DILocation(line: 632, column: 47, scope: !1145)
!1157 = !DILocation(line: 632, column: 50, scope: !1145)
!1158 = !DILocation(line: 632, column: 56, scope: !1145)
!1159 = !DILocation(line: 632, column: 59, scope: !1145)
!1160 = !DILocation(line: 631, column: 16, scope: !1145)
!1161 = !DILocation(line: 631, column: 9, scope: !1145)
!1162 = !DILocation(line: 633, column: 1, scope: !409)
!1163 = !DILocation(line: 506, column: 25, scope: !647)
!1164 = !DILocation(line: 508, column: 5, scope: !647)
!1165 = !DILocation(line: 508, column: 15, scope: !647)
!1166 = !DILocation(line: 509, column: 5, scope: !647)
!1167 = !DILocation(line: 509, column: 15, scope: !647)
!1168 = !DILocation(line: 510, column: 5, scope: !647)
!1169 = !DILocation(line: 510, column: 9, scope: !647)
!1170 = !DILocation(line: 512, column: 9, scope: !647)
!1171 = !DILocation(line: 512, column: 7, scope: !647)
!1172 = !DILocation(line: 513, column: 10, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !647, file: !361, line: 513, column: 9)
!1174 = !DILocation(line: 513, column: 9, scope: !647)
!1175 = !DILocation(line: 514, column: 9, scope: !1173)
!1176 = !DILocation(line: 515, column: 21, scope: !647)
!1177 = !DILocation(line: 515, column: 24, scope: !647)
!1178 = !DILocation(line: 515, column: 34, scope: !647)
!1179 = !DILocation(line: 515, column: 43, scope: !647)
!1180 = !DILocation(line: 516, column: 43, scope: !647)
!1181 = !DILocation(line: 516, column: 46, scope: !647)
!1182 = !DILocation(line: 516, column: 25, scope: !647)
!1183 = !DILocation(line: 516, column: 7, scope: !647)
!1184 = !DILocation(line: 516, column: 30, scope: !647)
!1185 = !DILocation(line: 516, column: 6, scope: !647)
!1186 = !DILocation(line: 516, column: 41, scope: !647)
!1187 = !DILocation(line: 517, column: 31, scope: !647)
!1188 = !DILocation(line: 517, column: 34, scope: !647)
!1189 = !DILocation(line: 517, column: 18, scope: !647)
!1190 = !DILocation(line: 517, column: 16, scope: !647)
!1191 = !{!1044, !1044, i64 0}
!1192 = !DILocation(line: 518, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !647, file: !361, line: 518, column: 9)
!1194 = !DILocation(line: 518, column: 20, scope: !1193)
!1195 = !DILocation(line: 518, column: 9, scope: !647)
!1196 = !DILocation(line: 519, column: 9, scope: !1193)
!1197 = !DILocation(line: 520, column: 9, scope: !657)
!1198 = !DILocation(line: 520, column: 20, scope: !657)
!1199 = !DILocation(line: 520, column: 9, scope: !647)
!1200 = !DILocation(line: 521, column: 55, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !657, file: !361, line: 520, column: 26)
!1202 = !DILocation(line: 522, column: 55, scope: !1201)
!1203 = !DILocation(line: 523, column: 29, scope: !1201)
!1204 = !DILocation(line: 523, column: 11, scope: !1201)
!1205 = !DILocation(line: 523, column: 34, scope: !1201)
!1206 = !DILocation(line: 523, column: 10, scope: !1201)
!1207 = !DILocation(line: 523, column: 45, scope: !1201)
!1208 = !DILocation(line: 524, column: 29, scope: !1201)
!1209 = !DILocation(line: 524, column: 11, scope: !1201)
!1210 = !DILocation(line: 524, column: 34, scope: !1201)
!1211 = !DILocation(line: 524, column: 10, scope: !1201)
!1212 = !DILocation(line: 524, column: 45, scope: !1201)
!1213 = !DILocation(line: 525, column: 5, scope: !1201)
!1214 = !DILocation(line: 527, column: 9, scope: !656)
!1215 = !DILocation(line: 527, column: 19, scope: !656)
!1216 = !DILocation(line: 528, column: 25, scope: !656)
!1217 = !DILocation(line: 528, column: 28, scope: !656)
!1218 = !DILocation(line: 528, column: 37, scope: !656)
!1219 = !DILocation(line: 528, column: 46, scope: !656)
!1220 = !DILocation(line: 529, column: 47, scope: !656)
!1221 = !DILocation(line: 529, column: 50, scope: !656)
!1222 = !DILocation(line: 529, column: 29, scope: !656)
!1223 = !DILocation(line: 529, column: 11, scope: !656)
!1224 = !DILocation(line: 529, column: 34, scope: !656)
!1225 = !DILocation(line: 529, column: 10, scope: !656)
!1226 = !DILocation(line: 529, column: 45, scope: !656)
!1227 = !DILocation(line: 530, column: 15, scope: !656)
!1228 = !DILocation(line: 530, column: 13, scope: !656)
!1229 = !DILocation(line: 531, column: 14, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !656, file: !361, line: 531, column: 13)
!1231 = !DILocation(line: 531, column: 13, scope: !656)
!1232 = !DILocation(line: 532, column: 13, scope: !1230)
!1233 = !DILocation(line: 533, column: 47, scope: !656)
!1234 = !DILocation(line: 533, column: 50, scope: !656)
!1235 = !DILocation(line: 533, column: 58, scope: !656)
!1236 = !DILocation(line: 533, column: 22, scope: !656)
!1237 = !DILocation(line: 533, column: 20, scope: !656)
!1238 = !DILocation(line: 534, column: 9, scope: !656)
!1239 = !DILocation(line: 534, column: 14, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !659, file: !361, discriminator: 1)
!1241 = !DILocation(line: 534, column: 24, scope: !659)
!1242 = !DILocation(line: 534, column: 54, scope: !659)
!1243 = !DILocation(line: 534, column: 68, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !659, file: !361, line: 534, column: 65)
!1245 = !DILocation(line: 534, column: 85, scope: !1244)
!1246 = !DILocation(line: 534, column: 65, scope: !1244)
!1247 = !DILocation(line: 534, column: 95, scope: !1244)
!1248 = !DILocation(line: 534, column: 65, scope: !659)
!1249 = !DILocation(line: 534, column: 65, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !659, file: !361, discriminator: 2)
!1251 = !DILocation(line: 534, column: 126, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1244, file: !361, discriminator: 3)
!1253 = !DILocation(line: 534, column: 144, scope: !1244)
!1254 = !DILocation(line: 534, column: 154, scope: !1244)
!1255 = !DILocation(line: 534, column: 179, scope: !1244)
!1256 = !DILocation(line: 534, column: 110, scope: !1244)
!1257 = !DILocation(line: 534, column: 198, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !656, file: !361, discriminator: 4)
!1259 = !DILocation(line: 534, column: 198, scope: !659)
!1260 = !DILocation(line: 534, column: 198, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !659, file: !361, discriminator: 5)
!1262 = !DILocation(line: 535, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !656, file: !361, line: 535, column: 13)
!1264 = !DILocation(line: 535, column: 24, scope: !1263)
!1265 = !DILocation(line: 535, column: 13, scope: !656)
!1266 = !DILocation(line: 536, column: 13, scope: !1263)
!1267 = !DILocation(line: 537, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !656, file: !361, line: 537, column: 13)
!1269 = !DILocation(line: 537, column: 24, scope: !1268)
!1270 = !DILocation(line: 537, column: 13, scope: !656)
!1271 = !DILocation(line: 538, column: 59, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !361, line: 537, column: 30)
!1273 = !DILocation(line: 539, column: 33, scope: !1272)
!1274 = !DILocation(line: 539, column: 15, scope: !1272)
!1275 = !DILocation(line: 539, column: 38, scope: !1272)
!1276 = !DILocation(line: 539, column: 14, scope: !1272)
!1277 = !DILocation(line: 539, column: 49, scope: !1272)
!1278 = !DILocation(line: 540, column: 9, scope: !1272)
!1279 = !DILocation(line: 542, column: 29, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1268, file: !361, line: 541, column: 14)
!1281 = !DILocation(line: 542, column: 32, scope: !1280)
!1282 = !DILocation(line: 542, column: 40, scope: !1280)
!1283 = !DILocation(line: 542, column: 49, scope: !1280)
!1284 = !DILocation(line: 543, column: 51, scope: !1280)
!1285 = !DILocation(line: 543, column: 54, scope: !1280)
!1286 = !DILocation(line: 543, column: 33, scope: !1280)
!1287 = !DILocation(line: 543, column: 15, scope: !1280)
!1288 = !DILocation(line: 543, column: 38, scope: !1280)
!1289 = !DILocation(line: 543, column: 14, scope: !1280)
!1290 = !DILocation(line: 543, column: 49, scope: !1280)
!1291 = !DILocation(line: 545, column: 5, scope: !657)
!1292 = !DILocation(line: 545, column: 5, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !657, file: !361, discriminator: 1)
!1294 = !DILocation(line: 546, column: 28, scope: !647)
!1295 = !DILocation(line: 546, column: 14, scope: !647)
!1296 = !DILocation(line: 546, column: 12, scope: !647)
!1297 = !DILocation(line: 546, column: 5, scope: !647)
!1298 = !DILocation(line: 548, column: 5, scope: !647)
!1299 = !DILocation(line: 548, column: 10, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !661, file: !361, discriminator: 1)
!1301 = !DILocation(line: 548, column: 20, scope: !661)
!1302 = !DILocation(line: 548, column: 50, scope: !661)
!1303 = !DILocation(line: 548, column: 62, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !661, file: !361, line: 548, column: 59)
!1305 = !DILocation(line: 548, column: 79, scope: !1304)
!1306 = !DILocation(line: 548, column: 59, scope: !1304)
!1307 = !DILocation(line: 548, column: 89, scope: !1304)
!1308 = !DILocation(line: 548, column: 59, scope: !661)
!1309 = !DILocation(line: 548, column: 59, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !661, file: !361, discriminator: 2)
!1311 = !DILocation(line: 548, column: 120, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1304, file: !361, discriminator: 3)
!1313 = !DILocation(line: 548, column: 138, scope: !1304)
!1314 = !DILocation(line: 548, column: 148, scope: !1304)
!1315 = !DILocation(line: 548, column: 173, scope: !1304)
!1316 = !DILocation(line: 548, column: 104, scope: !1304)
!1317 = !DILocation(line: 548, column: 192, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !647, file: !361, discriminator: 4)
!1319 = !DILocation(line: 548, column: 192, scope: !661)
!1320 = !DILocation(line: 548, column: 192, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !661, file: !361, discriminator: 5)
!1322 = !DILocation(line: 549, column: 12, scope: !647)
!1323 = !DILocation(line: 549, column: 5, scope: !647)
!1324 = !DILocation(line: 550, column: 1, scope: !647)
!1325 = !DILocation(line: 468, column: 29, scope: !662)
!1326 = !DILocation(line: 468, column: 45, scope: !662)
!1327 = !DILocation(line: 468, column: 56, scope: !662)
!1328 = !DILocation(line: 470, column: 5, scope: !662)
!1329 = !DILocation(line: 470, column: 9, scope: !662)
!1330 = !DILocation(line: 472, column: 25, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !662, file: !361, line: 472, column: 9)
!1332 = !DILocation(line: 472, column: 34, scope: !1331)
!1333 = !DILocation(line: 472, column: 43, scope: !1331)
!1334 = !DILocation(line: 472, column: 9, scope: !662)
!1335 = !DILocation(line: 473, column: 72, scope: !1331)
!1336 = !DILocation(line: 473, column: 9, scope: !1331)
!1337 = !DILocation(line: 474, column: 13, scope: !662)
!1338 = !DILocation(line: 477, column: 45, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !662, file: !361, line: 474, column: 17)
!1340 = !DILocation(line: 477, column: 31, scope: !1339)
!1341 = !DILocation(line: 477, column: 65, scope: !1339)
!1342 = !DILocation(line: 477, column: 51, scope: !1339)
!1343 = !DILocation(line: 477, column: 18, scope: !1339)
!1344 = !DILocation(line: 477, column: 16, scope: !1339)
!1345 = !DILocation(line: 478, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !361, line: 478, column: 13)
!1347 = !DILocation(line: 478, column: 20, scope: !1346)
!1348 = !DILocation(line: 478, column: 13, scope: !1339)
!1349 = !DILocation(line: 479, column: 13, scope: !1346)
!1350 = !DILocation(line: 480, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1339, file: !361, line: 480, column: 13)
!1352 = !DILocation(line: 480, column: 16, scope: !1351)
!1353 = !DILocation(line: 480, column: 13, scope: !1339)
!1354 = !DILocation(line: 481, column: 23, scope: !1351)
!1355 = !DILocation(line: 481, column: 22, scope: !1351)
!1356 = !DILocation(line: 481, column: 20, scope: !1351)
!1357 = !DILocation(line: 481, column: 13, scope: !1351)
!1358 = !DILocation(line: 482, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1339, file: !361, line: 482, column: 13)
!1360 = !DILocation(line: 482, column: 13, scope: !1339)
!1361 = !DILocation(line: 483, column: 79, scope: !1359)
!1362 = !DILocation(line: 483, column: 13, scope: !1359)
!1363 = !DILocation(line: 485, column: 80, scope: !1359)
!1364 = !DILocation(line: 485, column: 13, scope: !1359)
!1365 = !DILocation(line: 490, column: 72, scope: !1339)
!1366 = !DILocation(line: 490, column: 9, scope: !1339)
!1367 = !DILocation(line: 492, column: 9, scope: !1339)
!1368 = !DILocation(line: 493, column: 9, scope: !1339)
!1369 = !DILocation(line: 495, column: 1, scope: !662)
!1370 = !DILocation(line: 1106, column: 22, scope: !950)
!1371 = !DILocation(line: 1108, column: 5, scope: !950)
!1372 = !DILocation(line: 1108, column: 18, scope: !950)
!1373 = !DILocation(line: 1108, column: 37, scope: !950)
!1374 = !DILocation(line: 1108, column: 22, scope: !950)
!1375 = !DILocation(line: 1109, column: 5, scope: !950)
!1376 = !DILocation(line: 1109, column: 26, scope: !950)
!1377 = !DILocation(line: 1110, column: 5, scope: !950)
!1378 = !DILocation(line: 1110, column: 10, scope: !950)
!1379 = !DILocation(line: 1110, column: 18, scope: !950)
!1380 = !DILocation(line: 1110, column: 25, scope: !950)
!1381 = !DILocation(line: 1111, column: 5, scope: !950)
!1382 = !DILocation(line: 1111, column: 15, scope: !950)
!1383 = !DILocation(line: 1117, column: 28, scope: !950)
!1384 = !DILocation(line: 1117, column: 31, scope: !950)
!1385 = !DILocation(line: 1117, column: 14, scope: !950)
!1386 = !DILocation(line: 1117, column: 12, scope: !950)
!1387 = !DILocation(line: 1118, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1118, column: 9)
!1389 = !DILocation(line: 1118, column: 16, scope: !1388)
!1390 = !DILocation(line: 1118, column: 22, scope: !1388)
!1391 = !DILocation(line: 1118, column: 25, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1388, file: !361, discriminator: 1)
!1393 = !DILocation(line: 1118, column: 9, scope: !950)
!1394 = !DILocation(line: 1119, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1388, file: !361, line: 1118, column: 43)
!1396 = !DILocation(line: 1120, column: 9, scope: !1395)
!1397 = !DILocation(line: 1122, column: 27, scope: !950)
!1398 = !DILocation(line: 1122, column: 30, scope: !950)
!1399 = !DILocation(line: 1122, column: 13, scope: !950)
!1400 = !DILocation(line: 1122, column: 11, scope: !950)
!1401 = !DILocation(line: 1123, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1123, column: 9)
!1403 = !DILocation(line: 1123, column: 15, scope: !1402)
!1404 = !DILocation(line: 1123, column: 21, scope: !1402)
!1405 = !DILocation(line: 1123, column: 24, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1402, file: !361, discriminator: 1)
!1407 = !DILocation(line: 1123, column: 9, scope: !950)
!1408 = !DILocation(line: 1124, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !361, line: 1123, column: 42)
!1410 = !DILocation(line: 1125, column: 9, scope: !1409)
!1411 = !DILocation(line: 1127, column: 27, scope: !950)
!1412 = !DILocation(line: 1127, column: 30, scope: !950)
!1413 = !DILocation(line: 1127, column: 13, scope: !950)
!1414 = !DILocation(line: 1127, column: 11, scope: !950)
!1415 = !DILocation(line: 1128, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1128, column: 9)
!1417 = !DILocation(line: 1128, column: 15, scope: !1416)
!1418 = !DILocation(line: 1128, column: 21, scope: !1416)
!1419 = !DILocation(line: 1128, column: 24, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1416, file: !361, discriminator: 1)
!1421 = !DILocation(line: 1128, column: 9, scope: !950)
!1422 = !DILocation(line: 1129, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !361, line: 1128, column: 42)
!1424 = !DILocation(line: 1130, column: 9, scope: !1423)
!1425 = !DILocation(line: 1132, column: 30, scope: !950)
!1426 = !DILocation(line: 1132, column: 38, scope: !950)
!1427 = !DILocation(line: 1132, column: 45, scope: !950)
!1428 = !DILocation(line: 1132, column: 14, scope: !950)
!1429 = !DILocation(line: 1132, column: 12, scope: !950)
!1430 = !DILocation(line: 1133, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1133, column: 9)
!1432 = !DILocation(line: 1133, column: 16, scope: !1431)
!1433 = !DILocation(line: 1133, column: 30, scope: !1431)
!1434 = !DILocation(line: 1133, column: 56, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1431, file: !361, discriminator: 1)
!1436 = !DILocation(line: 1133, column: 33, scope: !1431)
!1437 = !DILocation(line: 1133, column: 9, scope: !950)
!1438 = !DILocation(line: 1134, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !361, line: 1133, column: 78)
!1440 = !DILocation(line: 1135, column: 9, scope: !1439)
!1441 = !DILocation(line: 1137, column: 24, scope: !950)
!1442 = !DILocation(line: 1137, column: 5, scope: !950)
!1443 = !DILocation(line: 1140, column: 36, scope: !950)
!1444 = !DILocation(line: 1140, column: 12, scope: !950)
!1445 = !DILocation(line: 1140, column: 8, scope: !950)
!1446 = !DILocation(line: 1141, column: 9, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1141, column: 9)
!1448 = !DILocation(line: 1141, column: 12, scope: !1447)
!1449 = !DILocation(line: 1141, column: 9, scope: !950)
!1450 = !DILocation(line: 1142, column: 9, scope: !1447)
!1451 = !DILocation(line: 1145, column: 17, scope: !950)
!1452 = !DILocation(line: 1145, column: 20, scope: !950)
!1453 = !DILocation(line: 1145, column: 5, scope: !950)
!1454 = !DILocation(line: 1145, column: 9, scope: !950)
!1455 = !DILocation(line: 1145, column: 15, scope: !950)
!1456 = !DILocation(line: 1146, column: 16, scope: !950)
!1457 = !DILocation(line: 1146, column: 19, scope: !950)
!1458 = !DILocation(line: 1146, column: 5, scope: !950)
!1459 = !DILocation(line: 1146, column: 9, scope: !950)
!1460 = !DILocation(line: 1146, column: 14, scope: !950)
!1461 = !DILocation(line: 1147, column: 15, scope: !950)
!1462 = !DILocation(line: 1147, column: 18, scope: !950)
!1463 = !DILocation(line: 1147, column: 5, scope: !950)
!1464 = !DILocation(line: 1147, column: 9, scope: !950)
!1465 = !DILocation(line: 1147, column: 13, scope: !950)
!1466 = !DILocation(line: 1148, column: 21, scope: !950)
!1467 = !DILocation(line: 1148, column: 25, scope: !950)
!1468 = !DILocation(line: 1148, column: 34, scope: !950)
!1469 = !DILocation(line: 1148, column: 43, scope: !950)
!1470 = !DILocation(line: 1149, column: 21, scope: !950)
!1471 = !DILocation(line: 1149, column: 25, scope: !950)
!1472 = !DILocation(line: 1149, column: 33, scope: !950)
!1473 = !DILocation(line: 1149, column: 42, scope: !950)
!1474 = !DILocation(line: 1150, column: 21, scope: !950)
!1475 = !DILocation(line: 1150, column: 25, scope: !950)
!1476 = !DILocation(line: 1150, column: 32, scope: !950)
!1477 = !DILocation(line: 1150, column: 41, scope: !950)
!1478 = !DILocation(line: 1152, column: 17, scope: !950)
!1479 = !DILocation(line: 1152, column: 5, scope: !950)
!1480 = !DILocation(line: 1152, column: 9, scope: !950)
!1481 = !DILocation(line: 1152, column: 15, scope: !950)
!1482 = !DILocation(line: 1153, column: 10, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !950, file: !361, line: 1153, column: 9)
!1484 = !DILocation(line: 1153, column: 14, scope: !1483)
!1485 = !DILocation(line: 1153, column: 9, scope: !950)
!1486 = !DILocation(line: 1154, column: 9, scope: !1483)
!1487 = !DILocation(line: 1156, column: 24, scope: !950)
!1488 = !DILocation(line: 1156, column: 12, scope: !950)
!1489 = !DILocation(line: 1156, column: 5, scope: !950)
!1490 = !DILocation(line: 1159, column: 5, scope: !950)
!1491 = !DILocation(line: 1159, column: 10, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !960, file: !361, discriminator: 1)
!1493 = !DILocation(line: 1159, column: 20, scope: !960)
!1494 = !DILocation(line: 1159, column: 50, scope: !960)
!1495 = !DILocation(line: 1159, column: 37, scope: !960)
!1496 = !DILocation(line: 1159, column: 63, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !960, file: !361, line: 1159, column: 60)
!1498 = !DILocation(line: 1159, column: 80, scope: !1497)
!1499 = !DILocation(line: 1159, column: 60, scope: !1497)
!1500 = !DILocation(line: 1159, column: 90, scope: !1497)
!1501 = !DILocation(line: 1159, column: 60, scope: !960)
!1502 = !DILocation(line: 1159, column: 60, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !960, file: !361, discriminator: 2)
!1504 = !DILocation(line: 1159, column: 121, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1497, file: !361, discriminator: 3)
!1506 = !DILocation(line: 1159, column: 139, scope: !1497)
!1507 = !DILocation(line: 1159, column: 149, scope: !1497)
!1508 = !DILocation(line: 1159, column: 174, scope: !1497)
!1509 = !DILocation(line: 1159, column: 105, scope: !1497)
!1510 = !DILocation(line: 1159, column: 193, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !950, file: !361, discriminator: 4)
!1512 = !DILocation(line: 1159, column: 193, scope: !960)
!1513 = !DILocation(line: 1159, column: 193, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !960, file: !361, discriminator: 5)
!1515 = !DILocation(line: 1160, column: 5, scope: !950)
!1516 = !DILocation(line: 1161, column: 1, scope: !950)
!1517 = !DILocation(line: 79, column: 25, scope: !748)
!1518 = !DILocation(line: 79, column: 41, scope: !748)
!1519 = !DILocation(line: 79, column: 57, scope: !748)
!1520 = !DILocation(line: 81, column: 5, scope: !748)
!1521 = !DILocation(line: 81, column: 18, scope: !748)
!1522 = !DILocation(line: 82, column: 5, scope: !748)
!1523 = !DILocation(line: 82, column: 15, scope: !748)
!1524 = !DILocation(line: 82, column: 36, scope: !748)
!1525 = !DILocation(line: 82, column: 56, scope: !748)
!1526 = !DILocation(line: 84, column: 39, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !748, file: !361, line: 84, column: 9)
!1528 = !DILocation(line: 84, column: 10, scope: !1527)
!1529 = !DILocation(line: 84, column: 9, scope: !748)
!1530 = !DILocation(line: 85, column: 9, scope: !1527)
!1531 = !DILocation(line: 87, column: 22, scope: !764)
!1532 = !DILocation(line: 87, column: 9, scope: !764)
!1533 = !DILocation(line: 87, column: 28, scope: !764)
!1534 = !DILocation(line: 87, column: 9, scope: !748)
!1535 = !DILocation(line: 88, column: 32, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !763, file: !361, line: 88, column: 13)
!1537 = !DILocation(line: 88, column: 14, scope: !1536)
!1538 = !DILocation(line: 88, column: 13, scope: !763)
!1539 = !DILocation(line: 89, column: 13, scope: !1536)
!1540 = !DILocation(line: 90, column: 31, scope: !763)
!1541 = !DILocation(line: 90, column: 16, scope: !763)
!1542 = !DILocation(line: 90, column: 14, scope: !763)
!1543 = !DILocation(line: 91, column: 14, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !763, file: !361, line: 91, column: 13)
!1545 = !DILocation(line: 91, column: 13, scope: !763)
!1546 = !DILocation(line: 92, column: 13, scope: !1544)
!1547 = !DILocation(line: 93, column: 17, scope: !763)
!1548 = !DILocation(line: 93, column: 15, scope: !763)
!1549 = !DILocation(line: 94, column: 14, scope: !762)
!1550 = !DILocation(line: 94, column: 13, scope: !763)
!1551 = !DILocation(line: 95, column: 13, scope: !761)
!1552 = !DILocation(line: 95, column: 18, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !760, file: !361, discriminator: 1)
!1554 = !DILocation(line: 95, column: 28, scope: !760)
!1555 = !DILocation(line: 95, column: 58, scope: !760)
!1556 = !DILocation(line: 95, column: 73, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !760, file: !361, line: 95, column: 70)
!1558 = !DILocation(line: 95, column: 90, scope: !1557)
!1559 = !DILocation(line: 95, column: 70, scope: !1557)
!1560 = !DILocation(line: 95, column: 100, scope: !1557)
!1561 = !DILocation(line: 95, column: 70, scope: !760)
!1562 = !DILocation(line: 95, column: 70, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !760, file: !361, discriminator: 2)
!1564 = !DILocation(line: 95, column: 131, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1557, file: !361, discriminator: 3)
!1566 = !DILocation(line: 95, column: 149, scope: !1557)
!1567 = !DILocation(line: 95, column: 159, scope: !1557)
!1568 = !DILocation(line: 95, column: 184, scope: !1557)
!1569 = !DILocation(line: 95, column: 115, scope: !1557)
!1570 = !DILocation(line: 95, column: 203, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !761, file: !361, discriminator: 4)
!1572 = !DILocation(line: 95, column: 203, scope: !760)
!1573 = !DILocation(line: 95, column: 203, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !760, file: !361, discriminator: 5)
!1575 = !DILocation(line: 96, column: 13, scope: !761)
!1576 = !DILocation(line: 98, column: 16, scope: !763)
!1577 = !DILocation(line: 98, column: 14, scope: !763)
!1578 = !DILocation(line: 99, column: 14, scope: !768)
!1579 = !DILocation(line: 99, column: 13, scope: !763)
!1580 = !DILocation(line: 100, column: 13, scope: !767)
!1581 = !DILocation(line: 100, column: 18, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !766, file: !361, discriminator: 1)
!1583 = !DILocation(line: 100, column: 28, scope: !766)
!1584 = !DILocation(line: 100, column: 58, scope: !766)
!1585 = !DILocation(line: 100, column: 73, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !766, file: !361, line: 100, column: 70)
!1587 = !DILocation(line: 100, column: 90, scope: !1586)
!1588 = !DILocation(line: 100, column: 70, scope: !1586)
!1589 = !DILocation(line: 100, column: 100, scope: !1586)
!1590 = !DILocation(line: 100, column: 70, scope: !766)
!1591 = !DILocation(line: 100, column: 70, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !766, file: !361, discriminator: 2)
!1593 = !DILocation(line: 100, column: 131, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1586, file: !361, discriminator: 3)
!1595 = !DILocation(line: 100, column: 149, scope: !1586)
!1596 = !DILocation(line: 100, column: 159, scope: !1586)
!1597 = !DILocation(line: 100, column: 184, scope: !1586)
!1598 = !DILocation(line: 100, column: 115, scope: !1586)
!1599 = !DILocation(line: 100, column: 203, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !767, file: !361, discriminator: 4)
!1601 = !DILocation(line: 100, column: 203, scope: !766)
!1602 = !DILocation(line: 100, column: 203, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !766, file: !361, discriminator: 5)
!1604 = !DILocation(line: 101, column: 13, scope: !767)
!1605 = !DILocation(line: 101, column: 18, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 1)
!1607 = !DILocation(line: 101, column: 28, scope: !770)
!1608 = !DILocation(line: 101, column: 58, scope: !770)
!1609 = !DILocation(line: 101, column: 74, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !770, file: !361, line: 101, column: 71)
!1611 = !DILocation(line: 101, column: 91, scope: !1610)
!1612 = !DILocation(line: 101, column: 71, scope: !1610)
!1613 = !DILocation(line: 101, column: 101, scope: !1610)
!1614 = !DILocation(line: 101, column: 71, scope: !770)
!1615 = !DILocation(line: 101, column: 71, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 2)
!1617 = !DILocation(line: 101, column: 132, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1610, file: !361, discriminator: 3)
!1619 = !DILocation(line: 101, column: 150, scope: !1610)
!1620 = !DILocation(line: 101, column: 160, scope: !1610)
!1621 = !DILocation(line: 101, column: 185, scope: !1610)
!1622 = !DILocation(line: 101, column: 116, scope: !1610)
!1623 = !DILocation(line: 101, column: 204, scope: !1600)
!1624 = !DILocation(line: 101, column: 204, scope: !770)
!1625 = !DILocation(line: 101, column: 204, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 5)
!1627 = !DILocation(line: 102, column: 13, scope: !767)
!1628 = !DILocation(line: 104, column: 5, scope: !763)
!1629 = !DILocation(line: 106, column: 32, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !775, file: !361, line: 106, column: 13)
!1631 = !DILocation(line: 106, column: 14, scope: !1630)
!1632 = !DILocation(line: 106, column: 13, scope: !775)
!1633 = !DILocation(line: 108, column: 13, scope: !1630)
!1634 = !DILocation(line: 111, column: 32, scope: !775)
!1635 = !DILocation(line: 111, column: 17, scope: !775)
!1636 = !DILocation(line: 111, column: 15, scope: !775)
!1637 = !DILocation(line: 112, column: 14, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !775, file: !361, line: 112, column: 13)
!1639 = !DILocation(line: 112, column: 13, scope: !775)
!1640 = !DILocation(line: 113, column: 13, scope: !1638)
!1641 = !DILocation(line: 114, column: 31, scope: !775)
!1642 = !DILocation(line: 114, column: 16, scope: !775)
!1643 = !DILocation(line: 114, column: 14, scope: !775)
!1644 = !DILocation(line: 115, column: 14, scope: !774)
!1645 = !DILocation(line: 115, column: 13, scope: !775)
!1646 = !DILocation(line: 116, column: 13, scope: !773)
!1647 = !DILocation(line: 116, column: 18, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !772, file: !361, discriminator: 1)
!1649 = !DILocation(line: 116, column: 28, scope: !772)
!1650 = !DILocation(line: 116, column: 58, scope: !772)
!1651 = !DILocation(line: 116, column: 74, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !772, file: !361, line: 116, column: 71)
!1653 = !DILocation(line: 116, column: 91, scope: !1652)
!1654 = !DILocation(line: 116, column: 71, scope: !1652)
!1655 = !DILocation(line: 116, column: 101, scope: !1652)
!1656 = !DILocation(line: 116, column: 71, scope: !772)
!1657 = !DILocation(line: 116, column: 71, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !772, file: !361, discriminator: 2)
!1659 = !DILocation(line: 116, column: 132, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1652, file: !361, discriminator: 3)
!1661 = !DILocation(line: 116, column: 150, scope: !1652)
!1662 = !DILocation(line: 116, column: 160, scope: !1652)
!1663 = !DILocation(line: 116, column: 185, scope: !1652)
!1664 = !DILocation(line: 116, column: 116, scope: !1652)
!1665 = !DILocation(line: 116, column: 204, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !773, file: !361, discriminator: 4)
!1667 = !DILocation(line: 116, column: 204, scope: !772)
!1668 = !DILocation(line: 116, column: 204, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !772, file: !361, discriminator: 5)
!1670 = !DILocation(line: 117, column: 13, scope: !773)
!1671 = !DILocation(line: 119, column: 30, scope: !775)
!1672 = !DILocation(line: 119, column: 16, scope: !775)
!1673 = !DILocation(line: 119, column: 14, scope: !775)
!1674 = !DILocation(line: 120, column: 14, scope: !779)
!1675 = !DILocation(line: 120, column: 13, scope: !775)
!1676 = !DILocation(line: 121, column: 13, scope: !778)
!1677 = !DILocation(line: 121, column: 18, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !777, file: !361, discriminator: 1)
!1679 = !DILocation(line: 121, column: 28, scope: !777)
!1680 = !DILocation(line: 121, column: 58, scope: !777)
!1681 = !DILocation(line: 121, column: 74, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !777, file: !361, line: 121, column: 71)
!1683 = !DILocation(line: 121, column: 91, scope: !1682)
!1684 = !DILocation(line: 121, column: 71, scope: !1682)
!1685 = !DILocation(line: 121, column: 101, scope: !1682)
!1686 = !DILocation(line: 121, column: 71, scope: !777)
!1687 = !DILocation(line: 121, column: 71, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !777, file: !361, discriminator: 2)
!1689 = !DILocation(line: 121, column: 132, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1682, file: !361, discriminator: 3)
!1691 = !DILocation(line: 121, column: 150, scope: !1682)
!1692 = !DILocation(line: 121, column: 160, scope: !1682)
!1693 = !DILocation(line: 121, column: 185, scope: !1682)
!1694 = !DILocation(line: 121, column: 116, scope: !1682)
!1695 = !DILocation(line: 121, column: 204, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !778, file: !361, discriminator: 4)
!1697 = !DILocation(line: 121, column: 204, scope: !777)
!1698 = !DILocation(line: 121, column: 204, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !777, file: !361, discriminator: 5)
!1700 = !DILocation(line: 122, column: 13, scope: !778)
!1701 = !DILocation(line: 122, column: 18, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !781, file: !361, discriminator: 1)
!1703 = !DILocation(line: 122, column: 28, scope: !781)
!1704 = !DILocation(line: 122, column: 58, scope: !781)
!1705 = !DILocation(line: 122, column: 73, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !781, file: !361, line: 122, column: 70)
!1707 = !DILocation(line: 122, column: 90, scope: !1706)
!1708 = !DILocation(line: 122, column: 70, scope: !1706)
!1709 = !DILocation(line: 122, column: 100, scope: !1706)
!1710 = !DILocation(line: 122, column: 70, scope: !781)
!1711 = !DILocation(line: 122, column: 70, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !781, file: !361, discriminator: 2)
!1713 = !DILocation(line: 122, column: 131, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1706, file: !361, discriminator: 3)
!1715 = !DILocation(line: 122, column: 149, scope: !1706)
!1716 = !DILocation(line: 122, column: 159, scope: !1706)
!1717 = !DILocation(line: 122, column: 184, scope: !1706)
!1718 = !DILocation(line: 122, column: 115, scope: !1706)
!1719 = !DILocation(line: 122, column: 203, scope: !1696)
!1720 = !DILocation(line: 122, column: 203, scope: !781)
!1721 = !DILocation(line: 122, column: 203, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !781, file: !361, discriminator: 5)
!1723 = !DILocation(line: 123, column: 13, scope: !778)
!1724 = !DILocation(line: 127, column: 29, scope: !748)
!1725 = !DILocation(line: 127, column: 35, scope: !748)
!1726 = !DILocation(line: 127, column: 42, scope: !748)
!1727 = !DILocation(line: 127, column: 48, scope: !748)
!1728 = !DILocation(line: 127, column: 11, scope: !748)
!1729 = !DILocation(line: 127, column: 9, scope: !748)
!1730 = !DILocation(line: 128, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !748, file: !361, line: 128, column: 9)
!1732 = !DILocation(line: 128, column: 13, scope: !1731)
!1733 = !DILocation(line: 128, column: 9, scope: !748)
!1734 = !DILocation(line: 129, column: 29, scope: !1731)
!1735 = !DILocation(line: 129, column: 16, scope: !1731)
!1736 = !DILocation(line: 129, column: 9, scope: !1731)
!1737 = !DILocation(line: 132, column: 5, scope: !748)
!1738 = !DILocation(line: 132, column: 10, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !783, file: !361, discriminator: 1)
!1740 = !DILocation(line: 132, column: 20, scope: !783)
!1741 = !DILocation(line: 132, column: 51, scope: !783)
!1742 = !DILocation(line: 132, column: 63, scope: !786)
!1743 = !DILocation(line: 132, column: 79, scope: !786)
!1744 = !DILocation(line: 132, column: 63, scope: !783)
!1745 = !DILocation(line: 132, column: 94, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !786, file: !361, discriminator: 2)
!1747 = !DILocation(line: 132, column: 99, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !785, file: !361, discriminator: 4)
!1749 = !DILocation(line: 132, column: 109, scope: !785)
!1750 = !DILocation(line: 132, column: 139, scope: !785)
!1751 = !DILocation(line: 132, column: 165, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !785, file: !361, line: 132, column: 162)
!1753 = !DILocation(line: 132, column: 182, scope: !1752)
!1754 = !DILocation(line: 132, column: 162, scope: !1752)
!1755 = !DILocation(line: 132, column: 192, scope: !1752)
!1756 = !DILocation(line: 132, column: 162, scope: !785)
!1757 = !DILocation(line: 132, column: 162, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !785, file: !361, discriminator: 5)
!1759 = !DILocation(line: 132, column: 223, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1752, file: !361, discriminator: 6)
!1761 = !DILocation(line: 132, column: 241, scope: !1752)
!1762 = !DILocation(line: 132, column: 251, scope: !1752)
!1763 = !DILocation(line: 132, column: 276, scope: !1752)
!1764 = !DILocation(line: 132, column: 207, scope: !1752)
!1765 = !DILocation(line: 132, column: 295, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !786, file: !361, discriminator: 7)
!1767 = !DILocation(line: 132, column: 295, scope: !785)
!1768 = !DILocation(line: 132, column: 295, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !785, file: !361, discriminator: 8)
!1770 = !DILocation(line: 132, column: 295, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !785, file: !361, discriminator: 9)
!1772 = !DILocation(line: 132, column: 308, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1774, file: !361, discriminator: 10)
!1774 = !DILexicalBlockFile(scope: !748, file: !361, discriminator: 3)
!1775 = !DILocation(line: 132, column: 308, scope: !783)
!1776 = !DILocation(line: 132, column: 308, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !783, file: !361, discriminator: 11)
!1778 = !DILocation(line: 133, column: 5, scope: !748)
!1779 = !DILocation(line: 133, column: 10, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !788, file: !361, discriminator: 1)
!1781 = !DILocation(line: 133, column: 20, scope: !788)
!1782 = !DILocation(line: 133, column: 51, scope: !788)
!1783 = !DILocation(line: 133, column: 62, scope: !791)
!1784 = !DILocation(line: 133, column: 78, scope: !791)
!1785 = !DILocation(line: 133, column: 62, scope: !788)
!1786 = !DILocation(line: 133, column: 93, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !791, file: !361, discriminator: 2)
!1788 = !DILocation(line: 133, column: 98, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !790, file: !361, discriminator: 4)
!1790 = !DILocation(line: 133, column: 108, scope: !790)
!1791 = !DILocation(line: 133, column: 138, scope: !790)
!1792 = !DILocation(line: 133, column: 164, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !790, file: !361, line: 133, column: 161)
!1794 = !DILocation(line: 133, column: 181, scope: !1793)
!1795 = !DILocation(line: 133, column: 161, scope: !1793)
!1796 = !DILocation(line: 133, column: 191, scope: !1793)
!1797 = !DILocation(line: 133, column: 161, scope: !790)
!1798 = !DILocation(line: 133, column: 161, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !790, file: !361, discriminator: 5)
!1800 = !DILocation(line: 133, column: 222, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1793, file: !361, discriminator: 6)
!1802 = !DILocation(line: 133, column: 240, scope: !1793)
!1803 = !DILocation(line: 133, column: 250, scope: !1793)
!1804 = !DILocation(line: 133, column: 275, scope: !1793)
!1805 = !DILocation(line: 133, column: 206, scope: !1793)
!1806 = !DILocation(line: 133, column: 294, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !791, file: !361, discriminator: 7)
!1808 = !DILocation(line: 133, column: 294, scope: !790)
!1809 = !DILocation(line: 133, column: 294, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !790, file: !361, discriminator: 8)
!1811 = !DILocation(line: 133, column: 294, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !790, file: !361, discriminator: 9)
!1813 = !DILocation(line: 133, column: 307, scope: !1773)
!1814 = !DILocation(line: 133, column: 307, scope: !788)
!1815 = !DILocation(line: 133, column: 307, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !788, file: !361, discriminator: 11)
!1817 = !DILocation(line: 134, column: 5, scope: !748)
!1818 = !DILocation(line: 134, column: 10, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !793, file: !361, discriminator: 1)
!1820 = !DILocation(line: 134, column: 20, scope: !793)
!1821 = !DILocation(line: 134, column: 51, scope: !793)
!1822 = !DILocation(line: 134, column: 62, scope: !796)
!1823 = !DILocation(line: 134, column: 78, scope: !796)
!1824 = !DILocation(line: 134, column: 62, scope: !793)
!1825 = !DILocation(line: 134, column: 93, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !796, file: !361, discriminator: 2)
!1827 = !DILocation(line: 134, column: 98, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !795, file: !361, discriminator: 4)
!1829 = !DILocation(line: 134, column: 108, scope: !795)
!1830 = !DILocation(line: 134, column: 138, scope: !795)
!1831 = !DILocation(line: 134, column: 164, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !795, file: !361, line: 134, column: 161)
!1833 = !DILocation(line: 134, column: 181, scope: !1832)
!1834 = !DILocation(line: 134, column: 161, scope: !1832)
!1835 = !DILocation(line: 134, column: 191, scope: !1832)
!1836 = !DILocation(line: 134, column: 161, scope: !795)
!1837 = !DILocation(line: 134, column: 161, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !795, file: !361, discriminator: 5)
!1839 = !DILocation(line: 134, column: 222, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1832, file: !361, discriminator: 6)
!1841 = !DILocation(line: 134, column: 240, scope: !1832)
!1842 = !DILocation(line: 134, column: 250, scope: !1832)
!1843 = !DILocation(line: 134, column: 275, scope: !1832)
!1844 = !DILocation(line: 134, column: 206, scope: !1832)
!1845 = !DILocation(line: 134, column: 294, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !796, file: !361, discriminator: 7)
!1847 = !DILocation(line: 134, column: 294, scope: !795)
!1848 = !DILocation(line: 134, column: 294, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !795, file: !361, discriminator: 8)
!1850 = !DILocation(line: 134, column: 294, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !795, file: !361, discriminator: 9)
!1852 = !DILocation(line: 134, column: 307, scope: !1773)
!1853 = !DILocation(line: 134, column: 307, scope: !793)
!1854 = !DILocation(line: 134, column: 307, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !793, file: !361, discriminator: 11)
!1856 = !DILocation(line: 135, column: 5, scope: !748)
!1857 = !DILocation(line: 136, column: 1, scope: !748)
!1858 = !DILocation(line: 756, column: 33, scope: !812)
!1859 = !DILocation(line: 758, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !812, file: !361, line: 758, column: 9)
!1861 = !DILocation(line: 758, column: 12, scope: !1860)
!1862 = !{!1863, !1026, i64 16}
!1863 = !{!"", !1025, i64 0, !1026, i64 16, !1026, i64 24, !1026, i64 32, !1026, i64 40}
!1864 = !DILocation(line: 758, column: 20, scope: !1860)
!1865 = !DILocation(line: 758, column: 23, scope: !1860)
!1866 = !{!1863, !1026, i64 40}
!1867 = !DILocation(line: 758, column: 18, scope: !1860)
!1868 = !DILocation(line: 758, column: 9, scope: !812)
!1869 = !DILocation(line: 761, column: 39, scope: !1860)
!1870 = !DILocation(line: 761, column: 42, scope: !1860)
!1871 = !{!1863, !1026, i64 24}
!1872 = !DILocation(line: 762, column: 55, scope: !1860)
!1873 = !DILocation(line: 762, column: 58, scope: !1860)
!1874 = !DILocation(line: 762, column: 63, scope: !1860)
!1875 = !DILocation(line: 762, column: 69, scope: !1860)
!1876 = !DILocation(line: 762, column: 72, scope: !1860)
!1877 = !{!1863, !1026, i64 32}
!1878 = !DILocation(line: 762, column: 67, scope: !1860)
!1879 = !DILocation(line: 761, column: 48, scope: !1860)
!1880 = !DILocation(line: 761, column: 16, scope: !1860)
!1881 = !DILocation(line: 761, column: 9, scope: !1860)
!1882 = !DILocation(line: 763, column: 5, scope: !812)
!1883 = !DILocation(line: 764, column: 1, scope: !812)
!1884 = !DILocation(line: 929, column: 29, scope: !849)
!1885 = !DILocation(line: 929, column: 45, scope: !849)
!1886 = !DILocation(line: 929, column: 61, scope: !849)
!1887 = !DILocation(line: 931, column: 5, scope: !849)
!1888 = !DILocation(line: 931, column: 10, scope: !849)
!1889 = !DILocation(line: 931, column: 17, scope: !849)
!1890 = !DILocation(line: 931, column: 23, scope: !849)
!1891 = !DILocation(line: 933, column: 43, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !849, file: !361, line: 933, column: 9)
!1893 = !DILocation(line: 933, column: 10, scope: !1892)
!1894 = !DILocation(line: 933, column: 9, scope: !849)
!1895 = !DILocation(line: 934, column: 9, scope: !1892)
!1896 = !DILocation(line: 936, column: 27, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !849, file: !361, line: 936, column: 9)
!1898 = !DILocation(line: 936, column: 10, scope: !1897)
!1899 = !DILocation(line: 936, column: 9, scope: !849)
!1900 = !DILocation(line: 938, column: 9, scope: !1897)
!1901 = !DILocation(line: 940, column: 28, scope: !849)
!1902 = !DILocation(line: 940, column: 35, scope: !849)
!1903 = !DILocation(line: 940, column: 41, scope: !849)
!1904 = !DILocation(line: 940, column: 12, scope: !849)
!1905 = !DILocation(line: 940, column: 5, scope: !849)
!1906 = !DILocation(line: 941, column: 1, scope: !849)
!1907 = !DILocation(line: 1028, column: 44, scope: !857)
!1908 = !DILocation(line: 1030, column: 5, scope: !857)
!1909 = !DILocation(line: 1030, column: 10, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !863, file: !361, discriminator: 1)
!1911 = !DILocation(line: 1030, column: 20, scope: !863)
!1912 = !DILocation(line: 1030, column: 51, scope: !863)
!1913 = !DILocation(line: 1030, column: 54, scope: !863)
!1914 = !DILocation(line: 1030, column: 66, scope: !866)
!1915 = !DILocation(line: 1030, column: 82, scope: !866)
!1916 = !DILocation(line: 1030, column: 66, scope: !863)
!1917 = !DILocation(line: 1030, column: 97, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !866, file: !361, discriminator: 2)
!1919 = !DILocation(line: 1030, column: 102, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !865, file: !361, discriminator: 4)
!1921 = !DILocation(line: 1030, column: 112, scope: !865)
!1922 = !DILocation(line: 1030, column: 142, scope: !865)
!1923 = !DILocation(line: 1030, column: 168, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !865, file: !361, line: 1030, column: 165)
!1925 = !DILocation(line: 1030, column: 185, scope: !1924)
!1926 = !DILocation(line: 1030, column: 165, scope: !1924)
!1927 = !DILocation(line: 1030, column: 195, scope: !1924)
!1928 = !DILocation(line: 1030, column: 165, scope: !865)
!1929 = !DILocation(line: 1030, column: 165, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !865, file: !361, discriminator: 5)
!1931 = !DILocation(line: 1030, column: 226, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1924, file: !361, discriminator: 6)
!1933 = !DILocation(line: 1030, column: 244, scope: !1924)
!1934 = !DILocation(line: 1030, column: 254, scope: !1924)
!1935 = !DILocation(line: 1030, column: 279, scope: !1924)
!1936 = !DILocation(line: 1030, column: 210, scope: !1924)
!1937 = !DILocation(line: 1030, column: 298, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !866, file: !361, discriminator: 7)
!1939 = !DILocation(line: 1030, column: 298, scope: !865)
!1940 = !DILocation(line: 1030, column: 298, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !865, file: !361, discriminator: 8)
!1942 = !DILocation(line: 1030, column: 298, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !865, file: !361, discriminator: 9)
!1944 = !DILocation(line: 1030, column: 311, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !361, discriminator: 10)
!1946 = !DILexicalBlockFile(scope: !857, file: !361, discriminator: 3)
!1947 = !DILocation(line: 1030, column: 311, scope: !863)
!1948 = !DILocation(line: 1031, column: 5, scope: !857)
!1949 = !DILocation(line: 1031, column: 10, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !868, file: !361, discriminator: 1)
!1951 = !DILocation(line: 1031, column: 20, scope: !868)
!1952 = !DILocation(line: 1031, column: 51, scope: !868)
!1953 = !DILocation(line: 1031, column: 54, scope: !868)
!1954 = !DILocation(line: 1031, column: 66, scope: !871)
!1955 = !DILocation(line: 1031, column: 82, scope: !871)
!1956 = !DILocation(line: 1031, column: 66, scope: !868)
!1957 = !DILocation(line: 1031, column: 97, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !871, file: !361, discriminator: 2)
!1959 = !DILocation(line: 1031, column: 102, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !870, file: !361, discriminator: 4)
!1961 = !DILocation(line: 1031, column: 112, scope: !870)
!1962 = !DILocation(line: 1031, column: 142, scope: !870)
!1963 = !DILocation(line: 1031, column: 168, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !870, file: !361, line: 1031, column: 165)
!1965 = !DILocation(line: 1031, column: 185, scope: !1964)
!1966 = !DILocation(line: 1031, column: 165, scope: !1964)
!1967 = !DILocation(line: 1031, column: 195, scope: !1964)
!1968 = !DILocation(line: 1031, column: 165, scope: !870)
!1969 = !DILocation(line: 1031, column: 165, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !870, file: !361, discriminator: 5)
!1971 = !DILocation(line: 1031, column: 226, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1964, file: !361, discriminator: 6)
!1973 = !DILocation(line: 1031, column: 244, scope: !1964)
!1974 = !DILocation(line: 1031, column: 254, scope: !1964)
!1975 = !DILocation(line: 1031, column: 279, scope: !1964)
!1976 = !DILocation(line: 1031, column: 210, scope: !1964)
!1977 = !DILocation(line: 1031, column: 298, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !871, file: !361, discriminator: 7)
!1979 = !DILocation(line: 1031, column: 298, scope: !870)
!1980 = !DILocation(line: 1031, column: 298, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !870, file: !361, discriminator: 8)
!1982 = !DILocation(line: 1031, column: 298, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !870, file: !361, discriminator: 9)
!1984 = !DILocation(line: 1031, column: 311, scope: !1945)
!1985 = !DILocation(line: 1031, column: 311, scope: !868)
!1986 = !DILocation(line: 1032, column: 5, scope: !857)
!1987 = !DILocation(line: 1032, column: 10, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !873, file: !361, discriminator: 1)
!1989 = !DILocation(line: 1032, column: 20, scope: !873)
!1990 = !DILocation(line: 1032, column: 51, scope: !873)
!1991 = !DILocation(line: 1032, column: 54, scope: !873)
!1992 = !DILocation(line: 1032, column: 65, scope: !876)
!1993 = !DILocation(line: 1032, column: 81, scope: !876)
!1994 = !DILocation(line: 1032, column: 65, scope: !873)
!1995 = !DILocation(line: 1032, column: 96, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !876, file: !361, discriminator: 2)
!1997 = !DILocation(line: 1032, column: 101, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !875, file: !361, discriminator: 4)
!1999 = !DILocation(line: 1032, column: 111, scope: !875)
!2000 = !DILocation(line: 1032, column: 141, scope: !875)
!2001 = !DILocation(line: 1032, column: 167, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !875, file: !361, line: 1032, column: 164)
!2003 = !DILocation(line: 1032, column: 184, scope: !2002)
!2004 = !DILocation(line: 1032, column: 164, scope: !2002)
!2005 = !DILocation(line: 1032, column: 194, scope: !2002)
!2006 = !DILocation(line: 1032, column: 164, scope: !875)
!2007 = !DILocation(line: 1032, column: 164, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !875, file: !361, discriminator: 5)
!2009 = !DILocation(line: 1032, column: 225, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2002, file: !361, discriminator: 6)
!2011 = !DILocation(line: 1032, column: 243, scope: !2002)
!2012 = !DILocation(line: 1032, column: 253, scope: !2002)
!2013 = !DILocation(line: 1032, column: 278, scope: !2002)
!2014 = !DILocation(line: 1032, column: 209, scope: !2002)
!2015 = !DILocation(line: 1032, column: 297, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !876, file: !361, discriminator: 7)
!2017 = !DILocation(line: 1032, column: 297, scope: !875)
!2018 = !DILocation(line: 1032, column: 297, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !875, file: !361, discriminator: 8)
!2020 = !DILocation(line: 1032, column: 297, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !875, file: !361, discriminator: 9)
!2022 = !DILocation(line: 1032, column: 310, scope: !1945)
!2023 = !DILocation(line: 1032, column: 310, scope: !873)
!2024 = !DILocation(line: 1033, column: 5, scope: !857)
!2025 = !DILocation(line: 1033, column: 10, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !878, file: !361, discriminator: 1)
!2027 = !DILocation(line: 1033, column: 20, scope: !878)
!2028 = !DILocation(line: 1033, column: 51, scope: !878)
!2029 = !DILocation(line: 1033, column: 54, scope: !878)
!2030 = !DILocation(line: 1033, column: 64, scope: !881)
!2031 = !DILocation(line: 1033, column: 80, scope: !881)
!2032 = !DILocation(line: 1033, column: 64, scope: !878)
!2033 = !DILocation(line: 1033, column: 95, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !881, file: !361, discriminator: 2)
!2035 = !DILocation(line: 1033, column: 100, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 4)
!2037 = !DILocation(line: 1033, column: 110, scope: !880)
!2038 = !DILocation(line: 1033, column: 140, scope: !880)
!2039 = !DILocation(line: 1033, column: 166, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !880, file: !361, line: 1033, column: 163)
!2041 = !DILocation(line: 1033, column: 183, scope: !2040)
!2042 = !DILocation(line: 1033, column: 163, scope: !2040)
!2043 = !DILocation(line: 1033, column: 193, scope: !2040)
!2044 = !DILocation(line: 1033, column: 163, scope: !880)
!2045 = !DILocation(line: 1033, column: 163, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 5)
!2047 = !DILocation(line: 1033, column: 224, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2040, file: !361, discriminator: 6)
!2049 = !DILocation(line: 1033, column: 242, scope: !2040)
!2050 = !DILocation(line: 1033, column: 252, scope: !2040)
!2051 = !DILocation(line: 1033, column: 277, scope: !2040)
!2052 = !DILocation(line: 1033, column: 208, scope: !2040)
!2053 = !DILocation(line: 1033, column: 296, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !881, file: !361, discriminator: 7)
!2055 = !DILocation(line: 1033, column: 296, scope: !880)
!2056 = !DILocation(line: 1033, column: 296, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 8)
!2058 = !DILocation(line: 1033, column: 296, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 9)
!2060 = !DILocation(line: 1033, column: 309, scope: !1945)
!2061 = !DILocation(line: 1033, column: 309, scope: !878)
!2062 = !DILocation(line: 1034, column: 19, scope: !857)
!2063 = !DILocation(line: 1034, column: 5, scope: !857)
!2064 = !DILocation(line: 1035, column: 1, scope: !857)
!2065 = !DILocation(line: 1038, column: 41, scope: !882)
!2066 = !DILocation(line: 1040, column: 5, scope: !882)
!2067 = !DILocation(line: 1040, column: 15, scope: !882)
!2068 = !DILocation(line: 1040, column: 21, scope: !882)
!2069 = !DILocation(line: 1040, column: 31, scope: !882)
!2070 = !DILocation(line: 1040, column: 43, scope: !882)
!2071 = !DILocation(line: 1041, column: 34, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1041, column: 9)
!2073 = !DILocation(line: 1041, column: 37, scope: !2072)
!2074 = !DILocation(line: 1041, column: 44, scope: !2072)
!2075 = !DILocation(line: 1041, column: 47, scope: !2072)
!2076 = !DILocation(line: 1041, column: 9, scope: !2072)
!2077 = !DILocation(line: 1041, column: 55, scope: !2072)
!2078 = !DILocation(line: 1041, column: 9, scope: !882)
!2079 = !DILocation(line: 1042, column: 9, scope: !2072)
!2080 = !DILocation(line: 1044, column: 11, scope: !882)
!2081 = !DILocation(line: 1044, column: 9, scope: !882)
!2082 = !DILocation(line: 1045, column: 10, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1045, column: 9)
!2084 = !DILocation(line: 1045, column: 9, scope: !882)
!2085 = !DILocation(line: 1046, column: 9, scope: !2083)
!2086 = !DILocation(line: 1048, column: 30, scope: !882)
!2087 = !DILocation(line: 1048, column: 33, scope: !882)
!2088 = !DILocation(line: 1048, column: 40, scope: !882)
!2089 = !DILocation(line: 1048, column: 17, scope: !882)
!2090 = !DILocation(line: 1048, column: 15, scope: !882)
!2091 = !DILocation(line: 1049, column: 5, scope: !882)
!2092 = !DILocation(line: 1049, column: 10, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !892, file: !361, discriminator: 1)
!2094 = !DILocation(line: 1049, column: 20, scope: !892)
!2095 = !DILocation(line: 1049, column: 50, scope: !892)
!2096 = !DILocation(line: 1049, column: 64, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !892, file: !361, line: 1049, column: 61)
!2098 = !DILocation(line: 1049, column: 81, scope: !2097)
!2099 = !DILocation(line: 1049, column: 61, scope: !2097)
!2100 = !DILocation(line: 1049, column: 91, scope: !2097)
!2101 = !DILocation(line: 1049, column: 61, scope: !892)
!2102 = !DILocation(line: 1049, column: 61, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !892, file: !361, discriminator: 2)
!2104 = !DILocation(line: 1049, column: 122, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2097, file: !361, discriminator: 3)
!2106 = !DILocation(line: 1049, column: 140, scope: !2097)
!2107 = !DILocation(line: 1049, column: 150, scope: !2097)
!2108 = !DILocation(line: 1049, column: 175, scope: !2097)
!2109 = !DILocation(line: 1049, column: 106, scope: !2097)
!2110 = !DILocation(line: 1049, column: 194, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !882, file: !361, discriminator: 4)
!2112 = !DILocation(line: 1049, column: 194, scope: !892)
!2113 = !DILocation(line: 1049, column: 194, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !892, file: !361, discriminator: 5)
!2115 = !DILocation(line: 1050, column: 10, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1050, column: 9)
!2117 = !DILocation(line: 1050, column: 9, scope: !882)
!2118 = !DILocation(line: 1051, column: 9, scope: !2116)
!2119 = !DILocation(line: 1053, column: 33, scope: !882)
!2120 = !DILocation(line: 1053, column: 36, scope: !882)
!2121 = !DILocation(line: 1053, column: 43, scope: !882)
!2122 = !DILocation(line: 1053, column: 46, scope: !882)
!2123 = !DILocation(line: 1053, column: 15, scope: !882)
!2124 = !DILocation(line: 1053, column: 13, scope: !882)
!2125 = !DILocation(line: 1054, column: 10, scope: !896)
!2126 = !DILocation(line: 1054, column: 9, scope: !882)
!2127 = !DILocation(line: 1055, column: 9, scope: !895)
!2128 = !DILocation(line: 1055, column: 14, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !894, file: !361, discriminator: 1)
!2130 = !DILocation(line: 1055, column: 24, scope: !894)
!2131 = !DILocation(line: 1055, column: 54, scope: !894)
!2132 = !DILocation(line: 1055, column: 74, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !894, file: !361, line: 1055, column: 71)
!2134 = !DILocation(line: 1055, column: 91, scope: !2133)
!2135 = !DILocation(line: 1055, column: 71, scope: !2133)
!2136 = !DILocation(line: 1055, column: 101, scope: !2133)
!2137 = !DILocation(line: 1055, column: 71, scope: !894)
!2138 = !DILocation(line: 1055, column: 71, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !894, file: !361, discriminator: 2)
!2140 = !DILocation(line: 1055, column: 132, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2133, file: !361, discriminator: 3)
!2142 = !DILocation(line: 1055, column: 150, scope: !2133)
!2143 = !DILocation(line: 1055, column: 160, scope: !2133)
!2144 = !DILocation(line: 1055, column: 185, scope: !2133)
!2145 = !DILocation(line: 1055, column: 116, scope: !2133)
!2146 = !DILocation(line: 1055, column: 204, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !895, file: !361, discriminator: 4)
!2148 = !DILocation(line: 1055, column: 204, scope: !894)
!2149 = !DILocation(line: 1055, column: 204, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !894, file: !361, discriminator: 5)
!2151 = !DILocation(line: 1056, column: 9, scope: !895)
!2152 = !DILocation(line: 1059, column: 27, scope: !882)
!2153 = !DILocation(line: 1059, column: 30, scope: !882)
!2154 = !DILocation(line: 1059, column: 37, scope: !882)
!2155 = !DILocation(line: 1059, column: 14, scope: !882)
!2156 = !DILocation(line: 1059, column: 12, scope: !882)
!2157 = !DILocation(line: 1060, column: 5, scope: !882)
!2158 = !DILocation(line: 1060, column: 10, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !898, file: !361, discriminator: 1)
!2160 = !DILocation(line: 1060, column: 20, scope: !898)
!2161 = !DILocation(line: 1060, column: 50, scope: !898)
!2162 = !DILocation(line: 1060, column: 68, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !898, file: !361, line: 1060, column: 65)
!2164 = !DILocation(line: 1060, column: 85, scope: !2163)
!2165 = !DILocation(line: 1060, column: 65, scope: !2163)
!2166 = !DILocation(line: 1060, column: 95, scope: !2163)
!2167 = !DILocation(line: 1060, column: 65, scope: !898)
!2168 = !DILocation(line: 1060, column: 65, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !898, file: !361, discriminator: 2)
!2170 = !DILocation(line: 1060, column: 126, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2163, file: !361, discriminator: 3)
!2172 = !DILocation(line: 1060, column: 144, scope: !2163)
!2173 = !DILocation(line: 1060, column: 154, scope: !2163)
!2174 = !DILocation(line: 1060, column: 179, scope: !2163)
!2175 = !DILocation(line: 1060, column: 110, scope: !2163)
!2176 = !DILocation(line: 1060, column: 198, scope: !2111)
!2177 = !DILocation(line: 1060, column: 198, scope: !898)
!2178 = !DILocation(line: 1060, column: 198, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !898, file: !361, discriminator: 5)
!2180 = !DILocation(line: 1061, column: 9, scope: !902)
!2181 = !DILocation(line: 1061, column: 9, scope: !882)
!2182 = !DILocation(line: 1062, column: 9, scope: !901)
!2183 = !DILocation(line: 1062, column: 14, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !900, file: !361, discriminator: 1)
!2185 = !DILocation(line: 1062, column: 24, scope: !900)
!2186 = !DILocation(line: 1062, column: 54, scope: !900)
!2187 = !DILocation(line: 1062, column: 57, scope: !900)
!2188 = !DILocation(line: 1062, column: 73, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !900, file: !361, line: 1062, column: 70)
!2190 = !DILocation(line: 1062, column: 90, scope: !2189)
!2191 = !DILocation(line: 1062, column: 70, scope: !2189)
!2192 = !DILocation(line: 1062, column: 100, scope: !2189)
!2193 = !DILocation(line: 1062, column: 70, scope: !900)
!2194 = !DILocation(line: 1062, column: 70, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !900, file: !361, discriminator: 2)
!2196 = !DILocation(line: 1062, column: 131, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2189, file: !361, discriminator: 3)
!2198 = !DILocation(line: 1062, column: 149, scope: !2189)
!2199 = !DILocation(line: 1062, column: 159, scope: !2189)
!2200 = !DILocation(line: 1062, column: 184, scope: !2189)
!2201 = !DILocation(line: 1062, column: 115, scope: !2189)
!2202 = !DILocation(line: 1062, column: 203, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !901, file: !361, discriminator: 4)
!2204 = !DILocation(line: 1062, column: 203, scope: !900)
!2205 = !DILocation(line: 1062, column: 203, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !900, file: !361, discriminator: 5)
!2207 = !DILocation(line: 1063, column: 20, scope: !901)
!2208 = !DILocation(line: 1063, column: 9, scope: !901)
!2209 = !DILocation(line: 1063, column: 12, scope: !901)
!2210 = !DILocation(line: 1063, column: 18, scope: !901)
!2211 = !DILocation(line: 1064, column: 5, scope: !901)
!2212 = !DILocation(line: 1066, column: 9, scope: !905)
!2213 = !DILocation(line: 1066, column: 14, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 1)
!2215 = !DILocation(line: 1066, column: 24, scope: !904)
!2216 = !DILocation(line: 1066, column: 54, scope: !904)
!2217 = !DILocation(line: 1066, column: 74, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !904, file: !361, line: 1066, column: 71)
!2219 = !DILocation(line: 1066, column: 91, scope: !2218)
!2220 = !DILocation(line: 1066, column: 71, scope: !2218)
!2221 = !DILocation(line: 1066, column: 101, scope: !2218)
!2222 = !DILocation(line: 1066, column: 71, scope: !904)
!2223 = !DILocation(line: 1066, column: 71, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 2)
!2225 = !DILocation(line: 1066, column: 132, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2218, file: !361, discriminator: 3)
!2227 = !DILocation(line: 1066, column: 150, scope: !2218)
!2228 = !DILocation(line: 1066, column: 160, scope: !2218)
!2229 = !DILocation(line: 1066, column: 185, scope: !2218)
!2230 = !DILocation(line: 1066, column: 116, scope: !2218)
!2231 = !DILocation(line: 1066, column: 204, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !905, file: !361, discriminator: 4)
!2233 = !DILocation(line: 1066, column: 204, scope: !904)
!2234 = !DILocation(line: 1066, column: 204, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 5)
!2236 = !DILocation(line: 1069, column: 12, scope: !882)
!2237 = !DILocation(line: 1069, column: 5, scope: !882)
!2238 = !DILocation(line: 1070, column: 1, scope: !882)
!2239 = !DILocation(line: 230, column: 27, scope: !415)
!2240 = !DILocation(line: 232, column: 29, scope: !415)
!2241 = !DILocation(line: 232, column: 32, scope: !415)
!2242 = !DILocation(line: 232, column: 12, scope: !415)
!2243 = !DILocation(line: 232, column: 5, scope: !415)
!2244 = !DILocation(line: 310, column: 25, scope: !420)
!2245 = !DILocation(line: 310, column: 39, scope: !420)
!2246 = !DILocation(line: 312, column: 5, scope: !420)
!2247 = !DILocation(line: 312, column: 15, scope: !420)
!2248 = !DILocation(line: 312, column: 21, scope: !420)
!2249 = !DILocation(line: 312, column: 46, scope: !420)
!2250 = !DILocation(line: 312, column: 27, scope: !420)
!2251 = !DILocation(line: 313, column: 10, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !420, file: !361, line: 313, column: 9)
!2253 = !DILocation(line: 313, column: 9, scope: !420)
!2254 = !DILocation(line: 314, column: 9, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !361, line: 313, column: 15)
!2256 = !DILocation(line: 316, column: 30, scope: !420)
!2257 = !DILocation(line: 316, column: 33, scope: !420)
!2258 = !DILocation(line: 316, column: 11, scope: !420)
!2259 = !DILocation(line: 316, column: 9, scope: !420)
!2260 = !DILocation(line: 317, column: 5, scope: !420)
!2261 = !DILocation(line: 317, column: 10, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !429, file: !361, discriminator: 1)
!2263 = !DILocation(line: 317, column: 20, scope: !429)
!2264 = !DILocation(line: 317, column: 50, scope: !429)
!2265 = !DILocation(line: 317, column: 64, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !429, file: !361, line: 317, column: 61)
!2267 = !DILocation(line: 317, column: 81, scope: !2266)
!2268 = !DILocation(line: 317, column: 61, scope: !2266)
!2269 = !DILocation(line: 317, column: 91, scope: !2266)
!2270 = !DILocation(line: 317, column: 61, scope: !429)
!2271 = !DILocation(line: 317, column: 61, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !429, file: !361, discriminator: 2)
!2273 = !DILocation(line: 317, column: 122, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2266, file: !361, discriminator: 3)
!2275 = !DILocation(line: 317, column: 140, scope: !2266)
!2276 = !DILocation(line: 317, column: 150, scope: !2266)
!2277 = !DILocation(line: 317, column: 175, scope: !2266)
!2278 = !DILocation(line: 317, column: 106, scope: !2266)
!2279 = !DILocation(line: 317, column: 194, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !420, file: !361, discriminator: 4)
!2281 = !DILocation(line: 317, column: 194, scope: !429)
!2282 = !DILocation(line: 317, column: 194, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !429, file: !361, discriminator: 5)
!2284 = !DILocation(line: 318, column: 12, scope: !420)
!2285 = !DILocation(line: 318, column: 5, scope: !420)
!2286 = !DILocation(line: 319, column: 1, scope: !420)
!2287 = !DILocation(line: 412, column: 29, scope: !470)
!2288 = !DILocation(line: 412, column: 42, scope: !470)
!2289 = !DILocation(line: 414, column: 24, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !470, file: !361, line: 414, column: 9)
!2291 = !DILocation(line: 414, column: 30, scope: !2290)
!2292 = !DILocation(line: 414, column: 39, scope: !2290)
!2293 = !DILocation(line: 414, column: 56, scope: !2290)
!2294 = !DILocation(line: 414, column: 74, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2290, file: !361, discriminator: 1)
!2296 = !DILocation(line: 414, column: 80, scope: !2290)
!2297 = !DILocation(line: 414, column: 89, scope: !2290)
!2298 = !DILocation(line: 414, column: 9, scope: !470)
!2299 = !DILocation(line: 415, column: 36, scope: !2290)
!2300 = !DILocation(line: 415, column: 39, scope: !2290)
!2301 = !DILocation(line: 415, column: 16, scope: !2290)
!2302 = !DILocation(line: 415, column: 9, scope: !2290)
!2303 = !DILocation(line: 417, column: 51, scope: !470)
!2304 = !DILocation(line: 417, column: 40, scope: !470)
!2305 = !DILocation(line: 417, column: 54, scope: !470)
!2306 = !DILocation(line: 417, column: 17, scope: !470)
!2307 = !DILocation(line: 417, column: 12, scope: !470)
!2308 = !DILocation(line: 417, column: 5, scope: !470)
!2309 = !DILocation(line: 419, column: 1, scope: !470)
!2310 = !DILocation(line: 251, column: 33, scope: !430)
!2311 = !DILocation(line: 251, column: 46, scope: !430)
!2312 = !DILocation(line: 253, column: 5, scope: !430)
!2313 = !DILocation(line: 253, column: 9, scope: !430)
!2314 = !DILocation(line: 254, column: 5, scope: !430)
!2315 = !DILocation(line: 254, column: 15, scope: !430)
!2316 = !DILocation(line: 254, column: 19, scope: !430)
!2317 = !DILocation(line: 256, column: 5, scope: !430)
!2318 = !DILocation(line: 256, column: 15, scope: !430)
!2319 = !DILocation(line: 256, column: 22, scope: !430)
!2320 = !DILocation(line: 257, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !430, file: !361, line: 257, column: 9)
!2322 = !DILocation(line: 257, column: 14, scope: !2321)
!2323 = !DILocation(line: 257, column: 9, scope: !430)
!2324 = !DILocation(line: 258, column: 9, scope: !2321)
!2325 = !DILocation(line: 267, column: 43, scope: !430)
!2326 = !DILocation(line: 267, column: 48, scope: !430)
!2327 = !DILocation(line: 267, column: 18, scope: !430)
!2328 = !DILocation(line: 267, column: 16, scope: !430)
!2329 = !DILocation(line: 268, column: 9, scope: !443)
!2330 = !DILocation(line: 268, column: 20, scope: !443)
!2331 = !DILocation(line: 268, column: 9, scope: !430)
!2332 = !DILocation(line: 269, column: 9, scope: !442)
!2333 = !DILocation(line: 269, column: 14, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !441, file: !361, discriminator: 1)
!2335 = !DILocation(line: 269, column: 24, scope: !441)
!2336 = !DILocation(line: 269, column: 54, scope: !441)
!2337 = !DILocation(line: 269, column: 69, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !441, file: !361, line: 269, column: 66)
!2339 = !DILocation(line: 269, column: 86, scope: !2338)
!2340 = !DILocation(line: 269, column: 66, scope: !2338)
!2341 = !DILocation(line: 269, column: 96, scope: !2338)
!2342 = !DILocation(line: 269, column: 66, scope: !441)
!2343 = !DILocation(line: 269, column: 66, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !441, file: !361, discriminator: 2)
!2345 = !DILocation(line: 269, column: 127, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2338, file: !361, discriminator: 3)
!2347 = !DILocation(line: 269, column: 145, scope: !2338)
!2348 = !DILocation(line: 269, column: 155, scope: !2338)
!2349 = !DILocation(line: 269, column: 180, scope: !2338)
!2350 = !DILocation(line: 269, column: 111, scope: !2338)
!2351 = !DILocation(line: 269, column: 199, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !442, file: !361, discriminator: 4)
!2353 = !DILocation(line: 269, column: 199, scope: !441)
!2354 = !DILocation(line: 269, column: 199, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !441, file: !361, discriminator: 5)
!2356 = !DILocation(line: 270, column: 9, scope: !442)
!2357 = !DILocation(line: 272, column: 9, scope: !449)
!2358 = !DILocation(line: 272, column: 20, scope: !449)
!2359 = !DILocation(line: 272, column: 9, scope: !430)
!2360 = !DILocation(line: 273, column: 24, scope: !448)
!2361 = !DILocation(line: 273, column: 27, scope: !448)
!2362 = !DILocation(line: 273, column: 35, scope: !448)
!2363 = !DILocation(line: 273, column: 11, scope: !448)
!2364 = !DILocation(line: 273, column: 9, scope: !448)
!2365 = !DILocation(line: 274, column: 12, scope: !447)
!2366 = !DILocation(line: 274, column: 11, scope: !448)
!2367 = !DILocation(line: 275, column: 9, scope: !446)
!2368 = !DILocation(line: 275, column: 14, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !445, file: !361, discriminator: 1)
!2370 = !DILocation(line: 275, column: 24, scope: !445)
!2371 = !DILocation(line: 275, column: 54, scope: !445)
!2372 = !DILocation(line: 275, column: 69, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !445, file: !361, line: 275, column: 66)
!2374 = !DILocation(line: 275, column: 86, scope: !2373)
!2375 = !DILocation(line: 275, column: 66, scope: !2373)
!2376 = !DILocation(line: 275, column: 96, scope: !2373)
!2377 = !DILocation(line: 275, column: 66, scope: !445)
!2378 = !DILocation(line: 275, column: 66, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !445, file: !361, discriminator: 2)
!2380 = !DILocation(line: 275, column: 127, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2373, file: !361, discriminator: 3)
!2382 = !DILocation(line: 275, column: 145, scope: !2373)
!2383 = !DILocation(line: 275, column: 155, scope: !2373)
!2384 = !DILocation(line: 275, column: 180, scope: !2373)
!2385 = !DILocation(line: 275, column: 111, scope: !2373)
!2386 = !DILocation(line: 275, column: 199, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !446, file: !361, discriminator: 4)
!2388 = !DILocation(line: 275, column: 199, scope: !445)
!2389 = !DILocation(line: 275, column: 199, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !445, file: !361, discriminator: 5)
!2391 = !DILocation(line: 276, column: 9, scope: !446)
!2392 = !DILocation(line: 278, column: 5, scope: !448)
!2393 = !DILocation(line: 279, column: 11, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !449, file: !361, line: 278, column: 12)
!2395 = !DILocation(line: 279, column: 9, scope: !2394)
!2396 = !DILocation(line: 280, column: 23, scope: !2394)
!2397 = !DILocation(line: 280, column: 28, scope: !2394)
!2398 = !DILocation(line: 280, column: 37, scope: !2394)
!2399 = !DILocation(line: 288, column: 43, scope: !430)
!2400 = !DILocation(line: 288, column: 46, scope: !430)
!2401 = !DILocation(line: 288, column: 18, scope: !430)
!2402 = !DILocation(line: 288, column: 16, scope: !430)
!2403 = !DILocation(line: 289, column: 5, scope: !430)
!2404 = !DILocation(line: 289, column: 10, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !451, file: !361, discriminator: 1)
!2406 = !DILocation(line: 289, column: 20, scope: !451)
!2407 = !DILocation(line: 289, column: 50, scope: !451)
!2408 = !DILocation(line: 289, column: 65, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !451, file: !361, line: 289, column: 62)
!2410 = !DILocation(line: 289, column: 82, scope: !2409)
!2411 = !DILocation(line: 289, column: 62, scope: !2409)
!2412 = !DILocation(line: 289, column: 92, scope: !2409)
!2413 = !DILocation(line: 289, column: 62, scope: !451)
!2414 = !DILocation(line: 289, column: 62, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !451, file: !361, discriminator: 2)
!2416 = !DILocation(line: 289, column: 123, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2409, file: !361, discriminator: 3)
!2418 = !DILocation(line: 289, column: 141, scope: !2409)
!2419 = !DILocation(line: 289, column: 151, scope: !2409)
!2420 = !DILocation(line: 289, column: 176, scope: !2409)
!2421 = !DILocation(line: 289, column: 107, scope: !2409)
!2422 = !DILocation(line: 289, column: 195, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !430, file: !361, discriminator: 4)
!2424 = !DILocation(line: 289, column: 195, scope: !451)
!2425 = !DILocation(line: 289, column: 195, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !451, file: !361, discriminator: 5)
!2427 = !DILocation(line: 290, column: 9, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !430, file: !361, line: 290, column: 9)
!2429 = !DILocation(line: 290, column: 20, scope: !2428)
!2430 = !DILocation(line: 290, column: 9, scope: !430)
!2431 = !DILocation(line: 291, column: 47, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !361, line: 290, column: 26)
!2433 = !DILocation(line: 291, column: 50, scope: !2432)
!2434 = !DILocation(line: 291, column: 53, scope: !2432)
!2435 = !DILocation(line: 291, column: 22, scope: !2432)
!2436 = !DILocation(line: 291, column: 20, scope: !2432)
!2437 = !DILocation(line: 292, column: 5, scope: !2432)
!2438 = !DILocation(line: 293, column: 9, scope: !455)
!2439 = !DILocation(line: 293, column: 20, scope: !455)
!2440 = !DILocation(line: 293, column: 9, scope: !430)
!2441 = !DILocation(line: 294, column: 8, scope: !454)
!2442 = !DILocation(line: 294, column: 13, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !453, file: !361, discriminator: 1)
!2444 = !DILocation(line: 294, column: 23, scope: !453)
!2445 = !DILocation(line: 294, column: 53, scope: !453)
!2446 = !DILocation(line: 294, column: 65, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !453, file: !361, line: 294, column: 62)
!2448 = !DILocation(line: 294, column: 82, scope: !2447)
!2449 = !DILocation(line: 294, column: 62, scope: !2447)
!2450 = !DILocation(line: 294, column: 92, scope: !2447)
!2451 = !DILocation(line: 294, column: 62, scope: !453)
!2452 = !DILocation(line: 294, column: 62, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !453, file: !361, discriminator: 2)
!2454 = !DILocation(line: 294, column: 123, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2447, file: !361, discriminator: 3)
!2456 = !DILocation(line: 294, column: 141, scope: !2447)
!2457 = !DILocation(line: 294, column: 151, scope: !2447)
!2458 = !DILocation(line: 294, column: 176, scope: !2447)
!2459 = !DILocation(line: 294, column: 107, scope: !2447)
!2460 = !DILocation(line: 294, column: 195, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !454, file: !361, discriminator: 4)
!2462 = !DILocation(line: 294, column: 195, scope: !453)
!2463 = !DILocation(line: 294, column: 195, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !453, file: !361, discriminator: 5)
!2465 = !DILocation(line: 295, column: 8, scope: !454)
!2466 = !DILocation(line: 297, column: 9, scope: !459)
!2467 = !DILocation(line: 297, column: 20, scope: !459)
!2468 = !DILocation(line: 297, column: 9, scope: !430)
!2469 = !DILocation(line: 298, column: 9, scope: !458)
!2470 = !DILocation(line: 298, column: 14, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !457, file: !361, discriminator: 1)
!2472 = !DILocation(line: 298, column: 24, scope: !457)
!2473 = !DILocation(line: 298, column: 54, scope: !457)
!2474 = !DILocation(line: 298, column: 66, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !457, file: !361, line: 298, column: 63)
!2476 = !DILocation(line: 298, column: 83, scope: !2475)
!2477 = !DILocation(line: 298, column: 63, scope: !2475)
!2478 = !DILocation(line: 298, column: 93, scope: !2475)
!2479 = !DILocation(line: 298, column: 63, scope: !457)
!2480 = !DILocation(line: 298, column: 63, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !457, file: !361, discriminator: 2)
!2482 = !DILocation(line: 298, column: 124, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2475, file: !361, discriminator: 3)
!2484 = !DILocation(line: 298, column: 142, scope: !2475)
!2485 = !DILocation(line: 298, column: 152, scope: !2475)
!2486 = !DILocation(line: 298, column: 177, scope: !2475)
!2487 = !DILocation(line: 298, column: 108, scope: !2475)
!2488 = !DILocation(line: 298, column: 196, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !458, file: !361, discriminator: 4)
!2490 = !DILocation(line: 298, column: 196, scope: !457)
!2491 = !DILocation(line: 298, column: 196, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !457, file: !361, discriminator: 5)
!2493 = !DILocation(line: 299, column: 25, scope: !458)
!2494 = !DILocation(line: 299, column: 9, scope: !458)
!2495 = !DILocation(line: 301, column: 9, scope: !458)
!2496 = !DILocation(line: 304, column: 27, scope: !430)
!2497 = !DILocation(line: 304, column: 30, scope: !430)
!2498 = !DILocation(line: 304, column: 14, scope: !430)
!2499 = !DILocation(line: 304, column: 12, scope: !430)
!2500 = !DILocation(line: 305, column: 5, scope: !430)
!2501 = !DILocation(line: 305, column: 10, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !461, file: !361, discriminator: 1)
!2503 = !DILocation(line: 305, column: 20, scope: !461)
!2504 = !DILocation(line: 305, column: 50, scope: !461)
!2505 = !DILocation(line: 305, column: 62, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !461, file: !361, line: 305, column: 59)
!2507 = !DILocation(line: 305, column: 79, scope: !2506)
!2508 = !DILocation(line: 305, column: 59, scope: !2506)
!2509 = !DILocation(line: 305, column: 89, scope: !2506)
!2510 = !DILocation(line: 305, column: 59, scope: !461)
!2511 = !DILocation(line: 305, column: 59, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !461, file: !361, discriminator: 2)
!2513 = !DILocation(line: 305, column: 120, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2506, file: !361, discriminator: 3)
!2515 = !DILocation(line: 305, column: 138, scope: !2506)
!2516 = !DILocation(line: 305, column: 148, scope: !2506)
!2517 = !DILocation(line: 305, column: 173, scope: !2506)
!2518 = !DILocation(line: 305, column: 104, scope: !2506)
!2519 = !DILocation(line: 305, column: 192, scope: !2423)
!2520 = !DILocation(line: 305, column: 192, scope: !461)
!2521 = !DILocation(line: 305, column: 192, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !461, file: !361, discriminator: 5)
!2523 = !DILocation(line: 306, column: 12, scope: !430)
!2524 = !DILocation(line: 306, column: 5, scope: !430)
!2525 = !DILocation(line: 307, column: 1, scope: !430)
!2526 = !DILocation(line: 236, column: 27, scope: !462)
!2527 = !DILocation(line: 236, column: 40, scope: !462)
!2528 = !DILocation(line: 238, column: 5, scope: !462)
!2529 = !DILocation(line: 238, column: 15, scope: !462)
!2530 = !DILocation(line: 238, column: 22, scope: !462)
!2531 = !DILocation(line: 242, column: 30, scope: !462)
!2532 = !DILocation(line: 242, column: 33, scope: !462)
!2533 = !DILocation(line: 242, column: 36, scope: !462)
!2534 = !DILocation(line: 242, column: 12, scope: !462)
!2535 = !DILocation(line: 242, column: 10, scope: !462)
!2536 = !DILocation(line: 243, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !462, file: !361, line: 243, column: 9)
!2538 = !DILocation(line: 243, column: 9, scope: !462)
!2539 = !DILocation(line: 244, column: 9, scope: !2537)
!2540 = !DILocation(line: 245, column: 27, scope: !462)
!2541 = !DILocation(line: 245, column: 30, scope: !462)
!2542 = !DILocation(line: 245, column: 37, scope: !462)
!2543 = !DILocation(line: 245, column: 14, scope: !462)
!2544 = !DILocation(line: 245, column: 12, scope: !462)
!2545 = !DILocation(line: 246, column: 5, scope: !462)
!2546 = !DILocation(line: 246, column: 10, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !469, file: !361, discriminator: 1)
!2548 = !DILocation(line: 246, column: 20, scope: !469)
!2549 = !DILocation(line: 246, column: 50, scope: !469)
!2550 = !DILocation(line: 246, column: 65, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !469, file: !361, line: 246, column: 62)
!2552 = !DILocation(line: 246, column: 82, scope: !2551)
!2553 = !DILocation(line: 246, column: 62, scope: !2551)
!2554 = !DILocation(line: 246, column: 92, scope: !2551)
!2555 = !DILocation(line: 246, column: 62, scope: !469)
!2556 = !DILocation(line: 246, column: 62, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !469, file: !361, discriminator: 2)
!2558 = !DILocation(line: 246, column: 123, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2551, file: !361, discriminator: 3)
!2560 = !DILocation(line: 246, column: 141, scope: !2551)
!2561 = !DILocation(line: 246, column: 151, scope: !2551)
!2562 = !DILocation(line: 246, column: 176, scope: !2551)
!2563 = !DILocation(line: 246, column: 107, scope: !2551)
!2564 = !DILocation(line: 246, column: 195, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !462, file: !361, discriminator: 4)
!2566 = !DILocation(line: 246, column: 195, scope: !469)
!2567 = !DILocation(line: 246, column: 195, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !469, file: !361, discriminator: 5)
!2569 = !DILocation(line: 247, column: 12, scope: !462)
!2570 = !DILocation(line: 247, column: 5, scope: !462)
!2571 = !DILocation(line: 248, column: 1, scope: !462)
!2572 = !DILocation(line: 362, column: 34, scope: !476)
!2573 = !DILocation(line: 362, column: 47, scope: !476)
!2574 = !DILocation(line: 364, column: 5, scope: !476)
!2575 = !DILocation(line: 364, column: 9, scope: !476)
!2576 = !DILocation(line: 364, column: 15, scope: !476)
!2577 = !DILocation(line: 364, column: 21, scope: !476)
!2578 = !DILocation(line: 365, column: 5, scope: !476)
!2579 = !DILocation(line: 365, column: 15, scope: !476)
!2580 = !DILocation(line: 366, column: 5, scope: !476)
!2581 = !DILocation(line: 366, column: 15, scope: !476)
!2582 = !DILocation(line: 367, column: 5, scope: !476)
!2583 = !DILocation(line: 367, column: 15, scope: !476)
!2584 = !DILocation(line: 368, column: 5, scope: !476)
!2585 = !DILocation(line: 368, column: 9, scope: !476)
!2586 = !DILocation(line: 370, column: 12, scope: !476)
!2587 = !DILocation(line: 370, column: 10, scope: !476)
!2588 = !DILocation(line: 371, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !476, file: !361, line: 371, column: 9)
!2590 = !DILocation(line: 371, column: 14, scope: !2589)
!2591 = !DILocation(line: 371, column: 9, scope: !476)
!2592 = !DILocation(line: 372, column: 9, scope: !2589)
!2593 = !DILocation(line: 376, column: 37, scope: !476)
!2594 = !DILocation(line: 376, column: 40, scope: !476)
!2595 = !DILocation(line: 376, column: 46, scope: !476)
!2596 = !DILocation(line: 376, column: 12, scope: !476)
!2597 = !DILocation(line: 376, column: 10, scope: !476)
!2598 = !DILocation(line: 377, column: 9, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !476, file: !361, line: 377, column: 9)
!2600 = !DILocation(line: 377, column: 14, scope: !2599)
!2601 = !DILocation(line: 377, column: 9, scope: !476)
!2602 = !DILocation(line: 378, column: 9, scope: !2599)
!2603 = !DILocation(line: 379, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !476, file: !361, line: 379, column: 9)
!2605 = !DILocation(line: 379, column: 14, scope: !2604)
!2606 = !DILocation(line: 379, column: 9, scope: !476)
!2607 = !DILocation(line: 380, column: 41, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !361, line: 379, column: 20)
!2609 = !DILocation(line: 380, column: 44, scope: !2608)
!2610 = !DILocation(line: 380, column: 51, scope: !2608)
!2611 = !DILocation(line: 380, column: 16, scope: !2608)
!2612 = !DILocation(line: 380, column: 14, scope: !2608)
!2613 = !DILocation(line: 381, column: 41, scope: !2608)
!2614 = !DILocation(line: 381, column: 45, scope: !2608)
!2615 = !DILocation(line: 381, column: 48, scope: !2608)
!2616 = !DILocation(line: 381, column: 16, scope: !2608)
!2617 = !DILocation(line: 381, column: 14, scope: !2608)
!2618 = !DILocation(line: 382, column: 5, scope: !2608)
!2619 = !DILocation(line: 384, column: 41, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2604, file: !361, line: 383, column: 10)
!2621 = !DILocation(line: 384, column: 45, scope: !2620)
!2622 = !DILocation(line: 384, column: 48, scope: !2620)
!2623 = !DILocation(line: 384, column: 16, scope: !2620)
!2624 = !DILocation(line: 384, column: 14, scope: !2620)
!2625 = !DILocation(line: 385, column: 41, scope: !2620)
!2626 = !DILocation(line: 385, column: 44, scope: !2620)
!2627 = !DILocation(line: 385, column: 50, scope: !2620)
!2628 = !DILocation(line: 385, column: 16, scope: !2620)
!2629 = !DILocation(line: 385, column: 14, scope: !2620)
!2630 = !DILocation(line: 388, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !476, file: !361, line: 388, column: 9)
!2632 = !DILocation(line: 388, column: 14, scope: !2631)
!2633 = !DILocation(line: 388, column: 20, scope: !2631)
!2634 = !DILocation(line: 388, column: 23, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2631, file: !361, discriminator: 1)
!2636 = !DILocation(line: 388, column: 28, scope: !2631)
!2637 = !DILocation(line: 388, column: 9, scope: !476)
!2638 = !DILocation(line: 389, column: 9, scope: !2631)
!2639 = !DILocation(line: 390, column: 9, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !476, file: !361, line: 390, column: 9)
!2641 = !DILocation(line: 390, column: 14, scope: !2640)
!2642 = !DILocation(line: 390, column: 19, scope: !2640)
!2643 = !DILocation(line: 390, column: 22, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2640, file: !361, discriminator: 1)
!2645 = !DILocation(line: 390, column: 27, scope: !2640)
!2646 = !DILocation(line: 390, column: 9, scope: !476)
!2647 = !DILocation(line: 391, column: 16, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2640, file: !361, line: 390, column: 33)
!2649 = !DILocation(line: 392, column: 9, scope: !2648)
!2650 = !DILocation(line: 396, column: 30, scope: !476)
!2651 = !DILocation(line: 396, column: 34, scope: !476)
!2652 = !DILocation(line: 396, column: 37, scope: !476)
!2653 = !DILocation(line: 396, column: 12, scope: !476)
!2654 = !DILocation(line: 396, column: 10, scope: !476)
!2655 = !DILocation(line: 397, column: 9, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !476, file: !361, line: 397, column: 9)
!2657 = !DILocation(line: 397, column: 14, scope: !2656)
!2658 = !DILocation(line: 397, column: 9, scope: !476)
!2659 = !DILocation(line: 398, column: 9, scope: !2656)
!2660 = !DILocation(line: 399, column: 31, scope: !476)
!2661 = !DILocation(line: 399, column: 37, scope: !476)
!2662 = !DILocation(line: 399, column: 40, scope: !476)
!2663 = !DILocation(line: 399, column: 12, scope: !476)
!2664 = !DILocation(line: 399, column: 10, scope: !476)
!2665 = !DILocation(line: 400, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !476, file: !361, line: 400, column: 9)
!2667 = !DILocation(line: 400, column: 14, scope: !2666)
!2668 = !DILocation(line: 400, column: 9, scope: !476)
!2669 = !DILocation(line: 401, column: 9, scope: !2666)
!2670 = !DILocation(line: 403, column: 39, scope: !476)
!2671 = !DILocation(line: 403, column: 45, scope: !476)
!2672 = !DILocation(line: 403, column: 14, scope: !476)
!2673 = !DILocation(line: 403, column: 12, scope: !476)
!2674 = !DILocation(line: 403, column: 5, scope: !476)
!2675 = !DILocation(line: 405, column: 5, scope: !476)
!2676 = !DILocation(line: 405, column: 10, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !488, file: !361, discriminator: 1)
!2678 = !DILocation(line: 405, column: 20, scope: !488)
!2679 = !DILocation(line: 405, column: 51, scope: !488)
!2680 = !DILocation(line: 405, column: 62, scope: !491)
!2681 = !DILocation(line: 405, column: 78, scope: !491)
!2682 = !DILocation(line: 405, column: 62, scope: !488)
!2683 = !DILocation(line: 405, column: 93, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !491, file: !361, discriminator: 2)
!2685 = !DILocation(line: 405, column: 98, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !490, file: !361, discriminator: 4)
!2687 = !DILocation(line: 405, column: 108, scope: !490)
!2688 = !DILocation(line: 405, column: 138, scope: !490)
!2689 = !DILocation(line: 405, column: 164, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !490, file: !361, line: 405, column: 161)
!2691 = !DILocation(line: 405, column: 181, scope: !2690)
!2692 = !DILocation(line: 405, column: 161, scope: !2690)
!2693 = !DILocation(line: 405, column: 191, scope: !2690)
!2694 = !DILocation(line: 405, column: 161, scope: !490)
!2695 = !DILocation(line: 405, column: 161, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !490, file: !361, discriminator: 5)
!2697 = !DILocation(line: 405, column: 222, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2690, file: !361, discriminator: 6)
!2699 = !DILocation(line: 405, column: 240, scope: !2690)
!2700 = !DILocation(line: 405, column: 250, scope: !2690)
!2701 = !DILocation(line: 405, column: 275, scope: !2690)
!2702 = !DILocation(line: 405, column: 206, scope: !2690)
!2703 = !DILocation(line: 405, column: 294, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !491, file: !361, discriminator: 7)
!2705 = !DILocation(line: 405, column: 294, scope: !490)
!2706 = !DILocation(line: 405, column: 294, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !490, file: !361, discriminator: 8)
!2708 = !DILocation(line: 405, column: 294, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !490, file: !361, discriminator: 9)
!2710 = !DILocation(line: 405, column: 307, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2712, file: !361, discriminator: 10)
!2712 = !DILexicalBlockFile(scope: !476, file: !361, discriminator: 3)
!2713 = !DILocation(line: 405, column: 307, scope: !488)
!2714 = !DILocation(line: 405, column: 307, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !488, file: !361, discriminator: 11)
!2716 = !DILocation(line: 406, column: 5, scope: !476)
!2717 = !DILocation(line: 406, column: 10, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !493, file: !361, discriminator: 1)
!2719 = !DILocation(line: 406, column: 20, scope: !493)
!2720 = !DILocation(line: 406, column: 51, scope: !493)
!2721 = !DILocation(line: 406, column: 62, scope: !496)
!2722 = !DILocation(line: 406, column: 78, scope: !496)
!2723 = !DILocation(line: 406, column: 62, scope: !493)
!2724 = !DILocation(line: 406, column: 93, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !496, file: !361, discriminator: 2)
!2726 = !DILocation(line: 406, column: 98, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !495, file: !361, discriminator: 4)
!2728 = !DILocation(line: 406, column: 108, scope: !495)
!2729 = !DILocation(line: 406, column: 138, scope: !495)
!2730 = !DILocation(line: 406, column: 164, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !495, file: !361, line: 406, column: 161)
!2732 = !DILocation(line: 406, column: 181, scope: !2731)
!2733 = !DILocation(line: 406, column: 161, scope: !2731)
!2734 = !DILocation(line: 406, column: 191, scope: !2731)
!2735 = !DILocation(line: 406, column: 161, scope: !495)
!2736 = !DILocation(line: 406, column: 161, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !495, file: !361, discriminator: 5)
!2738 = !DILocation(line: 406, column: 222, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2731, file: !361, discriminator: 6)
!2740 = !DILocation(line: 406, column: 240, scope: !2731)
!2741 = !DILocation(line: 406, column: 250, scope: !2731)
!2742 = !DILocation(line: 406, column: 275, scope: !2731)
!2743 = !DILocation(line: 406, column: 206, scope: !2731)
!2744 = !DILocation(line: 406, column: 294, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !496, file: !361, discriminator: 7)
!2746 = !DILocation(line: 406, column: 294, scope: !495)
!2747 = !DILocation(line: 406, column: 294, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !495, file: !361, discriminator: 8)
!2749 = !DILocation(line: 406, column: 294, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !495, file: !361, discriminator: 9)
!2751 = !DILocation(line: 406, column: 307, scope: !2711)
!2752 = !DILocation(line: 406, column: 307, scope: !493)
!2753 = !DILocation(line: 406, column: 307, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !493, file: !361, discriminator: 11)
!2755 = !DILocation(line: 407, column: 5, scope: !476)
!2756 = !DILocation(line: 407, column: 10, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !498, file: !361, discriminator: 1)
!2758 = !DILocation(line: 407, column: 20, scope: !498)
!2759 = !DILocation(line: 407, column: 51, scope: !498)
!2760 = !DILocation(line: 407, column: 62, scope: !501)
!2761 = !DILocation(line: 407, column: 78, scope: !501)
!2762 = !DILocation(line: 407, column: 62, scope: !498)
!2763 = !DILocation(line: 407, column: 93, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !501, file: !361, discriminator: 2)
!2765 = !DILocation(line: 407, column: 98, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !500, file: !361, discriminator: 4)
!2767 = !DILocation(line: 407, column: 108, scope: !500)
!2768 = !DILocation(line: 407, column: 138, scope: !500)
!2769 = !DILocation(line: 407, column: 164, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !500, file: !361, line: 407, column: 161)
!2771 = !DILocation(line: 407, column: 181, scope: !2770)
!2772 = !DILocation(line: 407, column: 161, scope: !2770)
!2773 = !DILocation(line: 407, column: 191, scope: !2770)
!2774 = !DILocation(line: 407, column: 161, scope: !500)
!2775 = !DILocation(line: 407, column: 161, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !500, file: !361, discriminator: 5)
!2777 = !DILocation(line: 407, column: 222, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2770, file: !361, discriminator: 6)
!2779 = !DILocation(line: 407, column: 240, scope: !2770)
!2780 = !DILocation(line: 407, column: 250, scope: !2770)
!2781 = !DILocation(line: 407, column: 275, scope: !2770)
!2782 = !DILocation(line: 407, column: 206, scope: !2770)
!2783 = !DILocation(line: 407, column: 294, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !501, file: !361, discriminator: 7)
!2785 = !DILocation(line: 407, column: 294, scope: !500)
!2786 = !DILocation(line: 407, column: 294, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !500, file: !361, discriminator: 8)
!2788 = !DILocation(line: 407, column: 294, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !500, file: !361, discriminator: 9)
!2790 = !DILocation(line: 407, column: 307, scope: !2711)
!2791 = !DILocation(line: 407, column: 307, scope: !498)
!2792 = !DILocation(line: 407, column: 307, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !498, file: !361, discriminator: 11)
!2794 = !DILocation(line: 408, column: 12, scope: !476)
!2795 = !DILocation(line: 409, column: 1, scope: !476)
!2796 = !DILocation(line: 408, column: 5, scope: !476)
!2797 = !DILocation(line: 644, column: 30, scope: !502)
!2798 = !DILocation(line: 644, column: 46, scope: !502)
!2799 = !DILocation(line: 646, column: 11, scope: !508)
!2800 = !DILocation(line: 646, column: 18, scope: !508)
!2801 = !DILocation(line: 646, column: 27, scope: !508)
!2802 = !{!1042, !1012, i64 96}
!2803 = !DILocation(line: 646, column: 40, scope: !508)
!2804 = !DILocation(line: 646, column: 54, scope: !508)
!2805 = !DILocation(line: 646, column: 58, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !508, file: !361, discriminator: 1)
!2807 = !DILocation(line: 646, column: 65, scope: !508)
!2808 = !DILocation(line: 646, column: 74, scope: !508)
!2809 = !DILocation(line: 646, column: 88, scope: !508)
!2810 = !{!2811, !1012, i64 264}
!2811 = !{!"", !1012, i64 0, !1012, i64 8, !1012, i64 16, !1012, i64 24, !1012, i64 32, !1012, i64 40, !1012, i64 48, !1012, i64 56, !1012, i64 64, !1012, i64 72, !1012, i64 80, !1012, i64 88, !1012, i64 96, !1012, i64 104, !1012, i64 112, !1012, i64 120, !1012, i64 128, !1012, i64 136, !1012, i64 144, !1012, i64 152, !1012, i64 160, !1012, i64 168, !1012, i64 176, !1012, i64 184, !1012, i64 192, !1012, i64 200, !1012, i64 208, !1012, i64 216, !1012, i64 224, !1012, i64 232, !1012, i64 240, !1012, i64 248, !1012, i64 256, !1012, i64 264}
!2812 = !DILocation(line: 646, column: 97, scope: !508)
!2813 = !DILocation(line: 646, column: 9, scope: !502)
!2814 = !DILocation(line: 647, column: 9, scope: !507)
!2815 = !DILocation(line: 647, column: 19, scope: !507)
!2816 = !DILocation(line: 647, column: 23, scope: !507)
!2817 = !DILocation(line: 648, column: 28, scope: !507)
!2818 = !DILocation(line: 648, column: 13, scope: !507)
!2819 = !DILocation(line: 648, column: 11, scope: !507)
!2820 = !DILocation(line: 649, column: 14, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !507, file: !361, line: 649, column: 13)
!2822 = !DILocation(line: 649, column: 13, scope: !507)
!2823 = !DILocation(line: 650, column: 13, scope: !2821)
!2824 = !DILocation(line: 651, column: 37, scope: !507)
!2825 = !DILocation(line: 651, column: 43, scope: !507)
!2826 = !DILocation(line: 651, column: 18, scope: !507)
!2827 = !DILocation(line: 651, column: 16, scope: !507)
!2828 = !DILocation(line: 652, column: 9, scope: !507)
!2829 = !DILocation(line: 652, column: 14, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !511, file: !361, discriminator: 1)
!2831 = !DILocation(line: 652, column: 24, scope: !511)
!2832 = !DILocation(line: 652, column: 54, scope: !511)
!2833 = !DILocation(line: 652, column: 66, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !511, file: !361, line: 652, column: 63)
!2835 = !DILocation(line: 652, column: 83, scope: !2834)
!2836 = !DILocation(line: 652, column: 63, scope: !2834)
!2837 = !DILocation(line: 652, column: 93, scope: !2834)
!2838 = !DILocation(line: 652, column: 63, scope: !511)
!2839 = !DILocation(line: 652, column: 63, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !511, file: !361, discriminator: 2)
!2841 = !DILocation(line: 652, column: 124, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2834, file: !361, discriminator: 3)
!2843 = !DILocation(line: 652, column: 142, scope: !2834)
!2844 = !DILocation(line: 652, column: 152, scope: !2834)
!2845 = !DILocation(line: 652, column: 177, scope: !2834)
!2846 = !DILocation(line: 652, column: 108, scope: !2834)
!2847 = !DILocation(line: 652, column: 196, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !507, file: !361, discriminator: 4)
!2849 = !DILocation(line: 652, column: 196, scope: !511)
!2850 = !DILocation(line: 652, column: 196, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !511, file: !361, discriminator: 5)
!2852 = !DILocation(line: 653, column: 16, scope: !507)
!2853 = !DILocation(line: 653, column: 9, scope: !507)
!2854 = !DILocation(line: 654, column: 5, scope: !508)
!2855 = !DILocation(line: 655, column: 24, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !502, file: !361, line: 655, column: 9)
!2857 = !DILocation(line: 655, column: 32, scope: !2856)
!2858 = !DILocation(line: 655, column: 41, scope: !2856)
!2859 = !DILocation(line: 655, column: 9, scope: !502)
!2860 = !DILocation(line: 656, column: 30, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !361, line: 655, column: 60)
!2862 = !DILocation(line: 656, column: 36, scope: !2861)
!2863 = !DILocation(line: 656, column: 16, scope: !2861)
!2864 = !DILocation(line: 656, column: 9, scope: !2861)
!2865 = !DILocation(line: 658, column: 18, scope: !502)
!2866 = !DILocation(line: 660, column: 18, scope: !502)
!2867 = !DILocation(line: 660, column: 24, scope: !502)
!2868 = !DILocation(line: 660, column: 33, scope: !502)
!2869 = !{!1042, !1012, i64 24}
!2870 = !DILocation(line: 658, column: 5, scope: !502)
!2871 = !DILocation(line: 661, column: 5, scope: !502)
!2872 = !DILocation(line: 662, column: 1, scope: !502)
!2873 = !DILocation(line: 322, column: 28, scope: !512)
!2874 = !DILocation(line: 322, column: 41, scope: !512)
!2875 = !DILocation(line: 324, column: 5, scope: !512)
!2876 = !DILocation(line: 324, column: 20, scope: !512)
!2877 = !DILocation(line: 324, column: 46, scope: !512)
!2878 = !DILocation(line: 324, column: 28, scope: !512)
!2879 = !DILocation(line: 325, column: 5, scope: !512)
!2880 = !DILocation(line: 325, column: 18, scope: !512)
!2881 = !DILocation(line: 326, column: 5, scope: !512)
!2882 = !DILocation(line: 326, column: 15, scope: !512)
!2883 = !DILocation(line: 326, column: 36, scope: !512)
!2884 = !DILocation(line: 326, column: 56, scope: !512)
!2885 = !DILocation(line: 327, column: 5, scope: !512)
!2886 = !DILocation(line: 327, column: 15, scope: !512)
!2887 = !DILocation(line: 327, column: 39, scope: !512)
!2888 = !DILocation(line: 327, column: 62, scope: !512)
!2889 = !DILocation(line: 328, column: 5, scope: !512)
!2890 = !DILocation(line: 328, column: 9, scope: !512)
!2891 = !DILocation(line: 330, column: 37, scope: !512)
!2892 = !DILocation(line: 330, column: 44, scope: !512)
!2893 = !DILocation(line: 330, column: 47, scope: !512)
!2894 = !DILocation(line: 330, column: 13, scope: !512)
!2895 = !DILocation(line: 330, column: 11, scope: !512)
!2896 = !DILocation(line: 331, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !512, file: !361, line: 331, column: 9)
!2898 = !DILocation(line: 331, column: 15, scope: !2897)
!2899 = !DILocation(line: 331, column: 9, scope: !512)
!2900 = !DILocation(line: 332, column: 9, scope: !2897)
!2901 = !DILocation(line: 334, column: 33, scope: !512)
!2902 = !DILocation(line: 334, column: 36, scope: !512)
!2903 = !DILocation(line: 334, column: 42, scope: !512)
!2904 = !DILocation(line: 334, column: 15, scope: !512)
!2905 = !DILocation(line: 334, column: 13, scope: !512)
!2906 = !DILocation(line: 335, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !512, file: !361, line: 335, column: 9)
!2908 = !DILocation(line: 335, column: 17, scope: !2907)
!2909 = !DILocation(line: 335, column: 9, scope: !512)
!2910 = !DILocation(line: 335, column: 32, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2907, file: !361, discriminator: 1)
!2912 = !DILocation(line: 336, column: 5, scope: !512)
!2913 = !DILocation(line: 336, column: 10, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !526, file: !361, discriminator: 1)
!2915 = !DILocation(line: 336, column: 20, scope: !526)
!2916 = !DILocation(line: 336, column: 43, scope: !526)
!2917 = !DILocation(line: 336, column: 54, scope: !530)
!2918 = !DILocation(line: 336, column: 62, scope: !530)
!2919 = !DILocation(line: 336, column: 54, scope: !526)
!2920 = !DILocation(line: 336, column: 86, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !529, file: !361, discriminator: 2)
!2922 = !DILocation(line: 336, column: 100, scope: !529)
!2923 = !DILocation(line: 336, column: 105, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !528, file: !361, discriminator: 4)
!2925 = !DILocation(line: 336, column: 115, scope: !528)
!2926 = !DILocation(line: 336, column: 145, scope: !528)
!2927 = !DILocation(line: 336, column: 163, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !528, file: !361, line: 336, column: 160)
!2929 = !DILocation(line: 336, column: 180, scope: !2928)
!2930 = !DILocation(line: 336, column: 160, scope: !2928)
!2931 = !DILocation(line: 336, column: 190, scope: !2928)
!2932 = !DILocation(line: 336, column: 160, scope: !528)
!2933 = !DILocation(line: 336, column: 160, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !528, file: !361, discriminator: 5)
!2935 = !DILocation(line: 336, column: 221, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2928, file: !361, discriminator: 6)
!2937 = !DILocation(line: 336, column: 239, scope: !2928)
!2938 = !DILocation(line: 336, column: 249, scope: !2928)
!2939 = !DILocation(line: 336, column: 274, scope: !2928)
!2940 = !DILocation(line: 336, column: 205, scope: !2928)
!2941 = !DILocation(line: 336, column: 293, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !529, file: !361, discriminator: 7)
!2943 = !DILocation(line: 336, column: 293, scope: !528)
!2944 = !DILocation(line: 336, column: 293, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !528, file: !361, discriminator: 8)
!2946 = !DILocation(line: 336, column: 306, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !529, file: !361, discriminator: 9)
!2948 = !DILocation(line: 336, column: 308, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2950, file: !361, discriminator: 10)
!2950 = !DILexicalBlockFile(scope: !512, file: !361, discriminator: 3)
!2951 = !DILocation(line: 336, column: 308, scope: !526)
!2952 = !DILocation(line: 336, column: 308, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !526, file: !361, discriminator: 11)
!2954 = !DILocation(line: 338, column: 29, scope: !512)
!2955 = !DILocation(line: 338, column: 32, scope: !512)
!2956 = !DILocation(line: 338, column: 16, scope: !512)
!2957 = !DILocation(line: 338, column: 14, scope: !512)
!2958 = !DILocation(line: 339, column: 9, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !512, file: !361, line: 339, column: 9)
!2960 = !DILocation(line: 339, column: 18, scope: !2959)
!2961 = !DILocation(line: 339, column: 9, scope: !512)
!2962 = !DILocation(line: 339, column: 33, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2959, file: !361, discriminator: 1)
!2964 = !DILocation(line: 340, column: 5, scope: !512)
!2965 = !DILocation(line: 340, column: 10, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !532, file: !361, discriminator: 1)
!2967 = !DILocation(line: 340, column: 20, scope: !532)
!2968 = !DILocation(line: 340, column: 43, scope: !532)
!2969 = !DILocation(line: 340, column: 55, scope: !536)
!2970 = !DILocation(line: 340, column: 63, scope: !536)
!2971 = !DILocation(line: 340, column: 55, scope: !532)
!2972 = !DILocation(line: 340, column: 88, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !535, file: !361, discriminator: 2)
!2974 = !DILocation(line: 340, column: 102, scope: !535)
!2975 = !DILocation(line: 340, column: 107, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !534, file: !361, discriminator: 4)
!2977 = !DILocation(line: 340, column: 117, scope: !534)
!2978 = !DILocation(line: 340, column: 147, scope: !534)
!2979 = !DILocation(line: 340, column: 165, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !534, file: !361, line: 340, column: 162)
!2981 = !DILocation(line: 340, column: 182, scope: !2980)
!2982 = !DILocation(line: 340, column: 162, scope: !2980)
!2983 = !DILocation(line: 340, column: 192, scope: !2980)
!2984 = !DILocation(line: 340, column: 162, scope: !534)
!2985 = !DILocation(line: 340, column: 162, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !534, file: !361, discriminator: 5)
!2987 = !DILocation(line: 340, column: 223, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2980, file: !361, discriminator: 6)
!2989 = !DILocation(line: 340, column: 241, scope: !2980)
!2990 = !DILocation(line: 340, column: 251, scope: !2980)
!2991 = !DILocation(line: 340, column: 276, scope: !2980)
!2992 = !DILocation(line: 340, column: 207, scope: !2980)
!2993 = !DILocation(line: 340, column: 295, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !535, file: !361, discriminator: 7)
!2995 = !DILocation(line: 340, column: 295, scope: !534)
!2996 = !DILocation(line: 340, column: 295, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !534, file: !361, discriminator: 8)
!2998 = !DILocation(line: 340, column: 308, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !535, file: !361, discriminator: 9)
!3000 = !DILocation(line: 340, column: 310, scope: !2949)
!3001 = !DILocation(line: 340, column: 310, scope: !532)
!3002 = !DILocation(line: 340, column: 310, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !532, file: !361, discriminator: 11)
!3004 = !DILocation(line: 342, column: 28, scope: !512)
!3005 = !DILocation(line: 342, column: 31, scope: !512)
!3006 = !DILocation(line: 342, column: 15, scope: !512)
!3007 = !DILocation(line: 342, column: 13, scope: !512)
!3008 = !DILocation(line: 343, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !512, file: !361, line: 343, column: 9)
!3010 = !DILocation(line: 343, column: 17, scope: !3009)
!3011 = !DILocation(line: 343, column: 9, scope: !512)
!3012 = !DILocation(line: 343, column: 32, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3009, file: !361, discriminator: 1)
!3014 = !DILocation(line: 344, column: 5, scope: !512)
!3015 = !DILocation(line: 344, column: 10, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !538, file: !361, discriminator: 1)
!3017 = !DILocation(line: 344, column: 20, scope: !538)
!3018 = !DILocation(line: 344, column: 43, scope: !538)
!3019 = !DILocation(line: 344, column: 54, scope: !542)
!3020 = !DILocation(line: 344, column: 62, scope: !542)
!3021 = !DILocation(line: 344, column: 54, scope: !538)
!3022 = !DILocation(line: 344, column: 86, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !541, file: !361, discriminator: 2)
!3024 = !DILocation(line: 344, column: 100, scope: !541)
!3025 = !DILocation(line: 344, column: 105, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !540, file: !361, discriminator: 4)
!3027 = !DILocation(line: 344, column: 115, scope: !540)
!3028 = !DILocation(line: 344, column: 145, scope: !540)
!3029 = !DILocation(line: 344, column: 163, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !540, file: !361, line: 344, column: 160)
!3031 = !DILocation(line: 344, column: 180, scope: !3030)
!3032 = !DILocation(line: 344, column: 160, scope: !3030)
!3033 = !DILocation(line: 344, column: 190, scope: !3030)
!3034 = !DILocation(line: 344, column: 160, scope: !540)
!3035 = !DILocation(line: 344, column: 160, scope: !3036)
!3036 = !DILexicalBlockFile(scope: !540, file: !361, discriminator: 5)
!3037 = !DILocation(line: 344, column: 221, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3030, file: !361, discriminator: 6)
!3039 = !DILocation(line: 344, column: 239, scope: !3030)
!3040 = !DILocation(line: 344, column: 249, scope: !3030)
!3041 = !DILocation(line: 344, column: 274, scope: !3030)
!3042 = !DILocation(line: 344, column: 205, scope: !3030)
!3043 = !DILocation(line: 344, column: 293, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !541, file: !361, discriminator: 7)
!3045 = !DILocation(line: 344, column: 293, scope: !540)
!3046 = !DILocation(line: 344, column: 293, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !540, file: !361, discriminator: 8)
!3048 = !DILocation(line: 344, column: 306, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !541, file: !361, discriminator: 9)
!3050 = !DILocation(line: 344, column: 308, scope: !2949)
!3051 = !DILocation(line: 344, column: 308, scope: !538)
!3052 = !DILocation(line: 344, column: 308, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !538, file: !361, discriminator: 11)
!3054 = !DILocation(line: 346, column: 46, scope: !512)
!3055 = !DILocation(line: 346, column: 34, scope: !512)
!3056 = !DILocation(line: 346, column: 51, scope: !512)
!3057 = !DILocation(line: 346, column: 61, scope: !512)
!3058 = !DILocation(line: 346, column: 71, scope: !512)
!3059 = !DILocation(line: 346, column: 80, scope: !512)
!3060 = !DILocation(line: 346, column: 14, scope: !512)
!3061 = !DILocation(line: 346, column: 12, scope: !512)
!3062 = !DILocation(line: 347, column: 9, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !512, file: !361, line: 347, column: 9)
!3064 = !DILocation(line: 347, column: 16, scope: !3063)
!3065 = !DILocation(line: 347, column: 9, scope: !512)
!3066 = !DILocation(line: 348, column: 29, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !361, line: 347, column: 31)
!3068 = !DILocation(line: 348, column: 16, scope: !3067)
!3069 = !DILocation(line: 348, column: 9, scope: !3067)
!3070 = !DILocation(line: 347, column: 28, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3063, file: !361, discriminator: 1)
!3072 = !DILocation(line: 351, column: 5, scope: !512)
!3073 = !DILocation(line: 351, column: 10, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !544, file: !361, discriminator: 1)
!3075 = !DILocation(line: 351, column: 20, scope: !544)
!3076 = !DILocation(line: 351, column: 51, scope: !544)
!3077 = !DILocation(line: 351, column: 63, scope: !547)
!3078 = !DILocation(line: 351, column: 79, scope: !547)
!3079 = !DILocation(line: 351, column: 63, scope: !544)
!3080 = !DILocation(line: 351, column: 94, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !547, file: !361, discriminator: 2)
!3082 = !DILocation(line: 351, column: 99, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !546, file: !361, discriminator: 4)
!3084 = !DILocation(line: 351, column: 109, scope: !546)
!3085 = !DILocation(line: 351, column: 139, scope: !546)
!3086 = !DILocation(line: 351, column: 165, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !546, file: !361, line: 351, column: 162)
!3088 = !DILocation(line: 351, column: 182, scope: !3087)
!3089 = !DILocation(line: 351, column: 162, scope: !3087)
!3090 = !DILocation(line: 351, column: 192, scope: !3087)
!3091 = !DILocation(line: 351, column: 162, scope: !546)
!3092 = !DILocation(line: 351, column: 162, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !546, file: !361, discriminator: 5)
!3094 = !DILocation(line: 351, column: 223, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3087, file: !361, discriminator: 6)
!3096 = !DILocation(line: 351, column: 241, scope: !3087)
!3097 = !DILocation(line: 351, column: 251, scope: !3087)
!3098 = !DILocation(line: 351, column: 276, scope: !3087)
!3099 = !DILocation(line: 351, column: 207, scope: !3087)
!3100 = !DILocation(line: 351, column: 295, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !547, file: !361, discriminator: 7)
!3102 = !DILocation(line: 351, column: 295, scope: !546)
!3103 = !DILocation(line: 351, column: 295, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !546, file: !361, discriminator: 8)
!3105 = !DILocation(line: 351, column: 295, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !546, file: !361, discriminator: 9)
!3107 = !DILocation(line: 351, column: 308, scope: !2949)
!3108 = !DILocation(line: 351, column: 308, scope: !544)
!3109 = !DILocation(line: 351, column: 308, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !544, file: !361, discriminator: 11)
!3111 = !DILocation(line: 352, column: 5, scope: !512)
!3112 = !DILocation(line: 352, column: 10, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !549, file: !361, discriminator: 1)
!3114 = !DILocation(line: 352, column: 20, scope: !549)
!3115 = !DILocation(line: 352, column: 51, scope: !549)
!3116 = !DILocation(line: 352, column: 62, scope: !552)
!3117 = !DILocation(line: 352, column: 78, scope: !552)
!3118 = !DILocation(line: 352, column: 62, scope: !549)
!3119 = !DILocation(line: 352, column: 93, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !552, file: !361, discriminator: 2)
!3121 = !DILocation(line: 352, column: 98, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !551, file: !361, discriminator: 4)
!3123 = !DILocation(line: 352, column: 108, scope: !551)
!3124 = !DILocation(line: 352, column: 138, scope: !551)
!3125 = !DILocation(line: 352, column: 164, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !551, file: !361, line: 352, column: 161)
!3127 = !DILocation(line: 352, column: 181, scope: !3126)
!3128 = !DILocation(line: 352, column: 161, scope: !3126)
!3129 = !DILocation(line: 352, column: 191, scope: !3126)
!3130 = !DILocation(line: 352, column: 161, scope: !551)
!3131 = !DILocation(line: 352, column: 161, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !551, file: !361, discriminator: 5)
!3133 = !DILocation(line: 352, column: 222, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3126, file: !361, discriminator: 6)
!3135 = !DILocation(line: 352, column: 240, scope: !3126)
!3136 = !DILocation(line: 352, column: 250, scope: !3126)
!3137 = !DILocation(line: 352, column: 275, scope: !3126)
!3138 = !DILocation(line: 352, column: 206, scope: !3126)
!3139 = !DILocation(line: 352, column: 294, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !552, file: !361, discriminator: 7)
!3141 = !DILocation(line: 352, column: 294, scope: !551)
!3142 = !DILocation(line: 352, column: 294, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !551, file: !361, discriminator: 8)
!3144 = !DILocation(line: 352, column: 294, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !551, file: !361, discriminator: 9)
!3146 = !DILocation(line: 352, column: 307, scope: !2949)
!3147 = !DILocation(line: 352, column: 307, scope: !549)
!3148 = !DILocation(line: 352, column: 307, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !549, file: !361, discriminator: 11)
!3150 = !DILocation(line: 353, column: 5, scope: !512)
!3151 = !DILocation(line: 353, column: 10, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !554, file: !361, discriminator: 1)
!3153 = !DILocation(line: 353, column: 20, scope: !554)
!3154 = !DILocation(line: 353, column: 51, scope: !554)
!3155 = !DILocation(line: 353, column: 62, scope: !557)
!3156 = !DILocation(line: 353, column: 78, scope: !557)
!3157 = !DILocation(line: 353, column: 62, scope: !554)
!3158 = !DILocation(line: 353, column: 93, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !557, file: !361, discriminator: 2)
!3160 = !DILocation(line: 353, column: 98, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !556, file: !361, discriminator: 4)
!3162 = !DILocation(line: 353, column: 108, scope: !556)
!3163 = !DILocation(line: 353, column: 138, scope: !556)
!3164 = !DILocation(line: 353, column: 164, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !556, file: !361, line: 353, column: 161)
!3166 = !DILocation(line: 353, column: 181, scope: !3165)
!3167 = !DILocation(line: 353, column: 161, scope: !3165)
!3168 = !DILocation(line: 353, column: 191, scope: !3165)
!3169 = !DILocation(line: 353, column: 161, scope: !556)
!3170 = !DILocation(line: 353, column: 161, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !556, file: !361, discriminator: 5)
!3172 = !DILocation(line: 353, column: 222, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3165, file: !361, discriminator: 6)
!3174 = !DILocation(line: 353, column: 240, scope: !3165)
!3175 = !DILocation(line: 353, column: 250, scope: !3165)
!3176 = !DILocation(line: 353, column: 275, scope: !3165)
!3177 = !DILocation(line: 353, column: 206, scope: !3165)
!3178 = !DILocation(line: 353, column: 294, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !557, file: !361, discriminator: 7)
!3180 = !DILocation(line: 353, column: 294, scope: !556)
!3181 = !DILocation(line: 353, column: 294, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !556, file: !361, discriminator: 8)
!3183 = !DILocation(line: 353, column: 294, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !556, file: !361, discriminator: 9)
!3185 = !DILocation(line: 353, column: 307, scope: !2949)
!3186 = !DILocation(line: 353, column: 307, scope: !554)
!3187 = !DILocation(line: 353, column: 307, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !554, file: !361, discriminator: 11)
!3189 = !DILocation(line: 354, column: 5, scope: !512)
!3190 = !DILocation(line: 354, column: 10, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !559, file: !361, discriminator: 1)
!3192 = !DILocation(line: 354, column: 20, scope: !559)
!3193 = !DILocation(line: 354, column: 51, scope: !559)
!3194 = !DILocation(line: 354, column: 66, scope: !562)
!3195 = !DILocation(line: 354, column: 82, scope: !562)
!3196 = !DILocation(line: 354, column: 66, scope: !559)
!3197 = !DILocation(line: 354, column: 97, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !562, file: !361, discriminator: 2)
!3199 = !DILocation(line: 354, column: 102, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !561, file: !361, discriminator: 4)
!3201 = !DILocation(line: 354, column: 112, scope: !561)
!3202 = !DILocation(line: 354, column: 142, scope: !561)
!3203 = !DILocation(line: 354, column: 168, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !561, file: !361, line: 354, column: 165)
!3205 = !DILocation(line: 354, column: 185, scope: !3204)
!3206 = !DILocation(line: 354, column: 165, scope: !3204)
!3207 = !DILocation(line: 354, column: 195, scope: !3204)
!3208 = !DILocation(line: 354, column: 165, scope: !561)
!3209 = !DILocation(line: 354, column: 165, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !561, file: !361, discriminator: 5)
!3211 = !DILocation(line: 354, column: 226, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3204, file: !361, discriminator: 6)
!3213 = !DILocation(line: 354, column: 244, scope: !3204)
!3214 = !DILocation(line: 354, column: 254, scope: !3204)
!3215 = !DILocation(line: 354, column: 279, scope: !3204)
!3216 = !DILocation(line: 354, column: 210, scope: !3204)
!3217 = !DILocation(line: 354, column: 298, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !562, file: !361, discriminator: 7)
!3219 = !DILocation(line: 354, column: 298, scope: !561)
!3220 = !DILocation(line: 354, column: 298, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !561, file: !361, discriminator: 8)
!3222 = !DILocation(line: 354, column: 298, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !561, file: !361, discriminator: 9)
!3224 = !DILocation(line: 354, column: 311, scope: !2949)
!3225 = !DILocation(line: 354, column: 311, scope: !559)
!3226 = !DILocation(line: 354, column: 311, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !559, file: !361, discriminator: 11)
!3228 = !DILocation(line: 355, column: 5, scope: !512)
!3229 = !DILocation(line: 355, column: 10, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !564, file: !361, discriminator: 1)
!3231 = !DILocation(line: 355, column: 20, scope: !564)
!3232 = !DILocation(line: 355, column: 51, scope: !564)
!3233 = !DILocation(line: 355, column: 65, scope: !567)
!3234 = !DILocation(line: 355, column: 81, scope: !567)
!3235 = !DILocation(line: 355, column: 65, scope: !564)
!3236 = !DILocation(line: 355, column: 96, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !567, file: !361, discriminator: 2)
!3238 = !DILocation(line: 355, column: 101, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !566, file: !361, discriminator: 4)
!3240 = !DILocation(line: 355, column: 111, scope: !566)
!3241 = !DILocation(line: 355, column: 141, scope: !566)
!3242 = !DILocation(line: 355, column: 167, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !566, file: !361, line: 355, column: 164)
!3244 = !DILocation(line: 355, column: 184, scope: !3243)
!3245 = !DILocation(line: 355, column: 164, scope: !3243)
!3246 = !DILocation(line: 355, column: 194, scope: !3243)
!3247 = !DILocation(line: 355, column: 164, scope: !566)
!3248 = !DILocation(line: 355, column: 164, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !566, file: !361, discriminator: 5)
!3250 = !DILocation(line: 355, column: 225, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3243, file: !361, discriminator: 6)
!3252 = !DILocation(line: 355, column: 243, scope: !3243)
!3253 = !DILocation(line: 355, column: 253, scope: !3243)
!3254 = !DILocation(line: 355, column: 278, scope: !3243)
!3255 = !DILocation(line: 355, column: 209, scope: !3243)
!3256 = !DILocation(line: 355, column: 297, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !567, file: !361, discriminator: 7)
!3258 = !DILocation(line: 355, column: 297, scope: !566)
!3259 = !DILocation(line: 355, column: 297, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !566, file: !361, discriminator: 8)
!3261 = !DILocation(line: 355, column: 297, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !566, file: !361, discriminator: 9)
!3263 = !DILocation(line: 355, column: 310, scope: !2949)
!3264 = !DILocation(line: 355, column: 310, scope: !564)
!3265 = !DILocation(line: 355, column: 310, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !564, file: !361, discriminator: 11)
!3267 = !DILocation(line: 356, column: 5, scope: !512)
!3268 = !DILocation(line: 356, column: 10, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !569, file: !361, discriminator: 1)
!3270 = !DILocation(line: 356, column: 20, scope: !569)
!3271 = !DILocation(line: 356, column: 51, scope: !569)
!3272 = !DILocation(line: 356, column: 65, scope: !572)
!3273 = !DILocation(line: 356, column: 81, scope: !572)
!3274 = !DILocation(line: 356, column: 65, scope: !569)
!3275 = !DILocation(line: 356, column: 96, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !572, file: !361, discriminator: 2)
!3277 = !DILocation(line: 356, column: 101, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !571, file: !361, discriminator: 4)
!3279 = !DILocation(line: 356, column: 111, scope: !571)
!3280 = !DILocation(line: 356, column: 141, scope: !571)
!3281 = !DILocation(line: 356, column: 167, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !571, file: !361, line: 356, column: 164)
!3283 = !DILocation(line: 356, column: 184, scope: !3282)
!3284 = !DILocation(line: 356, column: 164, scope: !3282)
!3285 = !DILocation(line: 356, column: 194, scope: !3282)
!3286 = !DILocation(line: 356, column: 164, scope: !571)
!3287 = !DILocation(line: 356, column: 164, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !571, file: !361, discriminator: 5)
!3289 = !DILocation(line: 356, column: 225, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3282, file: !361, discriminator: 6)
!3291 = !DILocation(line: 356, column: 243, scope: !3282)
!3292 = !DILocation(line: 356, column: 253, scope: !3282)
!3293 = !DILocation(line: 356, column: 278, scope: !3282)
!3294 = !DILocation(line: 356, column: 209, scope: !3282)
!3295 = !DILocation(line: 356, column: 297, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !572, file: !361, discriminator: 7)
!3297 = !DILocation(line: 356, column: 297, scope: !571)
!3298 = !DILocation(line: 356, column: 297, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !571, file: !361, discriminator: 8)
!3300 = !DILocation(line: 356, column: 297, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !571, file: !361, discriminator: 9)
!3302 = !DILocation(line: 356, column: 310, scope: !2949)
!3303 = !DILocation(line: 356, column: 310, scope: !569)
!3304 = !DILocation(line: 356, column: 310, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !569, file: !361, discriminator: 11)
!3306 = !DILocation(line: 357, column: 5, scope: !512)
!3307 = !DILocation(line: 358, column: 1, scope: !512)
!3308 = !DILocation(line: 52, column: 33, scope: !573)
!3309 = !DILocation(line: 52, column: 49, scope: !573)
!3310 = !DILocation(line: 53, column: 29, scope: !573)
!3311 = !DILocation(line: 53, column: 45, scope: !573)
!3312 = !DILocation(line: 55, column: 5, scope: !573)
!3313 = !DILocation(line: 55, column: 18, scope: !573)
!3314 = !DILocation(line: 56, column: 5, scope: !573)
!3315 = !DILocation(line: 56, column: 15, scope: !573)
!3316 = !DILocation(line: 57, column: 35, scope: !573)
!3317 = !DILocation(line: 57, column: 42, scope: !573)
!3318 = !DILocation(line: 57, column: 48, scope: !573)
!3319 = !DILocation(line: 57, column: 14, scope: !573)
!3320 = !DILocation(line: 57, column: 12, scope: !573)
!3321 = !DILocation(line: 58, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !573, file: !361, line: 58, column: 9)
!3323 = !DILocation(line: 58, column: 16, scope: !3322)
!3324 = !DILocation(line: 58, column: 9, scope: !573)
!3325 = !DILocation(line: 59, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3322, file: !361, line: 58, column: 31)
!3327 = !DILocation(line: 61, column: 43, scope: !573)
!3328 = !DILocation(line: 61, column: 29, scope: !573)
!3329 = !DILocation(line: 61, column: 13, scope: !573)
!3330 = !DILocation(line: 61, column: 9, scope: !573)
!3331 = !DILocation(line: 62, column: 9, scope: !588)
!3332 = !DILocation(line: 62, column: 13, scope: !588)
!3333 = !DILocation(line: 62, column: 9, scope: !573)
!3334 = !DILocation(line: 63, column: 9, scope: !587)
!3335 = !DILocation(line: 63, column: 14, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !586, file: !361, discriminator: 1)
!3337 = !DILocation(line: 63, column: 24, scope: !586)
!3338 = !DILocation(line: 63, column: 54, scope: !586)
!3339 = !DILocation(line: 63, column: 71, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !586, file: !361, line: 63, column: 68)
!3341 = !DILocation(line: 63, column: 88, scope: !3340)
!3342 = !DILocation(line: 63, column: 68, scope: !3340)
!3343 = !DILocation(line: 63, column: 98, scope: !3340)
!3344 = !DILocation(line: 63, column: 68, scope: !586)
!3345 = !DILocation(line: 63, column: 68, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !586, file: !361, discriminator: 2)
!3347 = !DILocation(line: 63, column: 129, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3340, file: !361, discriminator: 3)
!3349 = !DILocation(line: 63, column: 147, scope: !3340)
!3350 = !DILocation(line: 63, column: 157, scope: !3340)
!3351 = !DILocation(line: 63, column: 182, scope: !3340)
!3352 = !DILocation(line: 63, column: 113, scope: !3340)
!3353 = !DILocation(line: 63, column: 201, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !587, file: !361, discriminator: 4)
!3355 = !DILocation(line: 63, column: 201, scope: !586)
!3356 = !DILocation(line: 63, column: 201, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !586, file: !361, discriminator: 5)
!3358 = !DILocation(line: 64, column: 9, scope: !587)
!3359 = !DILocation(line: 66, column: 18, scope: !573)
!3360 = !DILocation(line: 66, column: 5, scope: !573)
!3361 = !DILocation(line: 66, column: 10, scope: !573)
!3362 = !DILocation(line: 66, column: 16, scope: !573)
!3363 = !DILocation(line: 67, column: 17, scope: !573)
!3364 = !DILocation(line: 67, column: 5, scope: !573)
!3365 = !DILocation(line: 67, column: 10, scope: !573)
!3366 = !DILocation(line: 67, column: 15, scope: !573)
!3367 = !DILocation(line: 68, column: 17, scope: !573)
!3368 = !DILocation(line: 68, column: 5, scope: !573)
!3369 = !DILocation(line: 68, column: 10, scope: !573)
!3370 = !DILocation(line: 68, column: 15, scope: !573)
!3371 = !DILocation(line: 69, column: 19, scope: !573)
!3372 = !DILocation(line: 69, column: 5, scope: !573)
!3373 = !DILocation(line: 69, column: 10, scope: !573)
!3374 = !DILocation(line: 69, column: 17, scope: !573)
!3375 = !DILocation(line: 70, column: 12, scope: !573)
!3376 = !DILocation(line: 70, column: 5, scope: !573)
!3377 = !DILocation(line: 71, column: 1, scope: !573)
!3378 = !DILocation(line: 159, column: 32, scope: !589)
!3379 = !DILocation(line: 159, column: 49, scope: !589)
!3380 = !DILocation(line: 159, column: 65, scope: !589)
!3381 = !DILocation(line: 165, column: 5, scope: !589)
!3382 = !DILocation(line: 165, column: 9, scope: !589)
!3383 = !DILocation(line: 166, column: 5, scope: !589)
!3384 = !DILocation(line: 166, column: 15, scope: !589)
!3385 = !DILocation(line: 166, column: 20, scope: !589)
!3386 = !DILocation(line: 167, column: 5, scope: !589)
!3387 = !DILocation(line: 167, column: 15, scope: !589)
!3388 = !DILocation(line: 168, column: 5, scope: !589)
!3389 = !DILocation(line: 168, column: 15, scope: !589)
!3390 = !DILocation(line: 169, column: 5, scope: !589)
!3391 = !DILocation(line: 169, column: 15, scope: !589)
!3392 = !DILocation(line: 169, column: 35, scope: !589)
!3393 = !DILocation(line: 169, column: 55, scope: !589)
!3394 = !DILocation(line: 172, column: 5, scope: !589)
!3395 = !DILocation(line: 172, column: 15, scope: !589)
!3396 = !DILocation(line: 172, column: 22, scope: !589)
!3397 = !DILocation(line: 173, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !589, file: !361, line: 173, column: 9)
!3399 = !DILocation(line: 173, column: 14, scope: !3398)
!3400 = !DILocation(line: 173, column: 9, scope: !589)
!3401 = !DILocation(line: 174, column: 9, scope: !3398)
!3402 = !DILocation(line: 175, column: 43, scope: !589)
!3403 = !DILocation(line: 175, column: 49, scope: !589)
!3404 = !DILocation(line: 175, column: 18, scope: !589)
!3405 = !DILocation(line: 175, column: 16, scope: !589)
!3406 = !DILocation(line: 176, column: 5, scope: !589)
!3407 = !DILocation(line: 176, column: 10, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !604, file: !361, discriminator: 1)
!3409 = !DILocation(line: 176, column: 20, scope: !604)
!3410 = !DILocation(line: 176, column: 50, scope: !604)
!3411 = !DILocation(line: 176, column: 65, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !604, file: !361, line: 176, column: 62)
!3413 = !DILocation(line: 176, column: 82, scope: !3412)
!3414 = !DILocation(line: 176, column: 62, scope: !3412)
!3415 = !DILocation(line: 176, column: 92, scope: !3412)
!3416 = !DILocation(line: 176, column: 62, scope: !604)
!3417 = !DILocation(line: 176, column: 62, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !604, file: !361, discriminator: 2)
!3419 = !DILocation(line: 176, column: 123, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3412, file: !361, discriminator: 3)
!3421 = !DILocation(line: 176, column: 141, scope: !3412)
!3422 = !DILocation(line: 176, column: 151, scope: !3412)
!3423 = !DILocation(line: 176, column: 176, scope: !3412)
!3424 = !DILocation(line: 176, column: 107, scope: !3412)
!3425 = !DILocation(line: 176, column: 195, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !589, file: !361, discriminator: 4)
!3427 = !DILocation(line: 176, column: 195, scope: !604)
!3428 = !DILocation(line: 176, column: 195, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !604, file: !361, discriminator: 5)
!3430 = !DILocation(line: 177, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !589, file: !361, line: 177, column: 9)
!3432 = !DILocation(line: 177, column: 20, scope: !3431)
!3433 = !DILocation(line: 177, column: 9, scope: !589)
!3434 = !DILocation(line: 178, column: 9, scope: !3431)
!3435 = !DILocation(line: 180, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !589, file: !361, line: 180, column: 9)
!3437 = !DILocation(line: 180, column: 20, scope: !3436)
!3438 = !DILocation(line: 180, column: 9, scope: !589)
!3439 = !DILocation(line: 181, column: 14, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !361, line: 180, column: 26)
!3441 = !DILocation(line: 181, column: 12, scope: !3440)
!3442 = !DILocation(line: 182, column: 14, scope: !3440)
!3443 = !DILocation(line: 182, column: 12, scope: !3440)
!3444 = !DILocation(line: 183, column: 25, scope: !3440)
!3445 = !DILocation(line: 183, column: 33, scope: !3440)
!3446 = !DILocation(line: 183, column: 42, scope: !3440)
!3447 = !DILocation(line: 184, column: 5, scope: !3440)
!3448 = !DILocation(line: 185, column: 14, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3436, file: !361, line: 184, column: 12)
!3450 = !DILocation(line: 185, column: 12, scope: !3449)
!3451 = !DILocation(line: 186, column: 14, scope: !3449)
!3452 = !DILocation(line: 186, column: 12, scope: !3449)
!3453 = !DILocation(line: 187, column: 34, scope: !3449)
!3454 = !DILocation(line: 187, column: 16, scope: !3449)
!3455 = !DILocation(line: 187, column: 14, scope: !3449)
!3456 = !DILocation(line: 188, column: 14, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3449, file: !361, line: 188, column: 13)
!3458 = !DILocation(line: 188, column: 13, scope: !3449)
!3459 = !DILocation(line: 189, column: 13, scope: !3457)
!3460 = !DILocation(line: 193, column: 34, scope: !608)
!3461 = !DILocation(line: 193, column: 38, scope: !608)
!3462 = !DILocation(line: 193, column: 9, scope: !608)
!3463 = !DILocation(line: 193, column: 45, scope: !608)
!3464 = !DILocation(line: 193, column: 9, scope: !589)
!3465 = !DILocation(line: 194, column: 9, scope: !607)
!3466 = !DILocation(line: 194, column: 14, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !606, file: !361, discriminator: 1)
!3468 = !DILocation(line: 194, column: 24, scope: !606)
!3469 = !DILocation(line: 194, column: 55, scope: !606)
!3470 = !DILocation(line: 194, column: 66, scope: !611)
!3471 = !DILocation(line: 194, column: 82, scope: !611)
!3472 = !DILocation(line: 194, column: 66, scope: !606)
!3473 = !DILocation(line: 194, column: 97, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !611, file: !361, discriminator: 2)
!3475 = !DILocation(line: 194, column: 102, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !610, file: !361, discriminator: 4)
!3477 = !DILocation(line: 194, column: 112, scope: !610)
!3478 = !DILocation(line: 194, column: 142, scope: !610)
!3479 = !DILocation(line: 194, column: 168, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !610, file: !361, line: 194, column: 165)
!3481 = !DILocation(line: 194, column: 185, scope: !3480)
!3482 = !DILocation(line: 194, column: 165, scope: !3480)
!3483 = !DILocation(line: 194, column: 195, scope: !3480)
!3484 = !DILocation(line: 194, column: 165, scope: !610)
!3485 = !DILocation(line: 194, column: 165, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !610, file: !361, discriminator: 5)
!3487 = !DILocation(line: 194, column: 226, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3480, file: !361, discriminator: 6)
!3489 = !DILocation(line: 194, column: 244, scope: !3480)
!3490 = !DILocation(line: 194, column: 254, scope: !3480)
!3491 = !DILocation(line: 194, column: 279, scope: !3480)
!3492 = !DILocation(line: 194, column: 210, scope: !3480)
!3493 = !DILocation(line: 194, column: 298, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !611, file: !361, discriminator: 7)
!3495 = !DILocation(line: 194, column: 298, scope: !610)
!3496 = !DILocation(line: 194, column: 298, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !610, file: !361, discriminator: 8)
!3498 = !DILocation(line: 194, column: 298, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !610, file: !361, discriminator: 9)
!3500 = !DILocation(line: 194, column: 311, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3502, file: !361, discriminator: 10)
!3502 = !DILexicalBlockFile(scope: !607, file: !361, discriminator: 3)
!3503 = !DILocation(line: 194, column: 311, scope: !606)
!3504 = !DILocation(line: 194, column: 311, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !606, file: !361, discriminator: 11)
!3506 = !DILocation(line: 195, column: 16, scope: !607)
!3507 = !DILocation(line: 195, column: 9, scope: !607)
!3508 = !DILocation(line: 198, column: 16, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !589, file: !361, line: 198, column: 9)
!3510 = !DILocation(line: 198, column: 14, scope: !3509)
!3511 = !DILocation(line: 198, column: 37, scope: !3509)
!3512 = !DILocation(line: 198, column: 9, scope: !589)
!3513 = !DILocation(line: 199, column: 9, scope: !3509)
!3514 = !DILocation(line: 201, column: 35, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !589, file: !361, line: 201, column: 9)
!3516 = !DILocation(line: 201, column: 39, scope: !3515)
!3517 = !DILocation(line: 201, column: 17, scope: !3515)
!3518 = !DILocation(line: 201, column: 15, scope: !3515)
!3519 = !DILocation(line: 201, column: 44, scope: !3515)
!3520 = !DILocation(line: 201, column: 9, scope: !589)
!3521 = !DILocation(line: 202, column: 9, scope: !3515)
!3522 = !DILocation(line: 204, column: 35, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !589, file: !361, line: 204, column: 9)
!3524 = !DILocation(line: 204, column: 41, scope: !3523)
!3525 = !DILocation(line: 204, column: 17, scope: !3523)
!3526 = !DILocation(line: 204, column: 15, scope: !3523)
!3527 = !DILocation(line: 204, column: 47, scope: !3523)
!3528 = !DILocation(line: 204, column: 9, scope: !589)
!3529 = !DILocation(line: 205, column: 9, scope: !3523)
!3530 = !DILocation(line: 207, column: 38, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !589, file: !361, line: 207, column: 9)
!3532 = !DILocation(line: 207, column: 44, scope: !3531)
!3533 = !DILocation(line: 207, column: 17, scope: !3531)
!3534 = !DILocation(line: 207, column: 15, scope: !3531)
!3535 = !DILocation(line: 207, column: 51, scope: !3531)
!3536 = !DILocation(line: 207, column: 9, scope: !589)
!3537 = !DILocation(line: 208, column: 9, scope: !3531)
!3538 = !DILocation(line: 210, column: 32, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !589, file: !361, line: 210, column: 9)
!3540 = !DILocation(line: 210, column: 38, scope: !3539)
!3541 = !DILocation(line: 210, column: 19, scope: !3539)
!3542 = !DILocation(line: 210, column: 17, scope: !3539)
!3543 = !DILocation(line: 210, column: 44, scope: !3539)
!3544 = !DILocation(line: 210, column: 9, scope: !589)
!3545 = !DILocation(line: 211, column: 9, scope: !3539)
!3546 = !DILocation(line: 213, column: 5, scope: !589)
!3547 = !DILocation(line: 213, column: 10, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !613, file: !361, discriminator: 1)
!3549 = !DILocation(line: 213, column: 20, scope: !613)
!3550 = !DILocation(line: 213, column: 50, scope: !613)
!3551 = !DILocation(line: 213, column: 65, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !613, file: !361, line: 213, column: 62)
!3553 = !DILocation(line: 213, column: 82, scope: !3552)
!3554 = !DILocation(line: 213, column: 62, scope: !3552)
!3555 = !DILocation(line: 213, column: 92, scope: !3552)
!3556 = !DILocation(line: 213, column: 62, scope: !613)
!3557 = !DILocation(line: 213, column: 62, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !613, file: !361, discriminator: 2)
!3559 = !DILocation(line: 213, column: 123, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3552, file: !361, discriminator: 3)
!3561 = !DILocation(line: 213, column: 141, scope: !3552)
!3562 = !DILocation(line: 213, column: 151, scope: !3552)
!3563 = !DILocation(line: 213, column: 176, scope: !3552)
!3564 = !DILocation(line: 213, column: 107, scope: !3552)
!3565 = !DILocation(line: 213, column: 195, scope: !3426)
!3566 = !DILocation(line: 213, column: 195, scope: !613)
!3567 = !DILocation(line: 213, column: 195, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !613, file: !361, discriminator: 5)
!3569 = !DILocation(line: 214, column: 5, scope: !589)
!3570 = !DILocation(line: 214, column: 10, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !615, file: !361, discriminator: 1)
!3572 = !DILocation(line: 214, column: 20, scope: !615)
!3573 = !DILocation(line: 214, column: 50, scope: !615)
!3574 = !DILocation(line: 214, column: 65, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !615, file: !361, line: 214, column: 62)
!3576 = !DILocation(line: 214, column: 82, scope: !3575)
!3577 = !DILocation(line: 214, column: 62, scope: !3575)
!3578 = !DILocation(line: 214, column: 92, scope: !3575)
!3579 = !DILocation(line: 214, column: 62, scope: !615)
!3580 = !DILocation(line: 214, column: 62, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !615, file: !361, discriminator: 2)
!3582 = !DILocation(line: 214, column: 123, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3575, file: !361, discriminator: 3)
!3584 = !DILocation(line: 214, column: 141, scope: !3575)
!3585 = !DILocation(line: 214, column: 151, scope: !3575)
!3586 = !DILocation(line: 214, column: 176, scope: !3575)
!3587 = !DILocation(line: 214, column: 107, scope: !3575)
!3588 = !DILocation(line: 214, column: 195, scope: !3426)
!3589 = !DILocation(line: 214, column: 195, scope: !615)
!3590 = !DILocation(line: 214, column: 195, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !615, file: !361, discriminator: 5)
!3592 = !DILocation(line: 215, column: 5, scope: !589)
!3593 = !DILocation(line: 215, column: 10, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !617, file: !361, discriminator: 1)
!3595 = !DILocation(line: 215, column: 20, scope: !617)
!3596 = !DILocation(line: 215, column: 50, scope: !617)
!3597 = !DILocation(line: 215, column: 65, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !617, file: !361, line: 215, column: 62)
!3599 = !DILocation(line: 215, column: 82, scope: !3598)
!3600 = !DILocation(line: 215, column: 62, scope: !3598)
!3601 = !DILocation(line: 215, column: 92, scope: !3598)
!3602 = !DILocation(line: 215, column: 62, scope: !617)
!3603 = !DILocation(line: 215, column: 62, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !617, file: !361, discriminator: 2)
!3605 = !DILocation(line: 215, column: 123, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3598, file: !361, discriminator: 3)
!3607 = !DILocation(line: 215, column: 141, scope: !3598)
!3608 = !DILocation(line: 215, column: 151, scope: !3598)
!3609 = !DILocation(line: 215, column: 176, scope: !3598)
!3610 = !DILocation(line: 215, column: 107, scope: !3598)
!3611 = !DILocation(line: 215, column: 195, scope: !3426)
!3612 = !DILocation(line: 215, column: 195, scope: !617)
!3613 = !DILocation(line: 215, column: 195, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !617, file: !361, discriminator: 5)
!3615 = !DILocation(line: 216, column: 5, scope: !589)
!3616 = !DILocation(line: 216, column: 10, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !619, file: !361, discriminator: 1)
!3618 = !DILocation(line: 216, column: 20, scope: !619)
!3619 = !DILocation(line: 216, column: 50, scope: !619)
!3620 = !DILocation(line: 216, column: 65, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !619, file: !361, line: 216, column: 62)
!3622 = !DILocation(line: 216, column: 82, scope: !3621)
!3623 = !DILocation(line: 216, column: 62, scope: !3621)
!3624 = !DILocation(line: 216, column: 92, scope: !3621)
!3625 = !DILocation(line: 216, column: 62, scope: !619)
!3626 = !DILocation(line: 216, column: 62, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !619, file: !361, discriminator: 2)
!3628 = !DILocation(line: 216, column: 123, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3621, file: !361, discriminator: 3)
!3630 = !DILocation(line: 216, column: 141, scope: !3621)
!3631 = !DILocation(line: 216, column: 151, scope: !3621)
!3632 = !DILocation(line: 216, column: 176, scope: !3621)
!3633 = !DILocation(line: 216, column: 107, scope: !3621)
!3634 = !DILocation(line: 216, column: 195, scope: !3426)
!3635 = !DILocation(line: 216, column: 195, scope: !619)
!3636 = !DILocation(line: 216, column: 195, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !619, file: !361, discriminator: 5)
!3638 = !DILocation(line: 217, column: 5, scope: !589)
!3639 = !DILocation(line: 217, column: 10, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !621, file: !361, discriminator: 1)
!3641 = !DILocation(line: 217, column: 20, scope: !621)
!3642 = !DILocation(line: 217, column: 50, scope: !621)
!3643 = !DILocation(line: 217, column: 64, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !621, file: !361, line: 217, column: 61)
!3645 = !DILocation(line: 217, column: 81, scope: !3644)
!3646 = !DILocation(line: 217, column: 61, scope: !3644)
!3647 = !DILocation(line: 217, column: 91, scope: !3644)
!3648 = !DILocation(line: 217, column: 61, scope: !621)
!3649 = !DILocation(line: 217, column: 61, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !621, file: !361, discriminator: 2)
!3651 = !DILocation(line: 217, column: 122, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3644, file: !361, discriminator: 3)
!3653 = !DILocation(line: 217, column: 140, scope: !3644)
!3654 = !DILocation(line: 217, column: 150, scope: !3644)
!3655 = !DILocation(line: 217, column: 175, scope: !3644)
!3656 = !DILocation(line: 217, column: 106, scope: !3644)
!3657 = !DILocation(line: 217, column: 194, scope: !3426)
!3658 = !DILocation(line: 217, column: 194, scope: !621)
!3659 = !DILocation(line: 217, column: 194, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !621, file: !361, discriminator: 5)
!3661 = !DILocation(line: 218, column: 12, scope: !589)
!3662 = !DILocation(line: 218, column: 5, scope: !589)
!3663 = !DILocation(line: 221, column: 5, scope: !589)
!3664 = !DILocation(line: 221, column: 10, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !623, file: !361, discriminator: 1)
!3666 = !DILocation(line: 221, column: 20, scope: !623)
!3667 = !DILocation(line: 221, column: 51, scope: !623)
!3668 = !DILocation(line: 221, column: 62, scope: !626)
!3669 = !DILocation(line: 221, column: 78, scope: !626)
!3670 = !DILocation(line: 221, column: 62, scope: !623)
!3671 = !DILocation(line: 221, column: 93, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !626, file: !361, discriminator: 2)
!3673 = !DILocation(line: 221, column: 98, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !625, file: !361, discriminator: 4)
!3675 = !DILocation(line: 221, column: 108, scope: !625)
!3676 = !DILocation(line: 221, column: 138, scope: !625)
!3677 = !DILocation(line: 221, column: 164, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !625, file: !361, line: 221, column: 161)
!3679 = !DILocation(line: 221, column: 181, scope: !3678)
!3680 = !DILocation(line: 221, column: 161, scope: !3678)
!3681 = !DILocation(line: 221, column: 191, scope: !3678)
!3682 = !DILocation(line: 221, column: 161, scope: !625)
!3683 = !DILocation(line: 221, column: 161, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !625, file: !361, discriminator: 5)
!3685 = !DILocation(line: 221, column: 222, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3678, file: !361, discriminator: 6)
!3687 = !DILocation(line: 221, column: 240, scope: !3678)
!3688 = !DILocation(line: 221, column: 250, scope: !3678)
!3689 = !DILocation(line: 221, column: 275, scope: !3678)
!3690 = !DILocation(line: 221, column: 206, scope: !3678)
!3691 = !DILocation(line: 221, column: 294, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !626, file: !361, discriminator: 7)
!3693 = !DILocation(line: 221, column: 294, scope: !625)
!3694 = !DILocation(line: 221, column: 294, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !625, file: !361, discriminator: 8)
!3696 = !DILocation(line: 221, column: 294, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !625, file: !361, discriminator: 9)
!3698 = !DILocation(line: 221, column: 307, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3700, file: !361, discriminator: 10)
!3700 = !DILexicalBlockFile(scope: !589, file: !361, discriminator: 3)
!3701 = !DILocation(line: 221, column: 307, scope: !623)
!3702 = !DILocation(line: 221, column: 307, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !623, file: !361, discriminator: 11)
!3704 = !DILocation(line: 222, column: 5, scope: !589)
!3705 = !DILocation(line: 222, column: 10, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !628, file: !361, discriminator: 1)
!3707 = !DILocation(line: 222, column: 20, scope: !628)
!3708 = !DILocation(line: 222, column: 51, scope: !628)
!3709 = !DILocation(line: 222, column: 62, scope: !631)
!3710 = !DILocation(line: 222, column: 78, scope: !631)
!3711 = !DILocation(line: 222, column: 62, scope: !628)
!3712 = !DILocation(line: 222, column: 93, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !631, file: !361, discriminator: 2)
!3714 = !DILocation(line: 222, column: 98, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !630, file: !361, discriminator: 4)
!3716 = !DILocation(line: 222, column: 108, scope: !630)
!3717 = !DILocation(line: 222, column: 138, scope: !630)
!3718 = !DILocation(line: 222, column: 164, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !630, file: !361, line: 222, column: 161)
!3720 = !DILocation(line: 222, column: 181, scope: !3719)
!3721 = !DILocation(line: 222, column: 161, scope: !3719)
!3722 = !DILocation(line: 222, column: 191, scope: !3719)
!3723 = !DILocation(line: 222, column: 161, scope: !630)
!3724 = !DILocation(line: 222, column: 161, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !630, file: !361, discriminator: 5)
!3726 = !DILocation(line: 222, column: 222, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3719, file: !361, discriminator: 6)
!3728 = !DILocation(line: 222, column: 240, scope: !3719)
!3729 = !DILocation(line: 222, column: 250, scope: !3719)
!3730 = !DILocation(line: 222, column: 275, scope: !3719)
!3731 = !DILocation(line: 222, column: 206, scope: !3719)
!3732 = !DILocation(line: 222, column: 294, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !631, file: !361, discriminator: 7)
!3734 = !DILocation(line: 222, column: 294, scope: !630)
!3735 = !DILocation(line: 222, column: 294, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !630, file: !361, discriminator: 8)
!3737 = !DILocation(line: 222, column: 294, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !630, file: !361, discriminator: 9)
!3739 = !DILocation(line: 222, column: 307, scope: !3699)
!3740 = !DILocation(line: 222, column: 307, scope: !628)
!3741 = !DILocation(line: 222, column: 307, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !628, file: !361, discriminator: 11)
!3743 = !DILocation(line: 223, column: 5, scope: !589)
!3744 = !DILocation(line: 223, column: 10, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !633, file: !361, discriminator: 1)
!3746 = !DILocation(line: 223, column: 20, scope: !633)
!3747 = !DILocation(line: 223, column: 51, scope: !633)
!3748 = !DILocation(line: 223, column: 62, scope: !636)
!3749 = !DILocation(line: 223, column: 78, scope: !636)
!3750 = !DILocation(line: 223, column: 62, scope: !633)
!3751 = !DILocation(line: 223, column: 93, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !636, file: !361, discriminator: 2)
!3753 = !DILocation(line: 223, column: 98, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !635, file: !361, discriminator: 4)
!3755 = !DILocation(line: 223, column: 108, scope: !635)
!3756 = !DILocation(line: 223, column: 138, scope: !635)
!3757 = !DILocation(line: 223, column: 164, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !635, file: !361, line: 223, column: 161)
!3759 = !DILocation(line: 223, column: 181, scope: !3758)
!3760 = !DILocation(line: 223, column: 161, scope: !3758)
!3761 = !DILocation(line: 223, column: 191, scope: !3758)
!3762 = !DILocation(line: 223, column: 161, scope: !635)
!3763 = !DILocation(line: 223, column: 161, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !635, file: !361, discriminator: 5)
!3765 = !DILocation(line: 223, column: 222, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3758, file: !361, discriminator: 6)
!3767 = !DILocation(line: 223, column: 240, scope: !3758)
!3768 = !DILocation(line: 223, column: 250, scope: !3758)
!3769 = !DILocation(line: 223, column: 275, scope: !3758)
!3770 = !DILocation(line: 223, column: 206, scope: !3758)
!3771 = !DILocation(line: 223, column: 294, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !636, file: !361, discriminator: 7)
!3773 = !DILocation(line: 223, column: 294, scope: !635)
!3774 = !DILocation(line: 223, column: 294, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !635, file: !361, discriminator: 8)
!3776 = !DILocation(line: 223, column: 294, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !635, file: !361, discriminator: 9)
!3778 = !DILocation(line: 223, column: 307, scope: !3699)
!3779 = !DILocation(line: 223, column: 307, scope: !633)
!3780 = !DILocation(line: 223, column: 307, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !633, file: !361, discriminator: 11)
!3782 = !DILocation(line: 224, column: 5, scope: !589)
!3783 = !DILocation(line: 224, column: 10, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !638, file: !361, discriminator: 1)
!3785 = !DILocation(line: 224, column: 20, scope: !638)
!3786 = !DILocation(line: 224, column: 51, scope: !638)
!3787 = !DILocation(line: 224, column: 62, scope: !641)
!3788 = !DILocation(line: 224, column: 78, scope: !641)
!3789 = !DILocation(line: 224, column: 62, scope: !638)
!3790 = !DILocation(line: 224, column: 93, scope: !3791)
!3791 = !DILexicalBlockFile(scope: !641, file: !361, discriminator: 2)
!3792 = !DILocation(line: 224, column: 98, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !640, file: !361, discriminator: 4)
!3794 = !DILocation(line: 224, column: 108, scope: !640)
!3795 = !DILocation(line: 224, column: 138, scope: !640)
!3796 = !DILocation(line: 224, column: 164, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !640, file: !361, line: 224, column: 161)
!3798 = !DILocation(line: 224, column: 181, scope: !3797)
!3799 = !DILocation(line: 224, column: 161, scope: !3797)
!3800 = !DILocation(line: 224, column: 191, scope: !3797)
!3801 = !DILocation(line: 224, column: 161, scope: !640)
!3802 = !DILocation(line: 224, column: 161, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !640, file: !361, discriminator: 5)
!3804 = !DILocation(line: 224, column: 222, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3797, file: !361, discriminator: 6)
!3806 = !DILocation(line: 224, column: 240, scope: !3797)
!3807 = !DILocation(line: 224, column: 250, scope: !3797)
!3808 = !DILocation(line: 224, column: 275, scope: !3797)
!3809 = !DILocation(line: 224, column: 206, scope: !3797)
!3810 = !DILocation(line: 224, column: 294, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !641, file: !361, discriminator: 7)
!3812 = !DILocation(line: 224, column: 294, scope: !640)
!3813 = !DILocation(line: 224, column: 294, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !640, file: !361, discriminator: 8)
!3815 = !DILocation(line: 224, column: 294, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !640, file: !361, discriminator: 9)
!3817 = !DILocation(line: 224, column: 307, scope: !3699)
!3818 = !DILocation(line: 224, column: 307, scope: !638)
!3819 = !DILocation(line: 224, column: 307, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !638, file: !361, discriminator: 11)
!3821 = !DILocation(line: 225, column: 5, scope: !589)
!3822 = !DILocation(line: 225, column: 10, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !643, file: !361, discriminator: 1)
!3824 = !DILocation(line: 225, column: 20, scope: !643)
!3825 = !DILocation(line: 225, column: 51, scope: !643)
!3826 = !DILocation(line: 225, column: 61, scope: !646)
!3827 = !DILocation(line: 225, column: 77, scope: !646)
!3828 = !DILocation(line: 225, column: 61, scope: !643)
!3829 = !DILocation(line: 225, column: 92, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !646, file: !361, discriminator: 2)
!3831 = !DILocation(line: 225, column: 97, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !645, file: !361, discriminator: 4)
!3833 = !DILocation(line: 225, column: 107, scope: !645)
!3834 = !DILocation(line: 225, column: 137, scope: !645)
!3835 = !DILocation(line: 225, column: 163, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !645, file: !361, line: 225, column: 160)
!3837 = !DILocation(line: 225, column: 180, scope: !3836)
!3838 = !DILocation(line: 225, column: 160, scope: !3836)
!3839 = !DILocation(line: 225, column: 190, scope: !3836)
!3840 = !DILocation(line: 225, column: 160, scope: !645)
!3841 = !DILocation(line: 225, column: 160, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !645, file: !361, discriminator: 5)
!3843 = !DILocation(line: 225, column: 221, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3836, file: !361, discriminator: 6)
!3845 = !DILocation(line: 225, column: 239, scope: !3836)
!3846 = !DILocation(line: 225, column: 249, scope: !3836)
!3847 = !DILocation(line: 225, column: 274, scope: !3836)
!3848 = !DILocation(line: 225, column: 205, scope: !3836)
!3849 = !DILocation(line: 225, column: 293, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !646, file: !361, discriminator: 7)
!3851 = !DILocation(line: 225, column: 293, scope: !645)
!3852 = !DILocation(line: 225, column: 293, scope: !3853)
!3853 = !DILexicalBlockFile(scope: !645, file: !361, discriminator: 8)
!3854 = !DILocation(line: 225, column: 293, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !645, file: !361, discriminator: 9)
!3856 = !DILocation(line: 225, column: 306, scope: !3699)
!3857 = !DILocation(line: 225, column: 306, scope: !643)
!3858 = !DILocation(line: 225, column: 306, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !643, file: !361, discriminator: 11)
!3860 = !DILocation(line: 226, column: 5, scope: !589)
!3861 = !DILocation(line: 227, column: 1, scope: !589)
!3862 = !DILocation(line: 437, column: 27, scope: !668)
!3863 = !DILocation(line: 437, column: 44, scope: !668)
!3864 = !DILocation(line: 439, column: 5, scope: !668)
!3865 = !DILocation(line: 439, column: 9, scope: !668)
!3866 = !DILocation(line: 440, column: 5, scope: !668)
!3867 = !DILocation(line: 440, column: 15, scope: !668)
!3868 = !DILocation(line: 442, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !668, file: !361, line: 442, column: 9)
!3870 = !DILocation(line: 442, column: 15, scope: !3869)
!3871 = !DILocation(line: 442, column: 12, scope: !3869)
!3872 = !DILocation(line: 442, column: 9, scope: !668)
!3873 = !DILocation(line: 443, column: 9, scope: !3869)
!3874 = !DILocation(line: 444, column: 43, scope: !668)
!3875 = !DILocation(line: 444, column: 47, scope: !668)
!3876 = !DILocation(line: 444, column: 55, scope: !668)
!3877 = !DILocation(line: 444, column: 59, scope: !668)
!3878 = !DILocation(line: 444, column: 18, scope: !668)
!3879 = !DILocation(line: 444, column: 16, scope: !668)
!3880 = !DILocation(line: 446, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !668, file: !361, line: 446, column: 9)
!3882 = !DILocation(line: 446, column: 20, scope: !3881)
!3883 = !DILocation(line: 446, column: 9, scope: !668)
!3884 = !DILocation(line: 447, column: 16, scope: !3881)
!3885 = !DILocation(line: 447, column: 9, scope: !3881)
!3886 = !DILocation(line: 448, column: 31, scope: !668)
!3887 = !DILocation(line: 448, column: 35, scope: !668)
!3888 = !DILocation(line: 448, column: 18, scope: !668)
!3889 = !DILocation(line: 448, column: 16, scope: !668)
!3890 = !DILocation(line: 450, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !668, file: !361, line: 450, column: 9)
!3892 = !DILocation(line: 450, column: 20, scope: !3891)
!3893 = !DILocation(line: 450, column: 9, scope: !668)
!3894 = !DILocation(line: 451, column: 16, scope: !3891)
!3895 = !DILocation(line: 451, column: 9, scope: !3891)
!3896 = !DILocation(line: 452, column: 43, scope: !668)
!3897 = !DILocation(line: 452, column: 47, scope: !668)
!3898 = !DILocation(line: 452, column: 54, scope: !668)
!3899 = !DILocation(line: 452, column: 58, scope: !668)
!3900 = !DILocation(line: 452, column: 18, scope: !668)
!3901 = !DILocation(line: 452, column: 16, scope: !668)
!3902 = !DILocation(line: 454, column: 9, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !668, file: !361, line: 454, column: 9)
!3904 = !DILocation(line: 454, column: 20, scope: !3903)
!3905 = !DILocation(line: 454, column: 9, scope: !668)
!3906 = !DILocation(line: 455, column: 16, scope: !3903)
!3907 = !DILocation(line: 455, column: 9, scope: !3903)
!3908 = !DILocation(line: 456, column: 11, scope: !668)
!3909 = !DILocation(line: 456, column: 9, scope: !668)
!3910 = !DILocation(line: 457, column: 10, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !668, file: !361, line: 457, column: 9)
!3912 = !DILocation(line: 457, column: 9, scope: !668)
!3913 = !DILocation(line: 458, column: 9, scope: !3911)
!3914 = !DILocation(line: 459, column: 43, scope: !668)
!3915 = !DILocation(line: 459, column: 47, scope: !668)
!3916 = !DILocation(line: 459, column: 55, scope: !668)
!3917 = !DILocation(line: 459, column: 18, scope: !668)
!3918 = !DILocation(line: 459, column: 16, scope: !668)
!3919 = !DILocation(line: 460, column: 5, scope: !668)
!3920 = !DILocation(line: 460, column: 10, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !677, file: !361, discriminator: 1)
!3922 = !DILocation(line: 460, column: 20, scope: !677)
!3923 = !DILocation(line: 460, column: 50, scope: !677)
!3924 = !DILocation(line: 460, column: 64, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !677, file: !361, line: 460, column: 61)
!3926 = !DILocation(line: 460, column: 81, scope: !3925)
!3927 = !DILocation(line: 460, column: 61, scope: !3925)
!3928 = !DILocation(line: 460, column: 91, scope: !3925)
!3929 = !DILocation(line: 460, column: 61, scope: !677)
!3930 = !DILocation(line: 460, column: 61, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !677, file: !361, discriminator: 2)
!3932 = !DILocation(line: 460, column: 122, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3925, file: !361, discriminator: 3)
!3934 = !DILocation(line: 460, column: 140, scope: !3925)
!3935 = !DILocation(line: 460, column: 150, scope: !3925)
!3936 = !DILocation(line: 460, column: 175, scope: !3925)
!3937 = !DILocation(line: 460, column: 106, scope: !3925)
!3938 = !DILocation(line: 460, column: 194, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !668, file: !361, discriminator: 4)
!3940 = !DILocation(line: 460, column: 194, scope: !677)
!3941 = !DILocation(line: 460, column: 194, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !677, file: !361, discriminator: 5)
!3943 = !DILocation(line: 462, column: 9, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !668, file: !361, line: 462, column: 9)
!3945 = !DILocation(line: 462, column: 20, scope: !3944)
!3946 = !DILocation(line: 462, column: 9, scope: !668)
!3947 = !DILocation(line: 463, column: 16, scope: !3944)
!3948 = !DILocation(line: 463, column: 9, scope: !3944)
!3949 = !DILocation(line: 464, column: 37, scope: !668)
!3950 = !DILocation(line: 464, column: 41, scope: !668)
!3951 = !DILocation(line: 464, column: 47, scope: !668)
!3952 = !DILocation(line: 464, column: 51, scope: !668)
!3953 = !DILocation(line: 464, column: 12, scope: !668)
!3954 = !DILocation(line: 464, column: 5, scope: !668)
!3955 = !DILocation(line: 465, column: 1, scope: !668)
!3956 = !DILocation(line: 1164, column: 25, scope: !678)
!3957 = !DILocation(line: 1166, column: 5, scope: !678)
!3958 = !DILocation(line: 1166, column: 18, scope: !678)
!3959 = !DILocation(line: 1166, column: 41, scope: !678)
!3960 = !DILocation(line: 1166, column: 26, scope: !678)
!3961 = !DILocation(line: 1167, column: 5, scope: !678)
!3962 = !DILocation(line: 1167, column: 26, scope: !678)
!3963 = !DILocation(line: 1168, column: 5, scope: !678)
!3964 = !DILocation(line: 1168, column: 15, scope: !678)
!3965 = !DILocation(line: 1168, column: 21, scope: !678)
!3966 = !DILocation(line: 1168, column: 27, scope: !678)
!3967 = !DILocation(line: 1168, column: 34, scope: !678)
!3968 = !DILocation(line: 1169, column: 5, scope: !678)
!3969 = !DILocation(line: 1169, column: 10, scope: !678)
!3970 = !DILocation(line: 1169, column: 18, scope: !678)
!3971 = !DILocation(line: 1169, column: 25, scope: !678)
!3972 = !DILocation(line: 1169, column: 32, scope: !678)
!3973 = !DILocation(line: 1169, column: 43, scope: !678)
!3974 = !DILocation(line: 1170, column: 5, scope: !678)
!3975 = !DILocation(line: 1170, column: 19, scope: !678)
!3976 = !DILocation(line: 1184, column: 28, scope: !678)
!3977 = !DILocation(line: 1184, column: 35, scope: !678)
!3978 = !DILocation(line: 1184, column: 14, scope: !678)
!3979 = !DILocation(line: 1184, column: 12, scope: !678)
!3980 = !DILocation(line: 1185, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1185, column: 9)
!3982 = !DILocation(line: 1185, column: 16, scope: !3981)
!3983 = !DILocation(line: 1185, column: 22, scope: !3981)
!3984 = !DILocation(line: 1185, column: 25, scope: !3985)
!3985 = !DILexicalBlockFile(scope: !3981, file: !361, discriminator: 1)
!3986 = !DILocation(line: 1185, column: 9, scope: !678)
!3987 = !DILocation(line: 1186, column: 9, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3981, file: !361, line: 1185, column: 43)
!3989 = !DILocation(line: 1187, column: 9, scope: !3988)
!3990 = !DILocation(line: 1189, column: 27, scope: !678)
!3991 = !DILocation(line: 1189, column: 34, scope: !678)
!3992 = !DILocation(line: 1189, column: 13, scope: !678)
!3993 = !DILocation(line: 1189, column: 11, scope: !678)
!3994 = !DILocation(line: 1190, column: 9, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1190, column: 9)
!3996 = !DILocation(line: 1190, column: 15, scope: !3995)
!3997 = !DILocation(line: 1190, column: 21, scope: !3995)
!3998 = !DILocation(line: 1190, column: 24, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3995, file: !361, discriminator: 1)
!4000 = !DILocation(line: 1190, column: 9, scope: !678)
!4001 = !DILocation(line: 1191, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !361, line: 1190, column: 42)
!4003 = !DILocation(line: 1192, column: 9, scope: !4002)
!4004 = !DILocation(line: 1194, column: 27, scope: !678)
!4005 = !DILocation(line: 1194, column: 34, scope: !678)
!4006 = !DILocation(line: 1194, column: 13, scope: !678)
!4007 = !DILocation(line: 1194, column: 11, scope: !678)
!4008 = !DILocation(line: 1195, column: 9, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1195, column: 9)
!4010 = !DILocation(line: 1195, column: 15, scope: !4009)
!4011 = !DILocation(line: 1195, column: 21, scope: !4009)
!4012 = !DILocation(line: 1195, column: 24, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4009, file: !361, discriminator: 1)
!4014 = !DILocation(line: 1195, column: 9, scope: !678)
!4015 = !DILocation(line: 1196, column: 9, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4009, file: !361, line: 1195, column: 42)
!4017 = !DILocation(line: 1197, column: 9, scope: !4016)
!4018 = !DILocation(line: 1200, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1200, column: 9)
!4020 = !DILocation(line: 1200, column: 15, scope: !4019)
!4021 = !DILocation(line: 1200, column: 9, scope: !678)
!4022 = !DILocation(line: 1201, column: 9, scope: !4019)
!4023 = !DILocation(line: 1216, column: 9, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1216, column: 9)
!4025 = !DILocation(line: 1216, column: 15, scope: !4024)
!4026 = !DILocation(line: 1216, column: 9, scope: !678)
!4027 = !DILocation(line: 1217, column: 29, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !361, line: 1217, column: 14)
!4029 = distinct !DILexicalBlock(scope: !4024, file: !361, line: 1216, column: 20)
!4030 = !DILocation(line: 1217, column: 36, scope: !4028)
!4031 = !DILocation(line: 1217, column: 83, scope: !4028)
!4032 = !DILocation(line: 1217, column: 66, scope: !4028)
!4033 = !DILocation(line: 1217, column: 14, scope: !4029)
!4034 = !DILocation(line: 1218, column: 13, scope: !4028)
!4035 = !DILocation(line: 1219, column: 5, scope: !4029)
!4036 = !DILocation(line: 1221, column: 51, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !361, line: 1221, column: 13)
!4038 = distinct !DILexicalBlock(scope: !4024, file: !361, line: 1220, column: 10)
!4039 = !DILocation(line: 1221, column: 34, scope: !4037)
!4040 = !DILocation(line: 1221, column: 66, scope: !4037)
!4041 = !DILocation(line: 1221, column: 64, scope: !4037)
!4042 = !DILocation(line: 1221, column: 58, scope: !4037)
!4043 = !DILocation(line: 1221, column: 13, scope: !4038)
!4044 = !DILocation(line: 1222, column: 13, scope: !4037)
!4045 = !DILocation(line: 1225, column: 29, scope: !678)
!4046 = !DILocation(line: 1225, column: 37, scope: !678)
!4047 = !DILocation(line: 1225, column: 44, scope: !678)
!4048 = !DILocation(line: 1225, column: 12, scope: !678)
!4049 = !DILocation(line: 1225, column: 10, scope: !678)
!4050 = !DILocation(line: 1226, column: 9, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1226, column: 9)
!4052 = !DILocation(line: 1226, column: 14, scope: !4051)
!4053 = !DILocation(line: 1226, column: 9, scope: !678)
!4054 = !DILocation(line: 1227, column: 9, scope: !4051)
!4055 = !DILocation(line: 1229, column: 16, scope: !678)
!4056 = !DILocation(line: 1229, column: 25, scope: !678)
!4057 = !DILocation(line: 1229, column: 23, scope: !678)
!4058 = !DILocation(line: 1229, column: 14, scope: !678)
!4059 = !DILocation(line: 1230, column: 24, scope: !678)
!4060 = !DILocation(line: 1230, column: 35, scope: !678)
!4061 = !DILocation(line: 1230, column: 42, scope: !678)
!4062 = !DILocation(line: 1230, column: 40, scope: !678)
!4063 = !DILocation(line: 1230, column: 33, scope: !678)
!4064 = !DILocation(line: 1230, column: 15, scope: !678)
!4065 = !DILocation(line: 1231, column: 28, scope: !678)
!4066 = !DILocation(line: 1231, column: 39, scope: !678)
!4067 = !DILocation(line: 1231, column: 50, scope: !678)
!4068 = !DILocation(line: 1231, column: 49, scope: !678)
!4069 = !DILocation(line: 1231, column: 12, scope: !678)
!4070 = !DILocation(line: 1231, column: 5, scope: !678)
!4071 = !DILocation(line: 1234, column: 36, scope: !678)
!4072 = !DILocation(line: 1234, column: 12, scope: !678)
!4073 = !DILocation(line: 1234, column: 8, scope: !678)
!4074 = !DILocation(line: 1235, column: 9, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1235, column: 9)
!4076 = !DILocation(line: 1235, column: 12, scope: !4075)
!4077 = !DILocation(line: 1235, column: 9, scope: !678)
!4078 = !DILocation(line: 1236, column: 9, scope: !4075)
!4079 = !DILocation(line: 1239, column: 15, scope: !678)
!4080 = !DILocation(line: 1239, column: 22, scope: !678)
!4081 = !DILocation(line: 1239, column: 5, scope: !678)
!4082 = !DILocation(line: 1239, column: 9, scope: !678)
!4083 = !DILocation(line: 1239, column: 13, scope: !678)
!4084 = !DILocation(line: 1240, column: 21, scope: !678)
!4085 = !DILocation(line: 1240, column: 25, scope: !678)
!4086 = !DILocation(line: 1240, column: 32, scope: !678)
!4087 = !DILocation(line: 1240, column: 41, scope: !678)
!4088 = !DILocation(line: 1242, column: 11, scope: !678)
!4089 = !DILocation(line: 1242, column: 9, scope: !678)
!4090 = !DILocation(line: 1243, column: 10, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1243, column: 9)
!4092 = !DILocation(line: 1243, column: 9, scope: !678)
!4093 = !DILocation(line: 1244, column: 9, scope: !4091)
!4094 = !DILocation(line: 1246, column: 30, scope: !678)
!4095 = !DILocation(line: 1246, column: 34, scope: !678)
!4096 = !DILocation(line: 1246, column: 39, scope: !678)
!4097 = !DILocation(line: 1246, column: 12, scope: !678)
!4098 = !DILocation(line: 1246, column: 10, scope: !678)
!4099 = !DILocation(line: 1247, column: 5, scope: !678)
!4100 = !DILocation(line: 1247, column: 10, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !694, file: !361, discriminator: 1)
!4102 = !DILocation(line: 1247, column: 20, scope: !694)
!4103 = !DILocation(line: 1247, column: 50, scope: !694)
!4104 = !DILocation(line: 1247, column: 64, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !694, file: !361, line: 1247, column: 61)
!4106 = !DILocation(line: 1247, column: 81, scope: !4105)
!4107 = !DILocation(line: 1247, column: 61, scope: !4105)
!4108 = !DILocation(line: 1247, column: 91, scope: !4105)
!4109 = !DILocation(line: 1247, column: 61, scope: !694)
!4110 = !DILocation(line: 1247, column: 61, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !694, file: !361, discriminator: 2)
!4112 = !DILocation(line: 1247, column: 122, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4105, file: !361, discriminator: 3)
!4114 = !DILocation(line: 1247, column: 140, scope: !4105)
!4115 = !DILocation(line: 1247, column: 150, scope: !4105)
!4116 = !DILocation(line: 1247, column: 175, scope: !4105)
!4117 = !DILocation(line: 1247, column: 106, scope: !4105)
!4118 = !DILocation(line: 1247, column: 194, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !678, file: !361, discriminator: 4)
!4120 = !DILocation(line: 1247, column: 194, scope: !694)
!4121 = !DILocation(line: 1247, column: 194, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !694, file: !361, discriminator: 5)
!4123 = !DILocation(line: 1248, column: 10, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1248, column: 9)
!4125 = !DILocation(line: 1248, column: 9, scope: !678)
!4126 = !DILocation(line: 1249, column: 9, scope: !4124)
!4127 = !DILocation(line: 1251, column: 33, scope: !678)
!4128 = !DILocation(line: 1251, column: 39, scope: !678)
!4129 = !DILocation(line: 1251, column: 46, scope: !678)
!4130 = !DILocation(line: 1251, column: 15, scope: !678)
!4131 = !DILocation(line: 1251, column: 13, scope: !678)
!4132 = !DILocation(line: 1252, column: 5, scope: !678)
!4133 = !DILocation(line: 1252, column: 10, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !696, file: !361, discriminator: 1)
!4135 = !DILocation(line: 1252, column: 20, scope: !696)
!4136 = !DILocation(line: 1252, column: 50, scope: !696)
!4137 = !DILocation(line: 1252, column: 65, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !696, file: !361, line: 1252, column: 62)
!4139 = !DILocation(line: 1252, column: 82, scope: !4138)
!4140 = !DILocation(line: 1252, column: 62, scope: !4138)
!4141 = !DILocation(line: 1252, column: 92, scope: !4138)
!4142 = !DILocation(line: 1252, column: 62, scope: !696)
!4143 = !DILocation(line: 1252, column: 62, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !696, file: !361, discriminator: 2)
!4145 = !DILocation(line: 1252, column: 123, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4138, file: !361, discriminator: 3)
!4147 = !DILocation(line: 1252, column: 141, scope: !4138)
!4148 = !DILocation(line: 1252, column: 151, scope: !4138)
!4149 = !DILocation(line: 1252, column: 176, scope: !4138)
!4150 = !DILocation(line: 1252, column: 107, scope: !4138)
!4151 = !DILocation(line: 1252, column: 195, scope: !4119)
!4152 = !DILocation(line: 1252, column: 195, scope: !696)
!4153 = !DILocation(line: 1252, column: 195, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !696, file: !361, discriminator: 5)
!4155 = !DILocation(line: 1253, column: 10, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1253, column: 9)
!4157 = !DILocation(line: 1253, column: 9, scope: !678)
!4158 = !DILocation(line: 1254, column: 9, scope: !4156)
!4159 = !DILocation(line: 1256, column: 24, scope: !678)
!4160 = !DILocation(line: 1256, column: 31, scope: !678)
!4161 = !DILocation(line: 1256, column: 38, scope: !678)
!4162 = !DILocation(line: 1256, column: 11, scope: !678)
!4163 = !DILocation(line: 1256, column: 9, scope: !678)
!4164 = !DILocation(line: 1257, column: 5, scope: !678)
!4165 = !DILocation(line: 1257, column: 10, scope: !4166)
!4166 = !DILexicalBlockFile(scope: !698, file: !361, discriminator: 1)
!4167 = !DILocation(line: 1257, column: 20, scope: !698)
!4168 = !DILocation(line: 1257, column: 50, scope: !698)
!4169 = !DILocation(line: 1257, column: 68, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !698, file: !361, line: 1257, column: 65)
!4171 = !DILocation(line: 1257, column: 85, scope: !4170)
!4172 = !DILocation(line: 1257, column: 65, scope: !4170)
!4173 = !DILocation(line: 1257, column: 95, scope: !4170)
!4174 = !DILocation(line: 1257, column: 65, scope: !698)
!4175 = !DILocation(line: 1257, column: 65, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !698, file: !361, discriminator: 2)
!4177 = !DILocation(line: 1257, column: 126, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4170, file: !361, discriminator: 3)
!4179 = !DILocation(line: 1257, column: 144, scope: !4170)
!4180 = !DILocation(line: 1257, column: 154, scope: !4170)
!4181 = !DILocation(line: 1257, column: 179, scope: !4170)
!4182 = !DILocation(line: 1257, column: 110, scope: !4170)
!4183 = !DILocation(line: 1257, column: 198, scope: !4119)
!4184 = !DILocation(line: 1257, column: 198, scope: !698)
!4185 = !DILocation(line: 1257, column: 198, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !698, file: !361, discriminator: 5)
!4187 = !DILocation(line: 1258, column: 17, scope: !678)
!4188 = !DILocation(line: 1258, column: 5, scope: !678)
!4189 = !DILocation(line: 1258, column: 9, scope: !678)
!4190 = !DILocation(line: 1258, column: 15, scope: !678)
!4191 = !DILocation(line: 1259, column: 10, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1259, column: 9)
!4193 = !DILocation(line: 1259, column: 14, scope: !4192)
!4194 = !DILocation(line: 1259, column: 9, scope: !678)
!4195 = !DILocation(line: 1260, column: 9, scope: !4192)
!4196 = !DILocation(line: 1262, column: 34, scope: !678)
!4197 = !DILocation(line: 1262, column: 41, scope: !678)
!4198 = !DILocation(line: 1262, column: 16, scope: !678)
!4199 = !DILocation(line: 1262, column: 5, scope: !678)
!4200 = !DILocation(line: 1262, column: 9, scope: !678)
!4201 = !DILocation(line: 1262, column: 14, scope: !678)
!4202 = !DILocation(line: 1263, column: 10, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1263, column: 9)
!4204 = !DILocation(line: 1263, column: 14, scope: !4203)
!4205 = !DILocation(line: 1263, column: 9, scope: !678)
!4206 = !DILocation(line: 1264, column: 9, scope: !4203)
!4207 = !DILocation(line: 1266, column: 17, scope: !678)
!4208 = !DILocation(line: 1266, column: 5, scope: !678)
!4209 = !DILocation(line: 1266, column: 9, scope: !678)
!4210 = !DILocation(line: 1266, column: 15, scope: !678)
!4211 = !DILocation(line: 1267, column: 10, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !678, file: !361, line: 1267, column: 9)
!4213 = !DILocation(line: 1267, column: 14, scope: !4212)
!4214 = !DILocation(line: 1267, column: 9, scope: !678)
!4215 = !DILocation(line: 1268, column: 9, scope: !4212)
!4216 = !DILocation(line: 1270, column: 24, scope: !678)
!4217 = !DILocation(line: 1270, column: 12, scope: !678)
!4218 = !DILocation(line: 1270, column: 5, scope: !678)
!4219 = !DILocation(line: 1273, column: 5, scope: !678)
!4220 = !DILocation(line: 1273, column: 10, scope: !4221)
!4221 = !DILexicalBlockFile(scope: !700, file: !361, discriminator: 1)
!4222 = !DILocation(line: 1273, column: 20, scope: !700)
!4223 = !DILocation(line: 1273, column: 50, scope: !700)
!4224 = !DILocation(line: 1273, column: 37, scope: !700)
!4225 = !DILocation(line: 1273, column: 63, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !700, file: !361, line: 1273, column: 60)
!4227 = !DILocation(line: 1273, column: 80, scope: !4226)
!4228 = !DILocation(line: 1273, column: 60, scope: !4226)
!4229 = !DILocation(line: 1273, column: 90, scope: !4226)
!4230 = !DILocation(line: 1273, column: 60, scope: !700)
!4231 = !DILocation(line: 1273, column: 60, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !700, file: !361, discriminator: 2)
!4233 = !DILocation(line: 1273, column: 121, scope: !4234)
!4234 = !DILexicalBlockFile(scope: !4226, file: !361, discriminator: 3)
!4235 = !DILocation(line: 1273, column: 139, scope: !4226)
!4236 = !DILocation(line: 1273, column: 149, scope: !4226)
!4237 = !DILocation(line: 1273, column: 174, scope: !4226)
!4238 = !DILocation(line: 1273, column: 105, scope: !4226)
!4239 = !DILocation(line: 1273, column: 193, scope: !4119)
!4240 = !DILocation(line: 1273, column: 193, scope: !700)
!4241 = !DILocation(line: 1273, column: 193, scope: !4242)
!4242 = !DILexicalBlockFile(scope: !700, file: !361, discriminator: 5)
!4243 = !DILocation(line: 1274, column: 5, scope: !678)
!4244 = !DILocation(line: 1275, column: 1, scope: !678)
!4245 = !DILocation(line: 637, column: 27, scope: !721)
!4246 = !DILocation(line: 637, column: 40, scope: !721)
!4247 = !DILocation(line: 639, column: 52, scope: !721)
!4248 = !DILocation(line: 639, column: 40, scope: !721)
!4249 = !DILocation(line: 639, column: 57, scope: !721)
!4250 = !DILocation(line: 640, column: 26, scope: !721)
!4251 = !DILocation(line: 640, column: 29, scope: !721)
!4252 = !DILocation(line: 640, column: 36, scope: !721)
!4253 = !DILocation(line: 640, column: 39, scope: !721)
!4254 = !DILocation(line: 640, column: 45, scope: !721)
!4255 = !DILocation(line: 640, column: 48, scope: !721)
!4256 = !DILocation(line: 639, column: 12, scope: !721)
!4257 = !DILocation(line: 639, column: 5, scope: !721)
!4258 = !DILocation(line: 553, column: 26, scope: !725)
!4259 = !DILocation(line: 553, column: 39, scope: !725)
!4260 = !DILocation(line: 555, column: 24, scope: !731)
!4261 = !DILocation(line: 555, column: 30, scope: !731)
!4262 = !DILocation(line: 555, column: 39, scope: !731)
!4263 = !DILocation(line: 555, column: 56, scope: !731)
!4264 = !DILocation(line: 555, column: 74, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !731, file: !361, discriminator: 1)
!4266 = !DILocation(line: 555, column: 80, scope: !731)
!4267 = !DILocation(line: 555, column: 89, scope: !731)
!4268 = !DILocation(line: 555, column: 9, scope: !725)
!4269 = !DILocation(line: 556, column: 9, scope: !730)
!4270 = !DILocation(line: 556, column: 13, scope: !730)
!4271 = !DILocation(line: 556, column: 42, scope: !730)
!4272 = !DILocation(line: 556, column: 45, scope: !730)
!4273 = !DILocation(line: 556, column: 22, scope: !730)
!4274 = !DILocation(line: 557, column: 13, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !730, file: !361, line: 557, column: 13)
!4276 = !DILocation(line: 557, column: 20, scope: !4275)
!4277 = !DILocation(line: 557, column: 13, scope: !730)
!4278 = !DILocation(line: 558, column: 13, scope: !4275)
!4279 = !DILocation(line: 559, column: 18, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !361, line: 559, column: 18)
!4281 = !DILocation(line: 559, column: 18, scope: !4275)
!4282 = !DILocation(line: 560, column: 20, scope: !4280)
!4283 = !DILocation(line: 560, column: 13, scope: !4280)
!4284 = !DILocation(line: 562, column: 20, scope: !4280)
!4285 = !DILocation(line: 562, column: 13, scope: !4280)
!4286 = !DILocation(line: 563, column: 5, scope: !731)
!4287 = !DILocation(line: 564, column: 9, scope: !733)
!4288 = !DILocation(line: 564, column: 20, scope: !733)
!4289 = !DILocation(line: 565, column: 51, scope: !733)
!4290 = !DILocation(line: 565, column: 40, scope: !733)
!4291 = !DILocation(line: 565, column: 54, scope: !733)
!4292 = !DILocation(line: 565, column: 17, scope: !733)
!4293 = !DILocation(line: 565, column: 15, scope: !733)
!4294 = !DILocation(line: 566, column: 13, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !733, file: !361, line: 566, column: 13)
!4296 = !DILocation(line: 566, column: 19, scope: !4295)
!4297 = !DILocation(line: 566, column: 13, scope: !733)
!4298 = !DILocation(line: 567, column: 13, scope: !4295)
!4299 = !DILocation(line: 568, column: 35, scope: !733)
!4300 = !DILocation(line: 568, column: 16, scope: !733)
!4301 = !DILocation(line: 568, column: 9, scope: !733)
!4302 = !DILocation(line: 569, column: 5, scope: !731)
!4303 = !DILocation(line: 570, column: 1, scope: !725)
!4304 = !DILocation(line: 573, column: 26, scope: !734)
!4305 = !DILocation(line: 573, column: 39, scope: !734)
!4306 = !DILocation(line: 575, column: 5, scope: !734)
!4307 = !DILocation(line: 575, column: 9, scope: !734)
!4308 = !DILocation(line: 577, column: 25, scope: !741)
!4309 = !DILocation(line: 577, column: 31, scope: !741)
!4310 = !DILocation(line: 577, column: 40, scope: !741)
!4311 = !DILocation(line: 577, column: 57, scope: !741)
!4312 = !DILocation(line: 577, column: 76, scope: !4313)
!4313 = !DILexicalBlockFile(scope: !741, file: !361, discriminator: 1)
!4314 = !DILocation(line: 577, column: 82, scope: !741)
!4315 = !DILocation(line: 577, column: 91, scope: !741)
!4316 = !DILocation(line: 577, column: 9, scope: !734)
!4317 = !DILocation(line: 578, column: 9, scope: !740)
!4318 = !DILocation(line: 578, column: 20, scope: !740)
!4319 = !DILocation(line: 579, column: 51, scope: !740)
!4320 = !DILocation(line: 579, column: 40, scope: !740)
!4321 = !DILocation(line: 579, column: 54, scope: !740)
!4322 = !DILocation(line: 579, column: 17, scope: !740)
!4323 = !DILocation(line: 579, column: 15, scope: !740)
!4324 = !DILocation(line: 580, column: 13, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !740, file: !361, line: 580, column: 13)
!4326 = !DILocation(line: 580, column: 19, scope: !4325)
!4327 = !DILocation(line: 580, column: 13, scope: !740)
!4328 = !DILocation(line: 581, column: 13, scope: !4325)
!4329 = !DILocation(line: 582, column: 35, scope: !740)
!4330 = !DILocation(line: 582, column: 16, scope: !740)
!4331 = !DILocation(line: 582, column: 9, scope: !740)
!4332 = !DILocation(line: 583, column: 5, scope: !741)
!4333 = !DILocation(line: 585, column: 36, scope: !734)
!4334 = !DILocation(line: 585, column: 39, scope: !734)
!4335 = !DILocation(line: 585, column: 16, scope: !734)
!4336 = !DILocation(line: 585, column: 14, scope: !734)
!4337 = !DILocation(line: 586, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !734, file: !361, line: 586, column: 9)
!4339 = !DILocation(line: 586, column: 18, scope: !4338)
!4340 = !DILocation(line: 586, column: 9, scope: !734)
!4341 = !DILocation(line: 587, column: 9, scope: !4338)
!4342 = !DILocation(line: 589, column: 9, scope: !744)
!4343 = !DILocation(line: 589, column: 9, scope: !734)
!4344 = !DILocation(line: 590, column: 9, scope: !743)
!4345 = !DILocation(line: 590, column: 19, scope: !743)
!4346 = !DILocation(line: 590, column: 25, scope: !743)
!4347 = !DILocation(line: 590, column: 49, scope: !743)
!4348 = !DILocation(line: 590, column: 53, scope: !743)
!4349 = !DILocation(line: 590, column: 56, scope: !743)
!4350 = !DILocation(line: 590, column: 31, scope: !743)
!4351 = !DILocation(line: 591, column: 13, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !743, file: !361, line: 591, column: 13)
!4353 = !DILocation(line: 591, column: 17, scope: !4352)
!4354 = !DILocation(line: 591, column: 13, scope: !743)
!4355 = !DILocation(line: 592, column: 13, scope: !4352)
!4356 = !DILocation(line: 594, column: 36, scope: !743)
!4357 = !DILocation(line: 594, column: 41, scope: !743)
!4358 = !DILocation(line: 594, column: 44, scope: !743)
!4359 = !DILocation(line: 594, column: 15, scope: !743)
!4360 = !DILocation(line: 594, column: 13, scope: !743)
!4361 = !DILocation(line: 595, column: 9, scope: !743)
!4362 = !DILocation(line: 595, column: 14, scope: !4363)
!4363 = !DILexicalBlockFile(scope: !747, file: !361, discriminator: 1)
!4364 = !DILocation(line: 595, column: 24, scope: !747)
!4365 = !DILocation(line: 595, column: 54, scope: !747)
!4366 = !DILocation(line: 595, column: 68, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !747, file: !361, line: 595, column: 65)
!4368 = !DILocation(line: 595, column: 85, scope: !4367)
!4369 = !DILocation(line: 595, column: 65, scope: !4367)
!4370 = !DILocation(line: 595, column: 95, scope: !4367)
!4371 = !DILocation(line: 595, column: 65, scope: !747)
!4372 = !DILocation(line: 595, column: 65, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !747, file: !361, discriminator: 2)
!4374 = !DILocation(line: 595, column: 126, scope: !4375)
!4375 = !DILexicalBlockFile(scope: !4367, file: !361, discriminator: 3)
!4376 = !DILocation(line: 595, column: 144, scope: !4367)
!4377 = !DILocation(line: 595, column: 154, scope: !4367)
!4378 = !DILocation(line: 595, column: 179, scope: !4367)
!4379 = !DILocation(line: 595, column: 110, scope: !4367)
!4380 = !DILocation(line: 595, column: 198, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !743, file: !361, discriminator: 4)
!4382 = !DILocation(line: 595, column: 198, scope: !747)
!4383 = !DILocation(line: 595, column: 198, scope: !4384)
!4384 = !DILexicalBlockFile(scope: !747, file: !361, discriminator: 5)
!4385 = !DILocation(line: 596, column: 16, scope: !743)
!4386 = !DILocation(line: 596, column: 9, scope: !743)
!4387 = !DILocation(line: 597, column: 5, scope: !744)
!4388 = !DILocation(line: 600, column: 18, scope: !734)
!4389 = !DILocation(line: 600, column: 58, scope: !734)
!4390 = !DILocation(line: 600, column: 5, scope: !734)
!4391 = !DILocation(line: 601, column: 5, scope: !734)
!4392 = !DILocation(line: 602, column: 1, scope: !734)
!4393 = !DILocation(line: 880, column: 23, scope: !701)
!4394 = !DILocation(line: 880, column: 32, scope: !701)
!4395 = !DILocation(line: 880, column: 41, scope: !701)
!4396 = !DILocation(line: 896, column: 9, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !701, file: !361, line: 896, column: 9)
!4398 = !DILocation(line: 896, column: 14, scope: !4397)
!4399 = !DILocation(line: 896, column: 18, scope: !4397)
!4400 = !DILocation(line: 896, column: 21, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !4397, file: !361, discriminator: 1)
!4402 = !DILocation(line: 896, column: 26, scope: !4397)
!4403 = !DILocation(line: 896, column: 24, scope: !4397)
!4404 = !DILocation(line: 896, column: 9, scope: !701)
!4405 = !DILocation(line: 897, column: 23, scope: !4397)
!4406 = !DILocation(line: 897, column: 26, scope: !4397)
!4407 = !DILocation(line: 897, column: 34, scope: !4397)
!4408 = !DILocation(line: 897, column: 32, scope: !4397)
!4409 = !DILocation(line: 897, column: 40, scope: !4397)
!4410 = !DILocation(line: 897, column: 38, scope: !4397)
!4411 = !DILocation(line: 897, column: 20, scope: !4397)
!4412 = !DILocation(line: 897, column: 9, scope: !4397)
!4413 = !DILocation(line: 898, column: 14, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4397, file: !361, line: 898, column: 14)
!4415 = !DILocation(line: 898, column: 19, scope: !4414)
!4416 = !DILocation(line: 898, column: 23, scope: !4414)
!4417 = !DILocation(line: 898, column: 26, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4414, file: !361, discriminator: 1)
!4419 = !DILocation(line: 898, column: 31, scope: !4414)
!4420 = !DILocation(line: 898, column: 29, scope: !4414)
!4421 = !DILocation(line: 898, column: 14, scope: !4397)
!4422 = !DILocation(line: 899, column: 23, scope: !4414)
!4423 = !DILocation(line: 899, column: 26, scope: !4414)
!4424 = !DILocation(line: 899, column: 34, scope: !4414)
!4425 = !DILocation(line: 899, column: 32, scope: !4414)
!4426 = !DILocation(line: 899, column: 47, scope: !4414)
!4427 = !DILocation(line: 899, column: 45, scope: !4414)
!4428 = !DILocation(line: 899, column: 38, scope: !4414)
!4429 = !DILocation(line: 899, column: 20, scope: !4414)
!4430 = !DILocation(line: 899, column: 9, scope: !4414)
!4431 = !DILocation(line: 901, column: 9, scope: !4414)
!4432 = !DILocation(line: 902, column: 1, scope: !701)
!4433 = !DILocation(line: 908, column: 22, scope: !708)
!4434 = !DILocation(line: 908, column: 34, scope: !708)
!4435 = !DILocation(line: 908, column: 45, scope: !708)
!4436 = !DILocation(line: 910, column: 5, scope: !708)
!4437 = !DILocation(line: 910, column: 22, scope: !708)
!4438 = !DILocation(line: 910, column: 49, scope: !708)
!4439 = !DILocation(line: 910, column: 29, scope: !708)
!4440 = !DILocation(line: 911, column: 5, scope: !708)
!4441 = !DILocation(line: 911, column: 19, scope: !708)
!4442 = !DILocation(line: 912, column: 9, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !708, file: !361, line: 912, column: 9)
!4444 = !DILocation(line: 912, column: 12, scope: !4443)
!4445 = !DILocation(line: 912, column: 9, scope: !708)
!4446 = !DILocation(line: 913, column: 9, scope: !4443)
!4447 = !DILocation(line: 914, column: 17, scope: !708)
!4448 = !DILocation(line: 914, column: 5, scope: !708)
!4449 = !DILocation(line: 914, column: 9, scope: !708)
!4450 = !DILocation(line: 914, column: 15, scope: !708)
!4451 = !DILocation(line: 915, column: 16, scope: !708)
!4452 = !DILocation(line: 915, column: 5, scope: !708)
!4453 = !DILocation(line: 915, column: 9, scope: !708)
!4454 = !DILocation(line: 915, column: 14, scope: !708)
!4455 = !DILocation(line: 916, column: 29, scope: !708)
!4456 = !DILocation(line: 916, column: 36, scope: !708)
!4457 = !DILocation(line: 916, column: 42, scope: !708)
!4458 = !DILocation(line: 916, column: 12, scope: !708)
!4459 = !DILocation(line: 916, column: 10, scope: !708)
!4460 = !DILocation(line: 917, column: 9, scope: !720)
!4461 = !DILocation(line: 917, column: 14, scope: !720)
!4462 = !DILocation(line: 917, column: 9, scope: !708)
!4463 = !DILocation(line: 918, column: 9, scope: !719)
!4464 = !DILocation(line: 918, column: 14, scope: !4465)
!4465 = !DILexicalBlockFile(scope: !718, file: !361, discriminator: 1)
!4466 = !DILocation(line: 918, column: 24, scope: !718)
!4467 = !DILocation(line: 918, column: 54, scope: !718)
!4468 = !DILocation(line: 918, column: 41, scope: !718)
!4469 = !DILocation(line: 918, column: 67, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !718, file: !361, line: 918, column: 64)
!4471 = !DILocation(line: 918, column: 84, scope: !4470)
!4472 = !DILocation(line: 918, column: 64, scope: !4470)
!4473 = !DILocation(line: 918, column: 94, scope: !4470)
!4474 = !DILocation(line: 918, column: 64, scope: !718)
!4475 = !DILocation(line: 918, column: 64, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !718, file: !361, discriminator: 2)
!4477 = !DILocation(line: 918, column: 125, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !4470, file: !361, discriminator: 3)
!4479 = !DILocation(line: 918, column: 143, scope: !4470)
!4480 = !DILocation(line: 918, column: 153, scope: !4470)
!4481 = !DILocation(line: 918, column: 178, scope: !4470)
!4482 = !DILocation(line: 918, column: 109, scope: !4470)
!4483 = !DILocation(line: 918, column: 197, scope: !4484)
!4484 = !DILexicalBlockFile(scope: !719, file: !361, discriminator: 4)
!4485 = !DILocation(line: 918, column: 197, scope: !718)
!4486 = !DILocation(line: 918, column: 197, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !718, file: !361, discriminator: 5)
!4488 = !DILocation(line: 919, column: 25, scope: !719)
!4489 = !DILocation(line: 919, column: 9, scope: !719)
!4490 = !DILocation(line: 921, column: 9, scope: !719)
!4491 = !DILocation(line: 923, column: 21, scope: !708)
!4492 = !DILocation(line: 923, column: 5, scope: !708)
!4493 = !DILocation(line: 923, column: 9, scope: !708)
!4494 = !DILocation(line: 923, column: 13, scope: !708)
!4495 = !DILocation(line: 924, column: 5, scope: !708)
!4496 = !DILocation(line: 924, column: 9, scope: !708)
!4497 = !DILocation(line: 924, column: 15, scope: !708)
!4498 = !DILocation(line: 925, column: 24, scope: !708)
!4499 = !DILocation(line: 925, column: 12, scope: !708)
!4500 = !DILocation(line: 925, column: 5, scope: !708)
!4501 = !DILocation(line: 926, column: 1, scope: !708)
!4502 = !DILocation(line: 25, column: 25, scope: !797)
!4503 = !DILocation(line: 28, column: 10, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !797, file: !361, line: 28, column: 9)
!4505 = !DILocation(line: 28, column: 9, scope: !797)
!4506 = !DILocation(line: 29, column: 16, scope: !4504)
!4507 = !DILocation(line: 29, column: 9, scope: !4504)
!4508 = !DILocation(line: 31, column: 27, scope: !797)
!4509 = !DILocation(line: 31, column: 12, scope: !797)
!4510 = !DILocation(line: 31, column: 10, scope: !797)
!4511 = !DILocation(line: 32, column: 9, scope: !802)
!4512 = !DILocation(line: 32, column: 9, scope: !797)
!4513 = !DILocation(line: 33, column: 9, scope: !801)
!4514 = !DILocation(line: 33, column: 20, scope: !801)
!4515 = !DILocation(line: 33, column: 47, scope: !801)
!4516 = !DILocation(line: 33, column: 28, scope: !801)
!4517 = !DILocation(line: 34, column: 13, scope: !807)
!4518 = !DILocation(line: 34, column: 19, scope: !807)
!4519 = !DILocation(line: 34, column: 25, scope: !807)
!4520 = !DILocation(line: 34, column: 28, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !807, file: !361, discriminator: 1)
!4522 = !DILocation(line: 34, column: 13, scope: !801)
!4523 = !DILocation(line: 36, column: 13, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !807, file: !361, line: 34, column: 46)
!4525 = !DILocation(line: 37, column: 9, scope: !4524)
!4526 = !DILocation(line: 38, column: 18, scope: !806)
!4527 = !DILocation(line: 38, column: 24, scope: !806)
!4528 = !DILocation(line: 38, column: 18, scope: !807)
!4529 = !DILocation(line: 39, column: 29, scope: !805)
!4530 = !DILocation(line: 39, column: 13, scope: !805)
!4531 = !DILocation(line: 41, column: 13, scope: !805)
!4532 = !DILocation(line: 41, column: 18, scope: !4533)
!4533 = !DILexicalBlockFile(scope: !804, file: !361, discriminator: 1)
!4534 = !DILocation(line: 41, column: 28, scope: !804)
!4535 = !DILocation(line: 41, column: 51, scope: !804)
!4536 = !DILocation(line: 41, column: 62, scope: !811)
!4537 = !DILocation(line: 41, column: 70, scope: !811)
!4538 = !DILocation(line: 41, column: 62, scope: !804)
!4539 = !DILocation(line: 41, column: 94, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !810, file: !361, discriminator: 2)
!4541 = !DILocation(line: 41, column: 108, scope: !810)
!4542 = !DILocation(line: 41, column: 113, scope: !4543)
!4543 = !DILexicalBlockFile(scope: !809, file: !361, discriminator: 4)
!4544 = !DILocation(line: 41, column: 123, scope: !809)
!4545 = !DILocation(line: 41, column: 153, scope: !809)
!4546 = !DILocation(line: 41, column: 171, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !809, file: !361, line: 41, column: 168)
!4548 = !DILocation(line: 41, column: 188, scope: !4547)
!4549 = !DILocation(line: 41, column: 168, scope: !4547)
!4550 = !DILocation(line: 41, column: 198, scope: !4547)
!4551 = !DILocation(line: 41, column: 168, scope: !809)
!4552 = !DILocation(line: 41, column: 168, scope: !4553)
!4553 = !DILexicalBlockFile(scope: !809, file: !361, discriminator: 5)
!4554 = !DILocation(line: 41, column: 229, scope: !4555)
!4555 = !DILexicalBlockFile(scope: !4547, file: !361, discriminator: 6)
!4556 = !DILocation(line: 41, column: 247, scope: !4547)
!4557 = !DILocation(line: 41, column: 257, scope: !4547)
!4558 = !DILocation(line: 41, column: 282, scope: !4547)
!4559 = !DILocation(line: 41, column: 213, scope: !4547)
!4560 = !DILocation(line: 41, column: 301, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !810, file: !361, discriminator: 7)
!4562 = !DILocation(line: 41, column: 301, scope: !809)
!4563 = !DILocation(line: 41, column: 301, scope: !4564)
!4564 = !DILexicalBlockFile(scope: !809, file: !361, discriminator: 8)
!4565 = !DILocation(line: 41, column: 314, scope: !4566)
!4566 = !DILexicalBlockFile(scope: !810, file: !361, discriminator: 9)
!4567 = !DILocation(line: 41, column: 316, scope: !4568)
!4568 = !DILexicalBlockFile(scope: !4569, file: !361, discriminator: 10)
!4569 = !DILexicalBlockFile(scope: !805, file: !361, discriminator: 3)
!4570 = !DILocation(line: 41, column: 316, scope: !804)
!4571 = !DILocation(line: 41, column: 316, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !804, file: !361, discriminator: 11)
!4573 = !DILocation(line: 42, column: 9, scope: !805)
!4574 = !DILocation(line: 43, column: 5, scope: !802)
!4575 = !DILocation(line: 43, column: 5, scope: !801)
!4576 = !DILocation(line: 45, column: 12, scope: !797)
!4577 = !DILocation(line: 45, column: 5, scope: !797)
!4578 = !DILocation(line: 46, column: 1, scope: !797)
!4579 = !DILocation(line: 767, column: 32, scope: !817)
!4580 = !DILocation(line: 769, column: 28, scope: !817)
!4581 = !DILocation(line: 769, column: 31, scope: !817)
!4582 = !DILocation(line: 769, column: 37, scope: !817)
!4583 = !DILocation(line: 769, column: 40, scope: !817)
!4584 = !DILocation(line: 769, column: 35, scope: !817)
!4585 = !DILocation(line: 769, column: 12, scope: !817)
!4586 = !DILocation(line: 769, column: 5, scope: !817)
!4587 = !DILocation(line: 776, column: 35, scope: !820)
!4588 = !DILocation(line: 778, column: 5, scope: !820)
!4589 = !DILocation(line: 778, column: 15, scope: !820)
!4590 = !DILocation(line: 778, column: 34, scope: !820)
!4591 = !DILocation(line: 778, column: 52, scope: !820)
!4592 = !DILocation(line: 779, column: 5, scope: !820)
!4593 = !DILocation(line: 779, column: 15, scope: !820)
!4594 = !DILocation(line: 782, column: 29, scope: !820)
!4595 = !DILocation(line: 782, column: 32, scope: !820)
!4596 = !DILocation(line: 782, column: 13, scope: !820)
!4597 = !DILocation(line: 782, column: 11, scope: !820)
!4598 = !DILocation(line: 783, column: 9, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !820, file: !361, line: 783, column: 9)
!4600 = !DILocation(line: 783, column: 15, scope: !4599)
!4601 = !DILocation(line: 783, column: 9, scope: !820)
!4602 = !DILocation(line: 784, column: 9, scope: !4599)
!4603 = !DILocation(line: 785, column: 28, scope: !820)
!4604 = !DILocation(line: 785, column: 31, scope: !820)
!4605 = !DILocation(line: 785, column: 39, scope: !820)
!4606 = !DILocation(line: 785, column: 42, scope: !820)
!4607 = !DILocation(line: 785, column: 48, scope: !820)
!4608 = !DILocation(line: 785, column: 51, scope: !820)
!4609 = !DILocation(line: 785, column: 46, scope: !820)
!4610 = !DILocation(line: 785, column: 37, scope: !820)
!4611 = !DILocation(line: 785, column: 12, scope: !820)
!4612 = !DILocation(line: 785, column: 10, scope: !820)
!4613 = !DILocation(line: 786, column: 9, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !820, file: !361, line: 786, column: 9)
!4615 = !DILocation(line: 786, column: 14, scope: !4614)
!4616 = !DILocation(line: 786, column: 9, scope: !820)
!4617 = !DILocation(line: 787, column: 9, scope: !4614)
!4618 = !DILocation(line: 788, column: 28, scope: !820)
!4619 = !DILocation(line: 788, column: 31, scope: !820)
!4620 = !DILocation(line: 788, column: 12, scope: !820)
!4621 = !DILocation(line: 788, column: 10, scope: !820)
!4622 = !DILocation(line: 789, column: 9, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !820, file: !361, line: 789, column: 9)
!4624 = !DILocation(line: 789, column: 14, scope: !4623)
!4625 = !DILocation(line: 789, column: 9, scope: !820)
!4626 = !DILocation(line: 790, column: 9, scope: !4623)
!4627 = !DILocation(line: 792, column: 32, scope: !820)
!4628 = !DILocation(line: 792, column: 39, scope: !820)
!4629 = !DILocation(line: 792, column: 45, scope: !820)
!4630 = !DILocation(line: 791, column: 24, scope: !820)
!4631 = !DILocation(line: 791, column: 13, scope: !820)
!4632 = !DILocation(line: 791, column: 11, scope: !820)
!4633 = !DILocation(line: 793, column: 9, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !820, file: !361, line: 793, column: 9)
!4635 = !DILocation(line: 793, column: 15, scope: !4634)
!4636 = !DILocation(line: 793, column: 9, scope: !820)
!4637 = !DILocation(line: 794, column: 9, scope: !4634)
!4638 = !DILocation(line: 796, column: 35, scope: !820)
!4639 = !DILocation(line: 796, column: 65, scope: !820)
!4640 = !DILocation(line: 796, column: 72, scope: !820)
!4641 = !DILocation(line: 796, column: 75, scope: !820)
!4642 = !DILocation(line: 796, column: 12, scope: !820)
!4643 = !DILocation(line: 796, column: 5, scope: !820)
!4644 = !DILocation(line: 798, column: 5, scope: !820)
!4645 = !DILocation(line: 798, column: 10, scope: !4646)
!4646 = !DILexicalBlockFile(scope: !828, file: !361, discriminator: 1)
!4647 = !DILocation(line: 798, column: 20, scope: !828)
!4648 = !DILocation(line: 798, column: 51, scope: !828)
!4649 = !DILocation(line: 798, column: 63, scope: !831)
!4650 = !DILocation(line: 798, column: 79, scope: !831)
!4651 = !DILocation(line: 798, column: 63, scope: !828)
!4652 = !DILocation(line: 798, column: 94, scope: !4653)
!4653 = !DILexicalBlockFile(scope: !831, file: !361, discriminator: 2)
!4654 = !DILocation(line: 798, column: 99, scope: !4655)
!4655 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 4)
!4656 = !DILocation(line: 798, column: 109, scope: !830)
!4657 = !DILocation(line: 798, column: 139, scope: !830)
!4658 = !DILocation(line: 798, column: 165, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !830, file: !361, line: 798, column: 162)
!4660 = !DILocation(line: 798, column: 182, scope: !4659)
!4661 = !DILocation(line: 798, column: 162, scope: !4659)
!4662 = !DILocation(line: 798, column: 192, scope: !4659)
!4663 = !DILocation(line: 798, column: 162, scope: !830)
!4664 = !DILocation(line: 798, column: 162, scope: !4665)
!4665 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 5)
!4666 = !DILocation(line: 798, column: 223, scope: !4667)
!4667 = !DILexicalBlockFile(scope: !4659, file: !361, discriminator: 6)
!4668 = !DILocation(line: 798, column: 241, scope: !4659)
!4669 = !DILocation(line: 798, column: 251, scope: !4659)
!4670 = !DILocation(line: 798, column: 276, scope: !4659)
!4671 = !DILocation(line: 798, column: 207, scope: !4659)
!4672 = !DILocation(line: 798, column: 295, scope: !4673)
!4673 = !DILexicalBlockFile(scope: !831, file: !361, discriminator: 7)
!4674 = !DILocation(line: 798, column: 295, scope: !830)
!4675 = !DILocation(line: 798, column: 295, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 8)
!4677 = !DILocation(line: 798, column: 295, scope: !4678)
!4678 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 9)
!4679 = !DILocation(line: 798, column: 308, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !4681, file: !361, discriminator: 10)
!4681 = !DILexicalBlockFile(scope: !820, file: !361, discriminator: 3)
!4682 = !DILocation(line: 798, column: 308, scope: !828)
!4683 = !DILocation(line: 798, column: 308, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !828, file: !361, discriminator: 11)
!4685 = !DILocation(line: 799, column: 5, scope: !820)
!4686 = !DILocation(line: 799, column: 10, scope: !4687)
!4687 = !DILexicalBlockFile(scope: !833, file: !361, discriminator: 1)
!4688 = !DILocation(line: 799, column: 20, scope: !833)
!4689 = !DILocation(line: 799, column: 51, scope: !833)
!4690 = !DILocation(line: 799, column: 62, scope: !836)
!4691 = !DILocation(line: 799, column: 78, scope: !836)
!4692 = !DILocation(line: 799, column: 62, scope: !833)
!4693 = !DILocation(line: 799, column: 93, scope: !4694)
!4694 = !DILexicalBlockFile(scope: !836, file: !361, discriminator: 2)
!4695 = !DILocation(line: 799, column: 98, scope: !4696)
!4696 = !DILexicalBlockFile(scope: !835, file: !361, discriminator: 4)
!4697 = !DILocation(line: 799, column: 108, scope: !835)
!4698 = !DILocation(line: 799, column: 138, scope: !835)
!4699 = !DILocation(line: 799, column: 164, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !835, file: !361, line: 799, column: 161)
!4701 = !DILocation(line: 799, column: 181, scope: !4700)
!4702 = !DILocation(line: 799, column: 161, scope: !4700)
!4703 = !DILocation(line: 799, column: 191, scope: !4700)
!4704 = !DILocation(line: 799, column: 161, scope: !835)
!4705 = !DILocation(line: 799, column: 161, scope: !4706)
!4706 = !DILexicalBlockFile(scope: !835, file: !361, discriminator: 5)
!4707 = !DILocation(line: 799, column: 222, scope: !4708)
!4708 = !DILexicalBlockFile(scope: !4700, file: !361, discriminator: 6)
!4709 = !DILocation(line: 799, column: 240, scope: !4700)
!4710 = !DILocation(line: 799, column: 250, scope: !4700)
!4711 = !DILocation(line: 799, column: 275, scope: !4700)
!4712 = !DILocation(line: 799, column: 206, scope: !4700)
!4713 = !DILocation(line: 799, column: 294, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !836, file: !361, discriminator: 7)
!4715 = !DILocation(line: 799, column: 294, scope: !835)
!4716 = !DILocation(line: 799, column: 294, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !835, file: !361, discriminator: 8)
!4718 = !DILocation(line: 799, column: 294, scope: !4719)
!4719 = !DILexicalBlockFile(scope: !835, file: !361, discriminator: 9)
!4720 = !DILocation(line: 799, column: 307, scope: !4680)
!4721 = !DILocation(line: 799, column: 307, scope: !833)
!4722 = !DILocation(line: 799, column: 307, scope: !4723)
!4723 = !DILexicalBlockFile(scope: !833, file: !361, discriminator: 11)
!4724 = !DILocation(line: 800, column: 5, scope: !820)
!4725 = !DILocation(line: 800, column: 10, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !838, file: !361, discriminator: 1)
!4727 = !DILocation(line: 800, column: 20, scope: !838)
!4728 = !DILocation(line: 800, column: 51, scope: !838)
!4729 = !DILocation(line: 800, column: 62, scope: !841)
!4730 = !DILocation(line: 800, column: 78, scope: !841)
!4731 = !DILocation(line: 800, column: 62, scope: !838)
!4732 = !DILocation(line: 800, column: 93, scope: !4733)
!4733 = !DILexicalBlockFile(scope: !841, file: !361, discriminator: 2)
!4734 = !DILocation(line: 800, column: 98, scope: !4735)
!4735 = !DILexicalBlockFile(scope: !840, file: !361, discriminator: 4)
!4736 = !DILocation(line: 800, column: 108, scope: !840)
!4737 = !DILocation(line: 800, column: 138, scope: !840)
!4738 = !DILocation(line: 800, column: 164, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !840, file: !361, line: 800, column: 161)
!4740 = !DILocation(line: 800, column: 181, scope: !4739)
!4741 = !DILocation(line: 800, column: 161, scope: !4739)
!4742 = !DILocation(line: 800, column: 191, scope: !4739)
!4743 = !DILocation(line: 800, column: 161, scope: !840)
!4744 = !DILocation(line: 800, column: 161, scope: !4745)
!4745 = !DILexicalBlockFile(scope: !840, file: !361, discriminator: 5)
!4746 = !DILocation(line: 800, column: 222, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !4739, file: !361, discriminator: 6)
!4748 = !DILocation(line: 800, column: 240, scope: !4739)
!4749 = !DILocation(line: 800, column: 250, scope: !4739)
!4750 = !DILocation(line: 800, column: 275, scope: !4739)
!4751 = !DILocation(line: 800, column: 206, scope: !4739)
!4752 = !DILocation(line: 800, column: 294, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !841, file: !361, discriminator: 7)
!4754 = !DILocation(line: 800, column: 294, scope: !840)
!4755 = !DILocation(line: 800, column: 294, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !840, file: !361, discriminator: 8)
!4757 = !DILocation(line: 800, column: 294, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !840, file: !361, discriminator: 9)
!4759 = !DILocation(line: 800, column: 307, scope: !4680)
!4760 = !DILocation(line: 800, column: 307, scope: !838)
!4761 = !DILocation(line: 800, column: 307, scope: !4762)
!4762 = !DILexicalBlockFile(scope: !838, file: !361, discriminator: 11)
!4763 = !DILocation(line: 801, column: 5, scope: !820)
!4764 = !DILocation(line: 802, column: 1, scope: !820)
!4765 = !DILocation(line: 805, column: 37, scope: !842)
!4766 = !DILocation(line: 805, column: 50, scope: !842)
!4767 = !DILocation(line: 807, column: 5, scope: !842)
!4768 = !DILocation(line: 807, column: 10, scope: !842)
!4769 = !DILocation(line: 807, column: 32, scope: !842)
!4770 = !DILocation(line: 807, column: 18, scope: !842)
!4771 = !DILocation(line: 808, column: 9, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !842, file: !361, line: 808, column: 9)
!4773 = !DILocation(line: 808, column: 15, scope: !4772)
!4774 = !DILocation(line: 808, column: 21, scope: !4772)
!4775 = !DILocation(line: 808, column: 24, scope: !4776)
!4776 = !DILexicalBlockFile(scope: !4772, file: !361, discriminator: 1)
!4777 = !DILocation(line: 808, column: 9, scope: !842)
!4778 = !DILocation(line: 809, column: 9, scope: !4772)
!4779 = !DILocation(line: 811, column: 9, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !842, file: !361, line: 811, column: 9)
!4781 = !DILocation(line: 811, column: 15, scope: !4780)
!4782 = !DILocation(line: 811, column: 9, scope: !842)
!4783 = !DILocation(line: 812, column: 15, scope: !4780)
!4784 = !DILocation(line: 812, column: 9, scope: !4780)
!4785 = !DILocation(line: 813, column: 14, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4780, file: !361, line: 813, column: 14)
!4787 = !DILocation(line: 813, column: 22, scope: !4786)
!4788 = !DILocation(line: 813, column: 25, scope: !4786)
!4789 = !DILocation(line: 813, column: 20, scope: !4786)
!4790 = !DILocation(line: 813, column: 14, scope: !4780)
!4791 = !DILocation(line: 814, column: 17, scope: !4786)
!4792 = !DILocation(line: 814, column: 20, scope: !4786)
!4793 = !DILocation(line: 814, column: 15, scope: !4786)
!4794 = !DILocation(line: 814, column: 9, scope: !4786)
!4795 = !DILocation(line: 815, column: 16, scope: !842)
!4796 = !DILocation(line: 815, column: 5, scope: !842)
!4797 = !DILocation(line: 815, column: 8, scope: !842)
!4798 = !DILocation(line: 815, column: 14, scope: !842)
!4799 = !DILocation(line: 816, column: 58, scope: !842)
!4800 = !DILocation(line: 816, column: 5, scope: !842)
!4801 = !DILocation(line: 817, column: 1, scope: !842)
!4802 = !DILocation(line: 952, column: 40, scope: !906)
!4803 = !DILocation(line: 952, column: 53, scope: !906)
!4804 = !DILocation(line: 954, column: 30, scope: !906)
!4805 = !DILocation(line: 954, column: 33, scope: !906)
!4806 = !DILocation(line: 954, column: 38, scope: !906)
!4807 = !DILocation(line: 954, column: 41, scope: !906)
!4808 = !DILocation(line: 954, column: 12, scope: !906)
!4809 = !DILocation(line: 954, column: 5, scope: !906)
!4810 = !DILocation(line: 958, column: 43, scope: !912)
!4811 = !DILocation(line: 960, column: 5, scope: !912)
!4812 = !DILocation(line: 960, column: 15, scope: !912)
!4813 = !DILocation(line: 960, column: 25, scope: !912)
!4814 = !DILocation(line: 961, column: 5, scope: !912)
!4815 = !DILocation(line: 961, column: 15, scope: !912)
!4816 = !DILocation(line: 964, column: 33, scope: !912)
!4817 = !DILocation(line: 964, column: 36, scope: !912)
!4818 = !DILocation(line: 964, column: 41, scope: !912)
!4819 = !DILocation(line: 964, column: 44, scope: !912)
!4820 = !DILocation(line: 964, column: 15, scope: !912)
!4821 = !DILocation(line: 964, column: 13, scope: !912)
!4822 = !DILocation(line: 965, column: 9, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !912, file: !361, line: 965, column: 9)
!4824 = !DILocation(line: 965, column: 17, scope: !4823)
!4825 = !DILocation(line: 965, column: 9, scope: !912)
!4826 = !DILocation(line: 966, column: 9, scope: !4823)
!4827 = !DILocation(line: 967, column: 25, scope: !912)
!4828 = !DILocation(line: 967, column: 28, scope: !912)
!4829 = !DILocation(line: 967, column: 35, scope: !912)
!4830 = !DILocation(line: 967, column: 12, scope: !912)
!4831 = !DILocation(line: 967, column: 10, scope: !912)
!4832 = !DILocation(line: 968, column: 5, scope: !912)
!4833 = !DILocation(line: 968, column: 10, scope: !4834)
!4834 = !DILexicalBlockFile(scope: !919, file: !361, discriminator: 1)
!4835 = !DILocation(line: 968, column: 20, scope: !919)
!4836 = !DILocation(line: 968, column: 50, scope: !919)
!4837 = !DILocation(line: 968, column: 68, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !919, file: !361, line: 968, column: 65)
!4839 = !DILocation(line: 968, column: 85, scope: !4838)
!4840 = !DILocation(line: 968, column: 65, scope: !4838)
!4841 = !DILocation(line: 968, column: 95, scope: !4838)
!4842 = !DILocation(line: 968, column: 65, scope: !919)
!4843 = !DILocation(line: 968, column: 65, scope: !4844)
!4844 = !DILexicalBlockFile(scope: !919, file: !361, discriminator: 2)
!4845 = !DILocation(line: 968, column: 126, scope: !4846)
!4846 = !DILexicalBlockFile(scope: !4838, file: !361, discriminator: 3)
!4847 = !DILocation(line: 968, column: 144, scope: !4838)
!4848 = !DILocation(line: 968, column: 154, scope: !4838)
!4849 = !DILocation(line: 968, column: 179, scope: !4838)
!4850 = !DILocation(line: 968, column: 110, scope: !4838)
!4851 = !DILocation(line: 968, column: 198, scope: !4852)
!4852 = !DILexicalBlockFile(scope: !912, file: !361, discriminator: 4)
!4853 = !DILocation(line: 968, column: 198, scope: !919)
!4854 = !DILocation(line: 968, column: 198, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !919, file: !361, discriminator: 5)
!4856 = !DILocation(line: 969, column: 9, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !912, file: !361, line: 969, column: 9)
!4858 = !DILocation(line: 969, column: 14, scope: !4857)
!4859 = !DILocation(line: 969, column: 9, scope: !912)
!4860 = !DILocation(line: 970, column: 9, scope: !4857)
!4861 = !DILocation(line: 971, column: 21, scope: !912)
!4862 = !DILocation(line: 971, column: 24, scope: !912)
!4863 = !DILocation(line: 971, column: 33, scope: !912)
!4864 = !DILocation(line: 971, column: 42, scope: !912)
!4865 = !DILocation(line: 972, column: 21, scope: !912)
!4866 = !DILocation(line: 972, column: 24, scope: !912)
!4867 = !DILocation(line: 972, column: 32, scope: !912)
!4868 = !DILocation(line: 972, column: 41, scope: !912)
!4869 = !DILocation(line: 974, column: 32, scope: !912)
!4870 = !DILocation(line: 974, column: 35, scope: !912)
!4871 = !DILocation(line: 974, column: 42, scope: !912)
!4872 = !DILocation(line: 974, column: 48, scope: !912)
!4873 = !DILocation(line: 974, column: 51, scope: !912)
!4874 = !DILocation(line: 973, column: 24, scope: !912)
!4875 = !DILocation(line: 973, column: 13, scope: !912)
!4876 = !DILocation(line: 973, column: 11, scope: !912)
!4877 = !DILocation(line: 975, column: 9, scope: !923)
!4878 = !DILocation(line: 975, column: 15, scope: !923)
!4879 = !DILocation(line: 975, column: 9, scope: !912)
!4880 = !DILocation(line: 976, column: 9, scope: !922)
!4881 = !DILocation(line: 976, column: 14, scope: !4882)
!4882 = !DILexicalBlockFile(scope: !921, file: !361, discriminator: 1)
!4883 = !DILocation(line: 976, column: 24, scope: !921)
!4884 = !DILocation(line: 976, column: 54, scope: !921)
!4885 = !DILocation(line: 976, column: 57, scope: !921)
!4886 = !DILocation(line: 976, column: 73, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !921, file: !361, line: 976, column: 70)
!4888 = !DILocation(line: 976, column: 90, scope: !4887)
!4889 = !DILocation(line: 976, column: 70, scope: !4887)
!4890 = !DILocation(line: 976, column: 100, scope: !4887)
!4891 = !DILocation(line: 976, column: 70, scope: !921)
!4892 = !DILocation(line: 976, column: 70, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !921, file: !361, discriminator: 2)
!4894 = !DILocation(line: 976, column: 131, scope: !4895)
!4895 = !DILexicalBlockFile(scope: !4887, file: !361, discriminator: 3)
!4896 = !DILocation(line: 976, column: 149, scope: !4887)
!4897 = !DILocation(line: 976, column: 159, scope: !4887)
!4898 = !DILocation(line: 976, column: 184, scope: !4887)
!4899 = !DILocation(line: 976, column: 115, scope: !4887)
!4900 = !DILocation(line: 976, column: 203, scope: !4901)
!4901 = !DILexicalBlockFile(scope: !922, file: !361, discriminator: 4)
!4902 = !DILocation(line: 976, column: 203, scope: !921)
!4903 = !DILocation(line: 976, column: 203, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !921, file: !361, discriminator: 5)
!4905 = !DILocation(line: 977, column: 9, scope: !922)
!4906 = !DILocation(line: 977, column: 14, scope: !4907)
!4907 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 1)
!4908 = !DILocation(line: 977, column: 24, scope: !925)
!4909 = !DILocation(line: 977, column: 54, scope: !925)
!4910 = !DILocation(line: 977, column: 69, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !925, file: !361, line: 977, column: 66)
!4912 = !DILocation(line: 977, column: 86, scope: !4911)
!4913 = !DILocation(line: 977, column: 66, scope: !4911)
!4914 = !DILocation(line: 977, column: 96, scope: !4911)
!4915 = !DILocation(line: 977, column: 66, scope: !925)
!4916 = !DILocation(line: 977, column: 66, scope: !4917)
!4917 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 2)
!4918 = !DILocation(line: 977, column: 127, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4911, file: !361, discriminator: 3)
!4920 = !DILocation(line: 977, column: 145, scope: !4911)
!4921 = !DILocation(line: 977, column: 155, scope: !4911)
!4922 = !DILocation(line: 977, column: 180, scope: !4911)
!4923 = !DILocation(line: 977, column: 111, scope: !4911)
!4924 = !DILocation(line: 977, column: 199, scope: !4901)
!4925 = !DILocation(line: 977, column: 199, scope: !925)
!4926 = !DILocation(line: 977, column: 199, scope: !4927)
!4927 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 5)
!4928 = !DILocation(line: 978, column: 9, scope: !922)
!4929 = !DILocation(line: 978, column: 14, scope: !4930)
!4930 = !DILexicalBlockFile(scope: !927, file: !361, discriminator: 1)
!4931 = !DILocation(line: 978, column: 24, scope: !927)
!4932 = !DILocation(line: 978, column: 54, scope: !927)
!4933 = !DILocation(line: 978, column: 57, scope: !927)
!4934 = !DILocation(line: 978, column: 72, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !927, file: !361, line: 978, column: 69)
!4936 = !DILocation(line: 978, column: 89, scope: !4935)
!4937 = !DILocation(line: 978, column: 69, scope: !4935)
!4938 = !DILocation(line: 978, column: 99, scope: !4935)
!4939 = !DILocation(line: 978, column: 69, scope: !927)
!4940 = !DILocation(line: 978, column: 69, scope: !4941)
!4941 = !DILexicalBlockFile(scope: !927, file: !361, discriminator: 2)
!4942 = !DILocation(line: 978, column: 130, scope: !4943)
!4943 = !DILexicalBlockFile(scope: !4935, file: !361, discriminator: 3)
!4944 = !DILocation(line: 978, column: 148, scope: !4935)
!4945 = !DILocation(line: 978, column: 158, scope: !4935)
!4946 = !DILocation(line: 978, column: 183, scope: !4935)
!4947 = !DILocation(line: 978, column: 114, scope: !4935)
!4948 = !DILocation(line: 978, column: 202, scope: !4901)
!4949 = !DILocation(line: 978, column: 202, scope: !927)
!4950 = !DILocation(line: 978, column: 202, scope: !4951)
!4951 = !DILexicalBlockFile(scope: !927, file: !361, discriminator: 5)
!4952 = !DILocation(line: 979, column: 9, scope: !922)
!4953 = !DILocation(line: 983, column: 35, scope: !912)
!4954 = !DILocation(line: 983, column: 65, scope: !912)
!4955 = !DILocation(line: 983, column: 72, scope: !912)
!4956 = !DILocation(line: 983, column: 75, scope: !912)
!4957 = !DILocation(line: 983, column: 12, scope: !912)
!4958 = !DILocation(line: 983, column: 5, scope: !912)
!4959 = !DILocation(line: 984, column: 1, scope: !912)
!4960 = !DILocation(line: 987, column: 45, scope: !928)
!4961 = !DILocation(line: 987, column: 58, scope: !928)
!4962 = !DILocation(line: 989, column: 5, scope: !928)
!4963 = !DILocation(line: 989, column: 9, scope: !928)
!4964 = !DILocation(line: 992, column: 5, scope: !928)
!4965 = !DILocation(line: 992, column: 15, scope: !928)
!4966 = !DILocation(line: 992, column: 22, scope: !928)
!4967 = !DILocation(line: 993, column: 9, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !928, file: !361, line: 993, column: 9)
!4969 = !DILocation(line: 993, column: 14, scope: !4968)
!4970 = !DILocation(line: 993, column: 9, scope: !928)
!4971 = !DILocation(line: 994, column: 9, scope: !4968)
!4972 = !DILocation(line: 995, column: 36, scope: !928)
!4973 = !DILocation(line: 995, column: 43, scope: !928)
!4974 = !DILocation(line: 995, column: 11, scope: !928)
!4975 = !DILocation(line: 995, column: 9, scope: !928)
!4976 = !DILocation(line: 996, column: 9, scope: !937)
!4977 = !DILocation(line: 996, column: 13, scope: !937)
!4978 = !DILocation(line: 996, column: 9, scope: !928)
!4979 = !DILocation(line: 997, column: 9, scope: !936)
!4980 = !DILocation(line: 997, column: 14, scope: !4981)
!4981 = !DILexicalBlockFile(scope: !935, file: !361, discriminator: 1)
!4982 = !DILocation(line: 997, column: 24, scope: !935)
!4983 = !DILocation(line: 997, column: 47, scope: !935)
!4984 = !DILocation(line: 997, column: 50, scope: !935)
!4985 = !DILocation(line: 997, column: 62, scope: !941)
!4986 = !DILocation(line: 997, column: 70, scope: !941)
!4987 = !DILocation(line: 997, column: 62, scope: !935)
!4988 = !DILocation(line: 997, column: 88, scope: !4989)
!4989 = !DILexicalBlockFile(scope: !940, file: !361, discriminator: 2)
!4990 = !DILocation(line: 997, column: 91, scope: !940)
!4991 = !DILocation(line: 997, column: 98, scope: !940)
!4992 = !DILocation(line: 997, column: 112, scope: !940)
!4993 = !DILocation(line: 997, column: 117, scope: !4994)
!4994 = !DILexicalBlockFile(scope: !939, file: !361, discriminator: 4)
!4995 = !DILocation(line: 997, column: 127, scope: !939)
!4996 = !DILocation(line: 997, column: 157, scope: !939)
!4997 = !DILocation(line: 997, column: 175, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !939, file: !361, line: 997, column: 172)
!4999 = !DILocation(line: 997, column: 192, scope: !4998)
!5000 = !DILocation(line: 997, column: 172, scope: !4998)
!5001 = !DILocation(line: 997, column: 202, scope: !4998)
!5002 = !DILocation(line: 997, column: 172, scope: !939)
!5003 = !DILocation(line: 997, column: 172, scope: !5004)
!5004 = !DILexicalBlockFile(scope: !939, file: !361, discriminator: 5)
!5005 = !DILocation(line: 997, column: 233, scope: !5006)
!5006 = !DILexicalBlockFile(scope: !4998, file: !361, discriminator: 6)
!5007 = !DILocation(line: 997, column: 251, scope: !4998)
!5008 = !DILocation(line: 997, column: 261, scope: !4998)
!5009 = !DILocation(line: 997, column: 286, scope: !4998)
!5010 = !DILocation(line: 997, column: 217, scope: !4998)
!5011 = !DILocation(line: 997, column: 305, scope: !5012)
!5012 = !DILexicalBlockFile(scope: !940, file: !361, discriminator: 7)
!5013 = !DILocation(line: 997, column: 305, scope: !939)
!5014 = !DILocation(line: 997, column: 305, scope: !5015)
!5015 = !DILexicalBlockFile(scope: !939, file: !361, discriminator: 8)
!5016 = !DILocation(line: 997, column: 318, scope: !5017)
!5017 = !DILexicalBlockFile(scope: !940, file: !361, discriminator: 9)
!5018 = !DILocation(line: 997, column: 320, scope: !5019)
!5019 = !DILexicalBlockFile(scope: !5020, file: !361, discriminator: 10)
!5020 = !DILexicalBlockFile(scope: !936, file: !361, discriminator: 3)
!5021 = !DILocation(line: 997, column: 320, scope: !935)
!5022 = !DILocation(line: 997, column: 320, scope: !5023)
!5023 = !DILexicalBlockFile(scope: !935, file: !361, discriminator: 11)
!5024 = !DILocation(line: 998, column: 20, scope: !936)
!5025 = !DILocation(line: 998, column: 9, scope: !936)
!5026 = !DILocation(line: 998, column: 12, scope: !936)
!5027 = !DILocation(line: 998, column: 18, scope: !936)
!5028 = !DILocation(line: 999, column: 62, scope: !936)
!5029 = !DILocation(line: 999, column: 9, scope: !936)
!5030 = !DILocation(line: 1001, column: 5, scope: !928)
!5031 = !DILocation(line: 1001, column: 10, scope: !5032)
!5032 = !DILexicalBlockFile(scope: !943, file: !361, discriminator: 1)
!5033 = !DILocation(line: 1001, column: 20, scope: !943)
!5034 = !DILocation(line: 1001, column: 50, scope: !943)
!5035 = !DILocation(line: 1001, column: 65, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !943, file: !361, line: 1001, column: 62)
!5037 = !DILocation(line: 1001, column: 82, scope: !5036)
!5038 = !DILocation(line: 1001, column: 62, scope: !5036)
!5039 = !DILocation(line: 1001, column: 92, scope: !5036)
!5040 = !DILocation(line: 1001, column: 62, scope: !943)
!5041 = !DILocation(line: 1001, column: 62, scope: !5042)
!5042 = !DILexicalBlockFile(scope: !943, file: !361, discriminator: 2)
!5043 = !DILocation(line: 1001, column: 123, scope: !5044)
!5044 = !DILexicalBlockFile(scope: !5036, file: !361, discriminator: 3)
!5045 = !DILocation(line: 1001, column: 141, scope: !5036)
!5046 = !DILocation(line: 1001, column: 151, scope: !5036)
!5047 = !DILocation(line: 1001, column: 176, scope: !5036)
!5048 = !DILocation(line: 1001, column: 107, scope: !5036)
!5049 = !DILocation(line: 1001, column: 195, scope: !5050)
!5050 = !DILexicalBlockFile(scope: !928, file: !361, discriminator: 4)
!5051 = !DILocation(line: 1001, column: 195, scope: !943)
!5052 = !DILocation(line: 1001, column: 195, scope: !5053)
!5053 = !DILexicalBlockFile(scope: !943, file: !361, discriminator: 5)
!5054 = !DILocation(line: 1002, column: 9, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !928, file: !361, line: 1002, column: 9)
!5056 = !DILocation(line: 1002, column: 13, scope: !5055)
!5057 = !DILocation(line: 1002, column: 9, scope: !928)
!5058 = !DILocation(line: 1003, column: 9, scope: !5055)
!5059 = !DILocation(line: 1005, column: 36, scope: !928)
!5060 = !DILocation(line: 1005, column: 39, scope: !928)
!5061 = !DILocation(line: 1005, column: 44, scope: !928)
!5062 = !DILocation(line: 1005, column: 11, scope: !928)
!5063 = !DILocation(line: 1005, column: 9, scope: !928)
!5064 = !DILocation(line: 1006, column: 9, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !928, file: !361, line: 1006, column: 9)
!5066 = !DILocation(line: 1006, column: 13, scope: !5065)
!5067 = !DILocation(line: 1006, column: 9, scope: !928)
!5068 = !DILocation(line: 1007, column: 9, scope: !5065)
!5069 = !DILocation(line: 1008, column: 9, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !928, file: !361, line: 1008, column: 9)
!5071 = !DILocation(line: 1008, column: 13, scope: !5070)
!5072 = !DILocation(line: 1008, column: 9, scope: !928)
!5073 = !DILocation(line: 1009, column: 17, scope: !5070)
!5074 = !DILocation(line: 1009, column: 20, scope: !5070)
!5075 = !DILocation(line: 1009, column: 15, scope: !5070)
!5076 = !DILocation(line: 1009, column: 9, scope: !5070)
!5077 = !DILocation(line: 1011, column: 5, scope: !928)
!5078 = !DILocation(line: 1011, column: 10, scope: !5079)
!5079 = !DILexicalBlockFile(scope: !945, file: !361, discriminator: 1)
!5080 = !DILocation(line: 1011, column: 20, scope: !945)
!5081 = !DILocation(line: 1011, column: 43, scope: !945)
!5082 = !DILocation(line: 1011, column: 46, scope: !945)
!5083 = !DILocation(line: 1011, column: 58, scope: !949)
!5084 = !DILocation(line: 1011, column: 66, scope: !949)
!5085 = !DILocation(line: 1011, column: 58, scope: !945)
!5086 = !DILocation(line: 1011, column: 84, scope: !5087)
!5087 = !DILexicalBlockFile(scope: !948, file: !361, discriminator: 2)
!5088 = !DILocation(line: 1011, column: 87, scope: !948)
!5089 = !DILocation(line: 1011, column: 94, scope: !948)
!5090 = !DILocation(line: 1011, column: 108, scope: !948)
!5091 = !DILocation(line: 1011, column: 113, scope: !5092)
!5092 = !DILexicalBlockFile(scope: !947, file: !361, discriminator: 4)
!5093 = !DILocation(line: 1011, column: 123, scope: !947)
!5094 = !DILocation(line: 1011, column: 153, scope: !947)
!5095 = !DILocation(line: 1011, column: 171, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !947, file: !361, line: 1011, column: 168)
!5097 = !DILocation(line: 1011, column: 188, scope: !5096)
!5098 = !DILocation(line: 1011, column: 168, scope: !5096)
!5099 = !DILocation(line: 1011, column: 198, scope: !5096)
!5100 = !DILocation(line: 1011, column: 168, scope: !947)
!5101 = !DILocation(line: 1011, column: 168, scope: !5102)
!5102 = !DILexicalBlockFile(scope: !947, file: !361, discriminator: 5)
!5103 = !DILocation(line: 1011, column: 229, scope: !5104)
!5104 = !DILexicalBlockFile(scope: !5096, file: !361, discriminator: 6)
!5105 = !DILocation(line: 1011, column: 247, scope: !5096)
!5106 = !DILocation(line: 1011, column: 257, scope: !5096)
!5107 = !DILocation(line: 1011, column: 282, scope: !5096)
!5108 = !DILocation(line: 1011, column: 213, scope: !5096)
!5109 = !DILocation(line: 1011, column: 301, scope: !5110)
!5110 = !DILexicalBlockFile(scope: !948, file: !361, discriminator: 7)
!5111 = !DILocation(line: 1011, column: 301, scope: !947)
!5112 = !DILocation(line: 1011, column: 301, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !947, file: !361, discriminator: 8)
!5114 = !DILocation(line: 1011, column: 314, scope: !5115)
!5115 = !DILexicalBlockFile(scope: !948, file: !361, discriminator: 9)
!5116 = !DILocation(line: 1011, column: 316, scope: !5117)
!5117 = !DILexicalBlockFile(scope: !5118, file: !361, discriminator: 10)
!5118 = !DILexicalBlockFile(scope: !928, file: !361, discriminator: 3)
!5119 = !DILocation(line: 1011, column: 316, scope: !945)
!5120 = !DILocation(line: 1011, column: 316, scope: !5121)
!5121 = !DILexicalBlockFile(scope: !945, file: !361, discriminator: 11)
!5122 = !DILocation(line: 1012, column: 16, scope: !928)
!5123 = !DILocation(line: 1012, column: 5, scope: !928)
!5124 = !DILocation(line: 1012, column: 8, scope: !928)
!5125 = !DILocation(line: 1012, column: 14, scope: !928)
!5126 = !DILocation(line: 1013, column: 21, scope: !928)
!5127 = !DILocation(line: 1013, column: 24, scope: !928)
!5128 = !DILocation(line: 1013, column: 33, scope: !928)
!5129 = !DILocation(line: 1013, column: 42, scope: !928)
!5130 = !DILocation(line: 1014, column: 58, scope: !928)
!5131 = !DILocation(line: 1014, column: 5, scope: !928)
!5132 = !DILocation(line: 1015, column: 1, scope: !928)
