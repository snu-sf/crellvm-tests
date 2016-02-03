; ModuleID = 'rangeobject.o.bc'
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
%struct.rangeiterobject = type { %struct._object, i64, i64, i64, i64 }
%struct.longrangeiterobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
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
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !399, metadata !1010), !dbg !1011
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1012
  %0 = load %struct._object*, %struct._object** %start, align 8, !dbg !1012, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !400, metadata !1010), !dbg !1012
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1021
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1021, !tbaa !1023
  %dec = add i64 %1, -1, !dbg !1021
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1021, !tbaa !1023
  %cmp = icmp eq i64 %dec, 0, !dbg !1021
  br i1 %cmp, label %if.else, label %if.end, !dbg !1024

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1025
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1025, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1025
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1025, !tbaa !1028
  tail call void %3(%struct._object* %0) #2, !dbg !1025
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !1032
  %4 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1032, !tbaa !1034
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !402, metadata !1010), !dbg !1032
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1035
  %5 = load i64, i64* %ob_refcnt3, align 8, !dbg !1035, !tbaa !1023
  %dec4 = add i64 %5, -1, !dbg !1035
  store i64 %dec4, i64* %ob_refcnt3, align 8, !dbg !1035, !tbaa !1023
  %cmp5 = icmp eq i64 %dec4, 0, !dbg !1035
  br i1 %cmp5, label %if.else.7, label %if.end.10, !dbg !1037

if.else.7:                                        ; preds = %if.end
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1038
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1038, !tbaa !1027
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1038
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8, !dbg !1038, !tbaa !1028
  tail call void %7(%struct._object* %4) #2, !dbg !1038
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.else.7
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !1040
  %8 = load %struct._object*, %struct._object** %step, align 8, !dbg !1040, !tbaa !1042
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !404, metadata !1010), !dbg !1040
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1043
  %9 = load i64, i64* %ob_refcnt14, align 8, !dbg !1043, !tbaa !1023
  %dec15 = add i64 %9, -1, !dbg !1043
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1043, !tbaa !1023
  %cmp16 = icmp eq i64 %dec15, 0, !dbg !1043
  br i1 %cmp16, label %if.else.18, label %if.end.21, !dbg !1045

if.else.18:                                       ; preds = %if.end.10
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1046
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1046, !tbaa !1027
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1046
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1046, !tbaa !1028
  tail call void %11(%struct._object* %8) #2, !dbg !1046
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.10, %if.else.18
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 4, !dbg !1048
  %12 = load %struct._object*, %struct._object** %length, align 8, !dbg !1048, !tbaa !1050
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !406, metadata !1010), !dbg !1048
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1051
  %13 = load i64, i64* %ob_refcnt25, align 8, !dbg !1051, !tbaa !1023
  %dec26 = add i64 %13, -1, !dbg !1051
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !1051, !tbaa !1023
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !1051
  br i1 %cmp27, label %if.else.29, label %if.end.32, !dbg !1053

if.else.29:                                       ; preds = %if.end.21
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1054
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1054, !tbaa !1027
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1054
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !1054, !tbaa !1028
  tail call void %15(%struct._object* %12) #2, !dbg !1054
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.21, %if.else.29
  %16 = bitcast %struct.rangeobject* %r to i8*, !dbg !1056
  tail call void @PyObject_Free(i8* %16) #2, !dbg !1057
  ret void, !dbg !1058
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_repr(%struct.rangeobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !412, metadata !1010), !dbg !1059
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !1060
  %0 = load %struct._object*, %struct._object** %step, align 8, !dbg !1060, !tbaa !1042
  %call = tail call i64 @PyNumber_AsSsize_t(%struct._object* %0, %struct._object* null) #2, !dbg !1061
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !413, metadata !1010), !dbg !1062
  %cmp = icmp eq i64 %call, 1, !dbg !1063
  br i1 %cmp, label %if.then.4, label %if.else, !dbg !1065

if.then.4:                                        ; preds = %entry
  %start.16 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1066
  %1 = load %struct._object*, %struct._object** %start.16, align 8, !dbg !1066, !tbaa !1014
  %stop.17 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !1068
  %2 = load %struct._object*, %struct._object** %stop.17, align 8, !dbg !1068, !tbaa !1034
  %call5 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct._object* %1, %struct._object* %2) #2, !dbg !1069
  br label %cleanup, !dbg !1070

if.else:                                          ; preds = %entry
  tail call void @PyErr_Clear() #2, !dbg !1071
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1066
  %3 = load %struct._object*, %struct._object** %start, align 8, !dbg !1066, !tbaa !1014
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !1068
  %4 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1068, !tbaa !1034
  %5 = load %struct._object*, %struct._object** %step, align 8, !dbg !1073, !tbaa !1042
  %call9 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct._object* %3, %struct._object* %4, %struct._object* %5) #2, !dbg !1074
  br label %cleanup, !dbg !1075

cleanup:                                          ; preds = %if.else, %if.then.4
  %retval.0 = phi %struct._object* [ %call5, %if.then.4 ], [ %call9, %if.else ]
  ret %struct._object* %retval.0, !dbg !1076
}

; Function Attrs: nounwind uwtable
define internal i64 @range_hash(%struct.rangeobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !650, metadata !1010), !dbg !1077
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !652, metadata !1010), !dbg !1078
  %call = tail call %struct._object* @PyTuple_New(i64 3) #2, !dbg !1079
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !651, metadata !1010), !dbg !1080
  %tobool = icmp eq %struct._object* %call, null, !dbg !1081
  br i1 %tobool, label %cleanup.59, label %if.end, !dbg !1083

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 4, !dbg !1084
  %0 = load %struct._object*, %struct._object** %length, align 8, !dbg !1084, !tbaa !1050
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1084
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1084, !tbaa !1023
  %inc = add i64 %1, 1, !dbg !1084
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1084, !tbaa !1023
  %2 = ptrtoint %struct._object* %0 to i64, !dbg !1085
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1085
  %3 = bitcast %struct._typeobject** %ob_item to i64*, !dbg !1085
  store i64 %2, i64* %3, align 8, !dbg !1085, !tbaa !1086
  %4 = load %struct._object*, %struct._object** %length, align 8, !dbg !1087, !tbaa !1050
  %call3 = tail call i32 @PyObject_Not(%struct._object* %4) #2, !dbg !1088
  tail call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !653, metadata !1010), !dbg !1089
  switch i32 %call3, label %if.else [
    i32 -1, label %do.body.47
    i32 1, label %if.then.7
  ], !dbg !1090

if.then.7:                                        ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1091, !tbaa !1023
  %inc9 = add i64 %5, 2, !dbg !1093
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1093, !tbaa !1023
  %arrayidx11 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1094
  %6 = bitcast %struct._typeobject** %arrayidx11 to <2 x %struct._object*>*, !dbg !1094
  store <2 x %struct._object*> <%struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct>, <2 x %struct._object*>* %6, align 8, !dbg !1094, !tbaa !1086
  br label %if.end.45, !dbg !1095

if.else:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1096
  %7 = load %struct._object*, %struct._object** %start, align 8, !dbg !1096, !tbaa !1014
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1096
  %8 = load i64, i64* %ob_refcnt14, align 8, !dbg !1096, !tbaa !1023
  %inc15 = add i64 %8, 1, !dbg !1096
  store i64 %inc15, i64* %ob_refcnt14, align 8, !dbg !1096, !tbaa !1023
  %9 = ptrtoint %struct._object* %7 to i64, !dbg !1097
  %arrayidx18 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1097
  %10 = bitcast %struct._typeobject** %arrayidx18 to i64*, !dbg !1097
  store i64 %9, i64* %10, align 8, !dbg !1097, !tbaa !1086
  %call19 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1098
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !654, metadata !1010), !dbg !1099
  %tobool20 = icmp eq %struct._object* %call19, null, !dbg !1100
  br i1 %tobool20, label %do.body.47, label %if.end.22, !dbg !1102

if.end.22:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %length, align 8, !dbg !1103, !tbaa !1050
  %call24 = tail call i32 @PyObject_RichCompareBool(%struct._object* %11, %struct._object* %call19, i32 2) #2, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %call24, i64 0, metadata !653, metadata !1010), !dbg !1089
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !657, metadata !1010), !dbg !1105
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 0, !dbg !1107
  %12 = load i64, i64* %ob_refcnt25, align 8, !dbg !1107, !tbaa !1023
  %dec = add i64 %12, -1, !dbg !1107
  store i64 %dec, i64* %ob_refcnt25, align 8, !dbg !1107, !tbaa !1023
  %cmp26 = icmp eq i64 %dec, 0, !dbg !1107
  br i1 %cmp26, label %if.else.28, label %if.end.29, !dbg !1109

if.else.28:                                       ; preds = %if.end.22
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 1, !dbg !1110
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1110, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1110
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1110, !tbaa !1028
  tail call void %14(%struct._object* %call19) #2, !dbg !1110
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.22, %if.else.28
  switch i32 %call24, label %if.else.38 [
    i32 -1, label %do.body.47
    i32 1, label %if.then.34
  ], !dbg !1112

if.then.34:                                       ; preds = %if.end.29
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1113, !tbaa !1023
  %inc35 = add i64 %15, 1, !dbg !1113
  store i64 %inc35, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1113, !tbaa !1023
  %arrayidx37 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !1116
  %16 = bitcast %struct._typeobject** %arrayidx37 to %struct._object**, !dbg !1116
  store %struct._object* @_Py_NoneStruct, %struct._object** %16, align 8, !dbg !1116, !tbaa !1086
  br label %if.end.45, !dbg !1117

if.else.38:                                       ; preds = %if.end.29
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !1118
  %17 = load %struct._object*, %struct._object** %step, align 8, !dbg !1118, !tbaa !1042
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !1118
  %18 = load i64, i64* %ob_refcnt39, align 8, !dbg !1118, !tbaa !1023
  %inc40 = add i64 %18, 1, !dbg !1118
  store i64 %inc40, i64* %ob_refcnt39, align 8, !dbg !1118, !tbaa !1023
  %19 = ptrtoint %struct._object* %17 to i64, !dbg !1120
  %arrayidx43 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !1120
  %20 = bitcast %struct._typeobject** %arrayidx43 to i64*, !dbg !1120
  store i64 %19, i64* %20, align 8, !dbg !1120, !tbaa !1086
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.34, %if.else.38, %if.then.7
  %call46 = tail call i64 @PyObject_Hash(%struct._object* %call) #2, !dbg !1121
  tail call void @llvm.dbg.value(metadata i64 %call46, i64 0, metadata !652, metadata !1010), !dbg !1078
  br label %do.body.47, !dbg !1122

do.body.47:                                       ; preds = %if.else, %if.end.29, %if.end, %if.end.45
  %result.0 = phi i64 [ -1, %if.end ], [ %call46, %if.end.45 ], [ -1, %if.end.29 ], [ -1, %if.else ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !659, metadata !1010), !dbg !1123
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1125
  %21 = load i64, i64* %ob_refcnt49, align 8, !dbg !1125, !tbaa !1023
  %dec50 = add i64 %21, -1, !dbg !1125
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !1125, !tbaa !1023
  %cmp51 = icmp eq i64 %dec50, 0, !dbg !1125
  br i1 %cmp51, label %if.else.53, label %cleanup.59, !dbg !1127

if.else.53:                                       ; preds = %do.body.47
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1128
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !1128, !tbaa !1027
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1128
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !1128, !tbaa !1028
  tail call void %23(%struct._object* %call) #2, !dbg !1128
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.else.53, %do.body.47, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %result.0, %do.body.47 ], [ %result.0, %if.else.53 ]
  ret i64 %retval.0, !dbg !1130
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_richcompare(%struct._object* readonly %self, %struct._object* readonly %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !663, metadata !1010), !dbg !1131
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !664, metadata !1010), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !665, metadata !1010), !dbg !1133
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %other, i64 0, i32 1, !dbg !1134
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1134, !tbaa !1027
  %cmp = icmp eq %struct._typeobject* %0, @PyRange_Type, !dbg !1134
  br i1 %cmp, label %if.end, label %if.then, !dbg !1136

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1137, !tbaa !1023
  %inc = add i64 %1, 1, !dbg !1137
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1137, !tbaa !1023
  br label %cleanup, !dbg !1137

if.end:                                           ; preds = %entry
  switch i32 %op, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.11
    i32 5, label %sw.bb.11
    i32 0, label %sw.bb.11
    i32 4, label %sw.bb.11
  ], !dbg !1138

sw.bb:                                            ; preds = %if.end, %if.end
  %cmp.i = icmp eq %struct._object* %self, %other, !dbg !1139
  br i1 %cmp.i, label %if.end.3, label %if.end.i, !dbg !1143

if.end.i:                                         ; preds = %sw.bb
  %length.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !1144
  %2 = bitcast %struct._typeobject** %length.i to %struct._object**, !dbg !1144
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !1144, !tbaa !1050
  %length1.i = getelementptr inbounds %struct._object, %struct._object* %other, i64 2, i32 1, !dbg !1145
  %4 = bitcast %struct._typeobject** %length1.i to %struct._object**, !dbg !1145
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1145, !tbaa !1050
  %call.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %3, %struct._object* %5, i32 2) #2, !dbg !1146
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !673, metadata !1010) #2, !dbg !1147
  %cmp2.i = icmp eq i32 %call.i, 1, !dbg !1148
  br i1 %cmp2.i, label %if.end.4.i, label %range_equals.exit, !dbg !1150

if.end.4.i:                                       ; preds = %if.end.i
  %6 = load %struct._object*, %struct._object** %2, align 8, !dbg !1151, !tbaa !1050
  %call6.i = tail call i32 @PyObject_Not(%struct._object* %6) #2, !dbg !1152
  tail call void @llvm.dbg.value(metadata i32 %call6.i, i64 0, metadata !673, metadata !1010) #2, !dbg !1147
  %cmp7.i = icmp eq i32 %call6.i, 0, !dbg !1153
  br i1 %cmp7.i, label %if.end.9.i, label %range_equals.exit, !dbg !1155

if.end.9.i:                                       ; preds = %if.end.4.i
  %start.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1156
  %7 = bitcast %struct._object* %start.i to %struct._object**, !dbg !1156
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1156, !tbaa !1014
  %start10.i = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, !dbg !1157
  %9 = bitcast %struct._object* %start10.i to %struct._object**, !dbg !1157
  %10 = load %struct._object*, %struct._object** %9, align 8, !dbg !1157, !tbaa !1014
  %call11.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %10, i32 2) #2, !dbg !1158
  tail call void @llvm.dbg.value(metadata i32 %call11.i, i64 0, metadata !673, metadata !1010) #2, !dbg !1147
  %cmp12.i = icmp eq i32 %call11.i, 1, !dbg !1159
  br i1 %cmp12.i, label %if.end.14.i, label %range_equals.exit, !dbg !1161

if.end.14.i:                                      ; preds = %if.end.9.i
  %call15.i = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1162
  tail call void @llvm.dbg.value(metadata %struct._object* %call15.i, i64 0, metadata !674, metadata !1010) #2, !dbg !1163
  %tobool.i = icmp eq %struct._object* %call15.i, null, !dbg !1164
  br i1 %tobool.i, label %cleanup, label %if.end.17.i, !dbg !1166

if.end.17.i:                                      ; preds = %if.end.14.i
  %11 = load %struct._object*, %struct._object** %2, align 8, !dbg !1167, !tbaa !1050
  %call19.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %11, %struct._object* %call15.i, i32 2) #2, !dbg !1168
  tail call void @llvm.dbg.value(metadata i32 %call19.i, i64 0, metadata !673, metadata !1010) #2, !dbg !1147
  tail call void @llvm.dbg.value(metadata %struct._object* %call15.i, i64 0, metadata !675, metadata !1010) #2, !dbg !1169
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call15.i, i64 0, i32 0, !dbg !1171
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1171, !tbaa !1023
  %dec.i = add i64 %12, -1, !dbg !1171
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1171, !tbaa !1023
  %cmp20.i = icmp eq i64 %dec.i, 0, !dbg !1171
  br i1 %cmp20.i, label %if.else.i, label %if.end.22.i, !dbg !1173

if.else.i:                                        ; preds = %if.end.17.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call15.i, i64 0, i32 1, !dbg !1174
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1174, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1174
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1174, !tbaa !1028
  tail call void %14(%struct._object* %call15.i) #2, !dbg !1174
  br label %if.end.22.i, !dbg !1176

if.end.22.i:                                      ; preds = %if.else.i, %if.end.17.i
  %cmp23.i = icmp eq i32 %call19.i, 0, !dbg !1177
  br i1 %cmp23.i, label %if.end.25.i, label %range_equals.exit, !dbg !1179

if.end.25.i:                                      ; preds = %if.end.22.i
  %step.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, !dbg !1180
  %15 = bitcast %struct._object* %step.i to %struct._object**, !dbg !1180
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !1180, !tbaa !1042
  %step26.i = getelementptr inbounds %struct._object, %struct._object* %other, i64 2, !dbg !1181
  %17 = bitcast %struct._object* %step26.i to %struct._object**, !dbg !1181
  %18 = load %struct._object*, %struct._object** %17, align 8, !dbg !1181, !tbaa !1042
  %call27.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %16, %struct._object* %18, i32 2) #2, !dbg !1182
  br label %range_equals.exit, !dbg !1183

range_equals.exit:                                ; preds = %if.end.i, %if.end.4.i, %if.end.9.i, %if.end.22.i, %if.end.25.i
  %retval.0.i = phi i32 [ %call27.i, %if.end.25.i ], [ %call.i, %if.end.i ], [ %call6.i, %if.end.4.i ], [ %call11.i, %if.end.9.i ], [ %call19.i, %if.end.22.i ], !dbg !1176
  tail call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !666, metadata !1010), !dbg !1184
  %cmp1 = icmp eq i32 %retval.0.i, -1, !dbg !1185
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !1187

if.end.3:                                         ; preds = %sw.bb, %range_equals.exit
  %retval.0.i22 = phi i32 [ %retval.0.i, %range_equals.exit ], [ 1, %sw.bb ]
  %cmp4 = icmp eq i32 %op, 3, !dbg !1188
  %lnot = icmp eq i32 %retval.0.i22, 0, !dbg !1190
  %lnot.ext = zext i1 %lnot to i32, !dbg !1190
  tail call void @llvm.dbg.value(metadata i32 %lnot.ext, i64 0, metadata !666, metadata !1010), !dbg !1184
  %result.0 = select i1 %cmp4, i32 %lnot.ext, i32 %retval.0.i22, !dbg !1191
  %tobool7 = icmp eq i32 %result.0, 0, !dbg !1192
  br i1 %tobool7, label %if.else, label %if.then.8, !dbg !1194

if.then.8:                                        ; preds = %if.end.3
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1195, !tbaa !1023
  %inc9 = add i64 %19, 1, !dbg !1195
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1195, !tbaa !1023
  br label %cleanup, !dbg !1195

if.else:                                          ; preds = %if.end.3
  %20 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1196, !tbaa !1023
  %inc10 = add i64 %20, 1, !dbg !1196
  store i64 %inc10, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1196, !tbaa !1023
  br label %cleanup, !dbg !1196

sw.bb.11:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1197, !tbaa !1023
  %inc12 = add i64 %21, 1, !dbg !1197
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1197, !tbaa !1023
  br label %cleanup, !dbg !1197

sw.default:                                       ; preds = %if.end
  %call13 = tail call i32 @PyErr_BadArgument() #2, !dbg !1198
  br label %cleanup, !dbg !1199

cleanup:                                          ; preds = %if.end.14.i, %range_equals.exit, %sw.default, %sw.bb.11, %if.else, %if.then.8, %if.then
  %retval.0 = phi %struct._object* [ null, %sw.default ], [ @_Py_NotImplementedStruct, %sw.bb.11 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.8 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.else ], [ @_Py_NotImplementedStruct, %if.then ], [ null, %range_equals.exit ], [ null, %if.end.14.i ]
  ret %struct._object* %retval.0, !dbg !1200
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_iter(%struct._object* nocapture readonly %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %seq, i64 0, metadata !951, metadata !1010), !dbg !1201
  %start = getelementptr inbounds %struct._object, %struct._object* %seq, i64 1, !dbg !1202
  %0 = bitcast %struct._object* %start to %struct._object**, !dbg !1202
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1202, !tbaa !1014
  %call = tail call i64 @PyLong_AsLong(%struct._object* %1) #2, !dbg !1203
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !954, metadata !1010), !dbg !1204
  %cmp = icmp eq i64 %call, -1, !dbg !1205
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1207

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1208
  %tobool = icmp eq %struct._object* %call1, null, !dbg !1208
  br i1 %tobool, label %if.end, label %if.then, !dbg !1210

if.then:                                          ; preds = %land.lhs.true
  tail call void @PyErr_Clear() #2, !dbg !1211
  br label %long_range, !dbg !1213

if.end:                                           ; preds = %land.lhs.true, %entry
  %stop = getelementptr inbounds %struct._object, %struct._object* %seq, i64 1, i32 1, !dbg !1214
  %2 = bitcast %struct._typeobject** %stop to %struct._object**, !dbg !1214
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !1214, !tbaa !1034
  %call2 = tail call i64 @PyLong_AsLong(%struct._object* %3) #2, !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !955, metadata !1010), !dbg !1216
  %cmp3 = icmp eq i64 %call2, -1, !dbg !1217
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8, !dbg !1219

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1220
  %tobool6 = icmp eq %struct._object* %call5, null, !dbg !1220
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !1222

if.then.7:                                        ; preds = %land.lhs.true.4
  tail call void @PyErr_Clear() #2, !dbg !1223
  br label %long_range, !dbg !1225

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %step = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, !dbg !1226
  %4 = bitcast %struct._object* %step to %struct._object**, !dbg !1226
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1226, !tbaa !1042
  %call9 = tail call i64 @PyLong_AsLong(%struct._object* %5) #2, !dbg !1227
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !956, metadata !1010), !dbg !1228
  %cmp10 = icmp eq i64 %call9, -1, !dbg !1229
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15, !dbg !1231

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1232
  %tobool13 = icmp eq %struct._object* %call12, null, !dbg !1232
  br i1 %tobool13, label %if.end.15, label %if.then.14, !dbg !1234

if.then.14:                                       ; preds = %land.lhs.true.11
  tail call void @PyErr_Clear() #2, !dbg !1235
  br label %long_range, !dbg !1237

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end.8
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !711, metadata !1010) #2, !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !712, metadata !1010) #2, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !713, metadata !1010) #2, !dbg !1241
  %call.i = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyRangeIter_Type) #2, !dbg !1242
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1243
  br i1 %cmp.i, label %land.lhs.true.18, label %if.end.i, !dbg !1245

if.end.i:                                         ; preds = %if.end.15
  %start1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1246
  %6 = bitcast %struct._typeobject** %start1.i to i64*, !dbg !1246
  store i64 %call, i64* %6, align 8, !dbg !1247, !tbaa !1248
  %7 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !1250
  store i64 %call9, i64* %7, align 8, !dbg !1251, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !704, metadata !1010) #2, !dbg !1253
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !705, metadata !1010) #2, !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !706, metadata !1010) #2, !dbg !1256
  %cmp.i.i = icmp sgt i64 %call9, 0, !dbg !1257
  %cmp1.i.i = icmp slt i64 %call, %call2, !dbg !1259
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.i.i, !dbg !1260
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1260

if.then.i.i:                                      ; preds = %if.end.i
  %sub.i.i = xor i64 %call, -1, !dbg !1261
  %sub2.i.i = add i64 %call2, %sub.i.i, !dbg !1262
  %div.i.i = udiv i64 %sub2.i.i, %call9, !dbg !1263
  br label %get_len_of_range.exit.i, !dbg !1264

if.else.i.i:                                      ; preds = %if.end.i
  %cmp3.i.i = icmp slt i64 %call9, 0, !dbg !1265
  %cmp5.i.i = icmp sgt i64 %call, %call2, !dbg !1267
  %or.cond22.i.i = and i1 %cmp5.i.i, %cmp3.i.i, !dbg !1268
  br i1 %or.cond22.i.i, label %if.then.6.i.i, label %fast_range_iter.exit, !dbg !1268

if.then.6.i.i:                                    ; preds = %if.else.i.i
  %sub7.i.i = add i64 %call, -1, !dbg !1269
  %sub8.i.i = sub i64 %sub7.i.i, %call2, !dbg !1270
  %sub9.i.i = sub i64 0, %call9, !dbg !1271
  %div10.i.i = udiv i64 %sub8.i.i, %sub9.i.i, !dbg !1272
  br label %get_len_of_range.exit.i, !dbg !1273

get_len_of_range.exit.i:                          ; preds = %if.then.6.i.i, %if.then.i.i
  %div.i.sink.i = phi i64 [ %div.i.i, %if.then.i.i ], [ %div10.i.i, %if.then.6.i.i ], !dbg !1274
  %add.i.i = add i64 %div.i.sink.i, 1, !dbg !1275
  tail call void @llvm.dbg.value(metadata i64 %add.i.i, i64 0, metadata !715, metadata !1010) #2, !dbg !1276
  %cmp4.i = icmp slt i64 %add.i.i, 0, !dbg !1277
  br i1 %cmp4.i, label %do.body.i, label %fast_range_iter.exit, !dbg !1278

do.body.i:                                        ; preds = %get_len_of_range.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !716, metadata !1010) #2, !dbg !1279
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1281
  %8 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1281, !tbaa !1023
  %dec.i = add i64 %8, -1, !dbg !1281
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1281, !tbaa !1023
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !1281
  br i1 %cmp6.i, label %if.else.i, label %if.end.8.i, !dbg !1283

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1284
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1284, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1284
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1284, !tbaa !1028
  tail call void %10(%struct._object* %call.i) #2, !dbg !1284
  br label %if.end.8.i, !dbg !1274

if.end.8.i:                                       ; preds = %if.else.i, %do.body.i
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1286, !tbaa !1086
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !1287
  br label %land.lhs.true.18, !dbg !1288

fast_range_iter.exit:                             ; preds = %if.else.i.i, %get_len_of_range.exit.i
  %retval.0.i26.i = phi i64 [ %add.i.i, %get_len_of_range.exit.i ], [ 0, %if.else.i.i ], !dbg !1274
  %len.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !1289
  %12 = bitcast %struct._typeobject** %len.i to i64*, !dbg !1289
  store i64 %retval.0.i26.i, i64* %12, align 8, !dbg !1290, !tbaa !1291
  %13 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 0, !dbg !1292
  store i64 0, i64* %13, align 8, !dbg !1293, !tbaa !1294
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !957, metadata !1010), !dbg !1295
  br label %cleanup

land.lhs.true.18:                                 ; preds = %if.end.8.i, %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !957, metadata !1010), !dbg !1295
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1296, !tbaa !1086
  %call19 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %14) #2, !dbg !1299
  %tobool20 = icmp eq i32 %call19, 0, !dbg !1299
  br i1 %tobool20, label %cleanup, label %if.then.21, !dbg !1300

if.then.21:                                       ; preds = %land.lhs.true.18
  tail call void @PyErr_Clear() #2, !dbg !1301
  br label %long_range, !dbg !1303

long_range:                                       ; preds = %if.then.21, %if.then.14, %if.then.7, %if.then
  %call23 = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyLongRangeIter_Type) #2, !dbg !1304
  %cmp24 = icmp eq %struct._object* %call23, null, !dbg !1305
  br i1 %cmp24, label %cleanup, label %if.end.26, !dbg !1307

if.end.26:                                        ; preds = %long_range
  %15 = getelementptr inbounds %struct._object, %struct._object* %start, i64 0, i32 0, !dbg !1308
  %16 = load i64, i64* %15, align 8, !dbg !1308, !tbaa !1014
  %start28 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 1, i32 1, !dbg !1309
  %17 = bitcast %struct._typeobject** %start28 to i64*, !dbg !1310
  store i64 %16, i64* %17, align 8, !dbg !1310, !tbaa !1034
  %18 = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, i32 0, !dbg !1311
  %19 = load i64, i64* %18, align 8, !dbg !1311, !tbaa !1042
  %20 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 2, i32 0, !dbg !1312
  store i64 %19, i64* %20, align 8, !dbg !1312, !tbaa !1042
  %length = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, i32 1, !dbg !1313
  %21 = bitcast %struct._typeobject** %length to i64*, !dbg !1313
  %22 = load i64, i64* %21, align 8, !dbg !1313, !tbaa !1050
  %len = getelementptr inbounds %struct._object, %struct._object* %call23, i64 2, i32 1, !dbg !1314
  %23 = bitcast %struct._typeobject** %len to i64*, !dbg !1315
  store i64 %22, i64* %23, align 8, !dbg !1315, !tbaa !1050
  %24 = inttoptr i64 %16 to %struct._object*, !dbg !1316
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 0, !dbg !1316
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1316, !tbaa !1023
  %inc = add i64 %25, 1, !dbg !1316
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1316, !tbaa !1023
  %26 = inttoptr i64 %19 to %struct._object*, !dbg !1317
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 0, !dbg !1317
  %27 = load i64, i64* %ob_refcnt33, align 8, !dbg !1317, !tbaa !1023
  %inc34 = add i64 %27, 1, !dbg !1317
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !1317, !tbaa !1023
  %28 = inttoptr i64 %22 to %struct._object*, !dbg !1318
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !1318
  %29 = load i64, i64* %ob_refcnt36, align 8, !dbg !1318, !tbaa !1023
  %inc37 = add i64 %29, 1, !dbg !1318
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !1318, !tbaa !1023
  %call38 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1319
  %index = getelementptr inbounds %struct._object, %struct._object* %call23, i64 1, !dbg !1320
  %30 = bitcast %struct._object* %index to %struct._object**, !dbg !1320
  store %struct._object* %call38, %struct._object** %30, align 8, !dbg !1321, !tbaa !1014
  %tobool40 = icmp eq %struct._object* %call38, null, !dbg !1322
  br i1 %tobool40, label %do.body, label %cleanup, !dbg !1324

do.body:                                          ; preds = %if.end.26
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !958, metadata !1010), !dbg !1325
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 0, !dbg !1327
  %31 = load i64, i64* %ob_refcnt43, align 8, !dbg !1327, !tbaa !1023
  %dec = add i64 %31, -1, !dbg !1327
  store i64 %dec, i64* %ob_refcnt43, align 8, !dbg !1327, !tbaa !1023
  %cmp44 = icmp eq i64 %dec, 0, !dbg !1327
  br i1 %cmp44, label %if.else, label %cleanup, !dbg !1329

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 1, !dbg !1330
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1330, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1330
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1330, !tbaa !1028
  tail call void %33(%struct._object* %call23) #2, !dbg !1330
  br label %cleanup

cleanup:                                          ; preds = %fast_range_iter.exit, %if.else, %do.body, %if.end.26, %long_range, %land.lhs.true.18
  %retval.0 = phi %struct._object* [ null, %land.lhs.true.18 ], [ %call.i, %fast_range_iter.exit ], [ null, %long_range ], [ %call23, %if.end.26 ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !1332
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !751, metadata !1010), !dbg !1333
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !752, metadata !1010), !dbg !1334
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !753, metadata !1010), !dbg !1335
  %0 = bitcast %struct._object** %start to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1336
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !755, metadata !1010), !dbg !1337
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1337, !tbaa !1086
  %1 = bitcast %struct._object** %stop to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1336
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !756, metadata !1010), !dbg !1338
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !1338, !tbaa !1086
  %2 = bitcast %struct._object** %step to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1336
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !757, metadata !1010), !dbg !1339
  store %struct._object* null, %struct._object** %step, align 8, !dbg !1339, !tbaa !1086
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %struct._object* %kw) #2, !dbg !1340
  %tobool = icmp eq i32 %call, 0, !dbg !1340
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1342

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @PyTuple_Size(%struct._object* %args) #2, !dbg !1343
  %cmp = icmp slt i64 %call1, 2, !dbg !1344
  br i1 %cmp, label %if.then.2, label %if.else.46, !dbg !1345

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %call3 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %stop) #2, !dbg !1346
  %tobool4 = icmp eq i32 %call3, 0, !dbg !1346
  br i1 %tobool4, label %cleanup, label %if.end.6, !dbg !1348

if.end.6:                                         ; preds = %if.then.2
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %3 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1349, !tbaa !1086
  %call7 = call %struct._object* @PyNumber_Index(%struct._object* %3) #2, !dbg !1350
  call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !756, metadata !1010), !dbg !1338
  store %struct._object* %call7, %struct._object** %stop, align 8, !dbg !1351, !tbaa !1086
  %tobool8 = icmp eq %struct._object* %call7, null, !dbg !1352
  br i1 %tobool8, label %cleanup, label %if.end.10, !dbg !1354

if.end.10:                                        ; preds = %if.end.6
  %call11 = call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1355
  call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !755, metadata !1010), !dbg !1337
  store %struct._object* %call11, %struct._object** %start, align 8, !dbg !1356, !tbaa !1086
  %tobool12 = icmp eq %struct._object* %call11, null, !dbg !1357
  br i1 %tobool12, label %do.body, label %if.end.17, !dbg !1358

do.body:                                          ; preds = %if.end.10
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %4 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1359, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !758, metadata !1010), !dbg !1359
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1361
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1361, !tbaa !1023
  %dec = add i64 %5, -1, !dbg !1361
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1361, !tbaa !1023
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1361
  br i1 %cmp14, label %if.else, label %cleanup, !dbg !1363

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1364
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1364, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1364
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1364, !tbaa !1028
  call void %7(%struct._object* %4) #2, !dbg !1364
  br label %cleanup

if.end.17:                                        ; preds = %if.end.10
  %call18 = call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1366
  call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !757, metadata !1010), !dbg !1339
  store %struct._object* %call18, %struct._object** %step, align 8, !dbg !1367, !tbaa !1086
  %tobool19 = icmp eq %struct._object* %call18, null, !dbg !1368
  br i1 %tobool19, label %do.body.21, label %if.end.99, !dbg !1369

do.body.21:                                       ; preds = %if.end.17
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %8 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1370, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !764, metadata !1010), !dbg !1370
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1372
  %9 = load i64, i64* %ob_refcnt23, align 8, !dbg !1372, !tbaa !1023
  %dec24 = add i64 %9, -1, !dbg !1372
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1372, !tbaa !1023
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1372
  br i1 %cmp25, label %if.else.27, label %if.end.30, !dbg !1374

if.else.27:                                       ; preds = %do.body.21
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1375
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1375, !tbaa !1027
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1375
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1375, !tbaa !1028
  call void %11(%struct._object* %8) #2, !dbg !1375
  br label %if.end.30

if.end.30:                                        ; preds = %do.body.21, %if.else.27
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %12 = load %struct._object*, %struct._object** %start, align 8, !dbg !1377, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !768, metadata !1010), !dbg !1377
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1379
  %13 = load i64, i64* %ob_refcnt35, align 8, !dbg !1379, !tbaa !1023
  %dec36 = add i64 %13, -1, !dbg !1379
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1379, !tbaa !1023
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !1379
  br i1 %cmp37, label %if.else.39, label %cleanup, !dbg !1381

if.else.39:                                       ; preds = %if.end.30
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1382
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1382, !tbaa !1027
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1382
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1382, !tbaa !1028
  call void %15(%struct._object* %12) #2, !dbg !1382
  br label %cleanup

if.else.46:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  tail call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  tail call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !757, metadata !1010), !dbg !1339
  %call47 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 2, i64 3, %struct._object** nonnull %start, %struct._object** nonnull %stop, %struct._object** nonnull %step) #2, !dbg !1384
  %tobool48 = icmp eq i32 %call47, 0, !dbg !1384
  br i1 %tobool48, label %cleanup, label %if.end.50, !dbg !1386

if.end.50:                                        ; preds = %if.else.46
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %16 = load %struct._object*, %struct._object** %start, align 8, !dbg !1387, !tbaa !1086
  %call51 = call %struct._object* @PyNumber_Index(%struct._object* %16) #2, !dbg !1388
  call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !755, metadata !1010), !dbg !1337
  store %struct._object* %call51, %struct._object** %start, align 8, !dbg !1389, !tbaa !1086
  %tobool52 = icmp eq %struct._object* %call51, null, !dbg !1390
  br i1 %tobool52, label %cleanup, label %if.end.54, !dbg !1392

if.end.54:                                        ; preds = %if.end.50
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %17 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1393, !tbaa !1086
  %call55 = call %struct._object* @PyNumber_Index(%struct._object* %17) #2, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !756, metadata !1010), !dbg !1338
  store %struct._object* %call55, %struct._object** %stop, align 8, !dbg !1395, !tbaa !1086
  %tobool56 = icmp eq %struct._object* %call55, null, !dbg !1396
  br i1 %tobool56, label %do.body.58, label %if.end.70, !dbg !1397

do.body.58:                                       ; preds = %if.end.54
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %18 = load %struct._object*, %struct._object** %start, align 8, !dbg !1398, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !770, metadata !1010), !dbg !1398
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !1400
  %19 = load i64, i64* %ob_refcnt60, align 8, !dbg !1400, !tbaa !1023
  %dec61 = add i64 %19, -1, !dbg !1400
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !1400, !tbaa !1023
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !1400
  br i1 %cmp62, label %if.else.64, label %cleanup, !dbg !1402

if.else.64:                                       ; preds = %do.body.58
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !1403
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !1403, !tbaa !1027
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1403
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !1403, !tbaa !1028
  call void %21(%struct._object* %18) #2, !dbg !1403
  br label %cleanup

if.end.70:                                        ; preds = %if.end.54
  call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !757, metadata !1010), !dbg !1339
  %22 = load %struct._object*, %struct._object** %step, align 8, !dbg !1405, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %22, i64 0, metadata !798, metadata !1010) #2, !dbg !1406
  %tobool.i = icmp eq %struct._object* %22, null, !dbg !1408
  br i1 %tobool.i, label %validate_step.exit, label %if.end.i, !dbg !1410

if.end.i:                                         ; preds = %if.end.70
  %call1.i = call %struct._object* @PyNumber_Index(%struct._object* %22) #2, !dbg !1411
  call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !798, metadata !1010) #2, !dbg !1406
  %tobool2.i = icmp eq %struct._object* %call1.i, null, !dbg !1412
  br i1 %tobool2.i, label %validate_step.exit.thread, label %if.then.3.i, !dbg !1413

if.then.3.i:                                      ; preds = %if.end.i
  %call4.i = call i64 @PyNumber_AsSsize_t(%struct._object* %call1.i, %struct._object* null) #2, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %call4.i, i64 0, metadata !799, metadata !1010) #2, !dbg !1415
  switch i64 %call4.i, label %validate_step.exit.thread201 [
    i64 -1, label %land.lhs.true.i
    i64 0, label %if.then.9.i
  ], !dbg !1416

land.lhs.true.i:                                  ; preds = %if.then.3.i
  %call5.i = call %struct._object* @PyErr_Occurred() #2, !dbg !1417
  %tobool6.i = icmp eq %struct._object* %call5.i, null, !dbg !1417
  br i1 %tobool6.i, label %validate_step.exit.thread201, label %if.then.7.i, !dbg !1419

if.then.7.i:                                      ; preds = %land.lhs.true.i
  call void @PyErr_Clear() #2, !dbg !1420
  br label %validate_step.exit.thread201, !dbg !1422

if.then.9.i:                                      ; preds = %if.then.3.i
  %23 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1423, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)) #2, !dbg !1424
  call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !802, metadata !1010) #2, !dbg !1425
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !798, metadata !1010) #2, !dbg !1406
  call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !807, metadata !1010) #2, !dbg !1427
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !1429
  %24 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1429, !tbaa !1023
  %dec.i = add i64 %24, -1, !dbg !1429
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1429, !tbaa !1023
  %cmp13.i = icmp eq i64 %dec.i, 0, !dbg !1429
  br i1 %cmp13.i, label %if.else.15.i, label %validate_step.exit.thread, !dbg !1431

if.else.15.i:                                     ; preds = %if.then.9.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !1432
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1432, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1432
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1432, !tbaa !1028
  call void %26(%struct._object* %call1.i) #2, !dbg !1432
  br label %validate_step.exit.thread, !dbg !1434

validate_step.exit.thread:                        ; preds = %if.end.i, %if.else.15.i, %if.then.9.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !757, metadata !1010), !dbg !1339
  store %struct._object* null, %struct._object** %step, align 8, !dbg !1435, !tbaa !1086
  br label %do.body.74, !dbg !1436

validate_step.exit.thread201:                     ; preds = %if.then.7.i, %if.then.3.i, %land.lhs.true.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !757, metadata !1010), !dbg !1339
  store %struct._object* %call1.i, %struct._object** %step, align 8, !dbg !1435, !tbaa !1086
  br label %if.end.99, !dbg !1436

validate_step.exit:                               ; preds = %if.end.70
  %call.i = call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1437
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !757, metadata !1010), !dbg !1339
  store %struct._object* %call.i, %struct._object** %step, align 8, !dbg !1435, !tbaa !1086
  %tobool72 = icmp eq %struct._object* %call.i, null, !dbg !1438
  br i1 %tobool72, label %do.body.74, label %if.end.99, !dbg !1436

do.body.74:                                       ; preds = %validate_step.exit.thread, %validate_step.exit
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %27 = load %struct._object*, %struct._object** %start, align 8, !dbg !1439, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !775, metadata !1010), !dbg !1439
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1441
  %28 = load i64, i64* %ob_refcnt76, align 8, !dbg !1441, !tbaa !1023
  %dec77 = add i64 %28, -1, !dbg !1441
  store i64 %dec77, i64* %ob_refcnt76, align 8, !dbg !1441, !tbaa !1023
  %cmp78 = icmp eq i64 %dec77, 0, !dbg !1441
  br i1 %cmp78, label %if.else.80, label %if.end.83, !dbg !1443

if.else.80:                                       ; preds = %do.body.74
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1444
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1444, !tbaa !1027
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1444
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1444, !tbaa !1028
  call void %30(%struct._object* %27) #2, !dbg !1444
  br label %if.end.83

if.end.83:                                        ; preds = %do.body.74, %if.else.80
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %31 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1446, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !779, metadata !1010), !dbg !1446
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1448
  %32 = load i64, i64* %ob_refcnt88, align 8, !dbg !1448, !tbaa !1023
  %dec89 = add i64 %32, -1, !dbg !1448
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1448, !tbaa !1023
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1448
  br i1 %cmp90, label %if.else.92, label %cleanup, !dbg !1450

if.else.92:                                       ; preds = %if.end.83
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 1, !dbg !1451
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1451, !tbaa !1027
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1451
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1451, !tbaa !1028
  call void %34(%struct._object* %31) #2, !dbg !1451
  br label %cleanup

if.end.99:                                        ; preds = %validate_step.exit.thread201, %if.end.17, %validate_step.exit
  %35 = phi %struct._object* [ %call1.i, %validate_step.exit.thread201 ], [ %call18, %if.end.17 ], [ %call.i, %validate_step.exit ], !dbg !1453
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %36 = load %struct._object*, %struct._object** %start, align 8, !dbg !1454, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %37 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1455, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !757, metadata !1010), !dbg !1339
  %call100 = call fastcc %struct.rangeobject* @make_range_object(%struct._typeobject* %type, %struct._object* %36, %struct._object* %37, %struct._object* %35), !dbg !1456
  call void @llvm.dbg.value(metadata %struct.rangeobject* %call100, i64 0, metadata !754, metadata !1010), !dbg !1457
  %cmp101 = icmp eq %struct.rangeobject* %call100, null, !dbg !1458
  br i1 %cmp101, label %do.body.104, label %if.then.102, !dbg !1460

if.then.102:                                      ; preds = %if.end.99
  %38 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %call100, i64 0, i32 0, !dbg !1461
  br label %cleanup, !dbg !1462

do.body.104:                                      ; preds = %if.end.99
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !755, metadata !1010), !dbg !1337
  %39 = load %struct._object*, %struct._object** %start, align 8, !dbg !1463, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !781, metadata !1010), !dbg !1463
  %cmp105 = icmp eq %struct._object* %39, null, !dbg !1465
  br i1 %cmp105, label %if.end.119, label %do.body.107, !dbg !1466

do.body.107:                                      ; preds = %do.body.104
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !783, metadata !1010), !dbg !1467
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !1469
  %40 = load i64, i64* %ob_refcnt109, align 8, !dbg !1469, !tbaa !1023
  %dec110 = add i64 %40, -1, !dbg !1469
  store i64 %dec110, i64* %ob_refcnt109, align 8, !dbg !1469, !tbaa !1023
  %cmp111 = icmp eq i64 %dec110, 0, !dbg !1469
  br i1 %cmp111, label %if.else.113, label %if.end.119, !dbg !1471

if.else.113:                                      ; preds = %do.body.107
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !1472
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8, !dbg !1472, !tbaa !1027
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !1472
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8, !dbg !1472, !tbaa !1028
  call void %42(%struct._object* %39) #2, !dbg !1472
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.113, %do.body.107, %do.body.104
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !756, metadata !1010), !dbg !1338
  %43 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1474, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !786, metadata !1010), !dbg !1474
  %cmp124 = icmp eq %struct._object* %43, null, !dbg !1476
  br i1 %cmp124, label %if.end.138, label %do.body.126, !dbg !1477

do.body.126:                                      ; preds = %if.end.119
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !788, metadata !1010), !dbg !1478
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 0, !dbg !1480
  %44 = load i64, i64* %ob_refcnt128, align 8, !dbg !1480, !tbaa !1023
  %dec129 = add i64 %44, -1, !dbg !1480
  store i64 %dec129, i64* %ob_refcnt128, align 8, !dbg !1480, !tbaa !1023
  %cmp130 = icmp eq i64 %dec129, 0, !dbg !1480
  br i1 %cmp130, label %if.else.132, label %if.end.138, !dbg !1482

if.else.132:                                      ; preds = %do.body.126
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 1, !dbg !1483
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8, !dbg !1483, !tbaa !1027
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1483
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8, !dbg !1483, !tbaa !1028
  call void %46(%struct._object* %43) #2, !dbg !1483
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.132, %do.body.126, %if.end.119
  call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !757, metadata !1010), !dbg !1339
  %47 = load %struct._object*, %struct._object** %step, align 8, !dbg !1485, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !791, metadata !1010), !dbg !1485
  %cmp143 = icmp eq %struct._object* %47, null, !dbg !1487
  br i1 %cmp143, label %cleanup, label %do.body.145, !dbg !1488

do.body.145:                                      ; preds = %if.end.138
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !793, metadata !1010), !dbg !1489
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !1491
  %48 = load i64, i64* %ob_refcnt147, align 8, !dbg !1491, !tbaa !1023
  %dec148 = add i64 %48, -1, !dbg !1491
  store i64 %dec148, i64* %ob_refcnt147, align 8, !dbg !1491, !tbaa !1023
  %cmp149 = icmp eq i64 %dec148, 0, !dbg !1491
  br i1 %cmp149, label %if.else.151, label %cleanup, !dbg !1493

if.else.151:                                      ; preds = %do.body.145
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 1, !dbg !1494
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8, !dbg !1494, !tbaa !1027
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !1494
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8, !dbg !1494, !tbaa !1028
  call void %50(%struct._object* %47) #2, !dbg !1494
  br label %cleanup

cleanup:                                          ; preds = %if.end.138, %do.body.145, %if.else.151, %if.else.92, %if.end.83, %if.else.64, %do.body.58, %if.end.50, %if.else.46, %if.else.39, %if.end.30, %if.else, %do.body, %if.end.6, %if.then.2, %entry, %if.then.102
  %retval.0 = phi %struct._object* [ %38, %if.then.102 ], [ null, %entry ], [ null, %if.then.2 ], [ null, %if.end.6 ], [ null, %do.body ], [ null, %if.else ], [ null, %if.end.30 ], [ null, %if.else.39 ], [ null, %if.else.46 ], [ null, %if.end.50 ], [ null, %do.body.58 ], [ null, %if.else.64 ], [ null, %if.end.83 ], [ null, %if.else.92 ], [ null, %if.else.151 ], [ null, %do.body.145 ], [ null, %if.end.138 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1496
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1496
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1496
  ret %struct._object* %retval.0, !dbg !1496
}

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_next(%struct.rangeiterobject* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeiterobject* %r, i64 0, metadata !815, metadata !1010), !dbg !1497
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 1, !dbg !1498
  %0 = load i64, i64* %index, align 8, !dbg !1498, !tbaa !1294
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 4, !dbg !1500
  %1 = load i64, i64* %len, align 8, !dbg !1500, !tbaa !1291
  %cmp = icmp slt i64 %0, %1, !dbg !1501
  br i1 %cmp, label %if.then, label %return, !dbg !1502

if.then:                                          ; preds = %entry
  %start = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 2, !dbg !1503
  %2 = load i64, i64* %start, align 8, !dbg !1503, !tbaa !1248
  %inc = add i64 %0, 1, !dbg !1504
  store i64 %inc, i64* %index, align 8, !dbg !1504, !tbaa !1294
  %step = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 3, !dbg !1505
  %3 = load i64, i64* %step, align 8, !dbg !1505, !tbaa !1252
  %mul = mul i64 %3, %0, !dbg !1506
  %add = add i64 %mul, %2, !dbg !1507
  %call = tail call %struct._object* @PyLong_FromLong(i64 %add) #2, !dbg !1508
  br label %return, !dbg !1509

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1510
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !850, metadata !1010), !dbg !1511
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !851, metadata !1010), !dbg !1512
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !852, metadata !1010), !dbg !1513
  %0 = bitcast i64* %start to i8*, !dbg !1514
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1514
  %1 = bitcast i64* %stop to i8*, !dbg !1514
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1514
  %2 = bitcast i64* %step to i8*, !dbg !1514
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1514
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), %struct._object* %kw) #2, !dbg !1515
  %tobool = icmp eq i32 %call, 0, !dbg !1515
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1517

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !853, metadata !1010), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !854, metadata !1010), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !855, metadata !1010), !dbg !1520
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i64* nonnull %start, i64* nonnull %stop, i64* nonnull %step) #2, !dbg !1521
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1521
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1523

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !853, metadata !1010), !dbg !1518
  %3 = load i64, i64* %start, align 8, !dbg !1524, !tbaa !1525
  call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !854, metadata !1010), !dbg !1519
  %4 = load i64, i64* %stop, align 8, !dbg !1526, !tbaa !1525
  call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !855, metadata !1010), !dbg !1520
  %5 = load i64, i64* %step, align 8, !dbg !1527, !tbaa !1525
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !711, metadata !1010) #2, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !712, metadata !1010) #2, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !713, metadata !1010) #2, !dbg !1531
  %call.i = call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyRangeIter_Type) #2, !dbg !1532
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1533
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1534

if.end.i:                                         ; preds = %if.end.4
  %start1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1535
  %6 = bitcast %struct._typeobject** %start1.i to i64*, !dbg !1535
  store i64 %3, i64* %6, align 8, !dbg !1536, !tbaa !1248
  %7 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !1537
  store i64 %5, i64* %7, align 8, !dbg !1538, !tbaa !1252
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !704, metadata !1010) #2, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !705, metadata !1010) #2, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !706, metadata !1010) #2, !dbg !1542
  %cmp.i.i = icmp sgt i64 %5, 0, !dbg !1543
  %cmp1.i.i = icmp slt i64 %3, %4, !dbg !1544
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.i.i, !dbg !1545
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1545

if.then.i.i:                                      ; preds = %if.end.i
  %sub.i.i = xor i64 %3, -1, !dbg !1546
  %sub2.i.i = add i64 %4, %sub.i.i, !dbg !1547
  %div.i.i = udiv i64 %sub2.i.i, %5, !dbg !1548
  br label %get_len_of_range.exit.i, !dbg !1549

if.else.i.i:                                      ; preds = %if.end.i
  %cmp3.i.i = icmp slt i64 %5, 0, !dbg !1550
  %cmp5.i.i = icmp sgt i64 %3, %4, !dbg !1551
  %or.cond22.i.i = and i1 %cmp5.i.i, %cmp3.i.i, !dbg !1552
  br i1 %or.cond22.i.i, label %if.then.6.i.i, label %if.end.9.i, !dbg !1552

if.then.6.i.i:                                    ; preds = %if.else.i.i
  %sub7.i.i = add i64 %3, -1, !dbg !1553
  %sub8.i.i = sub i64 %sub7.i.i, %4, !dbg !1554
  %sub9.i.i = sub i64 0, %5, !dbg !1555
  %div10.i.i = udiv i64 %sub8.i.i, %sub9.i.i, !dbg !1556
  br label %get_len_of_range.exit.i, !dbg !1557

get_len_of_range.exit.i:                          ; preds = %if.then.6.i.i, %if.then.i.i
  %div.i.sink.i = phi i64 [ %div.i.i, %if.then.i.i ], [ %div10.i.i, %if.then.6.i.i ], !dbg !1558
  %add.i.i = add i64 %div.i.sink.i, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %add.i.i, i64 0, metadata !715, metadata !1010) #2, !dbg !1560
  %cmp4.i = icmp slt i64 %add.i.i, 0, !dbg !1561
  br i1 %cmp4.i, label %do.body.i, label %if.end.9.i, !dbg !1562

do.body.i:                                        ; preds = %get_len_of_range.exit.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !716, metadata !1010) #2, !dbg !1563
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1564
  %8 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1564, !tbaa !1023
  %dec.i = add i64 %8, -1, !dbg !1564
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1564, !tbaa !1023
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !1564
  br i1 %cmp6.i, label %if.else.i, label %if.end.8.i, !dbg !1565

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1566
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1566, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1566
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1566, !tbaa !1028
  call void %10(%struct._object* %call.i) #2, !dbg !1566
  br label %if.end.8.i, !dbg !1558

if.end.8.i:                                       ; preds = %if.else.i, %do.body.i
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1567, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !1568
  br label %cleanup, !dbg !1569

if.end.9.i:                                       ; preds = %get_len_of_range.exit.i, %if.else.i.i
  %retval.0.i26.i = phi i64 [ %add.i.i, %get_len_of_range.exit.i ], [ 0, %if.else.i.i ], !dbg !1558
  %len.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !1570
  %12 = bitcast %struct._typeobject** %len.i to i64*, !dbg !1570
  store i64 %retval.0.i26.i, i64* %12, align 8, !dbg !1571, !tbaa !1291
  %13 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 0, !dbg !1572
  store i64 0, i64* %13, align 8, !dbg !1573, !tbaa !1294
  br label %cleanup, !dbg !1574

cleanup:                                          ; preds = %if.end.9.i, %if.end.8.i, %if.end.4, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.end.8.i ], [ %call.i, %if.end.9.i ], [ null, %if.end.4 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1575
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1575
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1575
  ret %struct._object* %retval.0, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal void @longrangeiter_dealloc(%struct.longrangeiterobject* %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.longrangeiterobject* %r, i64 0, metadata !860, metadata !1010), !dbg !1576
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !1577
  %0 = load %struct._object*, %struct._object** %index, align 8, !dbg !1577, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !861, metadata !1010), !dbg !1577
  %cmp = icmp eq %struct._object* %0, null, !dbg !1579
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !1580

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !863, metadata !1010), !dbg !1581
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1583
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1583, !tbaa !1023
  %dec = add i64 %1, -1, !dbg !1583
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1583, !tbaa !1023
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1583
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1585

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1586
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1586, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1586
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1586, !tbaa !1028
  tail call void %3(%struct._object* %0) #2, !dbg !1586
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 2, !dbg !1588
  %4 = load %struct._object*, %struct._object** %start, align 8, !dbg !1588, !tbaa !1034
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !866, metadata !1010), !dbg !1588
  %cmp9 = icmp eq %struct._object* %4, null, !dbg !1590
  br i1 %cmp9, label %if.end.23, label %do.body.11, !dbg !1591

do.body.11:                                       ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !868, metadata !1010), !dbg !1592
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1594
  %5 = load i64, i64* %ob_refcnt13, align 8, !dbg !1594, !tbaa !1023
  %dec14 = add i64 %5, -1, !dbg !1594
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1594, !tbaa !1023
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !1594
  br i1 %cmp15, label %if.else.17, label %if.end.23, !dbg !1596

if.else.17:                                       ; preds = %do.body.11
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1597
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1597, !tbaa !1027
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1597
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1597, !tbaa !1028
  tail call void %7(%struct._object* %4) #2, !dbg !1597
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %do.body.11, %if.end.4
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 3, !dbg !1599
  %8 = load %struct._object*, %struct._object** %step, align 8, !dbg !1599, !tbaa !1042
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !871, metadata !1010), !dbg !1599
  %cmp28 = icmp eq %struct._object* %8, null, !dbg !1601
  br i1 %cmp28, label %if.end.42, label %do.body.30, !dbg !1602

do.body.30:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !873, metadata !1010), !dbg !1603
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1605
  %9 = load i64, i64* %ob_refcnt32, align 8, !dbg !1605, !tbaa !1023
  %dec33 = add i64 %9, -1, !dbg !1605
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1605, !tbaa !1023
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !1605
  br i1 %cmp34, label %if.else.36, label %if.end.42, !dbg !1607

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1608
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1608, !tbaa !1027
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1608
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1608, !tbaa !1028
  tail call void %11(%struct._object* %8) #2, !dbg !1608
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %do.body.30, %if.end.23
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 4, !dbg !1610
  %12 = load %struct._object*, %struct._object** %len, align 8, !dbg !1610, !tbaa !1050
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !876, metadata !1010), !dbg !1610
  %cmp47 = icmp eq %struct._object* %12, null, !dbg !1612
  br i1 %cmp47, label %if.end.61, label %do.body.49, !dbg !1613

do.body.49:                                       ; preds = %if.end.42
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !878, metadata !1010), !dbg !1614
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1616
  %13 = load i64, i64* %ob_refcnt51, align 8, !dbg !1616, !tbaa !1023
  %dec52 = add i64 %13, -1, !dbg !1616
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1616, !tbaa !1023
  %cmp53 = icmp eq i64 %dec52, 0, !dbg !1616
  br i1 %cmp53, label %if.else.55, label %if.end.61, !dbg !1618

if.else.55:                                       ; preds = %do.body.49
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1619
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1619, !tbaa !1027
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1619
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1619, !tbaa !1028
  tail call void %15(%struct._object* %12) #2, !dbg !1619
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.55, %do.body.49, %if.end.42
  %16 = bitcast %struct.longrangeiterobject* %r to i8*, !dbg !1621
  tail call void @PyObject_Free(i8* %16) #2, !dbg !1622
  ret void, !dbg !1623
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_next(%struct.longrangeiterobject* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.longrangeiterobject* %r, i64 0, metadata !885, metadata !1010), !dbg !1624
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !1625
  %0 = load %struct._object*, %struct._object** %index, align 8, !dbg !1625, !tbaa !1014
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 4, !dbg !1627
  %1 = load %struct._object*, %struct._object** %len, align 8, !dbg !1627, !tbaa !1050
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %0, %struct._object* %1, i32 0) #2, !dbg !1628
  %cmp = icmp eq i32 %call, 1, !dbg !1629
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1630

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1631
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !886, metadata !1010), !dbg !1632
  %tobool = icmp eq %struct._object* %call1, null, !dbg !1633
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1635

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %index, align 8, !dbg !1636, !tbaa !1014
  %call5 = tail call %struct._object* @PyNumber_Add(%struct._object* %2, %struct._object* %call1) #2, !dbg !1637
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !888, metadata !1010), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !890, metadata !1010), !dbg !1639
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1641
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1641, !tbaa !1023
  %dec = add i64 %3, -1, !dbg !1641
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1641, !tbaa !1023
  %cmp6 = icmp eq i64 %dec, 0, !dbg !1641
  br i1 %cmp6, label %if.else, label %if.end.8, !dbg !1643

if.else:                                          ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1644
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1644, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1644
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1644, !tbaa !1028
  tail call void %5(%struct._object* %call1) #2, !dbg !1644
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.3, %if.else
  %tobool9 = icmp eq %struct._object* %call5, null, !dbg !1646
  br i1 %tobool9, label %cleanup, label %if.end.11, !dbg !1648

if.end.11:                                        ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %index, align 8, !dbg !1649, !tbaa !1014
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 3, !dbg !1650
  %7 = load %struct._object*, %struct._object** %step, align 8, !dbg !1650, !tbaa !1042
  %call13 = tail call %struct._object* @PyNumber_Multiply(%struct._object* %6, %struct._object* %7) #2, !dbg !1651
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !887, metadata !1010), !dbg !1652
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !1653
  br i1 %tobool14, label %do.body.16, label %if.end.28, !dbg !1654

do.body.16:                                       ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !892, metadata !1010), !dbg !1655
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1657
  %8 = load i64, i64* %ob_refcnt18, align 8, !dbg !1657, !tbaa !1023
  %dec19 = add i64 %8, -1, !dbg !1657
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1657, !tbaa !1023
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !1657
  br i1 %cmp20, label %if.else.22, label %cleanup, !dbg !1659

if.else.22:                                       ; preds = %do.body.16
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1660
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1660, !tbaa !1027
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1660
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1660, !tbaa !1028
  tail call void %10(%struct._object* %call5) #2, !dbg !1660
  br label %cleanup

if.end.28:                                        ; preds = %if.end.11
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 2, !dbg !1662
  %11 = load %struct._object*, %struct._object** %start, align 8, !dbg !1662, !tbaa !1034
  %call29 = tail call %struct._object* @PyNumber_Add(%struct._object* %11, %struct._object* %call13) #2, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !889, metadata !1010), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !896, metadata !1010), !dbg !1665
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 0, !dbg !1667
  %12 = load i64, i64* %ob_refcnt32, align 8, !dbg !1667, !tbaa !1023
  %dec33 = add i64 %12, -1, !dbg !1667
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1667, !tbaa !1023
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !1667
  br i1 %cmp34, label %if.else.36, label %if.end.39, !dbg !1669

if.else.36:                                       ; preds = %if.end.28
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 1, !dbg !1670
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1670, !tbaa !1027
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1670
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1670, !tbaa !1028
  tail call void %14(%struct._object* %call13) #2, !dbg !1670
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.28, %if.else.36
  %tobool42 = icmp eq %struct._object* %call29, null, !dbg !1672
  br i1 %tobool42, label %do.body.59, label %do.body.44, !dbg !1673

do.body.44:                                       ; preds = %if.end.39
  %15 = load %struct._object*, %struct._object** %index, align 8, !dbg !1674, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !898, metadata !1010), !dbg !1674
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1676
  %16 = load i64, i64* %ob_refcnt47, align 8, !dbg !1676, !tbaa !1023
  %dec48 = add i64 %16, -1, !dbg !1676
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1676, !tbaa !1023
  %cmp49 = icmp eq i64 %dec48, 0, !dbg !1676
  br i1 %cmp49, label %if.else.51, label %if.end.54, !dbg !1678

if.else.51:                                       ; preds = %do.body.44
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1679
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !1679, !tbaa !1027
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1679
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1679, !tbaa !1028
  tail call void %18(%struct._object* %15) #2, !dbg !1679
  br label %if.end.54

if.end.54:                                        ; preds = %do.body.44, %if.else.51
  store %struct._object* %call5, %struct._object** %index, align 8, !dbg !1681, !tbaa !1014
  br label %cleanup, !dbg !1682

do.body.59:                                       ; preds = %if.end.39
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !902, metadata !1010), !dbg !1683
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1685
  %19 = load i64, i64* %ob_refcnt61, align 8, !dbg !1685, !tbaa !1023
  %dec62 = add i64 %19, -1, !dbg !1685
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !1685, !tbaa !1023
  %cmp63 = icmp eq i64 %dec62, 0, !dbg !1685
  br i1 %cmp63, label %if.else.65, label %cleanup, !dbg !1687

if.else.65:                                       ; preds = %do.body.59
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1688
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !1688, !tbaa !1027
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1688
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !1688, !tbaa !1028
  tail call void %21(%struct._object* %call5) #2, !dbg !1688
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %do.body.59, %if.else.65, %if.else.22, %do.body.16, %if.end.8, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.end.8 ], [ null, %do.body.16 ], [ null, %if.else.22 ], [ null, %if.else.65 ], [ null, %do.body.59 ], [ %call29, %if.end.54 ]
  ret %struct._object* %retval.0, !dbg !1690
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @range_length(%struct.rangeobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !418, metadata !1010), !dbg !1691
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 4, !dbg !1692
  %0 = load %struct._object*, %struct._object** %length, align 8, !dbg !1692, !tbaa !1050
  %call = tail call i64 @PyLong_AsSsize_t(%struct._object* %0) #2, !dbg !1693
  ret i64 %call, !dbg !1694
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_item(%struct.rangeobject* nocapture readonly %r, i64 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !423, metadata !1010), !dbg !1695
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !424, metadata !1010), !dbg !1696
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %i) #2, !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !426, metadata !1010), !dbg !1698
  %tobool = icmp eq %struct._object* %call, null, !dbg !1699
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1701

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct._object* @compute_range_item(%struct.rangeobject* %r, %struct._object* %call), !dbg !1702
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !425, metadata !1010), !dbg !1703
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !427, metadata !1010), !dbg !1704
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1706
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1706, !tbaa !1023
  %dec = add i64 %0, -1, !dbg !1706
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1706, !tbaa !1023
  %cmp = icmp eq i64 %dec, 0, !dbg !1706
  br i1 %cmp, label %if.else, label %cleanup, !dbg !1708

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1709
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1709, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1709
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1709, !tbaa !1028
  tail call void %2(%struct._object* %call) #2, !dbg !1709
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !1711
}

; Function Attrs: nounwind uwtable
define internal i32 @range_contains(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !473, metadata !1010), !dbg !1712
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !474, metadata !1010), !dbg !1713
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ob, i64 0, i32 1, !dbg !1714
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1714, !tbaa !1027
  %cmp = icmp eq %struct._typeobject* %0, @PyLong_Type, !dbg !1714
  %cmp2 = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !1716
  %or.cond = or i1 %cmp, %cmp2, !dbg !1718
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1718

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @range_contains_long(%struct.rangeobject* %r, %struct._object* %ob), !dbg !1719
  br label %return, !dbg !1720

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 0, !dbg !1721
  %call3 = tail call i64 @_PySequence_IterSearch(%struct._object* %1, %struct._object* %ob, i32 3) #2, !dbg !1722
  %conv = trunc i64 %call3 to i32, !dbg !1723
  br label %return, !dbg !1724

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0, !dbg !1725
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @compute_range_item(%struct.rangeobject* nocapture readonly %r, %struct._object* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !433, metadata !1010), !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !434, metadata !1010), !dbg !1727
  %call = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !438, metadata !1010), !dbg !1729
  %cmp = icmp eq %struct._object* %call, null, !dbg !1730
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1732

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyObject_RichCompareBool(%struct._object* %arg, %struct._object* %call, i32 0) #2, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !435, metadata !1010), !dbg !1734
  switch i32 %call1, label %if.else.25 [
    i32 -1, label %do.body
    i32 1, label %if.then.9
  ], !dbg !1735

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !439, metadata !1010), !dbg !1736
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1738
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !1023
  %dec = add i64 %0, -1, !dbg !1738
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !1023
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1738
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !1740

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1741
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1741, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1741
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1741, !tbaa !1028
  tail call void %2(%struct._object* %call) #2, !dbg !1741
  br label %cleanup

if.then.9:                                        ; preds = %if.end
  %length = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 4, !dbg !1743
  %3 = load %struct._object*, %struct._object** %length, align 8, !dbg !1743, !tbaa !1050
  %call10 = tail call %struct._object* @PyNumber_Add(%struct._object* %3, %struct._object* %arg) #2, !dbg !1744
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !436, metadata !1010), !dbg !1745
  %tobool = icmp eq %struct._object* %call10, null, !dbg !1746
  br i1 %tobool, label %do.body.12, label %if.end.27, !dbg !1747

do.body.12:                                       ; preds = %if.then.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !443, metadata !1010), !dbg !1748
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1750
  %4 = load i64, i64* %ob_refcnt14, align 8, !dbg !1750, !tbaa !1023
  %dec15 = add i64 %4, -1, !dbg !1750
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1750, !tbaa !1023
  %cmp16 = icmp eq i64 %dec15, 0, !dbg !1750
  br i1 %cmp16, label %if.else.18, label %cleanup, !dbg !1752

if.else.18:                                       ; preds = %do.body.12
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1753
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1753, !tbaa !1027
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1753
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1753, !tbaa !1028
  tail call void %6(%struct._object* %call) #2, !dbg !1753
  br label %cleanup

if.else.25:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !436, metadata !1010), !dbg !1745
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 0, !dbg !1755
  %7 = load i64, i64* %ob_refcnt26, align 8, !dbg !1755, !tbaa !1023
  %inc = add i64 %7, 1, !dbg !1755
  store i64 %inc, i64* %ob_refcnt26, align 8, !dbg !1755, !tbaa !1023
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.9, %if.else.25
  %i.0 = phi %struct._object* [ %call10, %if.then.9 ], [ %arg, %if.else.25 ]
  %call28 = tail call i32 @PyObject_RichCompareBool(%struct._object* %i.0, %struct._object* %call, i32 0) #2, !dbg !1757
  tail call void @llvm.dbg.value(metadata i32 %call28, i64 0, metadata !435, metadata !1010), !dbg !1734
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !449, metadata !1010), !dbg !1758
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1760
  %8 = load i64, i64* %ob_refcnt31, align 8, !dbg !1760, !tbaa !1023
  %dec32 = add i64 %8, -1, !dbg !1760
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !1760, !tbaa !1023
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !1760
  br i1 %cmp33, label %if.else.35, label %if.end.38, !dbg !1762

if.else.35:                                       ; preds = %if.end.27
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1763
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !1763, !tbaa !1027
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1763
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !1763, !tbaa !1028
  tail call void %10(%struct._object* %call) #2, !dbg !1763
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.27, %if.else.35
  %cmp41 = icmp eq i32 %call28, 0, !dbg !1765
  br i1 %cmp41, label %if.then.42, label %if.end.45, !dbg !1767

if.then.42:                                       ; preds = %if.end.38
  %length43 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 4, !dbg !1768
  %11 = load %struct._object*, %struct._object** %length43, align 8, !dbg !1768, !tbaa !1050
  %call44 = tail call i32 @PyObject_RichCompareBool(%struct._object* %i.0, %struct._object* %11, i32 5) #2, !dbg !1770
  tail call void @llvm.dbg.value(metadata i32 %call44, i64 0, metadata !435, metadata !1010), !dbg !1734
  br label %if.end.45, !dbg !1771

if.end.45:                                        ; preds = %if.then.42, %if.end.38
  %cmp_result.0 = phi i32 [ %call44, %if.then.42 ], [ %call28, %if.end.38 ]
  switch i32 %cmp_result.0, label %if.end.75 [
    i32 -1, label %do.body.48
    i32 1, label %do.body.63
  ], !dbg !1772

do.body.48:                                       ; preds = %if.end.45
  tail call void @llvm.dbg.value(metadata %struct._object* %i.0, i64 0, metadata !451, metadata !1010), !dbg !1773
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 0, !dbg !1775
  %12 = load i64, i64* %ob_refcnt50, align 8, !dbg !1775, !tbaa !1023
  %dec51 = add i64 %12, -1, !dbg !1775
  store i64 %dec51, i64* %ob_refcnt50, align 8, !dbg !1775, !tbaa !1023
  %cmp52 = icmp eq i64 %dec51, 0, !dbg !1775
  br i1 %cmp52, label %if.else.54, label %cleanup, !dbg !1777

if.else.54:                                       ; preds = %do.body.48
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 1, !dbg !1778
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !1778, !tbaa !1027
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1778
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !1778, !tbaa !1028
  tail call void %14(%struct._object* %i.0) #2, !dbg !1778
  br label %cleanup

do.body.63:                                       ; preds = %if.end.45
  tail call void @llvm.dbg.value(metadata %struct._object* %i.0, i64 0, metadata !455, metadata !1010), !dbg !1780
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 0, !dbg !1782
  %15 = load i64, i64* %ob_refcnt65, align 8, !dbg !1782, !tbaa !1023
  %dec66 = add i64 %15, -1, !dbg !1782
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1782, !tbaa !1023
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !1782
  br i1 %cmp67, label %if.else.69, label %if.end.72, !dbg !1784

if.else.69:                                       ; preds = %do.body.63
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 1, !dbg !1785
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1785, !tbaa !1027
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1785
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1785, !tbaa !1028
  tail call void %17(%struct._object* %i.0) #2, !dbg !1785
  br label %if.end.72

if.end.72:                                        ; preds = %do.body.63, %if.else.69
  %18 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1787, !tbaa !1086
  tail call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !1788
  br label %cleanup, !dbg !1789

if.end.75:                                        ; preds = %if.end.45
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !463, metadata !1010) #2, !dbg !1790
  tail call void @llvm.dbg.value(metadata %struct._object* %i.0, i64 0, metadata !464, metadata !1010) #2, !dbg !1792
  %step.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !1793
  %19 = load %struct._object*, %struct._object** %step.i, align 8, !dbg !1793, !tbaa !1042
  %call.i = tail call %struct._object* @PyNumber_Multiply(%struct._object* %i.0, %struct._object* %19) #2, !dbg !1794
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !465, metadata !1010) #2, !dbg !1795
  %tobool.i = icmp eq %struct._object* %call.i, null, !dbg !1796
  br i1 %tobool.i, label %compute_item.exit, label %if.end.i, !dbg !1798

if.end.i:                                         ; preds = %if.end.75
  %start.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1799
  %20 = load %struct._object*, %struct._object** %start.i, align 8, !dbg !1799, !tbaa !1014
  %call1.i = tail call %struct._object* @PyNumber_Add(%struct._object* %20, %struct._object* %call.i) #2, !dbg !1800
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !466, metadata !1010) #2, !dbg !1801
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !467, metadata !1010) #2, !dbg !1802
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1804
  %21 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1804, !tbaa !1023
  %dec.i = add i64 %21, -1, !dbg !1804
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1804, !tbaa !1023
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !1804
  br i1 %cmp.i, label %if.else.i, label %compute_item.exit, !dbg !1806

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1807
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1807, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1807
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1807, !tbaa !1028
  tail call void %23(%struct._object* %call.i) #2, !dbg !1807
  br label %compute_item.exit, !dbg !1809

compute_item.exit:                                ; preds = %if.end.75, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.75 ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], !dbg !1809
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !437, metadata !1010), !dbg !1810
  tail call void @llvm.dbg.value(metadata %struct._object* %i.0, i64 0, metadata !459, metadata !1010), !dbg !1811
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 0, !dbg !1813
  %24 = load i64, i64* %ob_refcnt79, align 8, !dbg !1813, !tbaa !1023
  %dec80 = add i64 %24, -1, !dbg !1813
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !1813, !tbaa !1023
  %cmp81 = icmp eq i64 %dec80, 0, !dbg !1813
  br i1 %cmp81, label %if.else.83, label %cleanup, !dbg !1815

if.else.83:                                       ; preds = %compute_item.exit
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %i.0, i64 0, i32 1, !dbg !1816
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !1816, !tbaa !1027
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1816
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8, !dbg !1816, !tbaa !1028
  tail call void %26(%struct._object* %i.0) #2, !dbg !1816
  br label %cleanup

cleanup:                                          ; preds = %if.else.83, %compute_item.exit, %if.else.54, %do.body.48, %if.else.18, %do.body.12, %if.else, %do.body, %entry, %if.end.72
  %retval.0 = phi %struct._object* [ null, %if.end.72 ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ null, %do.body.12 ], [ null, %if.else.18 ], [ null, %do.body.48 ], [ null, %if.else.54 ], [ %retval.0.i, %compute_item.exit ], [ %retval.0.i, %if.else.83 ]
  ret %struct._object* %retval.0, !dbg !1818
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @range_contains_long(%struct.rangeobject* nocapture readonly %r, %struct._object* %ob) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !477, metadata !1010), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !478, metadata !1010), !dbg !1820
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !482, metadata !1010), !dbg !1821
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !483, metadata !1010), !dbg !1822
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !484, metadata !1010), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !485, metadata !1010), !dbg !1824
  %call = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1825
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !484, metadata !1010), !dbg !1823
  %cmp = icmp eq %struct._object* %call, null, !dbg !1826
  br i1 %cmp, label %if.end.81, label %if.end, !dbg !1828

if.end:                                           ; preds = %entry
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !1829
  %0 = load %struct._object*, %struct._object** %step, align 8, !dbg !1829, !tbaa !1042
  %call1 = tail call i32 @PyObject_RichCompareBool(%struct._object* %0, %struct._object* %call, i32 4) #2, !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !479, metadata !1010), !dbg !1831
  switch i32 %call1, label %if.else [
    i32 -1, label %do.body.69
    i32 1, label %if.then.8
  ], !dbg !1832

if.then.8:                                        ; preds = %if.end
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1833
  %1 = load %struct._object*, %struct._object** %start, align 8, !dbg !1833, !tbaa !1014
  %call9 = tail call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %ob, i32 1) #2, !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %call9, i64 0, metadata !480, metadata !1010), !dbg !1837
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !1838
  %2 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1838, !tbaa !1034
  %call10 = tail call i32 @PyObject_RichCompareBool(%struct._object* %ob, %struct._object* %2, i32 0) #2, !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !481, metadata !1010), !dbg !1840
  br label %if.end.15, !dbg !1841

if.else:                                          ; preds = %if.end
  %start11 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1842
  %3 = load %struct._object*, %struct._object** %start11, align 8, !dbg !1842, !tbaa !1014
  %call12 = tail call i32 @PyObject_RichCompareBool(%struct._object* %ob, %struct._object* %3, i32 1) #2, !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %call12, i64 0, metadata !480, metadata !1010), !dbg !1837
  %stop13 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !1845
  %4 = load %struct._object*, %struct._object** %stop13, align 8, !dbg !1845, !tbaa !1034
  %call14 = tail call i32 @PyObject_RichCompareBool(%struct._object* %4, %struct._object* %ob, i32 0) #2, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %call14, i64 0, metadata !481, metadata !1010), !dbg !1840
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  %cmp3.0 = phi i32 [ %call10, %if.then.8 ], [ %call14, %if.else ]
  %cmp2.0 = phi i32 [ %call9, %if.then.8 ], [ %call12, %if.else ]
  %cmp16 = icmp eq i32 %cmp2.0, -1, !dbg !1847
  %cmp17 = icmp eq i32 %cmp3.0, -1, !dbg !1849
  %or.cond = or i1 %cmp17, %cmp16, !dbg !1850
  br i1 %or.cond, label %do.body.69, label %if.end.19, !dbg !1850

if.end.19:                                        ; preds = %if.end.15
  %cmp20 = icmp eq i32 %cmp2.0, 0, !dbg !1851
  %cmp22 = icmp eq i32 %cmp3.0, 0, !dbg !1853
  %or.cond84 = or i1 %cmp22, %cmp20, !dbg !1854
  br i1 %or.cond84, label %do.body.69, label %if.end.24, !dbg !1854

if.end.24:                                        ; preds = %if.end.19
  %start25 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !1855
  %5 = load %struct._object*, %struct._object** %start25, align 8, !dbg !1855, !tbaa !1014
  %call26 = tail call %struct._object* @PyNumber_Subtract(%struct._object* %ob, %struct._object* %5) #2, !dbg !1856
  tail call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !482, metadata !1010), !dbg !1821
  %cmp27 = icmp eq %struct._object* %call26, null, !dbg !1857
  br i1 %cmp27, label %do.body.69, label %if.end.29, !dbg !1859

if.end.29:                                        ; preds = %if.end.24
  %6 = load %struct._object*, %struct._object** %step, align 8, !dbg !1860, !tbaa !1042
  %call31 = tail call %struct._object* @PyNumber_Remainder(%struct._object* %call26, %struct._object* %6) #2, !dbg !1861
  tail call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !483, metadata !1010), !dbg !1822
  %cmp32 = icmp eq %struct._object* %call31, null, !dbg !1862
  br i1 %cmp32, label %do.body.38, label %if.end.34, !dbg !1864

if.end.34:                                        ; preds = %if.end.29
  %call35 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call31, %struct._object* %call, i32 2) #2, !dbg !1865
  tail call void @llvm.dbg.value(metadata i32 %call35, i64 0, metadata !485, metadata !1010), !dbg !1824
  br label %do.body.38, !dbg !1866

do.body.38:                                       ; preds = %if.end.29, %if.end.34
  %result.0.ph131 = phi i32 [ %call35, %if.end.34 ], [ -1, %if.end.29 ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 0, !dbg !1867
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1867, !tbaa !1023
  %dec = add i64 %7, -1, !dbg !1867
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1867, !tbaa !1023
  %cmp39 = icmp eq i64 %dec, 0, !dbg !1867
  br i1 %cmp39, label %if.else.41, label %if.end.43, !dbg !1869

if.else.41:                                       ; preds = %do.body.38
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 1, !dbg !1870
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1870, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1870
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1870, !tbaa !1028
  tail call void %9(%struct._object* %call26) #2, !dbg !1870
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %do.body.38
  br i1 %cmp32, label %do.body.69, label %do.body.50, !dbg !1872

do.body.50:                                       ; preds = %if.end.43
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 0, !dbg !1873
  %10 = load i64, i64* %ob_refcnt52, align 8, !dbg !1873, !tbaa !1023
  %dec53 = add i64 %10, -1, !dbg !1873
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1873, !tbaa !1023
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !1873
  br i1 %cmp54, label %if.else.56, label %do.body.69, !dbg !1875

if.else.56:                                       ; preds = %do.body.50
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 1, !dbg !1876
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1876, !tbaa !1027
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1876
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !1876, !tbaa !1028
  tail call void %12(%struct._object* %call31) #2, !dbg !1876
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.43, %do.body.50, %if.else.56, %if.end.24, %if.end.19, %if.end.15, %if.end
  %result.0128138139 = phi i32 [ -1, %if.end ], [ -1, %if.end.15 ], [ 0, %if.end.19 ], [ %result.0.ph131, %if.else.56 ], [ %result.0.ph131, %do.body.50 ], [ %result.0.ph131, %if.end.43 ], [ -1, %if.end.24 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !498, metadata !1010), !dbg !1878
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1880
  %13 = load i64, i64* %ob_refcnt71, align 8, !dbg !1880, !tbaa !1023
  %dec72 = add i64 %13, -1, !dbg !1880
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !1880, !tbaa !1023
  %cmp73 = icmp eq i64 %dec72, 0, !dbg !1880
  br i1 %cmp73, label %if.else.75, label %if.end.81, !dbg !1882

if.else.75:                                       ; preds = %do.body.69
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1883
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !1883, !tbaa !1027
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1883
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !1883, !tbaa !1028
  tail call void %15(%struct._object* %call) #2, !dbg !1883
  br label %if.end.81

if.end.81:                                        ; preds = %entry, %if.else.75, %do.body.69
  %result.0128138140 = phi i32 [ %result.0128138139, %if.else.75 ], [ %result.0128138139, %do.body.69 ], [ -1, %entry ]
  ret i32 %result.0128138140, !dbg !1885
}

declare i64 @_PySequence_IterSearch(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_subscript(%struct.rangeobject* nocapture readonly %self, %struct._object* %item) #0 {
entry:
  %start.i = alloca %struct._object*, align 8
  %stop.i = alloca %struct._object*, align 8
  %step.i = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %self, i64 0, metadata !503, metadata !1010), !dbg !1886
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !504, metadata !1010), !dbg !1887
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %item, i64 0, i32 1, !dbg !1888
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1889, !tbaa !1027
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 10, !dbg !1888
  %1 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1888, !tbaa !1891
  %cmp = icmp eq %struct.PyNumberMethods* %1, null, !dbg !1888
  br i1 %cmp, label %if.end.11, label %land.lhs.true, !dbg !1888

land.lhs.true:                                    ; preds = %entry
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %1, i64 0, i32 33, !dbg !1892
  %2 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !1892, !tbaa !1894
  %cmp3 = icmp eq %struct._object* (%struct._object*)* %2, null, !dbg !1892
  br i1 %cmp3, label %if.end.11, label %if.then, !dbg !1896

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct._object* @PyNumber_Index(%struct._object* %item) #2, !dbg !1897
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !505, metadata !1010), !dbg !1898
  %tobool = icmp eq %struct._object* %call, null, !dbg !1899
  br i1 %tobool, label %return, label %if.end, !dbg !1901

if.end:                                           ; preds = %if.then
  %call5 = tail call fastcc %struct._object* @compute_range_item(%struct.rangeobject* %self, %struct._object* %call), !dbg !1902
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !508, metadata !1010), !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !509, metadata !1010), !dbg !1904
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1906
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1906, !tbaa !1023
  %dec = add i64 %3, -1, !dbg !1906
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1906, !tbaa !1023
  %cmp6 = icmp eq i64 %dec, 0, !dbg !1906
  br i1 %cmp6, label %if.else, label %return, !dbg !1908

if.else:                                          ; preds = %if.end
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1909
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1909, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1909
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1909, !tbaa !1028
  tail call void %5(%struct._object* %call) #2, !dbg !1909
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %entry
  %cmp13 = icmp eq %struct._typeobject* %0, @PySlice_Type, !dbg !1889
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1911

if.then.14:                                       ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %self, i64 0, metadata !513, metadata !1010) #2, !dbg !1912
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !514, metadata !1010) #2, !dbg !1915
  %6 = bitcast %struct._object* %item to %struct.PySliceObject*, !dbg !1916
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %6, i64 0, metadata !515, metadata !1010) #2, !dbg !1917
  %7 = bitcast %struct._object** %start.i to i8*, !dbg !1918
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  store %struct._object* null, %struct._object** %start.i, align 8, !dbg !1919, !tbaa !1086
  %8 = bitcast %struct._object** %stop.i to i8*, !dbg !1918
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  store %struct._object* null, %struct._object** %stop.i, align 8, !dbg !1920, !tbaa !1086
  %9 = bitcast %struct._object** %step.i to i8*, !dbg !1918
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  store %struct._object* null, %struct._object** %step.i, align 8, !dbg !1921, !tbaa !1086
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !520, metadata !1010) #2, !dbg !1922
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !521, metadata !1010) #2, !dbg !1923
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !522, metadata !1010) #2, !dbg !1924
  %length.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %self, i64 0, i32 4, !dbg !1925
  %10 = load %struct._object*, %struct._object** %length.i, align 8, !dbg !1925, !tbaa !1050
  tail call void @llvm.dbg.value(metadata %struct._object** %start.i, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  tail call void @llvm.dbg.value(metadata %struct._object** %stop.i, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct._object** %step.i, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  %call.i = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %6, %struct._object* %10, %struct._object** nonnull %start.i, %struct._object** nonnull %stop.i, %struct._object** nonnull %step.i) #2, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !523, metadata !1010) #2, !dbg !1927
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !1928
  br i1 %cmp.i, label %compute_slice.exit, label %if.end.i, !dbg !1930

if.end.i:                                         ; preds = %if.then.14
  %step1.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %self, i64 0, i32 3, !dbg !1931
  %11 = load %struct._object*, %struct._object** %step1.i, align 8, !dbg !1931, !tbaa !1042
  call void @llvm.dbg.value(metadata %struct._object** %step.i, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  %12 = load %struct._object*, %struct._object** %step.i, align 8, !dbg !1932, !tbaa !1086
  %call2.i = call %struct._object* @PyNumber_Multiply(%struct._object* %11, %struct._object* %12) #2, !dbg !1933
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !522, metadata !1010) #2, !dbg !1924
  %cmp3.i = icmp eq %struct._object* %call2.i, null, !dbg !1934
  br i1 %cmp3.i, label %do.body.66.i, label %do.body.i, !dbg !1936

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %struct._object** %step.i, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  %13 = load %struct._object*, %struct._object** %step.i, align 8, !dbg !1937, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !524, metadata !1010) #2, !dbg !1937
  %cmp6.i = icmp eq %struct._object* %13, null, !dbg !1939
  br i1 %cmp6.i, label %if.end.12.i, label %if.then.7.i, !dbg !1940

if.then.7.i:                                      ; preds = %do.body.i
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  store %struct._object* null, %struct._object** %step.i, align 8, !dbg !1941, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !526, metadata !1010) #2, !dbg !1943
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1945
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1945, !tbaa !1023
  %dec.i = add i64 %14, -1, !dbg !1945
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1945, !tbaa !1023
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !1945
  br i1 %cmp9.i, label %if.else.i, label %if.end.12.i, !dbg !1947

if.else.i:                                        ; preds = %if.then.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !1948
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1948, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1948
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1948, !tbaa !1028
  call void %16(%struct._object* %13) #2, !dbg !1948
  br label %if.end.12.i, !dbg !1950

if.end.12.i:                                      ; preds = %if.else.i, %if.then.7.i, %do.body.i
  call void @llvm.dbg.value(metadata %struct._object** %start.i, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  %17 = load %struct._object*, %struct._object** %start.i, align 8, !dbg !1951, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct.rangeobject* %self, i64 0, metadata !463, metadata !1010) #2, !dbg !1952
  call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !464, metadata !1010) #2, !dbg !1954
  %18 = load %struct._object*, %struct._object** %step1.i, align 8, !dbg !1955, !tbaa !1042
  %call.i.i = call %struct._object* @PyNumber_Multiply(%struct._object* %17, %struct._object* %18) #2, !dbg !1956
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !465, metadata !1010) #2, !dbg !1957
  %tobool.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1958
  br i1 %tobool.i.i, label %do.body.66.i, label %if.end.i.i, !dbg !1959

if.end.i.i:                                       ; preds = %if.end.12.i
  %start.i.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %self, i64 0, i32 1, !dbg !1960
  %19 = load %struct._object*, %struct._object** %start.i.i, align 8, !dbg !1960, !tbaa !1014
  %call1.i.i = call %struct._object* @PyNumber_Add(%struct._object* %19, %struct._object* %call.i.i) #2, !dbg !1961
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !466, metadata !1010) #2, !dbg !1962
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !467, metadata !1010) #2, !dbg !1963
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1964
  %20 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1964, !tbaa !1023
  %dec.i.i = add i64 %20, -1, !dbg !1964
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1964, !tbaa !1023
  %cmp.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1964
  br i1 %cmp.i.i, label %if.else.i.i, label %compute_item.exit.i, !dbg !1965

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1966
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1966, !tbaa !1027
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1966
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1966, !tbaa !1028
  call void %22(%struct._object* %call.i.i) #2, !dbg !1966
  br label %compute_item.exit.i, !dbg !1967

compute_item.exit.i:                              ; preds = %if.else.i.i, %if.end.i.i
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.i, i64 0, metadata !520, metadata !1010) #2, !dbg !1922
  %cmp16.i = icmp eq %struct._object* %call1.i.i, null, !dbg !1968
  br i1 %cmp16.i, label %do.body.66.i, label %do.body.19.i, !dbg !1970

do.body.19.i:                                     ; preds = %compute_item.exit.i
  call void @llvm.dbg.value(metadata %struct._object** %start.i, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  %23 = load %struct._object*, %struct._object** %start.i, align 8, !dbg !1971, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !530, metadata !1010) #2, !dbg !1971
  %cmp21.i = icmp eq %struct._object* %23, null, !dbg !1973
  br i1 %cmp21.i, label %if.end.35.i, label %if.then.22.i, !dbg !1974

if.then.22.i:                                     ; preds = %do.body.19.i
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  store %struct._object* null, %struct._object** %start.i, align 8, !dbg !1975, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !532, metadata !1010) #2, !dbg !1977
  %ob_refcnt25.i = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1979
  %24 = load i64, i64* %ob_refcnt25.i, align 8, !dbg !1979, !tbaa !1023
  %dec26.i = add i64 %24, -1, !dbg !1979
  store i64 %dec26.i, i64* %ob_refcnt25.i, align 8, !dbg !1979, !tbaa !1023
  %cmp27.i = icmp eq i64 %dec26.i, 0, !dbg !1979
  br i1 %cmp27.i, label %if.else.29.i, label %if.end.35.i, !dbg !1981

if.else.29.i:                                     ; preds = %if.then.22.i
  %ob_type30.i = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1982
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type30.i, align 8, !dbg !1982, !tbaa !1027
  %tp_dealloc31.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1982
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31.i, align 8, !dbg !1982, !tbaa !1028
  call void %26(%struct._object* %23) #2, !dbg !1982
  br label %if.end.35.i, !dbg !1950

if.end.35.i:                                      ; preds = %if.else.29.i, %if.then.22.i, %do.body.19.i
  call void @llvm.dbg.value(metadata %struct._object** %stop.i, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  %27 = load %struct._object*, %struct._object** %stop.i, align 8, !dbg !1984, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct.rangeobject* %self, i64 0, metadata !463, metadata !1010) #2, !dbg !1985
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !464, metadata !1010) #2, !dbg !1987
  %28 = load %struct._object*, %struct._object** %step1.i, align 8, !dbg !1988, !tbaa !1042
  %call.i.250.i = call %struct._object* @PyNumber_Multiply(%struct._object* %27, %struct._object* %28) #2, !dbg !1989
  call void @llvm.dbg.value(metadata %struct._object* %call.i.250.i, i64 0, metadata !465, metadata !1010) #2, !dbg !1990
  %tobool.i.251.i = icmp eq %struct._object* %call.i.250.i, null, !dbg !1991
  br i1 %tobool.i.251.i, label %do.body.66.i, label %if.end.i.257.i, !dbg !1992

if.end.i.257.i:                                   ; preds = %if.end.35.i
  %29 = load %struct._object*, %struct._object** %start.i.i, align 8, !dbg !1993, !tbaa !1014
  %call1.i.253.i = call %struct._object* @PyNumber_Add(%struct._object* %29, %struct._object* %call.i.250.i) #2, !dbg !1994
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.253.i, i64 0, metadata !466, metadata !1010) #2, !dbg !1995
  call void @llvm.dbg.value(metadata %struct._object* %call.i.250.i, i64 0, metadata !467, metadata !1010) #2, !dbg !1996
  %ob_refcnt.i.254.i = getelementptr inbounds %struct._object, %struct._object* %call.i.250.i, i64 0, i32 0, !dbg !1997
  %30 = load i64, i64* %ob_refcnt.i.254.i, align 8, !dbg !1997, !tbaa !1023
  %dec.i.255.i = add i64 %30, -1, !dbg !1997
  store i64 %dec.i.255.i, i64* %ob_refcnt.i.254.i, align 8, !dbg !1997, !tbaa !1023
  %cmp.i.256.i = icmp eq i64 %dec.i.255.i, 0, !dbg !1997
  br i1 %cmp.i.256.i, label %if.else.i.260.i, label %compute_item.exit262.i, !dbg !1998

if.else.i.260.i:                                  ; preds = %if.end.i.257.i
  %ob_type.i.258.i = getelementptr inbounds %struct._object, %struct._object* %call.i.250.i, i64 0, i32 1, !dbg !1999
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.258.i, align 8, !dbg !1999, !tbaa !1027
  %tp_dealloc.i.259.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1999
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.259.i, align 8, !dbg !1999, !tbaa !1028
  call void %32(%struct._object* %call.i.250.i) #2, !dbg !1999
  br label %compute_item.exit262.i, !dbg !2000

compute_item.exit262.i:                           ; preds = %if.else.i.260.i, %if.end.i.257.i
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.253.i, i64 0, metadata !521, metadata !1010) #2, !dbg !1923
  %cmp39.i = icmp eq %struct._object* %call1.i.253.i, null, !dbg !2001
  br i1 %cmp39.i, label %do.body.66.i, label %do.body.42.i, !dbg !2003

do.body.42.i:                                     ; preds = %compute_item.exit262.i
  call void @llvm.dbg.value(metadata %struct._object** %stop.i, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  %33 = load %struct._object*, %struct._object** %stop.i, align 8, !dbg !2004, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !536, metadata !1010) #2, !dbg !2004
  %cmp44.i = icmp eq %struct._object* %33, null, !dbg !2006
  br i1 %cmp44.i, label %if.end.58.i, label %if.then.45.i, !dbg !2007

if.then.45.i:                                     ; preds = %do.body.42.i
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  store %struct._object* null, %struct._object** %stop.i, align 8, !dbg !2008, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !538, metadata !1010) #2, !dbg !2010
  %ob_refcnt48.i = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 0, !dbg !2012
  %34 = load i64, i64* %ob_refcnt48.i, align 8, !dbg !2012, !tbaa !1023
  %dec49.i = add i64 %34, -1, !dbg !2012
  store i64 %dec49.i, i64* %ob_refcnt48.i, align 8, !dbg !2012, !tbaa !1023
  %cmp50.i = icmp eq i64 %dec49.i, 0, !dbg !2012
  br i1 %cmp50.i, label %if.else.52.i, label %if.end.58.i, !dbg !2014

if.else.52.i:                                     ; preds = %if.then.45.i
  %ob_type53.i = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 1, !dbg !2015
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type53.i, align 8, !dbg !2015, !tbaa !1027
  %tp_dealloc54.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !2015
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54.i, align 8, !dbg !2015, !tbaa !1028
  call void %36(%struct._object* %33) #2, !dbg !2015
  br label %if.end.58.i, !dbg !1950

if.end.58.i:                                      ; preds = %if.else.52.i, %if.then.45.i, %do.body.42.i
  %ob_type61.i = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %self, i64 0, i32 0, i32 1, !dbg !2017
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type61.i, align 8, !dbg !2017, !tbaa !1027
  %call62.i = call fastcc %struct.rangeobject* @make_range_object(%struct._typeobject* %37, %struct._object* %call1.i.i, %struct._object* %call1.i.253.i, %struct._object* %call2.i) #2, !dbg !2018
  call void @llvm.dbg.value(metadata %struct.rangeobject* %call62.i, i64 0, metadata !516, metadata !1010) #2, !dbg !2019
  %cmp63.i = icmp eq %struct.rangeobject* %call62.i, null, !dbg !2020
  br i1 %cmp63.i, label %do.body.66.i, label %if.then.64.i, !dbg !2022

if.then.64.i:                                     ; preds = %if.end.58.i
  %38 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %call62.i, i64 0, i32 0, !dbg !2023
  br label %compute_slice.exit, !dbg !2025

do.body.66.i:                                     ; preds = %if.end.58.i, %compute_item.exit262.i, %if.end.35.i, %compute_item.exit.i, %if.end.12.i, %if.end.i
  %substop.0.i = phi %struct._object* [ null, %if.end.i ], [ null, %compute_item.exit.i ], [ null, %compute_item.exit262.i ], [ %call1.i.253.i, %if.end.58.i ], [ null, %if.end.12.i ], [ null, %if.end.35.i ], !dbg !1950
  %substart.0.i = phi %struct._object* [ null, %if.end.i ], [ null, %compute_item.exit.i ], [ %call1.i.i, %compute_item.exit262.i ], [ %call1.i.i, %if.end.58.i ], [ null, %if.end.12.i ], [ %call1.i.i, %if.end.35.i ], !dbg !1950
  call void @llvm.dbg.value(metadata %struct._object** %start.i, i64 0, metadata !517, metadata !1010) #2, !dbg !1919
  %39 = load %struct._object*, %struct._object** %start.i, align 8, !dbg !2026, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !542, metadata !1010) #2, !dbg !2026
  %cmp67.i = icmp eq %struct._object* %39, null, !dbg !2028
  br i1 %cmp67.i, label %if.end.81.i, label %do.body.69.i, !dbg !2029

do.body.69.i:                                     ; preds = %do.body.66.i
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !544, metadata !1010) #2, !dbg !2030
  %ob_refcnt71.i = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !2032
  %40 = load i64, i64* %ob_refcnt71.i, align 8, !dbg !2032, !tbaa !1023
  %dec72.i = add i64 %40, -1, !dbg !2032
  store i64 %dec72.i, i64* %ob_refcnt71.i, align 8, !dbg !2032, !tbaa !1023
  %cmp73.i = icmp eq i64 %dec72.i, 0, !dbg !2032
  br i1 %cmp73.i, label %if.else.75.i, label %if.end.81.i, !dbg !2034

if.else.75.i:                                     ; preds = %do.body.69.i
  %ob_type76.i = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !2035
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type76.i, align 8, !dbg !2035, !tbaa !1027
  %tp_dealloc77.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !2035
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77.i, align 8, !dbg !2035, !tbaa !1028
  call void %42(%struct._object* %39) #2, !dbg !2035
  br label %if.end.81.i, !dbg !1950

if.end.81.i:                                      ; preds = %if.else.75.i, %do.body.69.i, %do.body.66.i
  call void @llvm.dbg.value(metadata %struct._object** %stop.i, i64 0, metadata !518, metadata !1010) #2, !dbg !1920
  %43 = load %struct._object*, %struct._object** %stop.i, align 8, !dbg !2037, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !547, metadata !1010) #2, !dbg !2037
  %cmp86.i = icmp eq %struct._object* %43, null, !dbg !2039
  br i1 %cmp86.i, label %if.end.100.i, label %do.body.88.i, !dbg !2040

do.body.88.i:                                     ; preds = %if.end.81.i
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !549, metadata !1010) #2, !dbg !2041
  %ob_refcnt90.i = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 0, !dbg !2043
  %44 = load i64, i64* %ob_refcnt90.i, align 8, !dbg !2043, !tbaa !1023
  %dec91.i = add i64 %44, -1, !dbg !2043
  store i64 %dec91.i, i64* %ob_refcnt90.i, align 8, !dbg !2043, !tbaa !1023
  %cmp92.i = icmp eq i64 %dec91.i, 0, !dbg !2043
  br i1 %cmp92.i, label %if.else.94.i, label %if.end.100.i, !dbg !2045

if.else.94.i:                                     ; preds = %do.body.88.i
  %ob_type95.i = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 1, !dbg !2046
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type95.i, align 8, !dbg !2046, !tbaa !1027
  %tp_dealloc96.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !2046
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96.i, align 8, !dbg !2046, !tbaa !1028
  call void %46(%struct._object* %43) #2, !dbg !2046
  br label %if.end.100.i, !dbg !1950

if.end.100.i:                                     ; preds = %if.else.94.i, %do.body.88.i, %if.end.81.i
  call void @llvm.dbg.value(metadata %struct._object** %step.i, i64 0, metadata !519, metadata !1010) #2, !dbg !1921
  %47 = load %struct._object*, %struct._object** %step.i, align 8, !dbg !2048, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !552, metadata !1010) #2, !dbg !2048
  %cmp105.i = icmp eq %struct._object* %47, null, !dbg !2050
  br i1 %cmp105.i, label %if.end.119.i, label %do.body.107.i, !dbg !2051

do.body.107.i:                                    ; preds = %if.end.100.i
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !554, metadata !1010) #2, !dbg !2052
  %ob_refcnt109.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !2054
  %48 = load i64, i64* %ob_refcnt109.i, align 8, !dbg !2054, !tbaa !1023
  %dec110.i = add i64 %48, -1, !dbg !2054
  store i64 %dec110.i, i64* %ob_refcnt109.i, align 8, !dbg !2054, !tbaa !1023
  %cmp111.i = icmp eq i64 %dec110.i, 0, !dbg !2054
  br i1 %cmp111.i, label %if.else.113.i, label %if.end.119.i, !dbg !2056

if.else.113.i:                                    ; preds = %do.body.107.i
  %ob_type114.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 1, !dbg !2057
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type114.i, align 8, !dbg !2057, !tbaa !1027
  %tp_dealloc115.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !2057
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115.i, align 8, !dbg !2057, !tbaa !1028
  call void %50(%struct._object* %47) #2, !dbg !2057
  br label %if.end.119.i, !dbg !1950

if.end.119.i:                                     ; preds = %if.else.113.i, %do.body.107.i, %if.end.100.i
  call void @llvm.dbg.value(metadata %struct._object* %substart.0.i, i64 0, metadata !557, metadata !1010) #2, !dbg !2059
  %cmp124.i = icmp eq %struct._object* %substart.0.i, null, !dbg !2061
  br i1 %cmp124.i, label %if.end.138.i, label %do.body.126.i, !dbg !2062

do.body.126.i:                                    ; preds = %if.end.119.i
  call void @llvm.dbg.value(metadata %struct._object* %substart.0.i, i64 0, metadata !559, metadata !1010) #2, !dbg !2063
  %ob_refcnt128.i = getelementptr inbounds %struct._object, %struct._object* %substart.0.i, i64 0, i32 0, !dbg !2065
  %51 = load i64, i64* %ob_refcnt128.i, align 8, !dbg !2065, !tbaa !1023
  %dec129.i = add i64 %51, -1, !dbg !2065
  store i64 %dec129.i, i64* %ob_refcnt128.i, align 8, !dbg !2065, !tbaa !1023
  %cmp130.i = icmp eq i64 %dec129.i, 0, !dbg !2065
  br i1 %cmp130.i, label %if.else.132.i, label %if.end.138.i, !dbg !2067

if.else.132.i:                                    ; preds = %do.body.126.i
  %ob_type133.i = getelementptr inbounds %struct._object, %struct._object* %substart.0.i, i64 0, i32 1, !dbg !2068
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type133.i, align 8, !dbg !2068, !tbaa !1027
  %tp_dealloc134.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i64 0, i32 4, !dbg !2068
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134.i, align 8, !dbg !2068, !tbaa !1028
  call void %53(%struct._object* %substart.0.i) #2, !dbg !2068
  br label %if.end.138.i, !dbg !1950

if.end.138.i:                                     ; preds = %if.else.132.i, %do.body.126.i, %if.end.119.i
  call void @llvm.dbg.value(metadata %struct._object* %substop.0.i, i64 0, metadata !562, metadata !1010) #2, !dbg !2070
  %cmp143.i = icmp eq %struct._object* %substop.0.i, null, !dbg !2072
  br i1 %cmp143.i, label %if.end.157.i, label %do.body.145.i, !dbg !2073

do.body.145.i:                                    ; preds = %if.end.138.i
  call void @llvm.dbg.value(metadata %struct._object* %substop.0.i, i64 0, metadata !564, metadata !1010) #2, !dbg !2074
  %ob_refcnt147.i = getelementptr inbounds %struct._object, %struct._object* %substop.0.i, i64 0, i32 0, !dbg !2076
  %54 = load i64, i64* %ob_refcnt147.i, align 8, !dbg !2076, !tbaa !1023
  %dec148.i = add i64 %54, -1, !dbg !2076
  store i64 %dec148.i, i64* %ob_refcnt147.i, align 8, !dbg !2076, !tbaa !1023
  %cmp149.i = icmp eq i64 %dec148.i, 0, !dbg !2076
  br i1 %cmp149.i, label %if.else.151.i, label %if.end.157.i, !dbg !2078

if.else.151.i:                                    ; preds = %do.body.145.i
  %ob_type152.i = getelementptr inbounds %struct._object, %struct._object* %substop.0.i, i64 0, i32 1, !dbg !2079
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type152.i, align 8, !dbg !2079, !tbaa !1027
  %tp_dealloc153.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i64 0, i32 4, !dbg !2079
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153.i, align 8, !dbg !2079, !tbaa !1028
  call void %56(%struct._object* %substop.0.i) #2, !dbg !2079
  br label %if.end.157.i, !dbg !1950

if.end.157.i:                                     ; preds = %if.else.151.i, %do.body.145.i, %if.end.138.i
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !567, metadata !1010) #2, !dbg !2081
  br i1 %cmp3.i, label %compute_slice.exit, label %do.body.164.i, !dbg !2083

do.body.164.i:                                    ; preds = %if.end.157.i
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !569, metadata !1010) #2, !dbg !2084
  %ob_refcnt166.i = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 0, !dbg !2086
  %57 = load i64, i64* %ob_refcnt166.i, align 8, !dbg !2086, !tbaa !1023
  %dec167.i = add i64 %57, -1, !dbg !2086
  store i64 %dec167.i, i64* %ob_refcnt166.i, align 8, !dbg !2086, !tbaa !1023
  %cmp168.i = icmp eq i64 %dec167.i, 0, !dbg !2086
  br i1 %cmp168.i, label %if.else.170.i, label %compute_slice.exit, !dbg !2088

if.else.170.i:                                    ; preds = %do.body.164.i
  %ob_type171.i = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 1, !dbg !2089
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type171.i, align 8, !dbg !2089, !tbaa !1027
  %tp_dealloc172.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i64 0, i32 4, !dbg !2089
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172.i, align 8, !dbg !2089, !tbaa !1028
  call void %59(%struct._object* %call2.i) #2, !dbg !2089
  br label %compute_slice.exit, !dbg !1950

compute_slice.exit:                               ; preds = %if.then.14, %if.then.64.i, %if.end.157.i, %do.body.164.i, %if.else.170.i
  %retval.0.i = phi %struct._object* [ %38, %if.then.64.i ], [ null, %if.then.14 ], [ null, %if.else.170.i ], [ null, %do.body.164.i ], [ null, %if.end.157.i ], !dbg !1950
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2091
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !2091
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !2091
  br label %return, !dbg !2092

if.end.16:                                        ; preds = %if.end.11
  %60 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2093, !tbaa !1086
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !2094
  %61 = load i8*, i8** %tp_name, align 8, !dbg !2094, !tbaa !2095
  %call18 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %61) #2, !dbg !2096
  br label %return, !dbg !2097

return:                                           ; preds = %if.then, %if.end, %if.else, %if.end.16, %compute_slice.exit
  %retval.1 = phi %struct._object* [ %retval.0.i, %compute_slice.exit ], [ null, %if.end.16 ], [ null, %if.then ], [ %call5, %if.end ], [ %call5, %if.else ]
  ret %struct._object* %retval.1, !dbg !2098
}

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PySlice_GetLongIndices(%struct.PySliceObject*, %struct._object*, %struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rangeobject* @make_range_object(%struct._typeobject* %type, %struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !578, metadata !1010), !dbg !2099
  tail call void @llvm.dbg.value(metadata %struct._object* %start, i64 0, metadata !579, metadata !1010), !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct._object* %stop, i64 0, metadata !580, metadata !1010), !dbg !2101
  tail call void @llvm.dbg.value(metadata %struct._object* %step, i64 0, metadata !581, metadata !1010), !dbg !2102
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* null, i64 0, metadata !582, metadata !1010), !dbg !2103
  tail call void @llvm.dbg.value(metadata %struct._object* %start, i64 0, metadata !590, metadata !1010) #2, !dbg !2104
  tail call void @llvm.dbg.value(metadata %struct._object* %stop, i64 0, metadata !591, metadata !1010) #2, !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct._object* %step, i64 0, metadata !592, metadata !1010) #2, !dbg !2107
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !596, metadata !1010) #2, !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !597, metadata !1010) #2, !dbg !2109
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !598, metadata !1010) #2, !dbg !2110
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !599, metadata !1010) #2, !dbg !2111
  %call.i = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2112
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !601, metadata !1010) #2, !dbg !2113
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2114
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2116

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %step, %struct._object* %call.i, i32 4) #2, !dbg !2117
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !593, metadata !1010) #2, !dbg !2118
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !602, metadata !1010) #2, !dbg !2119
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2121
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2121, !tbaa !1023
  %dec.i = add i64 %0, -1, !dbg !2121
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2121, !tbaa !1023
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2121
  br i1 %cmp2.i, label %if.else.i, label %if.end.4.i, !dbg !2123

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2124
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2124, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2124
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2124, !tbaa !1028
  tail call void %2(%struct._object* %call.i) #2, !dbg !2124
  br label %if.end.4.i, !dbg !2126

if.end.4.i:                                       ; preds = %if.else.i, %if.end.i
  switch i32 %call1.i, label %if.else.11.i [
    i32 -1, label %cleanup
    i32 1, label %if.then.9.i
  ], !dbg !2127

if.then.9.i:                                      ; preds = %if.end.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %start, i64 0, metadata !594, metadata !1010) #2, !dbg !2128
  tail call void @llvm.dbg.value(metadata %struct._object* %stop, i64 0, metadata !595, metadata !1010) #2, !dbg !2129
  %ob_refcnt10.i = getelementptr inbounds %struct._object, %struct._object* %step, i64 0, i32 0, !dbg !2130
  %3 = load i64, i64* %ob_refcnt10.i, align 8, !dbg !2130, !tbaa !1023
  %inc.i = add i64 %3, 1, !dbg !2130
  store i64 %inc.i, i64* %ob_refcnt10.i, align 8, !dbg !2130, !tbaa !1023
  br label %if.end.15.i, !dbg !2133

if.else.11.i:                                     ; preds = %if.end.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %stop, i64 0, metadata !594, metadata !1010) #2, !dbg !2128
  tail call void @llvm.dbg.value(metadata %struct._object* %start, i64 0, metadata !595, metadata !1010) #2, !dbg !2129
  %call12.i = tail call %struct._object* @PyNumber_Negative(%struct._object* %step) #2, !dbg !2134
  tail call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !592, metadata !1010) #2, !dbg !2107
  %tobool.i = icmp eq %struct._object* %call12.i, null, !dbg !2136
  br i1 %tobool.i, label %cleanup, label %if.end.15.i, !dbg !2138

if.end.15.i:                                      ; preds = %if.else.11.i, %if.then.9.i
  %hi.0.i = phi %struct._object* [ %stop, %if.then.9.i ], [ %start, %if.else.11.i ], !dbg !2126
  %lo.0.i = phi %struct._object* [ %start, %if.then.9.i ], [ %stop, %if.else.11.i ], !dbg !2126
  %step.addr.0.i = phi %struct._object* [ %step, %if.then.9.i ], [ %call12.i, %if.else.11.i ], !dbg !2126
  %call16.i = tail call i32 @PyObject_RichCompareBool(%struct._object* %lo.0.i, %struct._object* %hi.0.i, i32 5) #2, !dbg !2139
  %cmp17.i = icmp eq i32 %call16.i, 1, !dbg !2140
  br i1 %cmp17.i, label %do.body.22.i, label %if.end.38.i, !dbg !2141

do.body.22.i:                                     ; preds = %if.end.15.i
  tail call void @llvm.dbg.value(metadata %struct._object* %step.addr.0.i, i64 0, metadata !604, metadata !1010) #2, !dbg !2142
  tail call void @llvm.dbg.value(metadata %struct._object* %step.addr.0.i, i64 0, metadata !608, metadata !1010) #2, !dbg !2144
  %ob_refcnt24.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 0, !dbg !2146
  %4 = load i64, i64* %ob_refcnt24.i, align 8, !dbg !2146, !tbaa !1023
  %dec25.i = add i64 %4, -1, !dbg !2146
  store i64 %dec25.i, i64* %ob_refcnt24.i, align 8, !dbg !2146, !tbaa !1023
  %cmp26.i = icmp eq i64 %dec25.i, 0, !dbg !2146
  br i1 %cmp26.i, label %if.else.28.i, label %compute_range_length.exit, !dbg !2148

if.else.28.i:                                     ; preds = %do.body.22.i
  %ob_type29.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 1, !dbg !2149
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type29.i, align 8, !dbg !2149, !tbaa !1027
  %tp_dealloc30.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2149
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30.i, align 8, !dbg !2149, !tbaa !1028
  tail call void %6(%struct._object* %step.addr.0.i) #2, !dbg !2149
  br label %compute_range_length.exit, !dbg !2126

if.end.38.i:                                      ; preds = %if.end.15.i
  %call39.i = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !2151
  tail call void @llvm.dbg.value(metadata %struct._object* %call39.i, i64 0, metadata !597, metadata !1010) #2, !dbg !2109
  %cmp40.i = icmp eq %struct._object* %call39.i, null, !dbg !2153
  br i1 %cmp40.i, label %do.body.161.i, label %if.end.42.i, !dbg !2154

if.end.42.i:                                      ; preds = %if.end.38.i
  %call43.i = tail call %struct._object* @PyNumber_Subtract(%struct._object* %hi.0.i, %struct._object* %lo.0.i) #2, !dbg !2155
  tail call void @llvm.dbg.value(metadata %struct._object* %call43.i, i64 0, metadata !598, metadata !1010) #2, !dbg !2110
  %cmp44.i = icmp eq %struct._object* %call43.i, null, !dbg !2157
  br i1 %cmp44.i, label %do.body.161.i, label %if.end.46.i, !dbg !2158

if.end.46.i:                                      ; preds = %if.end.42.i
  %call47.i = tail call %struct._object* @PyNumber_Subtract(%struct._object* %call43.i, %struct._object* %call39.i) #2, !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct._object* %call47.i, i64 0, metadata !596, metadata !1010) #2, !dbg !2108
  %cmp48.i = icmp eq %struct._object* %call47.i, null, !dbg !2161
  br i1 %cmp48.i, label %do.body.161.i, label %if.end.50.i, !dbg !2162

if.end.50.i:                                      ; preds = %if.end.46.i
  %call51.i = tail call %struct._object* @PyNumber_FloorDivide(%struct._object* %call47.i, %struct._object* %step.addr.0.i) #2, !dbg !2163
  tail call void @llvm.dbg.value(metadata %struct._object* %call51.i, i64 0, metadata !599, metadata !1010) #2, !dbg !2111
  %cmp52.i = icmp eq %struct._object* %call51.i, null, !dbg !2165
  br i1 %cmp52.i, label %do.body.142.i, label %if.end.54.i, !dbg !2166

if.end.54.i:                                      ; preds = %if.end.50.i
  %call55.i = tail call %struct._object* @PyNumber_Add(%struct._object* %call51.i, %struct._object* %call39.i) #2, !dbg !2167
  tail call void @llvm.dbg.value(metadata %struct._object* %call55.i, i64 0, metadata !600, metadata !1010) #2, !dbg !2169
  %cmp56.i = icmp eq %struct._object* %call55.i, null, !dbg !2170
  %ob_refcnt125.i = getelementptr inbounds %struct._object, %struct._object* %call51.i, i64 0, i32 0, !dbg !2171
  %7 = load i64, i64* %ob_refcnt125.i, align 8, !dbg !2171, !tbaa !1023
  %dec126.i = add i64 %7, -1, !dbg !2171
  store i64 %dec126.i, i64* %ob_refcnt125.i, align 8, !dbg !2171, !tbaa !1023
  %cmp127.i = icmp eq i64 %dec126.i, 0, !dbg !2171
  br i1 %cmp56.i, label %do.body.123.i, label %do.body.59.i, !dbg !2173

do.body.59.i:                                     ; preds = %if.end.54.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call51.i, i64 0, metadata !611, metadata !1010) #2, !dbg !2174
  br i1 %cmp127.i, label %if.else.65.i, label %if.end.68.i, !dbg !2176

if.else.65.i:                                     ; preds = %do.body.59.i
  %ob_type66.i = getelementptr inbounds %struct._object, %struct._object* %call51.i, i64 0, i32 1, !dbg !2177
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type66.i, align 8, !dbg !2177, !tbaa !1027
  %tp_dealloc67.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2177
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67.i, align 8, !dbg !2177, !tbaa !1028
  tail call void %9(%struct._object* %call51.i) #2, !dbg !2177
  br label %if.end.68.i, !dbg !2126

if.end.68.i:                                      ; preds = %if.else.65.i, %do.body.59.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call47.i, i64 0, metadata !613, metadata !1010) #2, !dbg !2180
  %ob_refcnt73.i = getelementptr inbounds %struct._object, %struct._object* %call47.i, i64 0, i32 0, !dbg !2182
  %10 = load i64, i64* %ob_refcnt73.i, align 8, !dbg !2182, !tbaa !1023
  %dec74.i = add i64 %10, -1, !dbg !2182
  store i64 %dec74.i, i64* %ob_refcnt73.i, align 8, !dbg !2182, !tbaa !1023
  %cmp75.i = icmp eq i64 %dec74.i, 0, !dbg !2182
  br i1 %cmp75.i, label %if.else.77.i, label %if.end.80.i, !dbg !2184

if.else.77.i:                                     ; preds = %if.end.68.i
  %ob_type78.i = getelementptr inbounds %struct._object, %struct._object* %call47.i, i64 0, i32 1, !dbg !2185
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type78.i, align 8, !dbg !2185, !tbaa !1027
  %tp_dealloc79.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2185
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79.i, align 8, !dbg !2185, !tbaa !1028
  tail call void %12(%struct._object* %call47.i) #2, !dbg !2185
  br label %if.end.80.i, !dbg !2126

if.end.80.i:                                      ; preds = %if.else.77.i, %if.end.68.i
  tail call void @llvm.dbg.value(metadata %struct._object* %step.addr.0.i, i64 0, metadata !615, metadata !1010) #2, !dbg !2187
  %ob_refcnt85.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 0, !dbg !2189
  %13 = load i64, i64* %ob_refcnt85.i, align 8, !dbg !2189, !tbaa !1023
  %dec86.i = add i64 %13, -1, !dbg !2189
  store i64 %dec86.i, i64* %ob_refcnt85.i, align 8, !dbg !2189, !tbaa !1023
  %cmp87.i = icmp eq i64 %dec86.i, 0, !dbg !2189
  br i1 %cmp87.i, label %if.else.89.i, label %if.end.92.i, !dbg !2191

if.else.89.i:                                     ; preds = %if.end.80.i
  %ob_type90.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 1, !dbg !2192
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type90.i, align 8, !dbg !2192, !tbaa !1027
  %tp_dealloc91.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2192
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91.i, align 8, !dbg !2192, !tbaa !1028
  tail call void %15(%struct._object* %step.addr.0.i) #2, !dbg !2192
  br label %if.end.92.i, !dbg !2126

if.end.92.i:                                      ; preds = %if.else.89.i, %if.end.80.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call43.i, i64 0, metadata !617, metadata !1010) #2, !dbg !2194
  %ob_refcnt97.i = getelementptr inbounds %struct._object, %struct._object* %call43.i, i64 0, i32 0, !dbg !2196
  %16 = load i64, i64* %ob_refcnt97.i, align 8, !dbg !2196, !tbaa !1023
  %dec98.i = add i64 %16, -1, !dbg !2196
  store i64 %dec98.i, i64* %ob_refcnt97.i, align 8, !dbg !2196, !tbaa !1023
  %cmp99.i = icmp eq i64 %dec98.i, 0, !dbg !2196
  br i1 %cmp99.i, label %if.else.101.i, label %if.end.104.i, !dbg !2198

if.else.101.i:                                    ; preds = %if.end.92.i
  %ob_type102.i = getelementptr inbounds %struct._object, %struct._object* %call43.i, i64 0, i32 1, !dbg !2199
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type102.i, align 8, !dbg !2199, !tbaa !1027
  %tp_dealloc103.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2199
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103.i, align 8, !dbg !2199, !tbaa !1028
  tail call void %18(%struct._object* %call43.i) #2, !dbg !2199
  br label %if.end.104.i, !dbg !2126

if.end.104.i:                                     ; preds = %if.else.101.i, %if.end.92.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call39.i, i64 0, metadata !619, metadata !1010) #2, !dbg !2201
  %ob_refcnt109.i = getelementptr inbounds %struct._object, %struct._object* %call39.i, i64 0, i32 0, !dbg !2203
  %19 = load i64, i64* %ob_refcnt109.i, align 8, !dbg !2203, !tbaa !1023
  %dec110.i = add i64 %19, -1, !dbg !2203
  store i64 %dec110.i, i64* %ob_refcnt109.i, align 8, !dbg !2203, !tbaa !1023
  %cmp111.i = icmp eq i64 %dec110.i, 0, !dbg !2203
  br i1 %cmp111.i, label %if.else.113.i, label %if.end, !dbg !2205

if.else.113.i:                                    ; preds = %if.end.104.i
  %ob_type114.i = getelementptr inbounds %struct._object, %struct._object* %call39.i, i64 0, i32 1, !dbg !2206
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type114.i, align 8, !dbg !2206, !tbaa !1027
  %tp_dealloc115.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2206
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115.i, align 8, !dbg !2206, !tbaa !1028
  tail call void %21(%struct._object* %call39.i) #2, !dbg !2206
  br label %if.end, !dbg !2126

do.body.123.i:                                    ; preds = %if.end.54.i
  br i1 %cmp127.i, label %if.else.129.i, label %do.body.142.i, !dbg !2208

if.else.129.i:                                    ; preds = %do.body.123.i
  %ob_type130.i = getelementptr inbounds %struct._object, %struct._object* %call51.i, i64 0, i32 1, !dbg !2209
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type130.i, align 8, !dbg !2209, !tbaa !1027
  %tp_dealloc131.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !2209
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131.i, align 8, !dbg !2209, !tbaa !1028
  tail call void %23(%struct._object* %call51.i) #2, !dbg !2209
  br label %do.body.142.i, !dbg !2126

do.body.142.i:                                    ; preds = %if.else.129.i, %do.body.123.i, %if.end.50.i
  %ob_refcnt144.i = getelementptr inbounds %struct._object, %struct._object* %call47.i, i64 0, i32 0, !dbg !2211
  %24 = load i64, i64* %ob_refcnt144.i, align 8, !dbg !2211, !tbaa !1023
  %dec145.i = add i64 %24, -1, !dbg !2211
  store i64 %dec145.i, i64* %ob_refcnt144.i, align 8, !dbg !2211, !tbaa !1023
  %cmp146.i = icmp eq i64 %dec145.i, 0, !dbg !2211
  br i1 %cmp146.i, label %if.else.148.i, label %do.body.161.i, !dbg !2213

if.else.148.i:                                    ; preds = %do.body.142.i
  %ob_type149.i = getelementptr inbounds %struct._object, %struct._object* %call47.i, i64 0, i32 1, !dbg !2214
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type149.i, align 8, !dbg !2214, !tbaa !1027
  %tp_dealloc150.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2214
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150.i, align 8, !dbg !2214, !tbaa !1028
  tail call void %26(%struct._object* %call47.i) #2, !dbg !2214
  br label %do.body.161.i, !dbg !2126

do.body.161.i:                                    ; preds = %do.body.142.i, %if.else.148.i, %if.end.46.i, %if.end.42.i, %if.end.38.i
  %tmp1.0303313320.i = phi %struct._object* [ null, %if.end.38.i ], [ %call43.i, %if.end.46.i ], [ null, %if.end.42.i ], [ %call43.i, %if.else.148.i ], [ %call43.i, %do.body.142.i ], !dbg !2126
  tail call void @llvm.dbg.value(metadata %struct._object* %step.addr.0.i, i64 0, metadata !633, metadata !1010) #2, !dbg !2216
  %ob_refcnt163.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 0, !dbg !2218
  %27 = load i64, i64* %ob_refcnt163.i, align 8, !dbg !2218, !tbaa !1023
  %dec164.i = add i64 %27, -1, !dbg !2218
  store i64 %dec164.i, i64* %ob_refcnt163.i, align 8, !dbg !2218, !tbaa !1023
  %cmp165.i = icmp eq i64 %dec164.i, 0, !dbg !2218
  br i1 %cmp165.i, label %if.else.167.i, label %if.end.173.i, !dbg !2220

if.else.167.i:                                    ; preds = %do.body.161.i
  %ob_type168.i = getelementptr inbounds %struct._object, %struct._object* %step.addr.0.i, i64 0, i32 1, !dbg !2221
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type168.i, align 8, !dbg !2221, !tbaa !1027
  %tp_dealloc169.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2221
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169.i, align 8, !dbg !2221, !tbaa !1028
  tail call void %29(%struct._object* %step.addr.0.i) #2, !dbg !2221
  br label %if.end.173.i, !dbg !2126

if.end.173.i:                                     ; preds = %if.else.167.i, %do.body.161.i
  %cmp178.i = icmp eq %struct._object* %tmp1.0303313320.i, null, !dbg !2223
  br i1 %cmp178.i, label %if.end.192.i, label %do.body.180.i, !dbg !2224

do.body.180.i:                                    ; preds = %if.end.173.i
  %ob_refcnt182.i = getelementptr inbounds %struct._object, %struct._object* %tmp1.0303313320.i, i64 0, i32 0, !dbg !2225
  %30 = load i64, i64* %ob_refcnt182.i, align 8, !dbg !2225, !tbaa !1023
  %dec183.i = add i64 %30, -1, !dbg !2225
  store i64 %dec183.i, i64* %ob_refcnt182.i, align 8, !dbg !2225, !tbaa !1023
  %cmp184.i = icmp eq i64 %dec183.i, 0, !dbg !2225
  br i1 %cmp184.i, label %if.else.186.i, label %if.end.192.i, !dbg !2227

if.else.186.i:                                    ; preds = %do.body.180.i
  %ob_type187.i = getelementptr inbounds %struct._object, %struct._object* %tmp1.0303313320.i, i64 0, i32 1, !dbg !2228
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type187.i, align 8, !dbg !2228, !tbaa !1027
  %tp_dealloc188.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !2228
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188.i, align 8, !dbg !2228, !tbaa !1028
  tail call void %32(%struct._object* %tmp1.0303313320.i) #2, !dbg !2228
  br label %if.end.192.i, !dbg !2126

if.end.192.i:                                     ; preds = %if.else.186.i, %do.body.180.i, %if.end.173.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call39.i, i64 0, metadata !641, metadata !1010) #2, !dbg !2230
  br i1 %cmp40.i, label %cleanup, label %do.body.199.i, !dbg !2232

do.body.199.i:                                    ; preds = %if.end.192.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call39.i, i64 0, metadata !643, metadata !1010) #2, !dbg !2233
  %ob_refcnt201.i = getelementptr inbounds %struct._object, %struct._object* %call39.i, i64 0, i32 0, !dbg !2235
  %33 = load i64, i64* %ob_refcnt201.i, align 8, !dbg !2235, !tbaa !1023
  %dec202.i = add i64 %33, -1, !dbg !2235
  store i64 %dec202.i, i64* %ob_refcnt201.i, align 8, !dbg !2235, !tbaa !1023
  %cmp203.i = icmp eq i64 %dec202.i, 0, !dbg !2235
  br i1 %cmp203.i, label %if.else.205.i, label %cleanup, !dbg !2237

if.else.205.i:                                    ; preds = %do.body.199.i
  %ob_type206.i = getelementptr inbounds %struct._object, %struct._object* %call39.i, i64 0, i32 1, !dbg !2238
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type206.i, align 8, !dbg !2238, !tbaa !1027
  %tp_dealloc207.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !2238
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207.i, align 8, !dbg !2238, !tbaa !1028
  tail call void %35(%struct._object* %call39.i) #2, !dbg !2238
  br label %cleanup, !dbg !2126

compute_range_length.exit:                        ; preds = %do.body.22.i, %if.else.28.i
  %call37.i = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2240
  tail call void @llvm.dbg.value(metadata %struct._object* %call37.i, i64 0, metadata !583, metadata !1010), !dbg !2241
  %cmp = icmp eq %struct._object* %call37.i, null, !dbg !2242
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2244

if.end:                                           ; preds = %if.else.113.i, %if.end.104.i, %compute_range_length.exit
  %retval.0.i32 = phi %struct._object* [ %call37.i, %compute_range_length.exit ], [ %call55.i, %if.end.104.i ], [ %call55.i, %if.else.113.i ]
  %call1 = tail call %struct._object* @_PyObject_New(%struct._typeobject* %type) #2, !dbg !2245
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %39, i64 0, metadata !582, metadata !1010), !dbg !2103
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !2246
  br i1 %cmp2, label %do.body, label %if.end.7, !dbg !2247

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call37.i, i64 0, metadata !584, metadata !1010), !dbg !2248
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i32, i64 0, i32 0, !dbg !2250
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !2250, !tbaa !1023
  %dec = add i64 %36, -1, !dbg !2250
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2250, !tbaa !1023
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2250
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !2252

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i32, i64 0, i32 1, !dbg !2253
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2253, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !2253
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2253, !tbaa !1028
  tail call void %38(%struct._object* %retval.0.i32) #2, !dbg !2253
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %39 = bitcast %struct._object* %call1 to %struct.rangeobject*, !dbg !2245
  %start8 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, !dbg !2255
  %40 = bitcast %struct._object* %start8 to %struct._object**, !dbg !2255
  store %struct._object* %start, %struct._object** %40, align 8, !dbg !2256, !tbaa !1014
  %stop9 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !2257
  %41 = bitcast %struct._typeobject** %stop9 to %struct._object**, !dbg !2257
  store %struct._object* %stop, %struct._object** %41, align 8, !dbg !2258, !tbaa !1034
  %step10 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !2259
  %42 = bitcast %struct._object* %step10 to %struct._object**, !dbg !2259
  store %struct._object* %step, %struct._object** %42, align 8, !dbg !2260, !tbaa !1042
  %length11 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, i32 1, !dbg !2261
  %43 = bitcast %struct._typeobject** %length11 to %struct._object**, !dbg !2261
  store %struct._object* %retval.0.i32, %struct._object** %43, align 8, !dbg !2262, !tbaa !1050
  br label %cleanup, !dbg !2263

cleanup:                                          ; preds = %if.end.192.i, %do.body.199.i, %if.else.205.i, %if.else.11.i, %if.end.4.i, %entry, %if.else, %do.body, %compute_range_length.exit, %if.end.7
  %retval.0 = phi %struct.rangeobject* [ %39, %if.end.7 ], [ null, %compute_range_length.exit ], [ null, %do.body ], [ null, %if.else ], [ null, %entry ], [ null, %if.end.4.i ], [ null, %if.else.11.i ], [ null, %if.else.205.i ], [ null, %do.body.199.i ], [ null, %if.end.192.i ]
  ret %struct.rangeobject* %retval.0, !dbg !2264
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @PyObject_Not(%struct._object*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_reverse(%struct._object* nocapture readonly %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %seq, i64 0, metadata !679, metadata !1010), !dbg !2265
  %start = getelementptr inbounds %struct._object, %struct._object* %seq, i64 1, !dbg !2266
  %0 = bitcast %struct._object* %start to %struct._object**, !dbg !2266
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !2266, !tbaa !1014
  %call = tail call i64 @PyLong_AsLong(%struct._object* %1) #2, !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !686, metadata !1010), !dbg !2268
  %cmp = icmp eq i64 %call, -1, !dbg !2269
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2271

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2272
  %tobool = icmp eq %struct._object* %call1, null, !dbg !2272
  br i1 %tobool, label %if.end, label %if.then, !dbg !2274

if.then:                                          ; preds = %land.lhs.true
  tail call void @PyErr_Clear() #2, !dbg !2275
  br label %long_range, !dbg !2277

if.end:                                           ; preds = %land.lhs.true, %entry
  %stop = getelementptr inbounds %struct._object, %struct._object* %seq, i64 1, i32 1, !dbg !2278
  %2 = bitcast %struct._typeobject** %stop to %struct._object**, !dbg !2278
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !2278, !tbaa !1034
  %call2 = tail call i64 @PyLong_AsLong(%struct._object* %3) #2, !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !687, metadata !1010), !dbg !2280
  %cmp3 = icmp eq i64 %call2, -1, !dbg !2281
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8, !dbg !2283

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2284
  %tobool6 = icmp eq %struct._object* %call5, null, !dbg !2284
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !2286

if.then.7:                                        ; preds = %land.lhs.true.4
  tail call void @PyErr_Clear() #2, !dbg !2287
  br label %long_range, !dbg !2289

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %step = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, !dbg !2290
  %4 = bitcast %struct._object* %step to %struct._object**, !dbg !2290
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2290, !tbaa !1042
  %call9 = tail call i64 @PyLong_AsLong(%struct._object* %5) #2, !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !688, metadata !1010), !dbg !2292
  switch i64 %call9, label %if.end.18 [
    i64 -1, label %land.lhs.true.11
    i64 -9223372036854775808, label %long_range
  ], !dbg !2293

land.lhs.true.11:                                 ; preds = %if.end.8
  %call12 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2295
  %tobool13 = icmp eq %struct._object* %call12, null, !dbg !2295
  br i1 %tobool13, label %if.else, label %if.then.14, !dbg !2297

if.then.14:                                       ; preds = %land.lhs.true.11
  tail call void @PyErr_Clear() #2, !dbg !2298
  br label %long_range, !dbg !2300

if.end.18:                                        ; preds = %if.end.8
  %cmp19 = icmp sgt i64 %call9, 0, !dbg !2301
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !2303

if.then.20:                                       ; preds = %if.end.18
  %sub = xor i64 %call, -9223372036854775808, !dbg !2304
  %cmp21 = icmp ult i64 %sub, %call9, !dbg !2307
  br i1 %cmp21, label %long_range, label %if.end.29, !dbg !2308

if.else:                                          ; preds = %land.lhs.true.11, %if.end.18
  %sub24 = sub i64 9223372036854775807, %call, !dbg !2309
  %sub25 = sub i64 0, %call9, !dbg !2312
  %cmp26 = icmp ult i64 %sub24, %sub25, !dbg !2313
  br i1 %cmp26, label %long_range, label %if.else.i, !dbg !2314

if.end.29:                                        ; preds = %if.then.20
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !704, metadata !1010), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !705, metadata !1010), !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !706, metadata !1010), !dbg !2318
  %cmp1.i = icmp slt i64 %call, %call2, !dbg !2319
  br i1 %cmp1.i, label %if.then.i, label %if.end.33, !dbg !2320

if.then.i:                                        ; preds = %if.end.29
  %sub.i = xor i64 %call, -1, !dbg !2321
  %sub2.i = add i64 %call2, %sub.i, !dbg !2322
  %div.i = udiv i64 %sub2.i, %call9, !dbg !2323
  br label %get_len_of_range.exit, !dbg !2324

if.else.i:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !704, metadata !1010), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !705, metadata !1010), !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !706, metadata !1010), !dbg !2318
  %cmp3.i = icmp slt i64 %call9, 0, !dbg !2325
  %cmp5.i = icmp sgt i64 %call, %call2, !dbg !2326
  %or.cond22.i = and i1 %cmp5.i, %cmp3.i, !dbg !2327
  br i1 %or.cond22.i, label %if.then.6.i, label %if.end.33, !dbg !2327

if.then.6.i:                                      ; preds = %if.else.i
  %sub7.i = add i64 %call, -1, !dbg !2328
  %sub8.i = sub i64 %sub7.i, %call2, !dbg !2329
  %sub9.i = sub i64 0, %call9, !dbg !2330
  %div10.i = udiv i64 %sub8.i, %sub9.i, !dbg !2331
  br label %get_len_of_range.exit, !dbg !2332

get_len_of_range.exit:                            ; preds = %if.then.i, %if.then.6.i
  %div.i.sink = phi i64 [ %div.i, %if.then.i ], [ %div10.i, %if.then.6.i ]
  %add.i = add i64 %div.i.sink, 1, !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !691, metadata !1010), !dbg !2334
  %cmp31 = icmp slt i64 %add.i, 0, !dbg !2335
  br i1 %cmp31, label %long_range, label %if.end.33, !dbg !2337

if.end.33:                                        ; preds = %if.end.29, %if.else.i, %get_len_of_range.exit
  %retval.0.i195 = phi i64 [ %add.i, %get_len_of_range.exit ], [ 0, %if.else.i ], [ 0, %if.end.29 ]
  %sub34 = sub i64 %call, %call9, !dbg !2338
  tail call void @llvm.dbg.value(metadata i64 %sub34, i64 0, metadata !690, metadata !1010), !dbg !2339
  %mul = mul i64 %retval.0.i195, %call9, !dbg !2340
  %add = add i64 %mul, %sub34, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !689, metadata !1010), !dbg !2342
  %sub35 = sub i64 0, %call9, !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !711, metadata !1010) #2, !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %sub34, i64 0, metadata !712, metadata !1010) #2, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %sub35, i64 0, metadata !713, metadata !1010) #2, !dbg !2347
  %call.i = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyRangeIter_Type) #2, !dbg !2348
  %cmp.i.188 = icmp eq %struct._object* %call.i, null, !dbg !2349
  br i1 %cmp.i.188, label %cleanup, label %if.end.i, !dbg !2350

if.end.i:                                         ; preds = %if.end.33
  %start1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2351
  %6 = bitcast %struct._typeobject** %start1.i to i64*, !dbg !2351
  store i64 %add, i64* %6, align 8, !dbg !2352, !tbaa !1248
  %7 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !2353
  store i64 %sub35, i64* %7, align 8, !dbg !2354, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !704, metadata !1010) #2, !dbg !2355
  tail call void @llvm.dbg.value(metadata i64 %sub34, i64 0, metadata !705, metadata !1010) #2, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %sub35, i64 0, metadata !706, metadata !1010) #2, !dbg !2358
  %cmp.i.i = icmp sgt i64 %sub35, 0, !dbg !2359
  %cmp1.i.i = icmp slt i64 %add, %sub34, !dbg !2360
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i, !dbg !2361
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !2361

if.then.i.i:                                      ; preds = %if.end.i
  %sub.i.i = xor i64 %add, -1, !dbg !2362
  %sub2.i.i = add i64 %sub34, %sub.i.i, !dbg !2363
  %div.i.i = udiv i64 %sub2.i.i, %sub35, !dbg !2364
  br label %get_len_of_range.exit.i, !dbg !2365

if.else.i.i:                                      ; preds = %if.end.i
  %cmp3.i.i = icmp slt i64 %sub35, 0, !dbg !2366
  %cmp5.i.i = icmp sgt i64 %add, %sub34, !dbg !2367
  %or.cond22.i.i = and i1 %cmp3.i.i, %cmp5.i.i, !dbg !2368
  br i1 %or.cond22.i.i, label %if.then.6.i.i, label %if.end.9.i, !dbg !2368

if.then.6.i.i:                                    ; preds = %if.else.i.i
  %sub8.i.i = add i64 %mul, -1, !dbg !2369
  %div10.i.i = udiv i64 %sub8.i.i, %call9, !dbg !2370
  br label %get_len_of_range.exit.i, !dbg !2371

get_len_of_range.exit.i:                          ; preds = %if.then.6.i.i, %if.then.i.i
  %div.i.sink.i = phi i64 [ %div.i.i, %if.then.i.i ], [ %div10.i.i, %if.then.6.i.i ], !dbg !2372
  %add.i.i = add i64 %div.i.sink.i, 1, !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 %add.i.i, i64 0, metadata !715, metadata !1010) #2, !dbg !2374
  %cmp4.i = icmp slt i64 %add.i.i, 0, !dbg !2375
  br i1 %cmp4.i, label %do.body.i, label %if.end.9.i, !dbg !2376

do.body.i:                                        ; preds = %get_len_of_range.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !716, metadata !1010) #2, !dbg !2377
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2378
  %8 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2378, !tbaa !1023
  %dec.i = add i64 %8, -1, !dbg !2378
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2378, !tbaa !1023
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !2378
  br i1 %cmp6.i, label %if.else.i.189, label %if.end.8.i, !dbg !2379

if.else.i.189:                                    ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2380
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2380, !tbaa !1027
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2380
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2380, !tbaa !1028
  tail call void %10(%struct._object* %call.i) #2, !dbg !2380
  br label %if.end.8.i, !dbg !2372

if.end.8.i:                                       ; preds = %if.else.i.189, %do.body.i
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2381, !tbaa !1086
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !2382
  br label %cleanup, !dbg !2383

if.end.9.i:                                       ; preds = %get_len_of_range.exit.i, %if.else.i.i
  %retval.0.i26.i = phi i64 [ %add.i.i, %get_len_of_range.exit.i ], [ 0, %if.else.i.i ], !dbg !2372
  %len.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2384
  %12 = bitcast %struct._typeobject** %len.i to i64*, !dbg !2384
  store i64 %retval.0.i26.i, i64* %12, align 8, !dbg !2385, !tbaa !1291
  %13 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 0, !dbg !2386
  store i64 0, i64* %13, align 8, !dbg !2387, !tbaa !1294
  br label %cleanup, !dbg !2388

long_range:                                       ; preds = %if.end.8, %get_len_of_range.exit, %if.else, %if.then.20, %if.then.14, %if.then.7, %if.then
  %call37 = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyLongRangeIter_Type) #2, !dbg !2389
  %cmp38 = icmp eq %struct._object* %call37, null, !dbg !2390
  br i1 %cmp38, label %cleanup, label %if.end.40, !dbg !2392

if.end.40:                                        ; preds = %long_range
  %length = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, i32 1, !dbg !2393
  %14 = bitcast %struct._typeobject** %length to %struct._object**, !dbg !2393
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !2393, !tbaa !1050
  %len = getelementptr inbounds %struct._object, %struct._object* %call37, i64 2, i32 1, !dbg !2394
  %16 = bitcast %struct._typeobject** %len to %struct._object**, !dbg !2394
  store %struct._object* %15, %struct._object** %16, align 8, !dbg !2395, !tbaa !1050
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2396
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !2396, !tbaa !1023
  %inc = add i64 %17, 1, !dbg !2396
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2396, !tbaa !1023
  %call42 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !682, metadata !1010), !dbg !2398
  %tobool43 = icmp eq %struct._object* %call42, null, !dbg !2399
  br i1 %tobool43, label %do.body.104, label %if.end.45, !dbg !2401

if.end.45:                                        ; preds = %if.end.40
  %18 = load %struct._object*, %struct._object** %16, align 8, !dbg !2402, !tbaa !1050
  %call47 = tail call %struct._object* @PyNumber_Subtract(%struct._object* %18, %struct._object* %call42) #2, !dbg !2403
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !684, metadata !1010), !dbg !2404
  tail call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !692, metadata !1010), !dbg !2405
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %call42, i64 0, i32 0, !dbg !2407
  %19 = load i64, i64* %ob_refcnt48, align 8, !dbg !2407, !tbaa !1023
  %dec = add i64 %19, -1, !dbg !2407
  store i64 %dec, i64* %ob_refcnt48, align 8, !dbg !2407, !tbaa !1023
  %cmp49 = icmp eq i64 %dec, 0, !dbg !2407
  br i1 %cmp49, label %if.else.51, label %if.end.52, !dbg !2409

if.else.51:                                       ; preds = %if.end.45
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call42, i64 0, i32 1, !dbg !2410
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2410, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2410
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2410, !tbaa !1028
  tail call void %21(%struct._object* %call42) #2, !dbg !2410
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.45, %if.else.51
  %tobool53 = icmp eq %struct._object* %call47, null, !dbg !2412
  br i1 %tobool53, label %do.body.104, label %if.end.55, !dbg !2414

if.end.55:                                        ; preds = %if.end.52
  %step56 = getelementptr inbounds %struct._object, %struct._object* %seq, i64 2, !dbg !2415
  %22 = bitcast %struct._object* %step56 to %struct._object**, !dbg !2415
  %23 = load %struct._object*, %struct._object** %22, align 8, !dbg !2415, !tbaa !1042
  %call57 = tail call %struct._object* @PyNumber_Multiply(%struct._object* %call47, %struct._object* %23) #2, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !685, metadata !1010), !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !694, metadata !1010), !dbg !2418
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %call47, i64 0, i32 0, !dbg !2420
  %24 = load i64, i64* %ob_refcnt60, align 8, !dbg !2420, !tbaa !1023
  %dec61 = add i64 %24, -1, !dbg !2420
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !2420, !tbaa !1023
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !2420
  br i1 %cmp62, label %if.else.64, label %if.end.67, !dbg !2422

if.else.64:                                       ; preds = %if.end.55
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %call47, i64 0, i32 1, !dbg !2423
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !2423, !tbaa !1027
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2423
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !2423, !tbaa !1028
  tail call void %26(%struct._object* %call47) #2, !dbg !2423
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.55, %if.else.64
  %tobool70 = icmp eq %struct._object* %call57, null, !dbg !2425
  br i1 %tobool70, label %do.body.104, label %if.end.72, !dbg !2427

if.end.72:                                        ; preds = %if.end.67
  %27 = load %struct._object*, %struct._object** %0, align 8, !dbg !2428, !tbaa !1014
  %call74 = tail call %struct._object* @PyNumber_Add(%struct._object* %27, %struct._object* %call57) #2, !dbg !2429
  tail call void @llvm.dbg.value(metadata %struct._object* %call74, i64 0, metadata !683, metadata !1010), !dbg !2430
  tail call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !696, metadata !1010), !dbg !2431
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 0, !dbg !2433
  %28 = load i64, i64* %ob_refcnt77, align 8, !dbg !2433, !tbaa !1023
  %dec78 = add i64 %28, -1, !dbg !2433
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !2433, !tbaa !1023
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !2433
  br i1 %cmp79, label %if.else.81, label %if.end.84, !dbg !2435

if.else.81:                                       ; preds = %if.end.72
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 1, !dbg !2436
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !2436, !tbaa !1027
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !2436
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !2436, !tbaa !1028
  tail call void %30(%struct._object* %call57) #2, !dbg !2436
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.72, %if.else.81
  %start87 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 1, i32 1, !dbg !2438
  %31 = bitcast %struct._typeobject** %start87 to %struct._object**, !dbg !2438
  store %struct._object* %call74, %struct._object** %31, align 8, !dbg !2439, !tbaa !1034
  %tobool89 = icmp eq %struct._object* %call74, null, !dbg !2440
  br i1 %tobool89, label %do.body.104, label %if.end.91, !dbg !2442

if.end.91:                                        ; preds = %if.end.84
  %32 = load %struct._object*, %struct._object** %22, align 8, !dbg !2443, !tbaa !1042
  %call93 = tail call %struct._object* @PyNumber_Negative(%struct._object* %32) #2, !dbg !2444
  %step94 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 2, !dbg !2445
  %33 = bitcast %struct._object* %step94 to %struct._object**, !dbg !2445
  store %struct._object* %call93, %struct._object** %33, align 8, !dbg !2446, !tbaa !1042
  %tobool96 = icmp eq %struct._object* %call93, null, !dbg !2447
  br i1 %tobool96, label %do.body.104, label %if.end.98, !dbg !2449

if.end.98:                                        ; preds = %if.end.91
  %call99 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2450
  %index = getelementptr inbounds %struct._object, %struct._object* %call37, i64 1, !dbg !2451
  %34 = bitcast %struct._object* %index to %struct._object**, !dbg !2451
  store %struct._object* %call99, %struct._object** %34, align 8, !dbg !2452, !tbaa !1014
  %tobool101 = icmp eq %struct._object* %call99, null, !dbg !2453
  br i1 %tobool101, label %do.body.104, label %cleanup, !dbg !2455

do.body.104:                                      ; preds = %if.end.98, %if.end.91, %if.end.84, %if.end.67, %if.end.52, %if.end.40
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !698, metadata !1010), !dbg !2456
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 0, !dbg !2458
  %35 = load i64, i64* %ob_refcnt106, align 8, !dbg !2458, !tbaa !1023
  %dec107 = add i64 %35, -1, !dbg !2458
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !2458, !tbaa !1023
  %cmp108 = icmp eq i64 %dec107, 0, !dbg !2458
  br i1 %cmp108, label %if.else.110, label %cleanup, !dbg !2460

if.else.110:                                      ; preds = %do.body.104
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 1, !dbg !2461
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !2461, !tbaa !1027
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !2461
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !2461, !tbaa !1028
  tail call void %37(%struct._object* %call37) #2, !dbg !2461
  br label %cleanup

cleanup:                                          ; preds = %if.end.9.i, %if.end.8.i, %if.end.33, %if.else.110, %do.body.104, %if.end.98, %long_range
  %retval.0 = phi %struct._object* [ null, %long_range ], [ %call37, %if.end.98 ], [ null, %do.body.104 ], [ null, %if.else.110 ], [ null, %if.end.8.i ], [ %call.i, %if.end.9.i ], [ null, %if.end.33 ]
  ret %struct._object* %retval.0, !dbg !2463
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_reduce(%struct.rangeobject* nocapture readonly %r, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !722, metadata !1010), !dbg !2464
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !723, metadata !1010), !dbg !2465
  %ob_type = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 0, i32 1, !dbg !2466
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2466, !tbaa !1027
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !2467
  %1 = load %struct._object*, %struct._object** %start, align 8, !dbg !2467, !tbaa !1014
  %stop = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 2, !dbg !2468
  %2 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2468, !tbaa !1034
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !2469
  %3 = load %struct._object*, %struct._object** %step, align 8, !dbg !2469, !tbaa !1042
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %struct._typeobject* %0, %struct._object* %1, %struct._object* %2, %struct._object* %3) #2, !dbg !2470
  ret %struct._object* %call, !dbg !2471
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_count(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !726, metadata !1010), !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !727, metadata !1010), !dbg !2473
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ob, i64 0, i32 1, !dbg !2474
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2474, !tbaa !1027
  %cmp = icmp eq %struct._typeobject* %0, @PyLong_Type, !dbg !2474
  %cmp2 = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !2475
  %or.cond = or i1 %cmp, %cmp2, !dbg !2477
  br i1 %or.cond, label %if.then, label %if.else.9, !dbg !2477

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @range_contains_long(%struct.rangeobject* %r, %struct._object* %ob), !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !728, metadata !1010), !dbg !2479
  switch i32 %call, label %if.then.5 [
    i32 -1, label %return
    i32 0, label %if.else.7
  ], !dbg !2480

if.then.5:                                        ; preds = %if.then
  %call6 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !2481
  br label %return, !dbg !2484

if.else.7:                                        ; preds = %if.then
  %call8 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2485
  br label %return, !dbg !2486

if.else.9:                                        ; preds = %entry
  %1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 0, !dbg !2487
  %call10 = tail call i64 @_PySequence_IterSearch(%struct._object* %1, %struct._object* %ob, i32 1) #2, !dbg !2488
  tail call void @llvm.dbg.value(metadata i64 %call10, i64 0, metadata !731, metadata !1010), !dbg !2489
  %cmp11 = icmp eq i64 %call10, -1, !dbg !2490
  br i1 %cmp11, label %return, label %if.end, !dbg !2492

if.end:                                           ; preds = %if.else.9
  %call13 = tail call %struct._object* @PyLong_FromSsize_t(i64 %call10) #2, !dbg !2493
  br label %return, !dbg !2494

return:                                           ; preds = %if.end, %if.else.9, %if.then.5, %if.else.7, %if.then
  %retval.2 = phi %struct._object* [ %call6, %if.then.5 ], [ %call8, %if.else.7 ], [ null, %if.then ], [ %call13, %if.end ], [ null, %if.else.9 ]
  ret %struct._object* %retval.2, !dbg !2495
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @range_index(%struct.rangeobject* %r, %struct._object* %ob) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeobject* %r, i64 0, metadata !735, metadata !1010), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !736, metadata !1010), !dbg !2497
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ob, i64 0, i32 1, !dbg !2498
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2498, !tbaa !1027
  %cmp = icmp eq %struct._typeobject* %0, @PyLong_Type, !dbg !2498
  %cmp2 = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !2499
  %or.cond = or i1 %cmp, %cmp2, !dbg !2501
  br i1 %or.cond, label %if.end.6, label %if.then, !dbg !2501

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 0, !dbg !2502
  %call = tail call i64 @_PySequence_IterSearch(%struct._object* %1, %struct._object* %ob, i32 2) #2, !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !738, metadata !1010), !dbg !2504
  %cmp3 = icmp eq i64 %call, -1, !dbg !2505
  br i1 %cmp3, label %cleanup.26, label %if.end, !dbg !2507

if.end:                                           ; preds = %if.then
  %call5 = tail call %struct._object* @PyLong_FromSsize_t(i64 %call) #2, !dbg !2508
  br label %cleanup.26, !dbg !2509

if.end.6:                                         ; preds = %entry
  %call7 = tail call fastcc i32 @range_contains_long(%struct.rangeobject* %r, %struct._object* %ob), !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !737, metadata !1010), !dbg !2511
  switch i32 %call7, label %if.then.11 [
    i32 -1, label %cleanup.26
    i32 0, label %if.end.24
  ], !dbg !2512

if.then.11:                                       ; preds = %if.end.6
  %start = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 1, !dbg !2513
  %2 = load %struct._object*, %struct._object** %start, align 8, !dbg !2513, !tbaa !1014
  %call12 = tail call %struct._object* @PyNumber_Subtract(%struct._object* %ob, %struct._object* %2) #2, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !744, metadata !1010), !dbg !2515
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !2516
  br i1 %cmp13, label %cleanup.26, label %if.end.15, !dbg !2518

if.end.15:                                        ; preds = %if.then.11
  %step = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %r, i64 0, i32 3, !dbg !2519
  %3 = load %struct._object*, %struct._object** %step, align 8, !dbg !2519, !tbaa !1042
  %call16 = tail call %struct._object* @PyNumber_FloorDivide(%struct._object* %call12, %struct._object* %3) #2, !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !741, metadata !1010), !dbg !2521
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !745, metadata !1010), !dbg !2522
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2524
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2524, !tbaa !1023
  %dec = add i64 %4, -1, !dbg !2524
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2524, !tbaa !1023
  %cmp18 = icmp eq i64 %dec, 0, !dbg !2524
  br i1 %cmp18, label %if.else, label %cleanup.26, !dbg !2526

if.else:                                          ; preds = %if.end.15
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2527
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2527, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2527
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2527, !tbaa !1028
  tail call void %6(%struct._object* %call12) #2, !dbg !2527
  br label %cleanup.26

if.end.24:                                        ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2529, !tbaa !1086
  %call25 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %struct._object* %ob) #2, !dbg !2530
  br label %cleanup.26, !dbg !2531

cleanup.26:                                       ; preds = %if.then.11, %if.end.15, %if.else, %if.end.6, %if.end, %if.then, %if.end.24
  %retval.2 = phi %struct._object* [ null, %if.end.24 ], [ %call5, %if.end ], [ null, %if.then ], [ null, %if.end.6 ], [ null, %if.then.11 ], [ %call16, %if.end.15 ], [ %call16, %if.else ]
  ret %struct._object* %retval.2, !dbg !2532
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_len(%struct.rangeiterobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeiterobject* %r, i64 0, metadata !818, metadata !1010), !dbg !2533
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 4, !dbg !2534
  %0 = load i64, i64* %len, align 8, !dbg !2534, !tbaa !1291
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 1, !dbg !2535
  %1 = load i64, i64* %index, align 8, !dbg !2535, !tbaa !1294
  %sub = sub i64 %0, %1, !dbg !2536
  %call = tail call %struct._object* @PyLong_FromLong(i64 %sub) #2, !dbg !2537
  ret %struct._object* %call, !dbg !2538
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_reduce(%struct.rangeiterobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeiterobject* %r, i64 0, metadata !821, metadata !1010), !dbg !2539
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !822, metadata !1010), !dbg !2540
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !823, metadata !1010), !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !824, metadata !1010), !dbg !2542
  %start1 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 2, !dbg !2543
  %0 = load i64, i64* %start1, align 8, !dbg !2543, !tbaa !1248
  %call = tail call %struct._object* @PyLong_FromLong(i64 %0) #2, !dbg !2544
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !822, metadata !1010), !dbg !2540
  %cmp = icmp eq %struct._object* %call, null, !dbg !2545
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2547

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %start1, align 8, !dbg !2548, !tbaa !1248
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 4, !dbg !2549
  %2 = load i64, i64* %len, align 8, !dbg !2549, !tbaa !1291
  %step3 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 3, !dbg !2550
  %3 = load i64, i64* %step3, align 8, !dbg !2550, !tbaa !1252
  %mul = mul i64 %3, %2, !dbg !2551
  %add = add i64 %mul, %1, !dbg !2552
  %call4 = tail call %struct._object* @PyLong_FromLong(i64 %add) #2, !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !823, metadata !1010), !dbg !2541
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !2554
  br i1 %cmp5, label %do.body.21, label %if.end.7, !dbg !2556

if.end.7:                                         ; preds = %if.end
  %4 = load i64, i64* %step3, align 8, !dbg !2557, !tbaa !1252
  %call9 = tail call %struct._object* @PyLong_FromLong(i64 %4) #2, !dbg !2558
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !824, metadata !1010), !dbg !2542
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !2559
  br i1 %cmp10, label %do.body.21, label %if.end.12, !dbg !2561

if.end.12:                                        ; preds = %if.end.7
  %call13 = tail call fastcc %struct.rangeobject* @make_range_object(%struct._typeobject* nonnull @PyRange_Type, %struct._object* %call, %struct._object* %call4, %struct._object* %call9), !dbg !2562
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !825, metadata !1010), !dbg !2563
  %cmp14 = icmp eq %struct.rangeobject* %call13, null, !dbg !2564
  br i1 %cmp14, label %do.body.21, label %if.end.16, !dbg !2566

if.end.16:                                        ; preds = %if.end.12
  %5 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %call13, i64 0, i32 0, !dbg !2567
  %call17 = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #2, !dbg !2568
  %index = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 1, !dbg !2569
  %6 = load i64, i64* %index, align 8, !dbg !2569, !tbaa !1294
  %call18 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %struct._object* %call17, %struct._object* %5, i64 %6) #2, !dbg !2570
  br label %cleanup, !dbg !2571

do.body.21:                                       ; preds = %if.end, %if.end.7, %if.end.12
  %step.0.ph = phi %struct._object* [ %call9, %if.end.12 ], [ null, %if.end.7 ], [ null, %if.end ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !826, metadata !1010), !dbg !2572
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !828, metadata !1010), !dbg !2574
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2576
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !2576, !tbaa !1023
  %dec = add i64 %7, -1, !dbg !2576
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2576, !tbaa !1023
  %cmp22 = icmp eq i64 %dec, 0, !dbg !2576
  br i1 %cmp22, label %if.else, label %if.end.25, !dbg !2578

if.else:                                          ; preds = %do.body.21
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2579
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2579, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2579
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2579, !tbaa !1028
  tail call void %9(%struct._object* %call) #2, !dbg !2579
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %do.body.21
  br i1 %cmp5, label %if.end.44, label %do.body.32, !dbg !2581

do.body.32:                                       ; preds = %if.end.25
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !2582
  %10 = load i64, i64* %ob_refcnt34, align 8, !dbg !2582, !tbaa !1023
  %dec35 = add i64 %10, -1, !dbg !2582
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !2582, !tbaa !1023
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !2582
  br i1 %cmp36, label %if.else.38, label %if.end.44, !dbg !2584

if.else.38:                                       ; preds = %do.body.32
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !2585
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !2585, !tbaa !1027
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2585
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !2585, !tbaa !1028
  tail call void %12(%struct._object* %call4) #2, !dbg !2585
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.38, %do.body.32, %if.end.25
  %cmp49 = icmp eq %struct._object* %step.0.ph, null, !dbg !2587
  br i1 %cmp49, label %cleanup, label %do.body.51, !dbg !2588

do.body.51:                                       ; preds = %if.end.44
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %step.0.ph, i64 0, i32 0, !dbg !2589
  %13 = load i64, i64* %ob_refcnt53, align 8, !dbg !2589, !tbaa !1023
  %dec54 = add i64 %13, -1, !dbg !2589
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !2589, !tbaa !1023
  %cmp55 = icmp eq i64 %dec54, 0, !dbg !2589
  br i1 %cmp55, label %if.else.57, label %cleanup, !dbg !2591

if.else.57:                                       ; preds = %do.body.51
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %step.0.ph, i64 0, i32 1, !dbg !2592
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !2592, !tbaa !1027
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2592
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !2592, !tbaa !1028
  tail call void %15(%struct._object* %step.0.ph) #2, !dbg !2592
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end.44, %do.body.51, %if.else.57, %if.end.16
  %retval.0 = phi %struct._object* [ %call18, %if.end.16 ], [ null, %if.else.57 ], [ null, %do.body.51 ], [ null, %if.end.44 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2594
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rangeiter_setstate(%struct.rangeiterobject* nocapture %r, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rangeiterobject* %r, i64 0, metadata !845, metadata !1010), !dbg !2595
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !846, metadata !1010), !dbg !2596
  %call = tail call i64 @PyLong_AsLong(%struct._object* %state) #2, !dbg !2597
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !847, metadata !1010), !dbg !2598
  %cmp = icmp eq i64 %call, -1, !dbg !2599
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2601

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2602
  %tobool = icmp eq %struct._object* %call1, null, !dbg !2602
  br i1 %tobool, label %if.end.8, label %cleanup, !dbg !2604

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i64 %call, 0, !dbg !2605
  br i1 %cmp2, label %if.end.8, label %if.else, !dbg !2607

if.else:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 4, !dbg !2608
  %0 = load i64, i64* %len, align 8, !dbg !2608, !tbaa !1291
  %cmp4 = icmp sgt i64 %call, %0, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !847, metadata !1010), !dbg !2598
  %.call = select i1 %cmp4, i64 %0, i64 %call, !dbg !2611
  br label %if.end.8, !dbg !2611

if.end.8:                                         ; preds = %land.lhs.true, %if.else, %if.end
  %index.0 = phi i64 [ 0, %if.end ], [ %.call, %if.else ], [ 0, %land.lhs.true ]
  %index9 = getelementptr inbounds %struct.rangeiterobject, %struct.rangeiterobject* %r, i64 0, i32 1, !dbg !2612
  store i64 %index.0, i64* %index9, align 8, !dbg !2613, !tbaa !1294
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2614, !tbaa !1023
  %inc = add i64 %1, 1, !dbg !2614
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2614, !tbaa !1023
  br label %cleanup, !dbg !2614

cleanup:                                          ; preds = %land.lhs.true, %if.end.8
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.8 ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !2615
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_len(%struct.longrangeiterobject* nocapture readonly %r, %struct._object* nocapture readnone %no_args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.longrangeiterobject* %r, i64 0, metadata !909, metadata !1010), !dbg !2616
  tail call void @llvm.dbg.value(metadata %struct._object* %no_args, i64 0, metadata !910, metadata !1010), !dbg !2617
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 4, !dbg !2618
  %0 = load %struct._object*, %struct._object** %len, align 8, !dbg !2618, !tbaa !1050
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !2619
  %1 = load %struct._object*, %struct._object** %index, align 8, !dbg !2619, !tbaa !1014
  %call = tail call %struct._object* @PyNumber_Subtract(%struct._object* %0, %struct._object* %1) #2, !dbg !2620
  ret %struct._object* %call, !dbg !2621
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_reduce(%struct.longrangeiterobject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.longrangeiterobject* %r, i64 0, metadata !913, metadata !1010), !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !915, metadata !1010), !dbg !2623
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 4, !dbg !2624
  %0 = load %struct._object*, %struct._object** %len, align 8, !dbg !2624, !tbaa !1050
  %step = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 3, !dbg !2625
  %1 = load %struct._object*, %struct._object** %step, align 8, !dbg !2625, !tbaa !1042
  %call = tail call %struct._object* @PyNumber_Multiply(%struct._object* %0, %struct._object* %1) #2, !dbg !2626
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !914, metadata !1010), !dbg !2627
  %cmp = icmp eq %struct._object* %call, null, !dbg !2628
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2630

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 2, !dbg !2631
  %2 = load %struct._object*, %struct._object** %start, align 8, !dbg !2631, !tbaa !1034
  %call1 = tail call %struct._object* @PyNumber_Add(%struct._object* %2, %struct._object* %call) #2, !dbg !2632
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !915, metadata !1010), !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !917, metadata !1010), !dbg !2633
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2635
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2635, !tbaa !1023
  %dec = add i64 %3, -1, !dbg !2635
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2635, !tbaa !1023
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2635
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !2637

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2638
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2638, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2638
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2638, !tbaa !1028
  tail call void %5(%struct._object* %call) #2, !dbg !2638
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.else
  %cmp5 = icmp eq %struct._object* %call1, null, !dbg !2640
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !2642

if.end.7:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %start, align 8, !dbg !2643, !tbaa !1034
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2643
  %7 = load i64, i64* %ob_refcnt9, align 8, !dbg !2643, !tbaa !1023
  %inc = add i64 %7, 1, !dbg !2643
  store i64 %inc, i64* %ob_refcnt9, align 8, !dbg !2643, !tbaa !1023
  %8 = load %struct._object*, %struct._object** %step, align 8, !dbg !2644, !tbaa !1042
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !2644
  %9 = load i64, i64* %ob_refcnt11, align 8, !dbg !2644, !tbaa !1023
  %inc12 = add i64 %9, 1, !dbg !2644
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !2644, !tbaa !1023
  %call15 = tail call fastcc %struct.rangeobject* @make_range_object(%struct._typeobject* nonnull @PyRange_Type, %struct._object* %6, %struct._object* %call1, %struct._object* %8), !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !916, metadata !1010), !dbg !2646
  %cmp16 = icmp eq %struct.rangeobject* %call15, null, !dbg !2647
  br i1 %cmp16, label %do.body.18, label %if.end.56, !dbg !2648

do.body.18:                                       ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** %start, align 8, !dbg !2649, !tbaa !1034
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !919, metadata !1010), !dbg !2649
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !2651
  %11 = load i64, i64* %ob_refcnt21, align 8, !dbg !2651, !tbaa !1023
  %dec22 = add i64 %11, -1, !dbg !2651
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2651, !tbaa !1023
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !2651
  br i1 %cmp23, label %if.else.25, label %if.end.28, !dbg !2653

if.else.25:                                       ; preds = %do.body.18
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !2654
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2654, !tbaa !1027
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2654
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2654, !tbaa !1028
  tail call void %13(%struct._object* %10) #2, !dbg !2654
  br label %if.end.28

if.end.28:                                        ; preds = %do.body.18, %if.else.25
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !923, metadata !1010), !dbg !2656
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2658
  %14 = load i64, i64* %ob_refcnt33, align 8, !dbg !2658, !tbaa !1023
  %dec34 = add i64 %14, -1, !dbg !2658
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !2658, !tbaa !1023
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !2658
  br i1 %cmp35, label %if.else.37, label %if.end.40, !dbg !2660

if.else.37:                                       ; preds = %if.end.28
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2661
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2661, !tbaa !1027
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2661
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !2661, !tbaa !1028
  tail call void %16(%struct._object* %call1) #2, !dbg !2661
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.28, %if.else.37
  %17 = load %struct._object*, %struct._object** %step, align 8, !dbg !2663, !tbaa !1042
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !925, metadata !1010), !dbg !2663
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !2665
  %18 = load i64, i64* %ob_refcnt46, align 8, !dbg !2665, !tbaa !1023
  %dec47 = add i64 %18, -1, !dbg !2665
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !2665, !tbaa !1023
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !2665
  br i1 %cmp48, label %if.else.50, label %cleanup, !dbg !2667

if.else.50:                                       ; preds = %if.end.40
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !2668
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !2668, !tbaa !1027
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !2668
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !2668, !tbaa !1028
  tail call void %20(%struct._object* %17) #2, !dbg !2668
  br label %cleanup

if.end.56:                                        ; preds = %if.end.7
  %21 = getelementptr inbounds %struct.rangeobject, %struct.rangeobject* %call15, i64 0, i32 0, !dbg !2670
  %call57 = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #2, !dbg !2671
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !2672
  %22 = load %struct._object*, %struct._object** %index, align 8, !dbg !2672, !tbaa !1014
  %call58 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %struct._object* %call57, %struct._object* %21, %struct._object* %22) #2, !dbg !2673
  br label %cleanup, !dbg !2674

cleanup:                                          ; preds = %if.else.50, %if.end.40, %if.end.4, %entry, %if.end.56
  %retval.0 = phi %struct._object* [ %call58, %if.end.56 ], [ null, %entry ], [ null, %if.end.4 ], [ null, %if.end.40 ], [ null, %if.else.50 ]
  ret %struct._object* %retval.0, !dbg !2675
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @longrangeiter_setstate(%struct.longrangeiterobject* nocapture %r, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.longrangeiterobject* %r, i64 0, metadata !929, metadata !1010), !dbg !2676
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !930, metadata !1010), !dbg !2677
  %call = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !932, metadata !1010), !dbg !2679
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2680
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2682

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PyObject_RichCompareBool(%struct._object* %state, %struct._object* %call, i32 0) #2, !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !931, metadata !1010), !dbg !2684
  %cmp3 = icmp sgt i32 %call2, 0, !dbg !2685
  br i1 %cmp3, label %do.body, label %do.body.17, !dbg !2686

do.body:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !2687
  %0 = load %struct._object*, %struct._object** %index, align 8, !dbg !2687, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !933, metadata !1010), !dbg !2687
  %cmp5 = icmp eq %struct._object* %0, null, !dbg !2689
  br i1 %cmp5, label %if.end.12, label %if.then.6, !dbg !2690

if.then.6:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %index, align 8, !dbg !2691, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !937, metadata !1010), !dbg !2693
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2695
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2695, !tbaa !1023
  %dec = add i64 %1, -1, !dbg !2695
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2695, !tbaa !1023
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2695
  br i1 %cmp9, label %if.else, label %if.end.12, !dbg !2697

if.else:                                          ; preds = %if.then.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !2698
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2698, !tbaa !1027
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2698
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2698, !tbaa !1028
  tail call void %3(%struct._object* %0) #2, !dbg !2698
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6, %do.body
  store %struct._object* %call, %struct._object** %index, align 8, !dbg !2700, !tbaa !1014
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2701, !tbaa !1023
  %inc = add i64 %4, 1, !dbg !2701
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2701, !tbaa !1023
  br label %cleanup, !dbg !2701

do.body.17:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !941, metadata !1010), !dbg !2702
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2704
  %5 = load i64, i64* %ob_refcnt19, align 8, !dbg !2704, !tbaa !1023
  %dec20 = add i64 %5, -1, !dbg !2704
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !2704, !tbaa !1023
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !2704
  br i1 %cmp21, label %if.else.23, label %if.end.26, !dbg !2706

if.else.23:                                       ; preds = %do.body.17
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2707
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !2707, !tbaa !1027
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2707
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !2707, !tbaa !1028
  tail call void %7(%struct._object* %call) #2, !dbg !2707
  br label %if.end.26

if.end.26:                                        ; preds = %do.body.17, %if.else.23
  %cmp29 = icmp slt i32 %call2, 0, !dbg !2709
  br i1 %cmp29, label %cleanup, label %if.end.31, !dbg !2711

if.end.31:                                        ; preds = %if.end.26
  %len = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 4, !dbg !2712
  %8 = load %struct._object*, %struct._object** %len, align 8, !dbg !2712, !tbaa !1050
  %call32 = tail call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %state, i32 0) #2, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %call32, i64 0, metadata !931, metadata !1010), !dbg !2684
  %cmp33 = icmp slt i32 %call32, 0, !dbg !2714
  br i1 %cmp33, label %cleanup, label %if.end.35, !dbg !2716

if.end.35:                                        ; preds = %if.end.31
  %cmp36 = icmp sgt i32 %call32, 0, !dbg !2717
  br i1 %cmp36, label %if.then.37, label %do.body.40, !dbg !2719

if.then.37:                                       ; preds = %if.end.35
  %9 = load %struct._object*, %struct._object** %len, align 8, !dbg !2720, !tbaa !1050
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !930, metadata !1010), !dbg !2677
  br label %do.body.40, !dbg !2721

do.body.40:                                       ; preds = %if.end.35, %if.then.37
  %state.addr.0 = phi %struct._object* [ %9, %if.then.37 ], [ %state, %if.end.35 ]
  %index42 = getelementptr inbounds %struct.longrangeiterobject, %struct.longrangeiterobject* %r, i64 0, i32 1, !dbg !2722
  %10 = load %struct._object*, %struct._object** %index42, align 8, !dbg !2722, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !943, metadata !1010), !dbg !2722
  %cmp43 = icmp eq %struct._object* %10, null, !dbg !2724
  br i1 %cmp43, label %if.end.58, label %if.then.44, !dbg !2725

if.then.44:                                       ; preds = %do.body.40
  store %struct._object* null, %struct._object** %index42, align 8, !dbg !2726, !tbaa !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !945, metadata !1010), !dbg !2728
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !2730
  %11 = load i64, i64* %ob_refcnt48, align 8, !dbg !2730, !tbaa !1023
  %dec49 = add i64 %11, -1, !dbg !2730
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !2730, !tbaa !1023
  %cmp50 = icmp eq i64 %dec49, 0, !dbg !2730
  br i1 %cmp50, label %if.else.52, label %if.end.58, !dbg !2732

if.else.52:                                       ; preds = %if.then.44
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !2733
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !2733, !tbaa !1027
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2733
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !2733, !tbaa !1028
  tail call void %13(%struct._object* %10) #2, !dbg !2733
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.52, %if.then.44, %do.body.40
  store %struct._object* %state.addr.0, %struct._object** %index42, align 8, !dbg !2735, !tbaa !1014
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %state.addr.0, i64 0, i32 0, !dbg !2736
  %14 = load i64, i64* %ob_refcnt63, align 8, !dbg !2736, !tbaa !1023
  %inc64 = add i64 %14, 1, !dbg !2736
  store i64 %inc64, i64* %ob_refcnt63, align 8, !dbg !2736, !tbaa !1023
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2737, !tbaa !1023
  %inc65 = add i64 %15, 1, !dbg !2737
  store i64 %inc65, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2737, !tbaa !1023
  br label %cleanup, !dbg !2737

cleanup:                                          ; preds = %if.end.31, %if.end.26, %entry, %if.end.58, %if.end.12
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.12 ], [ @_Py_NoneStruct, %if.end.58 ], [ null, %entry ], [ null, %if.end.26 ], [ null, %if.end.31 ]
  ret %struct._object* %retval.0, !dbg !2738
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1007, !1008}
!llvm.ident = !{!1009}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !394, globals: !960)
!1 = !DIFile(filename: "Objects/rangeobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !43, !350, !359, !368, !96, !16, !376, !385}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !51, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !43, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !10, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !43, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !51, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!352 = !DIFile(filename: "Include/sliceobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 22, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 23, baseType: !5, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !353, file: !352, line: 24, baseType: !4, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "rangeobject", file: !1, line: 19, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 384, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !1, line: 14, baseType: !5, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !361, file: !1, line: 15, baseType: !4, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !361, file: !1, line: 16, baseType: !4, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !361, file: !1, line: 17, baseType: !4, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !361, file: !1, line: 18, baseType: !4, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !370, line: 33, baseType: !371)
!370 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 25, size: 256, align: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !371, file: !370, line: 26, baseType: !22, size: 192, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !371, file: !370, line: 27, baseType: !375, size: 64, align: 64, offset: 192)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 64, elements: !81)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "longrangeiterobject", file: !1, line: 949, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 943, size: 384, align: 64, elements: !379)
!379 = !{!380, !381, !382, !383, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !378, file: !1, line: 944, baseType: !5, size: 128, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !378, file: !1, line: 945, baseType: !4, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !378, file: !1, line: 946, baseType: !4, size: 64, align: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !378, file: !1, line: 947, baseType: !4, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !1, line: 948, baseType: !4, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "rangeiterobject", file: !1, line: 753, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 747, size: 384, align: 64, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !387, file: !1, line: 748, baseType: !5, size: 128, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !387, file: !1, line: 749, baseType: !16, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !387, file: !1, line: 750, baseType: !16, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !387, file: !1, line: 751, baseType: !16, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !387, file: !1, line: 752, baseType: !16, size: 64, align: 64, offset: 320)
!394 = !{!395, !408, !414, !419, !429, !461, !469, !475, !501, !511, !572, !588, !646, !661, !667, !677, !700, !707, !720, !724, !733, !747, !796, !811, !816, !819, !841, !848, !856, !881, !905, !911, !927, !949}
!395 = !DISubprogram(name: "range_dealloc", scope: !1, file: !1, line: 145, type: !396, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.rangeobject*)* @range_dealloc, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !359}
!398 = !{!399, !400, !402, !404, !406}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !395, file: !1, line: 145, type: !359)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !401, file: !1, line: 147, type: !4)
!401 = distinct !DILexicalBlock(scope: !395, file: !1, line: 147, column: 5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !403, file: !1, line: 148, type: !4)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 148, column: 5)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !405, file: !1, line: 149, type: !4)
!405 = distinct !DILexicalBlock(scope: !395, file: !1, line: 149, column: 5)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !407, file: !1, line: 150, type: !4)
!407 = distinct !DILexicalBlock(scope: !395, file: !1, line: 150, column: 5)
!408 = !DISubprogram(name: "range_repr", scope: !1, file: !1, line: 616, type: !409, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*)* @range_repr, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!4, !359}
!411 = !{!412, !413}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !408, file: !1, line: 616, type: !359)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istep", scope: !408, file: !1, line: 618, type: !10)
!414 = !DISubprogram(name: "range_length", scope: !1, file: !1, line: 230, type: !415, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.rangeobject*)* @range_length, variables: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!10, !359}
!417 = !{!418}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !414, file: !1, line: 230, type: !359)
!419 = !DISubprogram(name: "range_item", scope: !1, file: !1, line: 310, type: !420, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, i64)* @range_item, variables: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!4, !359, !10}
!422 = !{!423, !424, !425, !426, !427}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !419, file: !1, line: 310, type: !359)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !419, file: !1, line: 310, type: !10)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !419, file: !1, line: 312, type: !4)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !419, file: !1, line: 312, type: !4)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !1, line: 317, type: !4)
!428 = distinct !DILexicalBlock(scope: !419, file: !1, line: 317, column: 5)
!429 = !DISubprogram(name: "compute_range_item", scope: !1, file: !1, line: 251, type: !430, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @compute_range_item, variables: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!4, !359, !4}
!432 = !{!433, !434, !435, !436, !437, !438, !439, !443, !449, !451, !455, !459}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !429, file: !1, line: 251, type: !359)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !429, file: !1, line: 251, type: !4)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !429, file: !1, line: 253, type: !43)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !429, file: !1, line: 254, type: !4)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !429, file: !1, line: 254, type: !4)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !429, file: !1, line: 256, type: !4)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !440, file: !1, line: 269, type: !4)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 269, column: 9)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 268, column: 27)
!442 = distinct !DILexicalBlock(scope: !429, file: !1, line: 268, column: 9)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !1, line: 275, type: !4)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 275, column: 9)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 274, column: 15)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 274, column: 11)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 272, column: 26)
!448 = distinct !DILexicalBlock(scope: !429, file: !1, line: 272, column: 9)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !1, line: 289, type: !4)
!450 = distinct !DILexicalBlock(scope: !429, file: !1, line: 289, column: 5)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !1, line: 294, type: !4)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 294, column: 8)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 293, column: 27)
!454 = distinct !DILexicalBlock(scope: !429, file: !1, line: 293, column: 9)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !1, line: 298, type: !4)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 298, column: 9)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 297, column: 26)
!458 = distinct !DILexicalBlock(scope: !429, file: !1, line: 297, column: 9)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !460, file: !1, line: 305, type: !4)
!460 = distinct !DILexicalBlock(scope: !429, file: !1, line: 305, column: 5)
!461 = !DISubprogram(name: "compute_item", scope: !1, file: !1, line: 236, type: !430, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, variables: !462)
!462 = !{!463, !464, !465, !466, !467}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !461, file: !1, line: 236, type: !359)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !461, file: !1, line: 236, type: !4)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !461, file: !1, line: 238, type: !4)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !461, file: !1, line: 238, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !1, line: 246, type: !4)
!468 = distinct !DILexicalBlock(scope: !461, file: !1, line: 246, column: 5)
!469 = !DISubprogram(name: "range_contains", scope: !1, file: !1, line: 412, type: !470, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rangeobject*, %struct._object*)* @range_contains, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!43, !359, !4}
!472 = !{!473, !474}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !469, file: !1, line: 412, type: !359)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !469, file: !1, line: 412, type: !4)
!475 = !DISubprogram(name: "range_contains_long", scope: !1, file: !1, line: 362, type: !470, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rangeobject*, %struct._object*)* @range_contains_long, variables: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !488, !491, !493, !496, !498}
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !475, file: !1, line: 362, type: !359)
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !475, file: !1, line: 362, type: !4)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp1", scope: !475, file: !1, line: 364, type: !43)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp2", scope: !475, file: !1, line: 364, type: !43)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp3", scope: !475, file: !1, line: 364, type: !43)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp1", scope: !475, file: !1, line: 365, type: !4)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp2", scope: !475, file: !1, line: 366, type: !4)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !475, file: !1, line: 367, type: !4)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !475, file: !1, line: 368, type: !43)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !487, file: !1, line: 405, type: !4)
!487 = distinct !DILexicalBlock(scope: !475, file: !1, line: 405, column: 5)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !1, line: 405, type: !4)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 405, column: 5)
!490 = distinct !DILexicalBlock(scope: !487, file: !1, line: 405, column: 5)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !492, file: !1, line: 406, type: !4)
!492 = distinct !DILexicalBlock(scope: !475, file: !1, line: 406, column: 5)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !1, line: 406, type: !4)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 406, column: 5)
!495 = distinct !DILexicalBlock(scope: !492, file: !1, line: 406, column: 5)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !497, file: !1, line: 407, type: !4)
!497 = distinct !DILexicalBlock(scope: !475, file: !1, line: 407, column: 5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !1, line: 407, type: !4)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 407, column: 5)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 407, column: 5)
!501 = !DISubprogram(name: "range_subscript", scope: !1, file: !1, line: 644, type: !430, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_subscript, variables: !502)
!502 = !{!503, !504, !505, !508, !509}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !501, file: !1, line: 644, type: !359)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !501, file: !1, line: 644, type: !4)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !506, file: !1, line: 647, type: !4)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 646, column: 30)
!507 = distinct !DILexicalBlock(scope: !501, file: !1, line: 646, column: 9)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !506, file: !1, line: 647, type: !4)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !1, line: 652, type: !4)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 652, column: 9)
!511 = !DISubprogram(name: "compute_slice", scope: !1, file: !1, line: 322, type: !430, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, variables: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !526, !530, !532, !536, !538, !542, !544, !547, !549, !552, !554, !557, !559, !562, !564, !567, !569}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !511, file: !1, line: 322, type: !359)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_slice", arg: 2, scope: !511, file: !1, line: 322, type: !4)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice", scope: !511, file: !1, line: 324, type: !350)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !511, file: !1, line: 325, type: !359)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !511, file: !1, line: 326, type: !4)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !511, file: !1, line: 326, type: !4)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !511, file: !1, line: 326, type: !4)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substart", scope: !511, file: !1, line: 327, type: !4)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substop", scope: !511, file: !1, line: 327, type: !4)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substep", scope: !511, file: !1, line: 327, type: !4)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !511, file: !1, line: 328, type: !43)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !525, file: !1, line: 336, type: !4)
!525 = distinct !DILexicalBlock(scope: !511, file: !1, line: 336, column: 5)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !1, line: 336, type: !4)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 336, column: 5)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 336, column: 5)
!529 = distinct !DILexicalBlock(scope: !525, file: !1, line: 336, column: 5)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !531, file: !1, line: 340, type: !4)
!531 = distinct !DILexicalBlock(scope: !511, file: !1, line: 340, column: 5)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !533, file: !1, line: 340, type: !4)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 340, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 340, column: 5)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 340, column: 5)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !537, file: !1, line: 344, type: !4)
!537 = distinct !DILexicalBlock(scope: !511, file: !1, line: 344, column: 5)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !539, file: !1, line: 344, type: !4)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 344, column: 5)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 344, column: 5)
!541 = distinct !DILexicalBlock(scope: !537, file: !1, line: 344, column: 5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !543, file: !1, line: 351, type: !4)
!543 = distinct !DILexicalBlock(scope: !511, file: !1, line: 351, column: 5)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !1, line: 351, type: !4)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 351, column: 5)
!546 = distinct !DILexicalBlock(scope: !543, file: !1, line: 351, column: 5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !548, file: !1, line: 352, type: !4)
!548 = distinct !DILexicalBlock(scope: !511, file: !1, line: 352, column: 5)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !550, file: !1, line: 352, type: !4)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 352, column: 5)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 352, column: 5)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !553, file: !1, line: 353, type: !4)
!553 = distinct !DILexicalBlock(scope: !511, file: !1, line: 353, column: 5)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !555, file: !1, line: 353, type: !4)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 353, column: 5)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 353, column: 5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !558, file: !1, line: 354, type: !4)
!558 = distinct !DILexicalBlock(scope: !511, file: !1, line: 354, column: 5)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !560, file: !1, line: 354, type: !4)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 354, column: 5)
!561 = distinct !DILexicalBlock(scope: !558, file: !1, line: 354, column: 5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !563, file: !1, line: 355, type: !4)
!563 = distinct !DILexicalBlock(scope: !511, file: !1, line: 355, column: 5)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !565, file: !1, line: 355, type: !4)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 355, column: 5)
!566 = distinct !DILexicalBlock(scope: !563, file: !1, line: 355, column: 5)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !568, file: !1, line: 356, type: !4)
!568 = distinct !DILexicalBlock(scope: !511, file: !1, line: 356, column: 5)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !570, file: !1, line: 356, type: !4)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 356, column: 5)
!571 = distinct !DILexicalBlock(scope: !568, file: !1, line: 356, column: 5)
!572 = !DISubprogram(name: "make_range_object", scope: !1, file: !1, line: 52, type: !573, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: %struct.rangeobject* (%struct._typeobject*, %struct._object*, %struct._object*, %struct._object*)* @make_range_object, variables: !577)
!573 = !DISubroutineType(types: !574)
!574 = !{!359, !575, !4, !4, !4}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!577 = !{!578, !579, !580, !581, !582, !583, !584}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !572, file: !1, line: 52, type: !575)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !572, file: !1, line: 52, type: !4)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 3, scope: !572, file: !1, line: 53, type: !4)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 4, scope: !572, file: !1, line: 53, type: !4)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !572, file: !1, line: 55, type: !359)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !572, file: !1, line: 56, type: !4)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !1, line: 63, type: !4)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 63, column: 9)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 62, column: 22)
!587 = distinct !DILexicalBlock(scope: !572, file: !1, line: 62, column: 9)
!588 = !DISubprogram(name: "compute_range_length", scope: !1, file: !1, line: 159, type: !135, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, variables: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !604, !608, !611, !613, !615, !617, !619, !621, !623, !626, !628, !631, !633, !636, !638, !641, !643}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !588, file: !1, line: 159, type: !4)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !588, file: !1, line: 159, type: !4)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !588, file: !1, line: 159, type: !4)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !588, file: !1, line: 165, type: !43)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !588, file: !1, line: 166, type: !4)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !588, file: !1, line: 166, type: !4)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !588, file: !1, line: 167, type: !4)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !588, file: !1, line: 168, type: !4)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp1", scope: !588, file: !1, line: 169, type: !4)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp2", scope: !588, file: !1, line: 169, type: !4)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !588, file: !1, line: 169, type: !4)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !588, file: !1, line: 172, type: !4)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !1, line: 176, type: !4)
!603 = distinct !DILexicalBlock(scope: !588, file: !1, line: 176, column: 5)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !605, file: !1, line: 194, type: !4)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 194, column: 9)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 193, column: 55)
!607 = distinct !DILexicalBlock(scope: !588, file: !1, line: 193, column: 9)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !609, file: !1, line: 194, type: !4)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 194, column: 9)
!610 = distinct !DILexicalBlock(scope: !605, file: !1, line: 194, column: 9)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !1, line: 213, type: !4)
!612 = distinct !DILexicalBlock(scope: !588, file: !1, line: 213, column: 5)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !1, line: 214, type: !4)
!614 = distinct !DILexicalBlock(scope: !588, file: !1, line: 214, column: 5)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !1, line: 215, type: !4)
!616 = distinct !DILexicalBlock(scope: !588, file: !1, line: 215, column: 5)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !618, file: !1, line: 216, type: !4)
!618 = distinct !DILexicalBlock(scope: !588, file: !1, line: 216, column: 5)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !1, line: 217, type: !4)
!620 = distinct !DILexicalBlock(scope: !588, file: !1, line: 217, column: 5)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !622, file: !1, line: 221, type: !4)
!622 = distinct !DILexicalBlock(scope: !588, file: !1, line: 221, column: 5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !624, file: !1, line: 221, type: !4)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 221, column: 5)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 221, column: 5)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !627, file: !1, line: 222, type: !4)
!627 = distinct !DILexicalBlock(scope: !588, file: !1, line: 222, column: 5)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !629, file: !1, line: 222, type: !4)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 222, column: 5)
!630 = distinct !DILexicalBlock(scope: !627, file: !1, line: 222, column: 5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !632, file: !1, line: 223, type: !4)
!632 = distinct !DILexicalBlock(scope: !588, file: !1, line: 223, column: 5)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !634, file: !1, line: 223, type: !4)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 223, column: 5)
!635 = distinct !DILexicalBlock(scope: !632, file: !1, line: 223, column: 5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !637, file: !1, line: 224, type: !4)
!637 = distinct !DILexicalBlock(scope: !588, file: !1, line: 224, column: 5)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !639, file: !1, line: 224, type: !4)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 224, column: 5)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 224, column: 5)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !642, file: !1, line: 225, type: !4)
!642 = distinct !DILexicalBlock(scope: !588, file: !1, line: 225, column: 5)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !644, file: !1, line: 225, type: !4)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 225, column: 5)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 225, column: 5)
!646 = !DISubprogram(name: "range_hash", scope: !1, file: !1, line: 506, type: !647, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.rangeobject*)* @range_hash, variables: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!218, !359}
!649 = !{!650, !651, !652, !653, !654, !657, !659}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !646, file: !1, line: 506, type: !359)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !646, file: !1, line: 508, type: !4)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !646, file: !1, line: 509, type: !218)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !646, file: !1, line: 510, type: !43)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !655, file: !1, line: 527, type: !4)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 526, column: 10)
!656 = distinct !DILexicalBlock(scope: !646, file: !1, line: 520, column: 9)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !1, line: 534, type: !4)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 534, column: 9)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !1, line: 548, type: !4)
!660 = distinct !DILexicalBlock(scope: !646, file: !1, line: 548, column: 5)
!661 = !DISubprogram(name: "range_richcompare", scope: !1, file: !1, line: 468, type: !271, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @range_richcompare, variables: !662)
!662 = !{!663, !664, !665, !666}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !661, file: !1, line: 468, type: !4)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !661, file: !1, line: 468, type: !4)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !661, file: !1, line: 468, type: !43)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !661, file: !1, line: 470, type: !43)
!667 = !DISubprogram(name: "range_equals", scope: !1, file: !1, line: 437, type: !668, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, variables: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!43, !359, !359}
!670 = !{!671, !672, !673, !674, !675}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r0", arg: 1, scope: !667, file: !1, line: 437, type: !359)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 2, scope: !667, file: !1, line: 437, type: !359)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !667, file: !1, line: 439, type: !43)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !667, file: !1, line: 440, type: !4)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !1, line: 460, type: !4)
!676 = distinct !DILexicalBlock(scope: !667, file: !1, line: 460, column: 5)
!677 = !DISubprogram(name: "range_reverse", scope: !1, file: !1, line: 1164, type: !116, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @range_reverse, variables: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !694, !696, !698}
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !677, file: !1, line: 1164, type: !4)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !677, file: !1, line: 1166, type: !359)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !677, file: !1, line: 1167, type: !376)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !677, file: !1, line: 1168, type: !4)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !677, file: !1, line: 1168, type: !4)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !677, file: !1, line: 1168, type: !4)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !677, file: !1, line: 1168, type: !4)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstart", scope: !677, file: !1, line: 1169, type: !16)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstop", scope: !677, file: !1, line: 1169, type: !16)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstep", scope: !677, file: !1, line: 1169, type: !16)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_start", scope: !677, file: !1, line: 1169, type: !16)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_stop", scope: !677, file: !1, line: 1169, type: !16)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ulen", scope: !677, file: !1, line: 1170, type: !96)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !693, file: !1, line: 1247, type: !4)
!693 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1247, column: 5)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !695, file: !1, line: 1252, type: !4)
!695 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1252, column: 5)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !697, file: !1, line: 1257, type: !4)
!697 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1257, column: 5)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !699, file: !1, line: 1273, type: !4)
!699 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1273, column: 5)
!700 = !DISubprogram(name: "get_len_of_range", scope: !1, file: !1, line: 880, type: !701, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, variables: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!96, !16, !16, !16}
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 1, scope: !700, file: !1, line: 880, type: !16)
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 2, scope: !700, file: !1, line: 880, type: !16)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !700, file: !1, line: 880, type: !16)
!707 = !DISubprogram(name: "fast_range_iter", scope: !1, file: !1, line: 908, type: !708, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!4, !16, !16, !16}
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !707, file: !1, line: 908, type: !16)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !707, file: !1, line: 908, type: !16)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !707, file: !1, line: 908, type: !16)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !707, file: !1, line: 910, type: !385)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ulen", scope: !707, file: !1, line: 911, type: !96)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !717, file: !1, line: 918, type: !4)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 918, column: 9)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 917, column: 41)
!719 = distinct !DILexicalBlock(scope: !707, file: !1, line: 917, column: 9)
!720 = !DISubprogram(name: "range_reduce", scope: !1, file: !1, line: 637, type: !430, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_reduce, variables: !721)
!721 = !{!722, !723}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !720, file: !1, line: 637, type: !359)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !720, file: !1, line: 637, type: !4)
!724 = !DISubprogram(name: "range_count", scope: !1, file: !1, line: 553, type: !430, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_count, variables: !725)
!725 = !{!726, !727, !728, !731}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !724, file: !1, line: 553, type: !359)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !724, file: !1, line: 553, type: !4)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !729, file: !1, line: 556, type: !43)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 555, column: 52)
!730 = distinct !DILexicalBlock(scope: !724, file: !1, line: 555, column: 9)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !732, file: !1, line: 564, type: !10)
!732 = distinct !DILexicalBlock(scope: !730, file: !1, line: 563, column: 12)
!733 = !DISubprogram(name: "range_index", scope: !1, file: !1, line: 573, type: !430, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeobject*, %struct._object*)* @range_index, variables: !734)
!734 = !{!735, !736, !737, !738, !741, !744, !745}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !733, file: !1, line: 573, type: !359)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !733, file: !1, line: 573, type: !4)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "contains", scope: !733, file: !1, line: 575, type: !43)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !739, file: !1, line: 578, type: !10)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 577, column: 54)
!740 = distinct !DILexicalBlock(scope: !733, file: !1, line: 577, column: 9)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !742, file: !1, line: 590, type: !4)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 589, column: 19)
!743 = distinct !DILexicalBlock(scope: !733, file: !1, line: 589, column: 9)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !742, file: !1, line: 590, type: !4)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !1, line: 595, type: !4)
!746 = distinct !DILexicalBlock(scope: !742, file: !1, line: 595, column: 9)
!747 = !DISubprogram(name: "range_new", scope: !1, file: !1, line: 79, type: !748, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @range_new, variables: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!4, !575, !4, !4}
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !764, !768, !770, !775, !779, !781, !783, !786, !788, !791, !793}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !747, file: !1, line: 79, type: !575)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !747, file: !1, line: 79, type: !4)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !747, file: !1, line: 79, type: !4)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !747, file: !1, line: 81, type: !359)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !747, file: !1, line: 82, type: !4)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !747, file: !1, line: 82, type: !4)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !747, file: !1, line: 82, type: !4)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !759, file: !1, line: 95, type: !4)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 95, column: 13)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 94, column: 21)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 94, column: 13)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 87, column: 34)
!763 = distinct !DILexicalBlock(scope: !747, file: !1, line: 87, column: 9)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !1, line: 100, type: !4)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 100, column: 13)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 99, column: 20)
!767 = distinct !DILexicalBlock(scope: !762, file: !1, line: 99, column: 13)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !1, line: 101, type: !4)
!769 = distinct !DILexicalBlock(scope: !766, file: !1, line: 101, column: 13)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !771, file: !1, line: 116, type: !4)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 116, column: 13)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 115, column: 20)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 115, column: 13)
!774 = distinct !DILexicalBlock(scope: !763, file: !1, line: 105, column: 10)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !776, file: !1, line: 121, type: !4)
!776 = distinct !DILexicalBlock(scope: !777, file: !1, line: 121, column: 13)
!777 = distinct !DILexicalBlock(scope: !778, file: !1, line: 120, column: 20)
!778 = distinct !DILexicalBlock(scope: !774, file: !1, line: 120, column: 13)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !780, file: !1, line: 122, type: !4)
!780 = distinct !DILexicalBlock(scope: !777, file: !1, line: 122, column: 13)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !782, file: !1, line: 132, type: !4)
!782 = distinct !DILexicalBlock(scope: !747, file: !1, line: 132, column: 5)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !1, line: 132, type: !4)
!784 = distinct !DILexicalBlock(scope: !785, file: !1, line: 132, column: 5)
!785 = distinct !DILexicalBlock(scope: !782, file: !1, line: 132, column: 5)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !1, line: 133, type: !4)
!787 = distinct !DILexicalBlock(scope: !747, file: !1, line: 133, column: 5)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !1, line: 133, type: !4)
!789 = distinct !DILexicalBlock(scope: !790, file: !1, line: 133, column: 5)
!790 = distinct !DILexicalBlock(scope: !787, file: !1, line: 133, column: 5)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !792, file: !1, line: 134, type: !4)
!792 = distinct !DILexicalBlock(scope: !747, file: !1, line: 134, column: 5)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !1, line: 134, type: !4)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 134, column: 5)
!795 = distinct !DILexicalBlock(scope: !792, file: !1, line: 134, column: 5)
!796 = !DISubprogram(name: "validate_step", scope: !1, file: !1, line: 25, type: !116, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, variables: !797)
!797 = !{!798, !799, !802, !807}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 1, scope: !796, file: !1, line: 25, type: !4)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istep", scope: !800, file: !1, line: 33, type: !10)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 32, column: 15)
!801 = distinct !DILexicalBlock(scope: !796, file: !1, line: 32, column: 9)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !803, file: !1, line: 41, type: !4)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 41, column: 13)
!804 = distinct !DILexicalBlock(scope: !805, file: !1, line: 38, column: 30)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 38, column: 18)
!806 = distinct !DILexicalBlock(scope: !800, file: !1, line: 34, column: 13)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !1, line: 41, type: !4)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 41, column: 13)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 41, column: 13)
!810 = distinct !DILexicalBlock(scope: !803, file: !1, line: 41, column: 13)
!811 = !DISubprogram(name: "rangeiter_next", scope: !1, file: !1, line: 756, type: !812, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_next, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!4, !385}
!814 = !{!815}
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !811, file: !1, line: 756, type: !385)
!816 = !DISubprogram(name: "rangeiter_len", scope: !1, file: !1, line: 767, type: !812, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_len, variables: !817)
!817 = !{!818}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !816, file: !1, line: 767, type: !385)
!819 = !DISubprogram(name: "rangeiter_reduce", scope: !1, file: !1, line: 776, type: !812, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*)* @rangeiter_reduce, variables: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !828, !831, !833, !836, !838}
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !819, file: !1, line: 776, type: !385)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !819, file: !1, line: 778, type: !4)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !819, file: !1, line: 778, type: !4)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !819, file: !1, line: 778, type: !4)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !819, file: !1, line: 779, type: !4)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !827, file: !1, line: 798, type: !4)
!827 = distinct !DILexicalBlock(scope: !819, file: !1, line: 798, column: 5)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !829, file: !1, line: 798, type: !4)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 798, column: 5)
!830 = distinct !DILexicalBlock(scope: !827, file: !1, line: 798, column: 5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !832, file: !1, line: 799, type: !4)
!832 = distinct !DILexicalBlock(scope: !819, file: !1, line: 799, column: 5)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !834, file: !1, line: 799, type: !4)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 799, column: 5)
!835 = distinct !DILexicalBlock(scope: !832, file: !1, line: 799, column: 5)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !837, file: !1, line: 800, type: !4)
!837 = distinct !DILexicalBlock(scope: !819, file: !1, line: 800, column: 5)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !839, file: !1, line: 800, type: !4)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 800, column: 5)
!840 = distinct !DILexicalBlock(scope: !837, file: !1, line: 800, column: 5)
!841 = !DISubprogram(name: "rangeiter_setstate", scope: !1, file: !1, line: 805, type: !842, isLocal: true, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rangeiterobject*, %struct._object*)* @rangeiter_setstate, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!4, !385, !4}
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !841, file: !1, line: 805, type: !385)
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !841, file: !1, line: 805, type: !4)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !841, file: !1, line: 807, type: !16)
!848 = !DISubprogram(name: "rangeiter_new", scope: !1, file: !1, line: 929, type: !748, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rangeiter_new, variables: !849)
!849 = !{!850, !851, !852, !853, !854, !855}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !848, file: !1, line: 929, type: !575)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !848, file: !1, line: 929, type: !4)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !848, file: !1, line: 929, type: !4)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !848, file: !1, line: 931, type: !16)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !848, file: !1, line: 931, type: !16)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !848, file: !1, line: 931, type: !16)
!856 = !DISubprogram(name: "longrangeiter_dealloc", scope: !1, file: !1, line: 1028, type: !857, isLocal: true, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.longrangeiterobject*)* @longrangeiter_dealloc, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !376}
!859 = !{!860, !861, !863, !866, !868, !871, !873, !876, !878}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !856, file: !1, line: 1028, type: !376)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !862, file: !1, line: 1030, type: !4)
!862 = distinct !DILexicalBlock(scope: !856, file: !1, line: 1030, column: 5)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !1, line: 1030, type: !4)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 1030, column: 5)
!865 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1030, column: 5)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !867, file: !1, line: 1031, type: !4)
!867 = distinct !DILexicalBlock(scope: !856, file: !1, line: 1031, column: 5)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !869, file: !1, line: 1031, type: !4)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 1031, column: 5)
!870 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1031, column: 5)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !872, file: !1, line: 1032, type: !4)
!872 = distinct !DILexicalBlock(scope: !856, file: !1, line: 1032, column: 5)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !874, file: !1, line: 1032, type: !4)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 1032, column: 5)
!875 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1032, column: 5)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !877, file: !1, line: 1033, type: !4)
!877 = distinct !DILexicalBlock(scope: !856, file: !1, line: 1033, column: 5)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !879, file: !1, line: 1033, type: !4)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 1033, column: 5)
!880 = distinct !DILexicalBlock(scope: !877, file: !1, line: 1033, column: 5)
!881 = !DISubprogram(name: "longrangeiter_next", scope: !1, file: !1, line: 1038, type: !882, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*)* @longrangeiter_next, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!4, !376}
!884 = !{!885, !886, !887, !888, !889, !890, !892, !896, !898, !902}
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !881, file: !1, line: 1038, type: !376)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !881, file: !1, line: 1040, type: !4)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !881, file: !1, line: 1040, type: !4)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_index", scope: !881, file: !1, line: 1040, type: !4)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !881, file: !1, line: 1040, type: !4)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !891, file: !1, line: 1049, type: !4)
!891 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1049, column: 5)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !893, file: !1, line: 1055, type: !4)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 1055, column: 9)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 1054, column: 19)
!895 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1054, column: 9)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !897, file: !1, line: 1060, type: !4)
!897 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1060, column: 5)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !899, file: !1, line: 1062, type: !4)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 1062, column: 9)
!900 = distinct !DILexicalBlock(scope: !901, file: !1, line: 1061, column: 17)
!901 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1061, column: 9)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !903, file: !1, line: 1066, type: !4)
!903 = distinct !DILexicalBlock(scope: !904, file: !1, line: 1066, column: 9)
!904 = distinct !DILexicalBlock(scope: !901, file: !1, line: 1065, column: 10)
!905 = !DISubprogram(name: "longrangeiter_len", scope: !1, file: !1, line: 952, type: !906, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_len, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!4, !376, !4}
!908 = !{!909, !910}
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !905, file: !1, line: 952, type: !376)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "no_args", arg: 2, scope: !905, file: !1, line: 952, type: !4)
!911 = !DISubprogram(name: "longrangeiter_reduce", scope: !1, file: !1, line: 958, type: !882, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*)* @longrangeiter_reduce, variables: !912)
!912 = !{!913, !914, !915, !916, !917, !919, !923, !925}
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !911, file: !1, line: 958, type: !376)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "product", scope: !911, file: !1, line: 960, type: !4)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !911, file: !1, line: 960, type: !4)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !911, file: !1, line: 961, type: !4)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !918, file: !1, line: 968, type: !4)
!918 = distinct !DILexicalBlock(scope: !911, file: !1, line: 968, column: 5)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !920, file: !1, line: 976, type: !4)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 976, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 975, column: 24)
!922 = distinct !DILexicalBlock(scope: !911, file: !1, line: 975, column: 9)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !924, file: !1, line: 977, type: !4)
!924 = distinct !DILexicalBlock(scope: !921, file: !1, line: 977, column: 9)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !926, file: !1, line: 978, type: !4)
!926 = distinct !DILexicalBlock(scope: !921, file: !1, line: 978, column: 9)
!927 = !DISubprogram(name: "longrangeiter_setstate", scope: !1, file: !1, line: 987, type: !906, isLocal: true, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.longrangeiterobject*, %struct._object*)* @longrangeiter_setstate, variables: !928)
!928 = !{!929, !930, !931, !932, !933, !937, !941, !943, !945}
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !927, file: !1, line: 987, type: !376)
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !927, file: !1, line: 987, type: !4)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !927, file: !1, line: 989, type: !43)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !927, file: !1, line: 992, type: !4)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !934, file: !1, line: 997, type: !4)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 997, column: 9)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 996, column: 18)
!936 = distinct !DILexicalBlock(scope: !927, file: !1, line: 996, column: 9)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !938, file: !1, line: 997, type: !4)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 997, column: 9)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 997, column: 9)
!940 = distinct !DILexicalBlock(scope: !934, file: !1, line: 997, column: 9)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !942, file: !1, line: 1001, type: !4)
!942 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1001, column: 5)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !944, file: !1, line: 1011, type: !4)
!944 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1011, column: 5)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !946, file: !1, line: 1011, type: !4)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1011, column: 5)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 1011, column: 5)
!948 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1011, column: 5)
!949 = !DISubprogram(name: "range_iter", scope: !1, file: !1, line: 1106, type: !116, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @range_iter, variables: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958}
!951 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !949, file: !1, line: 1106, type: !4)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !949, file: !1, line: 1108, type: !359)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !949, file: !1, line: 1109, type: !376)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstart", scope: !949, file: !1, line: 1110, type: !16)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstop", scope: !949, file: !1, line: 1110, type: !16)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lstep", scope: !949, file: !1, line: 1110, type: !16)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "int_it", scope: !949, file: !1, line: 1111, type: !4)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !959, file: !1, line: 1159, type: !4)
!959 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1159, column: 5)
!960 = !{!961, !962, !963, !964, !965, !966, !970, !975, !979, !983, !987, !992, !994, !998, !1002, !1006}
!961 = !DIGlobalVariable(name: "PyRange_Type", scope: !0, file: !1, line: 699, type: !576, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyRange_Type)
!962 = !DIGlobalVariable(name: "PyRangeIter_Type", scope: !0, file: !1, line: 834, type: !576, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyRangeIter_Type)
!963 = !DIGlobalVariable(name: "PyLongRangeIter_Type", scope: !0, file: !1, line: 1072, type: !576, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyLongRangeIter_Type)
!964 = !DIGlobalVariable(name: "range_as_sequence", scope: !0, file: !1, line: 604, type: !172, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @range_as_sequence)
!965 = !DIGlobalVariable(name: "range_as_mapping", scope: !0, file: !1, line: 665, type: !203, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @range_as_mapping)
!966 = !DIGlobalVariable(name: "range_doc", scope: !0, file: !1, line: 138, type: !967, isLocal: true, isDefinition: true, variable: [137 x i8]* @range_doc)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1096, align: 8, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 137)
!970 = !DIGlobalVariable(name: "range_methods", scope: !0, file: !1, line: 684, type: !971, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @range_methods)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 1280, align: 64, elements: !973)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!973 = !{!974}
!974 = !DISubrange(count: 5)
!975 = !DIGlobalVariable(name: "reverse_doc", scope: !0, file: !1, line: 674, type: !976, isLocal: true, isDefinition: true, variable: [27 x i8]* @reverse_doc)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 216, align: 8, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 27)
!979 = !DIGlobalVariable(name: "count_doc", scope: !0, file: !1, line: 677, type: !980, isLocal: true, isDefinition: true, variable: [77 x i8]* @count_doc)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 616, align: 8, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 77)
!983 = !DIGlobalVariable(name: "index_doc", scope: !0, file: !1, line: 680, type: !984, isLocal: true, isDefinition: true, variable: [125 x i8]* @index_doc)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1000, align: 8, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 125)
!987 = !DIGlobalVariable(name: "range_members", scope: !0, file: !1, line: 692, type: !988, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @range_members)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 1280, align: 64, elements: !990)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!990 = !{!991}
!991 = !DISubrange(count: 4)
!992 = !DIGlobalVariable(name: "rangeiter_methods", scope: !0, file: !1, line: 822, type: !993, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @rangeiter_methods)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 1024, align: 64, elements: !990)
!994 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !1, line: 772, type: !995, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 440, align: 8, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 55)
!998 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 819, type: !999, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 312, align: 8, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 39)
!1002 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !1, line: 820, type: !1003, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, align: 8, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 38)
!1006 = !DIGlobalVariable(name: "longrangeiter_methods", scope: !0, file: !1, line: 1017, type: !993, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @longrangeiter_methods)
!1007 = !{i32 2, !"Dwarf Version", i32 4}
!1008 = !{i32 2, !"Debug Info Version", i32 3}
!1009 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1010 = !DIExpression()
!1011 = !DILocation(line: 145, column: 28, scope: !395)
!1012 = !DILocation(line: 147, column: 5, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!1014 = !{!1015, !1020, i64 16}
!1015 = !{!"", !1016, i64 0, !1020, i64 16, !1020, i64 24, !1020, i64 32, !1020, i64 40}
!1016 = !{!"_object", !1017, i64 0, !1020, i64 8}
!1017 = !{!"long", !1018, i64 0}
!1018 = !{!"omnipotent char", !1019, i64 0}
!1019 = !{!"Simple C/C++ TBAA"}
!1020 = !{!"any pointer", !1018, i64 0}
!1021 = !DILocation(line: 147, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !401, file: !1, line: 147, column: 5)
!1023 = !{!1016, !1017, i64 0}
!1024 = !DILocation(line: 147, column: 5, scope: !401)
!1025 = !DILocation(line: 147, column: 5, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 3)
!1027 = !{!1016, !1020, i64 8}
!1028 = !{!1029, !1020, i64 48}
!1029 = !{!"_typeobject", !1030, i64 0, !1020, i64 24, !1017, i64 32, !1017, i64 40, !1020, i64 48, !1020, i64 56, !1020, i64 64, !1020, i64 72, !1020, i64 80, !1020, i64 88, !1020, i64 96, !1020, i64 104, !1020, i64 112, !1020, i64 120, !1020, i64 128, !1020, i64 136, !1020, i64 144, !1020, i64 152, !1020, i64 160, !1017, i64 168, !1020, i64 176, !1020, i64 184, !1020, i64 192, !1020, i64 200, !1017, i64 208, !1020, i64 216, !1020, i64 224, !1020, i64 232, !1020, i64 240, !1020, i64 248, !1020, i64 256, !1020, i64 264, !1020, i64 272, !1020, i64 280, !1017, i64 288, !1020, i64 296, !1020, i64 304, !1020, i64 312, !1020, i64 320, !1020, i64 328, !1020, i64 336, !1020, i64 344, !1020, i64 352, !1020, i64 360, !1020, i64 368, !1020, i64 376, !1031, i64 384, !1020, i64 392}
!1030 = !{!"", !1016, i64 0, !1017, i64 16}
!1031 = !{!"int", !1018, i64 0}
!1032 = !DILocation(line: 148, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!1034 = !{!1015, !1020, i64 24}
!1035 = !DILocation(line: 148, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !403, file: !1, line: 148, column: 5)
!1037 = !DILocation(line: 148, column: 5, scope: !403)
!1038 = !DILocation(line: 148, column: 5, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 3)
!1040 = !DILocation(line: 149, column: 5, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 1)
!1042 = !{!1015, !1020, i64 32}
!1043 = !DILocation(line: 149, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !405, file: !1, line: 149, column: 5)
!1045 = !DILocation(line: 149, column: 5, scope: !405)
!1046 = !DILocation(line: 149, column: 5, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 3)
!1048 = !DILocation(line: 150, column: 5, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !407, file: !1, discriminator: 1)
!1050 = !{!1015, !1020, i64 40}
!1051 = !DILocation(line: 150, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !407, file: !1, line: 150, column: 5)
!1053 = !DILocation(line: 150, column: 5, scope: !407)
!1054 = !DILocation(line: 150, column: 5, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 3)
!1056 = !DILocation(line: 151, column: 18, scope: !395)
!1057 = !DILocation(line: 151, column: 5, scope: !395)
!1058 = !DILocation(line: 152, column: 1, scope: !395)
!1059 = !DILocation(line: 616, column: 25, scope: !408)
!1060 = !DILocation(line: 623, column: 35, scope: !408)
!1061 = !DILocation(line: 623, column: 13, scope: !408)
!1062 = !DILocation(line: 618, column: 16, scope: !408)
!1063 = !DILocation(line: 624, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !408, file: !1, line: 624, column: 9)
!1065 = !DILocation(line: 624, column: 20, scope: !1064)
!1066 = !DILocation(line: 629, column: 57, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !408, file: !1, line: 628, column: 9)
!1068 = !DILocation(line: 629, column: 67, scope: !1067)
!1069 = !DILocation(line: 629, column: 16, scope: !1067)
!1070 = !DILocation(line: 629, column: 9, scope: !1067)
!1071 = !DILocation(line: 625, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 624, column: 58)
!1073 = !DILocation(line: 632, column: 59, scope: !1067)
!1074 = !DILocation(line: 631, column: 16, scope: !1067)
!1075 = !DILocation(line: 631, column: 9, scope: !1067)
!1076 = !DILocation(line: 633, column: 1, scope: !408)
!1077 = !DILocation(line: 506, column: 25, scope: !646)
!1078 = !DILocation(line: 509, column: 15, scope: !646)
!1079 = !DILocation(line: 512, column: 9, scope: !646)
!1080 = !DILocation(line: 508, column: 15, scope: !646)
!1081 = !DILocation(line: 513, column: 10, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !646, file: !1, line: 513, column: 9)
!1083 = !DILocation(line: 513, column: 9, scope: !646)
!1084 = !DILocation(line: 515, column: 5, scope: !646)
!1085 = !DILocation(line: 516, column: 5, scope: !646)
!1086 = !{!1020, !1020, i64 0}
!1087 = !DILocation(line: 517, column: 34, scope: !646)
!1088 = !DILocation(line: 517, column: 18, scope: !646)
!1089 = !DILocation(line: 510, column: 9, scope: !646)
!1090 = !DILocation(line: 518, column: 9, scope: !646)
!1091 = !DILocation(line: 521, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !656, file: !1, line: 520, column: 26)
!1093 = !DILocation(line: 522, column: 9, scope: !1092)
!1094 = !DILocation(line: 523, column: 9, scope: !1092)
!1095 = !DILocation(line: 525, column: 5, scope: !1092)
!1096 = !DILocation(line: 528, column: 9, scope: !655)
!1097 = !DILocation(line: 529, column: 9, scope: !655)
!1098 = !DILocation(line: 530, column: 15, scope: !655)
!1099 = !DILocation(line: 527, column: 19, scope: !655)
!1100 = !DILocation(line: 531, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !655, file: !1, line: 531, column: 13)
!1102 = !DILocation(line: 531, column: 13, scope: !655)
!1103 = !DILocation(line: 533, column: 50, scope: !655)
!1104 = !DILocation(line: 533, column: 22, scope: !655)
!1105 = !DILocation(line: 534, column: 9, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!1107 = !DILocation(line: 534, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !658, file: !1, line: 534, column: 9)
!1109 = !DILocation(line: 534, column: 9, scope: !658)
!1110 = !DILocation(line: 534, column: 9, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 3)
!1112 = !DILocation(line: 535, column: 13, scope: !655)
!1113 = !DILocation(line: 538, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 537, column: 30)
!1115 = distinct !DILexicalBlock(scope: !655, file: !1, line: 537, column: 13)
!1116 = !DILocation(line: 539, column: 13, scope: !1114)
!1117 = !DILocation(line: 540, column: 9, scope: !1114)
!1118 = !DILocation(line: 542, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 541, column: 14)
!1120 = !DILocation(line: 543, column: 13, scope: !1119)
!1121 = !DILocation(line: 546, column: 14, scope: !646)
!1122 = !DILocation(line: 546, column: 5, scope: !646)
!1123 = !DILocation(line: 548, column: 5, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!1125 = !DILocation(line: 548, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !660, file: !1, line: 548, column: 5)
!1127 = !DILocation(line: 548, column: 5, scope: !660)
!1128 = !DILocation(line: 548, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 3)
!1130 = !DILocation(line: 550, column: 1, scope: !646)
!1131 = !DILocation(line: 468, column: 29, scope: !661)
!1132 = !DILocation(line: 468, column: 45, scope: !661)
!1133 = !DILocation(line: 468, column: 56, scope: !661)
!1134 = !DILocation(line: 472, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !661, file: !1, line: 472, column: 9)
!1136 = !DILocation(line: 472, column: 9, scope: !661)
!1137 = !DILocation(line: 473, column: 9, scope: !1135)
!1138 = !DILocation(line: 474, column: 5, scope: !661)
!1139 = !DILocation(line: 442, column: 12, scope: !1140, inlinedAt: !1141)
!1140 = distinct !DILexicalBlock(scope: !667, file: !1, line: 442, column: 9)
!1141 = distinct !DILocation(line: 477, column: 18, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !661, file: !1, line: 474, column: 17)
!1143 = !DILocation(line: 442, column: 9, scope: !667, inlinedAt: !1141)
!1144 = !DILocation(line: 444, column: 47, scope: !667, inlinedAt: !1141)
!1145 = !DILocation(line: 444, column: 59, scope: !667, inlinedAt: !1141)
!1146 = !DILocation(line: 444, column: 18, scope: !667, inlinedAt: !1141)
!1147 = !DILocation(line: 439, column: 9, scope: !667, inlinedAt: !1141)
!1148 = !DILocation(line: 446, column: 20, scope: !1149, inlinedAt: !1141)
!1149 = distinct !DILexicalBlock(scope: !667, file: !1, line: 446, column: 9)
!1150 = !DILocation(line: 446, column: 9, scope: !667, inlinedAt: !1141)
!1151 = !DILocation(line: 448, column: 35, scope: !667, inlinedAt: !1141)
!1152 = !DILocation(line: 448, column: 18, scope: !667, inlinedAt: !1141)
!1153 = !DILocation(line: 450, column: 20, scope: !1154, inlinedAt: !1141)
!1154 = distinct !DILexicalBlock(scope: !667, file: !1, line: 450, column: 9)
!1155 = !DILocation(line: 450, column: 9, scope: !667, inlinedAt: !1141)
!1156 = !DILocation(line: 452, column: 47, scope: !667, inlinedAt: !1141)
!1157 = !DILocation(line: 452, column: 58, scope: !667, inlinedAt: !1141)
!1158 = !DILocation(line: 452, column: 18, scope: !667, inlinedAt: !1141)
!1159 = !DILocation(line: 454, column: 20, scope: !1160, inlinedAt: !1141)
!1160 = distinct !DILexicalBlock(scope: !667, file: !1, line: 454, column: 9)
!1161 = !DILocation(line: 454, column: 9, scope: !667, inlinedAt: !1141)
!1162 = !DILocation(line: 456, column: 11, scope: !667, inlinedAt: !1141)
!1163 = !DILocation(line: 440, column: 15, scope: !667, inlinedAt: !1141)
!1164 = !DILocation(line: 457, column: 10, scope: !1165, inlinedAt: !1141)
!1165 = distinct !DILexicalBlock(scope: !667, file: !1, line: 457, column: 9)
!1166 = !DILocation(line: 457, column: 9, scope: !667, inlinedAt: !1141)
!1167 = !DILocation(line: 459, column: 47, scope: !667, inlinedAt: !1141)
!1168 = !DILocation(line: 459, column: 18, scope: !667, inlinedAt: !1141)
!1169 = !DILocation(line: 460, column: 5, scope: !1170, inlinedAt: !1141)
!1170 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!1171 = !DILocation(line: 460, column: 5, scope: !1172, inlinedAt: !1141)
!1172 = distinct !DILexicalBlock(scope: !676, file: !1, line: 460, column: 5)
!1173 = !DILocation(line: 460, column: 5, scope: !676, inlinedAt: !1141)
!1174 = !DILocation(line: 460, column: 5, scope: !1175, inlinedAt: !1141)
!1175 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 3)
!1176 = !DILocation(line: 477, column: 18, scope: !1142)
!1177 = !DILocation(line: 462, column: 20, scope: !1178, inlinedAt: !1141)
!1178 = distinct !DILexicalBlock(scope: !667, file: !1, line: 462, column: 9)
!1179 = !DILocation(line: 462, column: 9, scope: !667, inlinedAt: !1141)
!1180 = !DILocation(line: 464, column: 41, scope: !667, inlinedAt: !1141)
!1181 = !DILocation(line: 464, column: 51, scope: !667, inlinedAt: !1141)
!1182 = !DILocation(line: 464, column: 12, scope: !667, inlinedAt: !1141)
!1183 = !DILocation(line: 464, column: 5, scope: !667, inlinedAt: !1141)
!1184 = !DILocation(line: 470, column: 9, scope: !661)
!1185 = !DILocation(line: 478, column: 20, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 478, column: 13)
!1187 = !DILocation(line: 478, column: 13, scope: !1142)
!1188 = !DILocation(line: 480, column: 16, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 480, column: 13)
!1190 = !DILocation(line: 481, column: 22, scope: !1189)
!1191 = !DILocation(line: 480, column: 13, scope: !1142)
!1192 = !DILocation(line: 482, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 482, column: 13)
!1194 = !DILocation(line: 482, column: 13, scope: !1142)
!1195 = !DILocation(line: 483, column: 13, scope: !1193)
!1196 = !DILocation(line: 485, column: 13, scope: !1193)
!1197 = !DILocation(line: 490, column: 9, scope: !1142)
!1198 = !DILocation(line: 492, column: 9, scope: !1142)
!1199 = !DILocation(line: 493, column: 9, scope: !1142)
!1200 = !DILocation(line: 495, column: 1, scope: !661)
!1201 = !DILocation(line: 1106, column: 22, scope: !949)
!1202 = !DILocation(line: 1117, column: 31, scope: !949)
!1203 = !DILocation(line: 1117, column: 14, scope: !949)
!1204 = !DILocation(line: 1110, column: 10, scope: !949)
!1205 = !DILocation(line: 1118, column: 16, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1118, column: 9)
!1207 = !DILocation(line: 1118, column: 22, scope: !1206)
!1208 = !DILocation(line: 1118, column: 25, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1206, file: !1, discriminator: 1)
!1210 = !DILocation(line: 1118, column: 9, scope: !949)
!1211 = !DILocation(line: 1119, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 1118, column: 43)
!1213 = !DILocation(line: 1120, column: 9, scope: !1212)
!1214 = !DILocation(line: 1122, column: 30, scope: !949)
!1215 = !DILocation(line: 1122, column: 13, scope: !949)
!1216 = !DILocation(line: 1110, column: 18, scope: !949)
!1217 = !DILocation(line: 1123, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1123, column: 9)
!1219 = !DILocation(line: 1123, column: 21, scope: !1218)
!1220 = !DILocation(line: 1123, column: 24, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1218, file: !1, discriminator: 1)
!1222 = !DILocation(line: 1123, column: 9, scope: !949)
!1223 = !DILocation(line: 1124, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 1123, column: 42)
!1225 = !DILocation(line: 1125, column: 9, scope: !1224)
!1226 = !DILocation(line: 1127, column: 30, scope: !949)
!1227 = !DILocation(line: 1127, column: 13, scope: !949)
!1228 = !DILocation(line: 1110, column: 25, scope: !949)
!1229 = !DILocation(line: 1128, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1128, column: 9)
!1231 = !DILocation(line: 1128, column: 21, scope: !1230)
!1232 = !DILocation(line: 1128, column: 24, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1230, file: !1, discriminator: 1)
!1234 = !DILocation(line: 1128, column: 9, scope: !949)
!1235 = !DILocation(line: 1129, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 1128, column: 42)
!1237 = !DILocation(line: 1130, column: 9, scope: !1236)
!1238 = !DILocation(line: 908, column: 22, scope: !707, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 1132, column: 14, scope: !949)
!1240 = !DILocation(line: 908, column: 34, scope: !707, inlinedAt: !1239)
!1241 = !DILocation(line: 908, column: 45, scope: !707, inlinedAt: !1239)
!1242 = !DILocation(line: 910, column: 27, scope: !707, inlinedAt: !1239)
!1243 = !DILocation(line: 912, column: 12, scope: !1244, inlinedAt: !1239)
!1244 = distinct !DILexicalBlock(scope: !707, file: !1, line: 912, column: 9)
!1245 = !DILocation(line: 912, column: 9, scope: !707, inlinedAt: !1239)
!1246 = !DILocation(line: 914, column: 9, scope: !707, inlinedAt: !1239)
!1247 = !DILocation(line: 914, column: 15, scope: !707, inlinedAt: !1239)
!1248 = !{!1249, !1017, i64 24}
!1249 = !{!"", !1016, i64 0, !1017, i64 16, !1017, i64 24, !1017, i64 32, !1017, i64 40}
!1250 = !DILocation(line: 915, column: 9, scope: !707, inlinedAt: !1239)
!1251 = !DILocation(line: 915, column: 14, scope: !707, inlinedAt: !1239)
!1252 = !{!1249, !1017, i64 32}
!1253 = !DILocation(line: 880, column: 23, scope: !700, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 916, column: 12, scope: !707, inlinedAt: !1239)
!1255 = !DILocation(line: 880, column: 32, scope: !700, inlinedAt: !1254)
!1256 = !DILocation(line: 880, column: 41, scope: !700, inlinedAt: !1254)
!1257 = !DILocation(line: 896, column: 14, scope: !1258, inlinedAt: !1254)
!1258 = distinct !DILexicalBlock(scope: !700, file: !1, line: 896, column: 9)
!1259 = !DILocation(line: 896, column: 24, scope: !1258, inlinedAt: !1254)
!1260 = !DILocation(line: 896, column: 18, scope: !1258, inlinedAt: !1254)
!1261 = !DILocation(line: 897, column: 26, scope: !1258, inlinedAt: !1254)
!1262 = !DILocation(line: 897, column: 32, scope: !1258, inlinedAt: !1254)
!1263 = !DILocation(line: 897, column: 38, scope: !1258, inlinedAt: !1254)
!1264 = !DILocation(line: 897, column: 9, scope: !1258, inlinedAt: !1254)
!1265 = !DILocation(line: 898, column: 19, scope: !1266, inlinedAt: !1254)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 898, column: 14)
!1267 = !DILocation(line: 898, column: 29, scope: !1266, inlinedAt: !1254)
!1268 = !DILocation(line: 898, column: 23, scope: !1266, inlinedAt: !1254)
!1269 = !DILocation(line: 899, column: 26, scope: !1266, inlinedAt: !1254)
!1270 = !DILocation(line: 899, column: 32, scope: !1266, inlinedAt: !1254)
!1271 = !DILocation(line: 899, column: 45, scope: !1266, inlinedAt: !1254)
!1272 = !DILocation(line: 899, column: 38, scope: !1266, inlinedAt: !1254)
!1273 = !DILocation(line: 899, column: 9, scope: !1266, inlinedAt: !1254)
!1274 = !DILocation(line: 1132, column: 14, scope: !949)
!1275 = !DILocation(line: 897, column: 20, scope: !1258, inlinedAt: !1254)
!1276 = !DILocation(line: 911, column: 19, scope: !707, inlinedAt: !1239)
!1277 = !DILocation(line: 917, column: 14, scope: !719, inlinedAt: !1239)
!1278 = !DILocation(line: 917, column: 9, scope: !707, inlinedAt: !1239)
!1279 = !DILocation(line: 918, column: 9, scope: !1280, inlinedAt: !1239)
!1280 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 1)
!1281 = !DILocation(line: 918, column: 9, scope: !1282, inlinedAt: !1239)
!1282 = distinct !DILexicalBlock(scope: !717, file: !1, line: 918, column: 9)
!1283 = !DILocation(line: 918, column: 9, scope: !717, inlinedAt: !1239)
!1284 = !DILocation(line: 918, column: 9, scope: !1285, inlinedAt: !1239)
!1285 = !DILexicalBlockFile(scope: !1282, file: !1, discriminator: 3)
!1286 = !DILocation(line: 919, column: 25, scope: !718, inlinedAt: !1239)
!1287 = !DILocation(line: 919, column: 9, scope: !718, inlinedAt: !1239)
!1288 = !DILocation(line: 921, column: 9, scope: !718, inlinedAt: !1239)
!1289 = !DILocation(line: 923, column: 9, scope: !707, inlinedAt: !1239)
!1290 = !DILocation(line: 923, column: 13, scope: !707, inlinedAt: !1239)
!1291 = !{!1249, !1017, i64 40}
!1292 = !DILocation(line: 924, column: 9, scope: !707, inlinedAt: !1239)
!1293 = !DILocation(line: 924, column: 15, scope: !707, inlinedAt: !1239)
!1294 = !{!1249, !1017, i64 16}
!1295 = !DILocation(line: 1111, column: 15, scope: !949)
!1296 = !DILocation(line: 1133, column: 50, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1133, column: 9)
!1299 = !DILocation(line: 1133, column: 27, scope: !1298)
!1300 = !DILocation(line: 1133, column: 9, scope: !949)
!1301 = !DILocation(line: 1134, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 1133, column: 72)
!1303 = !DILocation(line: 1135, column: 9, scope: !1302)
!1304 = !DILocation(line: 1140, column: 10, scope: !949)
!1305 = !DILocation(line: 1141, column: 12, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1141, column: 9)
!1307 = !DILocation(line: 1141, column: 9, scope: !949)
!1308 = !DILocation(line: 1145, column: 20, scope: !949)
!1309 = !DILocation(line: 1145, column: 9, scope: !949)
!1310 = !DILocation(line: 1145, column: 15, scope: !949)
!1311 = !DILocation(line: 1146, column: 19, scope: !949)
!1312 = !DILocation(line: 1146, column: 14, scope: !949)
!1313 = !DILocation(line: 1147, column: 18, scope: !949)
!1314 = !DILocation(line: 1147, column: 9, scope: !949)
!1315 = !DILocation(line: 1147, column: 13, scope: !949)
!1316 = !DILocation(line: 1148, column: 5, scope: !949)
!1317 = !DILocation(line: 1149, column: 5, scope: !949)
!1318 = !DILocation(line: 1150, column: 5, scope: !949)
!1319 = !DILocation(line: 1152, column: 17, scope: !949)
!1320 = !DILocation(line: 1152, column: 9, scope: !949)
!1321 = !DILocation(line: 1152, column: 15, scope: !949)
!1322 = !DILocation(line: 1153, column: 10, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1153, column: 9)
!1324 = !DILocation(line: 1153, column: 9, scope: !949)
!1325 = !DILocation(line: 1159, column: 5, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 1)
!1327 = !DILocation(line: 1159, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1159, column: 5)
!1329 = !DILocation(line: 1159, column: 5, scope: !959)
!1330 = !DILocation(line: 1159, column: 5, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 3)
!1332 = !DILocation(line: 1161, column: 1, scope: !949)
!1333 = !DILocation(line: 79, column: 25, scope: !747)
!1334 = !DILocation(line: 79, column: 41, scope: !747)
!1335 = !DILocation(line: 79, column: 57, scope: !747)
!1336 = !DILocation(line: 82, column: 5, scope: !747)
!1337 = !DILocation(line: 82, column: 15, scope: !747)
!1338 = !DILocation(line: 82, column: 30, scope: !747)
!1339 = !DILocation(line: 82, column: 44, scope: !747)
!1340 = !DILocation(line: 84, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !747, file: !1, line: 84, column: 9)
!1342 = !DILocation(line: 84, column: 9, scope: !747)
!1343 = !DILocation(line: 87, column: 9, scope: !763)
!1344 = !DILocation(line: 87, column: 28, scope: !763)
!1345 = !DILocation(line: 87, column: 9, scope: !747)
!1346 = !DILocation(line: 88, column: 14, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !762, file: !1, line: 88, column: 13)
!1348 = !DILocation(line: 88, column: 13, scope: !762)
!1349 = !DILocation(line: 90, column: 31, scope: !762)
!1350 = !DILocation(line: 90, column: 16, scope: !762)
!1351 = !DILocation(line: 90, column: 14, scope: !762)
!1352 = !DILocation(line: 91, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !762, file: !1, line: 91, column: 13)
!1354 = !DILocation(line: 91, column: 13, scope: !762)
!1355 = !DILocation(line: 93, column: 17, scope: !762)
!1356 = !DILocation(line: 93, column: 15, scope: !762)
!1357 = !DILocation(line: 94, column: 14, scope: !761)
!1358 = !DILocation(line: 94, column: 13, scope: !762)
!1359 = !DILocation(line: 95, column: 13, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !759, file: !1, discriminator: 1)
!1361 = !DILocation(line: 95, column: 13, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !759, file: !1, line: 95, column: 13)
!1363 = !DILocation(line: 95, column: 13, scope: !759)
!1364 = !DILocation(line: 95, column: 13, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1362, file: !1, discriminator: 3)
!1366 = !DILocation(line: 98, column: 16, scope: !762)
!1367 = !DILocation(line: 98, column: 14, scope: !762)
!1368 = !DILocation(line: 99, column: 14, scope: !767)
!1369 = !DILocation(line: 99, column: 13, scope: !762)
!1370 = !DILocation(line: 100, column: 13, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 1)
!1372 = !DILocation(line: 100, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !765, file: !1, line: 100, column: 13)
!1374 = !DILocation(line: 100, column: 13, scope: !765)
!1375 = !DILocation(line: 100, column: 13, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 3)
!1377 = !DILocation(line: 101, column: 13, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !769, file: !1, discriminator: 1)
!1379 = !DILocation(line: 101, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !769, file: !1, line: 101, column: 13)
!1381 = !DILocation(line: 101, column: 13, scope: !769)
!1382 = !DILocation(line: 101, column: 13, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1380, file: !1, discriminator: 3)
!1384 = !DILocation(line: 106, column: 14, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !774, file: !1, line: 106, column: 13)
!1386 = !DILocation(line: 106, column: 13, scope: !774)
!1387 = !DILocation(line: 111, column: 32, scope: !774)
!1388 = !DILocation(line: 111, column: 17, scope: !774)
!1389 = !DILocation(line: 111, column: 15, scope: !774)
!1390 = !DILocation(line: 112, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !774, file: !1, line: 112, column: 13)
!1392 = !DILocation(line: 112, column: 13, scope: !774)
!1393 = !DILocation(line: 114, column: 31, scope: !774)
!1394 = !DILocation(line: 114, column: 16, scope: !774)
!1395 = !DILocation(line: 114, column: 14, scope: !774)
!1396 = !DILocation(line: 115, column: 14, scope: !773)
!1397 = !DILocation(line: 115, column: 13, scope: !774)
!1398 = !DILocation(line: 116, column: 13, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 1)
!1400 = !DILocation(line: 116, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !771, file: !1, line: 116, column: 13)
!1402 = !DILocation(line: 116, column: 13, scope: !771)
!1403 = !DILocation(line: 116, column: 13, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1401, file: !1, discriminator: 3)
!1405 = !DILocation(line: 119, column: 30, scope: !774)
!1406 = !DILocation(line: 25, column: 25, scope: !796, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 119, column: 16, scope: !774)
!1408 = !DILocation(line: 28, column: 10, scope: !1409, inlinedAt: !1407)
!1409 = distinct !DILexicalBlock(scope: !796, file: !1, line: 28, column: 9)
!1410 = !DILocation(line: 28, column: 9, scope: !796, inlinedAt: !1407)
!1411 = !DILocation(line: 31, column: 12, scope: !796, inlinedAt: !1407)
!1412 = !DILocation(line: 32, column: 9, scope: !801, inlinedAt: !1407)
!1413 = !DILocation(line: 32, column: 9, scope: !796, inlinedAt: !1407)
!1414 = !DILocation(line: 33, column: 28, scope: !800, inlinedAt: !1407)
!1415 = !DILocation(line: 33, column: 20, scope: !800, inlinedAt: !1407)
!1416 = !DILocation(line: 34, column: 25, scope: !806, inlinedAt: !1407)
!1417 = !DILocation(line: 34, column: 28, scope: !1418, inlinedAt: !1407)
!1418 = !DILexicalBlockFile(scope: !806, file: !1, discriminator: 1)
!1419 = !DILocation(line: 34, column: 13, scope: !800, inlinedAt: !1407)
!1420 = !DILocation(line: 36, column: 13, scope: !1421, inlinedAt: !1407)
!1421 = distinct !DILexicalBlock(scope: !806, file: !1, line: 34, column: 46)
!1422 = !DILocation(line: 37, column: 9, scope: !1421, inlinedAt: !1407)
!1423 = !DILocation(line: 39, column: 29, scope: !804, inlinedAt: !1407)
!1424 = !DILocation(line: 39, column: 13, scope: !804, inlinedAt: !1407)
!1425 = !DILocation(line: 41, column: 13, scope: !1426, inlinedAt: !1407)
!1426 = !DILexicalBlockFile(scope: !803, file: !1, discriminator: 1)
!1427 = !DILocation(line: 41, column: 13, scope: !1428, inlinedAt: !1407)
!1428 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 4)
!1429 = !DILocation(line: 41, column: 13, scope: !1430, inlinedAt: !1407)
!1430 = distinct !DILexicalBlock(scope: !808, file: !1, line: 41, column: 13)
!1431 = !DILocation(line: 41, column: 13, scope: !808, inlinedAt: !1407)
!1432 = !DILocation(line: 41, column: 13, scope: !1433, inlinedAt: !1407)
!1433 = !DILexicalBlockFile(scope: !1430, file: !1, discriminator: 6)
!1434 = !DILocation(line: 119, column: 16, scope: !774)
!1435 = !DILocation(line: 119, column: 14, scope: !774)
!1436 = !DILocation(line: 120, column: 13, scope: !774)
!1437 = !DILocation(line: 29, column: 16, scope: !1409, inlinedAt: !1407)
!1438 = !DILocation(line: 120, column: 14, scope: !778)
!1439 = !DILocation(line: 121, column: 13, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !776, file: !1, discriminator: 1)
!1441 = !DILocation(line: 121, column: 13, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !776, file: !1, line: 121, column: 13)
!1443 = !DILocation(line: 121, column: 13, scope: !776)
!1444 = !DILocation(line: 121, column: 13, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1442, file: !1, discriminator: 3)
!1446 = !DILocation(line: 122, column: 13, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !780, file: !1, discriminator: 1)
!1448 = !DILocation(line: 122, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !780, file: !1, line: 122, column: 13)
!1450 = !DILocation(line: 122, column: 13, scope: !780)
!1451 = !DILocation(line: 122, column: 13, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1449, file: !1, discriminator: 3)
!1453 = !DILocation(line: 127, column: 48, scope: !747)
!1454 = !DILocation(line: 127, column: 35, scope: !747)
!1455 = !DILocation(line: 127, column: 42, scope: !747)
!1456 = !DILocation(line: 127, column: 11, scope: !747)
!1457 = !DILocation(line: 81, column: 18, scope: !747)
!1458 = !DILocation(line: 128, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !747, file: !1, line: 128, column: 9)
!1460 = !DILocation(line: 128, column: 9, scope: !747)
!1461 = !DILocation(line: 129, column: 16, scope: !1459)
!1462 = !DILocation(line: 129, column: 9, scope: !1459)
!1463 = !DILocation(line: 132, column: 5, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 1)
!1465 = !DILocation(line: 132, column: 5, scope: !785)
!1466 = !DILocation(line: 132, column: 5, scope: !782)
!1467 = !DILocation(line: 132, column: 5, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 4)
!1469 = !DILocation(line: 132, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !784, file: !1, line: 132, column: 5)
!1471 = !DILocation(line: 132, column: 5, scope: !784)
!1472 = !DILocation(line: 132, column: 5, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 6)
!1474 = !DILocation(line: 133, column: 5, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !787, file: !1, discriminator: 1)
!1476 = !DILocation(line: 133, column: 5, scope: !790)
!1477 = !DILocation(line: 133, column: 5, scope: !787)
!1478 = !DILocation(line: 133, column: 5, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !789, file: !1, discriminator: 4)
!1480 = !DILocation(line: 133, column: 5, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !789, file: !1, line: 133, column: 5)
!1482 = !DILocation(line: 133, column: 5, scope: !789)
!1483 = !DILocation(line: 133, column: 5, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1481, file: !1, discriminator: 6)
!1485 = !DILocation(line: 134, column: 5, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!1487 = !DILocation(line: 134, column: 5, scope: !795)
!1488 = !DILocation(line: 134, column: 5, scope: !792)
!1489 = !DILocation(line: 134, column: 5, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 4)
!1491 = !DILocation(line: 134, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !794, file: !1, line: 134, column: 5)
!1493 = !DILocation(line: 134, column: 5, scope: !794)
!1494 = !DILocation(line: 134, column: 5, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1492, file: !1, discriminator: 6)
!1496 = !DILocation(line: 136, column: 1, scope: !747)
!1497 = !DILocation(line: 756, column: 33, scope: !811)
!1498 = !DILocation(line: 758, column: 12, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !811, file: !1, line: 758, column: 9)
!1500 = !DILocation(line: 758, column: 23, scope: !1499)
!1501 = !DILocation(line: 758, column: 18, scope: !1499)
!1502 = !DILocation(line: 758, column: 9, scope: !811)
!1503 = !DILocation(line: 761, column: 42, scope: !1499)
!1504 = !DILocation(line: 762, column: 63, scope: !1499)
!1505 = !DILocation(line: 762, column: 72, scope: !1499)
!1506 = !DILocation(line: 762, column: 67, scope: !1499)
!1507 = !DILocation(line: 761, column: 48, scope: !1499)
!1508 = !DILocation(line: 761, column: 16, scope: !1499)
!1509 = !DILocation(line: 761, column: 9, scope: !1499)
!1510 = !DILocation(line: 764, column: 1, scope: !811)
!1511 = !DILocation(line: 929, column: 29, scope: !848)
!1512 = !DILocation(line: 929, column: 45, scope: !848)
!1513 = !DILocation(line: 929, column: 61, scope: !848)
!1514 = !DILocation(line: 931, column: 5, scope: !848)
!1515 = !DILocation(line: 933, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !848, file: !1, line: 933, column: 9)
!1517 = !DILocation(line: 933, column: 9, scope: !848)
!1518 = !DILocation(line: 931, column: 10, scope: !848)
!1519 = !DILocation(line: 931, column: 17, scope: !848)
!1520 = !DILocation(line: 931, column: 23, scope: !848)
!1521 = !DILocation(line: 936, column: 10, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !848, file: !1, line: 936, column: 9)
!1523 = !DILocation(line: 936, column: 9, scope: !848)
!1524 = !DILocation(line: 940, column: 28, scope: !848)
!1525 = !{!1017, !1017, i64 0}
!1526 = !DILocation(line: 940, column: 35, scope: !848)
!1527 = !DILocation(line: 940, column: 41, scope: !848)
!1528 = !DILocation(line: 908, column: 22, scope: !707, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 940, column: 12, scope: !848)
!1530 = !DILocation(line: 908, column: 34, scope: !707, inlinedAt: !1529)
!1531 = !DILocation(line: 908, column: 45, scope: !707, inlinedAt: !1529)
!1532 = !DILocation(line: 910, column: 27, scope: !707, inlinedAt: !1529)
!1533 = !DILocation(line: 912, column: 12, scope: !1244, inlinedAt: !1529)
!1534 = !DILocation(line: 912, column: 9, scope: !707, inlinedAt: !1529)
!1535 = !DILocation(line: 914, column: 9, scope: !707, inlinedAt: !1529)
!1536 = !DILocation(line: 914, column: 15, scope: !707, inlinedAt: !1529)
!1537 = !DILocation(line: 915, column: 9, scope: !707, inlinedAt: !1529)
!1538 = !DILocation(line: 915, column: 14, scope: !707, inlinedAt: !1529)
!1539 = !DILocation(line: 880, column: 23, scope: !700, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 916, column: 12, scope: !707, inlinedAt: !1529)
!1541 = !DILocation(line: 880, column: 32, scope: !700, inlinedAt: !1540)
!1542 = !DILocation(line: 880, column: 41, scope: !700, inlinedAt: !1540)
!1543 = !DILocation(line: 896, column: 14, scope: !1258, inlinedAt: !1540)
!1544 = !DILocation(line: 896, column: 24, scope: !1258, inlinedAt: !1540)
!1545 = !DILocation(line: 896, column: 18, scope: !1258, inlinedAt: !1540)
!1546 = !DILocation(line: 897, column: 26, scope: !1258, inlinedAt: !1540)
!1547 = !DILocation(line: 897, column: 32, scope: !1258, inlinedAt: !1540)
!1548 = !DILocation(line: 897, column: 38, scope: !1258, inlinedAt: !1540)
!1549 = !DILocation(line: 897, column: 9, scope: !1258, inlinedAt: !1540)
!1550 = !DILocation(line: 898, column: 19, scope: !1266, inlinedAt: !1540)
!1551 = !DILocation(line: 898, column: 29, scope: !1266, inlinedAt: !1540)
!1552 = !DILocation(line: 898, column: 23, scope: !1266, inlinedAt: !1540)
!1553 = !DILocation(line: 899, column: 26, scope: !1266, inlinedAt: !1540)
!1554 = !DILocation(line: 899, column: 32, scope: !1266, inlinedAt: !1540)
!1555 = !DILocation(line: 899, column: 45, scope: !1266, inlinedAt: !1540)
!1556 = !DILocation(line: 899, column: 38, scope: !1266, inlinedAt: !1540)
!1557 = !DILocation(line: 899, column: 9, scope: !1266, inlinedAt: !1540)
!1558 = !DILocation(line: 940, column: 12, scope: !848)
!1559 = !DILocation(line: 897, column: 20, scope: !1258, inlinedAt: !1540)
!1560 = !DILocation(line: 911, column: 19, scope: !707, inlinedAt: !1529)
!1561 = !DILocation(line: 917, column: 14, scope: !719, inlinedAt: !1529)
!1562 = !DILocation(line: 917, column: 9, scope: !707, inlinedAt: !1529)
!1563 = !DILocation(line: 918, column: 9, scope: !1280, inlinedAt: !1529)
!1564 = !DILocation(line: 918, column: 9, scope: !1282, inlinedAt: !1529)
!1565 = !DILocation(line: 918, column: 9, scope: !717, inlinedAt: !1529)
!1566 = !DILocation(line: 918, column: 9, scope: !1285, inlinedAt: !1529)
!1567 = !DILocation(line: 919, column: 25, scope: !718, inlinedAt: !1529)
!1568 = !DILocation(line: 919, column: 9, scope: !718, inlinedAt: !1529)
!1569 = !DILocation(line: 921, column: 9, scope: !718, inlinedAt: !1529)
!1570 = !DILocation(line: 923, column: 9, scope: !707, inlinedAt: !1529)
!1571 = !DILocation(line: 923, column: 13, scope: !707, inlinedAt: !1529)
!1572 = !DILocation(line: 924, column: 9, scope: !707, inlinedAt: !1529)
!1573 = !DILocation(line: 924, column: 15, scope: !707, inlinedAt: !1529)
!1574 = !DILocation(line: 925, column: 5, scope: !707, inlinedAt: !1529)
!1575 = !DILocation(line: 941, column: 1, scope: !848)
!1576 = !DILocation(line: 1028, column: 44, scope: !856)
!1577 = !DILocation(line: 1030, column: 5, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 1)
!1579 = !DILocation(line: 1030, column: 5, scope: !865)
!1580 = !DILocation(line: 1030, column: 5, scope: !862)
!1581 = !DILocation(line: 1030, column: 5, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 4)
!1583 = !DILocation(line: 1030, column: 5, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !864, file: !1, line: 1030, column: 5)
!1585 = !DILocation(line: 1030, column: 5, scope: !864)
!1586 = !DILocation(line: 1030, column: 5, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 6)
!1588 = !DILocation(line: 1031, column: 5, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 1)
!1590 = !DILocation(line: 1031, column: 5, scope: !870)
!1591 = !DILocation(line: 1031, column: 5, scope: !867)
!1592 = !DILocation(line: 1031, column: 5, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !869, file: !1, discriminator: 4)
!1594 = !DILocation(line: 1031, column: 5, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1031, column: 5)
!1596 = !DILocation(line: 1031, column: 5, scope: !869)
!1597 = !DILocation(line: 1031, column: 5, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1595, file: !1, discriminator: 6)
!1599 = !DILocation(line: 1032, column: 5, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 1)
!1601 = !DILocation(line: 1032, column: 5, scope: !875)
!1602 = !DILocation(line: 1032, column: 5, scope: !872)
!1603 = !DILocation(line: 1032, column: 5, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 4)
!1605 = !DILocation(line: 1032, column: 5, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !874, file: !1, line: 1032, column: 5)
!1607 = !DILocation(line: 1032, column: 5, scope: !874)
!1608 = !DILocation(line: 1032, column: 5, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1606, file: !1, discriminator: 6)
!1610 = !DILocation(line: 1033, column: 5, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 1)
!1612 = !DILocation(line: 1033, column: 5, scope: !880)
!1613 = !DILocation(line: 1033, column: 5, scope: !877)
!1614 = !DILocation(line: 1033, column: 5, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 4)
!1616 = !DILocation(line: 1033, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !879, file: !1, line: 1033, column: 5)
!1618 = !DILocation(line: 1033, column: 5, scope: !879)
!1619 = !DILocation(line: 1033, column: 5, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1617, file: !1, discriminator: 6)
!1621 = !DILocation(line: 1034, column: 18, scope: !856)
!1622 = !DILocation(line: 1034, column: 5, scope: !856)
!1623 = !DILocation(line: 1035, column: 1, scope: !856)
!1624 = !DILocation(line: 1038, column: 41, scope: !881)
!1625 = !DILocation(line: 1041, column: 37, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1041, column: 9)
!1627 = !DILocation(line: 1041, column: 47, scope: !1626)
!1628 = !DILocation(line: 1041, column: 9, scope: !1626)
!1629 = !DILocation(line: 1041, column: 59, scope: !1626)
!1630 = !DILocation(line: 1041, column: 9, scope: !881)
!1631 = !DILocation(line: 1044, column: 11, scope: !881)
!1632 = !DILocation(line: 1040, column: 15, scope: !881)
!1633 = !DILocation(line: 1045, column: 10, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1045, column: 9)
!1635 = !DILocation(line: 1045, column: 9, scope: !881)
!1636 = !DILocation(line: 1048, column: 33, scope: !881)
!1637 = !DILocation(line: 1048, column: 17, scope: !881)
!1638 = !DILocation(line: 1040, column: 31, scope: !881)
!1639 = !DILocation(line: 1049, column: 5, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !891, file: !1, discriminator: 1)
!1641 = !DILocation(line: 1049, column: 5, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !891, file: !1, line: 1049, column: 5)
!1643 = !DILocation(line: 1049, column: 5, scope: !891)
!1644 = !DILocation(line: 1049, column: 5, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1642, file: !1, discriminator: 3)
!1646 = !DILocation(line: 1050, column: 10, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1050, column: 9)
!1648 = !DILocation(line: 1050, column: 9, scope: !881)
!1649 = !DILocation(line: 1053, column: 36, scope: !881)
!1650 = !DILocation(line: 1053, column: 46, scope: !881)
!1651 = !DILocation(line: 1053, column: 15, scope: !881)
!1652 = !DILocation(line: 1040, column: 21, scope: !881)
!1653 = !DILocation(line: 1054, column: 10, scope: !895)
!1654 = !DILocation(line: 1054, column: 9, scope: !881)
!1655 = !DILocation(line: 1055, column: 9, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!1657 = !DILocation(line: 1055, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !893, file: !1, line: 1055, column: 9)
!1659 = !DILocation(line: 1055, column: 9, scope: !893)
!1660 = !DILocation(line: 1055, column: 9, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1658, file: !1, discriminator: 3)
!1662 = !DILocation(line: 1059, column: 30, scope: !881)
!1663 = !DILocation(line: 1059, column: 14, scope: !881)
!1664 = !DILocation(line: 1040, column: 43, scope: !881)
!1665 = !DILocation(line: 1060, column: 5, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 1)
!1667 = !DILocation(line: 1060, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1060, column: 5)
!1669 = !DILocation(line: 1060, column: 5, scope: !897)
!1670 = !DILocation(line: 1060, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1668, file: !1, discriminator: 3)
!1672 = !DILocation(line: 1061, column: 9, scope: !901)
!1673 = !DILocation(line: 1061, column: 9, scope: !881)
!1674 = !DILocation(line: 1062, column: 9, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 1)
!1676 = !DILocation(line: 1062, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1062, column: 9)
!1678 = !DILocation(line: 1062, column: 9, scope: !899)
!1679 = !DILocation(line: 1062, column: 9, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1677, file: !1, discriminator: 3)
!1681 = !DILocation(line: 1063, column: 18, scope: !900)
!1682 = !DILocation(line: 1064, column: 5, scope: !900)
!1683 = !DILocation(line: 1066, column: 9, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !903, file: !1, discriminator: 1)
!1685 = !DILocation(line: 1066, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !903, file: !1, line: 1066, column: 9)
!1687 = !DILocation(line: 1066, column: 9, scope: !903)
!1688 = !DILocation(line: 1066, column: 9, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 3)
!1690 = !DILocation(line: 1070, column: 1, scope: !881)
!1691 = !DILocation(line: 230, column: 27, scope: !414)
!1692 = !DILocation(line: 232, column: 32, scope: !414)
!1693 = !DILocation(line: 232, column: 12, scope: !414)
!1694 = !DILocation(line: 232, column: 5, scope: !414)
!1695 = !DILocation(line: 310, column: 25, scope: !419)
!1696 = !DILocation(line: 310, column: 39, scope: !419)
!1697 = !DILocation(line: 312, column: 27, scope: !419)
!1698 = !DILocation(line: 312, column: 21, scope: !419)
!1699 = !DILocation(line: 313, column: 10, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !419, file: !1, line: 313, column: 9)
!1701 = !DILocation(line: 313, column: 9, scope: !419)
!1702 = !DILocation(line: 316, column: 11, scope: !419)
!1703 = !DILocation(line: 312, column: 15, scope: !419)
!1704 = !DILocation(line: 317, column: 5, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 1)
!1706 = !DILocation(line: 317, column: 5, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !428, file: !1, line: 317, column: 5)
!1708 = !DILocation(line: 317, column: 5, scope: !428)
!1709 = !DILocation(line: 317, column: 5, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1707, file: !1, discriminator: 3)
!1711 = !DILocation(line: 319, column: 1, scope: !419)
!1712 = !DILocation(line: 412, column: 29, scope: !469)
!1713 = !DILocation(line: 412, column: 42, scope: !469)
!1714 = !DILocation(line: 414, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !469, file: !1, line: 414, column: 9)
!1716 = !DILocation(line: 414, column: 34, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 1)
!1718 = !DILocation(line: 414, column: 31, scope: !1715)
!1719 = !DILocation(line: 415, column: 16, scope: !1715)
!1720 = !DILocation(line: 415, column: 9, scope: !1715)
!1721 = !DILocation(line: 417, column: 40, scope: !469)
!1722 = !DILocation(line: 417, column: 17, scope: !469)
!1723 = !DILocation(line: 417, column: 12, scope: !469)
!1724 = !DILocation(line: 417, column: 5, scope: !469)
!1725 = !DILocation(line: 419, column: 1, scope: !469)
!1726 = !DILocation(line: 251, column: 33, scope: !429)
!1727 = !DILocation(line: 251, column: 46, scope: !429)
!1728 = !DILocation(line: 256, column: 22, scope: !429)
!1729 = !DILocation(line: 256, column: 15, scope: !429)
!1730 = !DILocation(line: 257, column: 14, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !429, file: !1, line: 257, column: 9)
!1732 = !DILocation(line: 257, column: 9, scope: !429)
!1733 = !DILocation(line: 267, column: 18, scope: !429)
!1734 = !DILocation(line: 253, column: 9, scope: !429)
!1735 = !DILocation(line: 268, column: 9, scope: !429)
!1736 = !DILocation(line: 269, column: 9, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 1)
!1738 = !DILocation(line: 269, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !440, file: !1, line: 269, column: 9)
!1740 = !DILocation(line: 269, column: 9, scope: !440)
!1741 = !DILocation(line: 269, column: 9, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1739, file: !1, discriminator: 3)
!1743 = !DILocation(line: 273, column: 27, scope: !447)
!1744 = !DILocation(line: 273, column: 11, scope: !447)
!1745 = !DILocation(line: 254, column: 15, scope: !429)
!1746 = !DILocation(line: 274, column: 12, scope: !446)
!1747 = !DILocation(line: 274, column: 11, scope: !447)
!1748 = !DILocation(line: 275, column: 9, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 1)
!1750 = !DILocation(line: 275, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !444, file: !1, line: 275, column: 9)
!1752 = !DILocation(line: 275, column: 9, scope: !444)
!1753 = !DILocation(line: 275, column: 9, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1751, file: !1, discriminator: 3)
!1755 = !DILocation(line: 280, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !448, file: !1, line: 278, column: 12)
!1757 = !DILocation(line: 288, column: 18, scope: !429)
!1758 = !DILocation(line: 289, column: 5, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!1760 = !DILocation(line: 289, column: 5, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !450, file: !1, line: 289, column: 5)
!1762 = !DILocation(line: 289, column: 5, scope: !450)
!1763 = !DILocation(line: 289, column: 5, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1761, file: !1, discriminator: 3)
!1765 = !DILocation(line: 290, column: 20, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !429, file: !1, line: 290, column: 9)
!1767 = !DILocation(line: 290, column: 9, scope: !429)
!1768 = !DILocation(line: 291, column: 53, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 290, column: 26)
!1770 = !DILocation(line: 291, column: 22, scope: !1769)
!1771 = !DILocation(line: 292, column: 5, scope: !1769)
!1772 = !DILocation(line: 293, column: 9, scope: !429)
!1773 = !DILocation(line: 294, column: 8, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!1775 = !DILocation(line: 294, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !452, file: !1, line: 294, column: 8)
!1777 = !DILocation(line: 294, column: 8, scope: !452)
!1778 = !DILocation(line: 294, column: 8, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1776, file: !1, discriminator: 3)
!1780 = !DILocation(line: 298, column: 9, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 1)
!1782 = !DILocation(line: 298, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !456, file: !1, line: 298, column: 9)
!1784 = !DILocation(line: 298, column: 9, scope: !456)
!1785 = !DILocation(line: 298, column: 9, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1783, file: !1, discriminator: 3)
!1787 = !DILocation(line: 299, column: 25, scope: !457)
!1788 = !DILocation(line: 299, column: 9, scope: !457)
!1789 = !DILocation(line: 301, column: 9, scope: !457)
!1790 = !DILocation(line: 236, column: 27, scope: !461, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 304, column: 14, scope: !429)
!1792 = !DILocation(line: 236, column: 40, scope: !461, inlinedAt: !1791)
!1793 = !DILocation(line: 242, column: 36, scope: !461, inlinedAt: !1791)
!1794 = !DILocation(line: 242, column: 12, scope: !461, inlinedAt: !1791)
!1795 = !DILocation(line: 238, column: 15, scope: !461, inlinedAt: !1791)
!1796 = !DILocation(line: 243, column: 10, scope: !1797, inlinedAt: !1791)
!1797 = distinct !DILexicalBlock(scope: !461, file: !1, line: 243, column: 9)
!1798 = !DILocation(line: 243, column: 9, scope: !461, inlinedAt: !1791)
!1799 = !DILocation(line: 245, column: 30, scope: !461, inlinedAt: !1791)
!1800 = !DILocation(line: 245, column: 14, scope: !461, inlinedAt: !1791)
!1801 = !DILocation(line: 238, column: 22, scope: !461, inlinedAt: !1791)
!1802 = !DILocation(line: 246, column: 5, scope: !1803, inlinedAt: !1791)
!1803 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 1)
!1804 = !DILocation(line: 246, column: 5, scope: !1805, inlinedAt: !1791)
!1805 = distinct !DILexicalBlock(scope: !468, file: !1, line: 246, column: 5)
!1806 = !DILocation(line: 246, column: 5, scope: !468, inlinedAt: !1791)
!1807 = !DILocation(line: 246, column: 5, scope: !1808, inlinedAt: !1791)
!1808 = !DILexicalBlockFile(scope: !1805, file: !1, discriminator: 3)
!1809 = !DILocation(line: 304, column: 14, scope: !429)
!1810 = !DILocation(line: 254, column: 19, scope: !429)
!1811 = !DILocation(line: 305, column: 5, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !460, file: !1, discriminator: 1)
!1813 = !DILocation(line: 305, column: 5, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !460, file: !1, line: 305, column: 5)
!1815 = !DILocation(line: 305, column: 5, scope: !460)
!1816 = !DILocation(line: 305, column: 5, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 3)
!1818 = !DILocation(line: 307, column: 1, scope: !429)
!1819 = !DILocation(line: 362, column: 34, scope: !475)
!1820 = !DILocation(line: 362, column: 47, scope: !475)
!1821 = !DILocation(line: 365, column: 15, scope: !475)
!1822 = !DILocation(line: 366, column: 15, scope: !475)
!1823 = !DILocation(line: 367, column: 15, scope: !475)
!1824 = !DILocation(line: 368, column: 9, scope: !475)
!1825 = !DILocation(line: 370, column: 12, scope: !475)
!1826 = !DILocation(line: 371, column: 14, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !475, file: !1, line: 371, column: 9)
!1828 = !DILocation(line: 371, column: 9, scope: !475)
!1829 = !DILocation(line: 376, column: 40, scope: !475)
!1830 = !DILocation(line: 376, column: 12, scope: !475)
!1831 = !DILocation(line: 364, column: 9, scope: !475)
!1832 = !DILocation(line: 377, column: 9, scope: !475)
!1833 = !DILocation(line: 380, column: 44, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 379, column: 20)
!1835 = distinct !DILexicalBlock(scope: !475, file: !1, line: 379, column: 9)
!1836 = !DILocation(line: 380, column: 16, scope: !1834)
!1837 = !DILocation(line: 364, column: 15, scope: !475)
!1838 = !DILocation(line: 381, column: 48, scope: !1834)
!1839 = !DILocation(line: 381, column: 16, scope: !1834)
!1840 = !DILocation(line: 364, column: 21, scope: !475)
!1841 = !DILocation(line: 382, column: 5, scope: !1834)
!1842 = !DILocation(line: 384, column: 48, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 383, column: 10)
!1844 = !DILocation(line: 384, column: 16, scope: !1843)
!1845 = !DILocation(line: 385, column: 44, scope: !1843)
!1846 = !DILocation(line: 385, column: 16, scope: !1843)
!1847 = !DILocation(line: 388, column: 14, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !475, file: !1, line: 388, column: 9)
!1849 = !DILocation(line: 388, column: 28, scope: !1848)
!1850 = !DILocation(line: 388, column: 20, scope: !1848)
!1851 = !DILocation(line: 390, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !475, file: !1, line: 390, column: 9)
!1853 = !DILocation(line: 390, column: 27, scope: !1852)
!1854 = !DILocation(line: 390, column: 19, scope: !1852)
!1855 = !DILocation(line: 396, column: 37, scope: !475)
!1856 = !DILocation(line: 396, column: 12, scope: !475)
!1857 = !DILocation(line: 397, column: 14, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !475, file: !1, line: 397, column: 9)
!1859 = !DILocation(line: 397, column: 9, scope: !475)
!1860 = !DILocation(line: 399, column: 40, scope: !475)
!1861 = !DILocation(line: 399, column: 12, scope: !475)
!1862 = !DILocation(line: 400, column: 14, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !475, file: !1, line: 400, column: 9)
!1864 = !DILocation(line: 400, column: 9, scope: !475)
!1865 = !DILocation(line: 403, column: 14, scope: !475)
!1866 = !DILocation(line: 403, column: 5, scope: !475)
!1867 = !DILocation(line: 405, column: 5, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !489, file: !1, line: 405, column: 5)
!1869 = !DILocation(line: 405, column: 5, scope: !489)
!1870 = !DILocation(line: 405, column: 5, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1868, file: !1, discriminator: 6)
!1872 = !DILocation(line: 406, column: 5, scope: !492)
!1873 = !DILocation(line: 406, column: 5, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !494, file: !1, line: 406, column: 5)
!1875 = !DILocation(line: 406, column: 5, scope: !494)
!1876 = !DILocation(line: 406, column: 5, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1874, file: !1, discriminator: 6)
!1878 = !DILocation(line: 407, column: 5, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 4)
!1880 = !DILocation(line: 407, column: 5, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !499, file: !1, line: 407, column: 5)
!1882 = !DILocation(line: 407, column: 5, scope: !499)
!1883 = !DILocation(line: 407, column: 5, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 6)
!1885 = !DILocation(line: 408, column: 5, scope: !475)
!1886 = !DILocation(line: 644, column: 30, scope: !501)
!1887 = !DILocation(line: 644, column: 46, scope: !501)
!1888 = !DILocation(line: 646, column: 9, scope: !507)
!1889 = !DILocation(line: 655, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !501, file: !1, line: 655, column: 9)
!1891 = !{!1029, !1020, i64 96}
!1892 = !DILocation(line: 646, column: 9, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!1894 = !{!1895, !1020, i64 264}
!1895 = !{!"", !1020, i64 0, !1020, i64 8, !1020, i64 16, !1020, i64 24, !1020, i64 32, !1020, i64 40, !1020, i64 48, !1020, i64 56, !1020, i64 64, !1020, i64 72, !1020, i64 80, !1020, i64 88, !1020, i64 96, !1020, i64 104, !1020, i64 112, !1020, i64 120, !1020, i64 128, !1020, i64 136, !1020, i64 144, !1020, i64 152, !1020, i64 160, !1020, i64 168, !1020, i64 176, !1020, i64 184, !1020, i64 192, !1020, i64 200, !1020, i64 208, !1020, i64 216, !1020, i64 224, !1020, i64 232, !1020, i64 240, !1020, i64 248, !1020, i64 256, !1020, i64 264}
!1896 = !DILocation(line: 646, column: 9, scope: !501)
!1897 = !DILocation(line: 648, column: 13, scope: !506)
!1898 = !DILocation(line: 647, column: 19, scope: !506)
!1899 = !DILocation(line: 649, column: 14, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !506, file: !1, line: 649, column: 13)
!1901 = !DILocation(line: 649, column: 13, scope: !506)
!1902 = !DILocation(line: 651, column: 18, scope: !506)
!1903 = !DILocation(line: 647, column: 23, scope: !506)
!1904 = !DILocation(line: 652, column: 9, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !510, file: !1, discriminator: 1)
!1906 = !DILocation(line: 652, column: 9, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !510, file: !1, line: 652, column: 9)
!1908 = !DILocation(line: 652, column: 9, scope: !510)
!1909 = !DILocation(line: 652, column: 9, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1907, file: !1, discriminator: 3)
!1911 = !DILocation(line: 655, column: 9, scope: !501)
!1912 = !DILocation(line: 322, column: 28, scope: !511, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 656, column: 16, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 655, column: 30)
!1915 = !DILocation(line: 322, column: 41, scope: !511, inlinedAt: !1913)
!1916 = !DILocation(line: 324, column: 28, scope: !511, inlinedAt: !1913)
!1917 = !DILocation(line: 324, column: 20, scope: !511, inlinedAt: !1913)
!1918 = !DILocation(line: 326, column: 5, scope: !511, inlinedAt: !1913)
!1919 = !DILocation(line: 326, column: 15, scope: !511, inlinedAt: !1913)
!1920 = !DILocation(line: 326, column: 30, scope: !511, inlinedAt: !1913)
!1921 = !DILocation(line: 326, column: 44, scope: !511, inlinedAt: !1913)
!1922 = !DILocation(line: 327, column: 15, scope: !511, inlinedAt: !1913)
!1923 = !DILocation(line: 327, column: 33, scope: !511, inlinedAt: !1913)
!1924 = !DILocation(line: 327, column: 50, scope: !511, inlinedAt: !1913)
!1925 = !DILocation(line: 330, column: 47, scope: !511, inlinedAt: !1913)
!1926 = !DILocation(line: 330, column: 13, scope: !511, inlinedAt: !1913)
!1927 = !DILocation(line: 328, column: 9, scope: !511, inlinedAt: !1913)
!1928 = !DILocation(line: 331, column: 15, scope: !1929, inlinedAt: !1913)
!1929 = distinct !DILexicalBlock(scope: !511, file: !1, line: 331, column: 9)
!1930 = !DILocation(line: 331, column: 9, scope: !511, inlinedAt: !1913)
!1931 = !DILocation(line: 334, column: 36, scope: !511, inlinedAt: !1913)
!1932 = !DILocation(line: 334, column: 42, scope: !511, inlinedAt: !1913)
!1933 = !DILocation(line: 334, column: 15, scope: !511, inlinedAt: !1913)
!1934 = !DILocation(line: 335, column: 17, scope: !1935, inlinedAt: !1913)
!1935 = distinct !DILexicalBlock(scope: !511, file: !1, line: 335, column: 9)
!1936 = !DILocation(line: 335, column: 9, scope: !511, inlinedAt: !1913)
!1937 = !DILocation(line: 336, column: 5, scope: !1938, inlinedAt: !1913)
!1938 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 1)
!1939 = !DILocation(line: 336, column: 5, scope: !529, inlinedAt: !1913)
!1940 = !DILocation(line: 336, column: 5, scope: !525, inlinedAt: !1913)
!1941 = !DILocation(line: 336, column: 5, scope: !1942, inlinedAt: !1913)
!1942 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 2)
!1943 = !DILocation(line: 336, column: 5, scope: !1944, inlinedAt: !1913)
!1944 = !DILexicalBlockFile(scope: !527, file: !1, discriminator: 4)
!1945 = !DILocation(line: 336, column: 5, scope: !1946, inlinedAt: !1913)
!1946 = distinct !DILexicalBlock(scope: !527, file: !1, line: 336, column: 5)
!1947 = !DILocation(line: 336, column: 5, scope: !527, inlinedAt: !1913)
!1948 = !DILocation(line: 336, column: 5, scope: !1949, inlinedAt: !1913)
!1949 = !DILexicalBlockFile(scope: !1946, file: !1, discriminator: 6)
!1950 = !DILocation(line: 656, column: 16, scope: !1914)
!1951 = !DILocation(line: 338, column: 32, scope: !511, inlinedAt: !1913)
!1952 = !DILocation(line: 236, column: 27, scope: !461, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 338, column: 16, scope: !511, inlinedAt: !1913)
!1954 = !DILocation(line: 236, column: 40, scope: !461, inlinedAt: !1953)
!1955 = !DILocation(line: 242, column: 36, scope: !461, inlinedAt: !1953)
!1956 = !DILocation(line: 242, column: 12, scope: !461, inlinedAt: !1953)
!1957 = !DILocation(line: 238, column: 15, scope: !461, inlinedAt: !1953)
!1958 = !DILocation(line: 243, column: 10, scope: !1797, inlinedAt: !1953)
!1959 = !DILocation(line: 243, column: 9, scope: !461, inlinedAt: !1953)
!1960 = !DILocation(line: 245, column: 30, scope: !461, inlinedAt: !1953)
!1961 = !DILocation(line: 245, column: 14, scope: !461, inlinedAt: !1953)
!1962 = !DILocation(line: 238, column: 22, scope: !461, inlinedAt: !1953)
!1963 = !DILocation(line: 246, column: 5, scope: !1803, inlinedAt: !1953)
!1964 = !DILocation(line: 246, column: 5, scope: !1805, inlinedAt: !1953)
!1965 = !DILocation(line: 246, column: 5, scope: !468, inlinedAt: !1953)
!1966 = !DILocation(line: 246, column: 5, scope: !1808, inlinedAt: !1953)
!1967 = !DILocation(line: 338, column: 16, scope: !511, inlinedAt: !1913)
!1968 = !DILocation(line: 339, column: 18, scope: !1969, inlinedAt: !1913)
!1969 = distinct !DILexicalBlock(scope: !511, file: !1, line: 339, column: 9)
!1970 = !DILocation(line: 339, column: 9, scope: !511, inlinedAt: !1913)
!1971 = !DILocation(line: 340, column: 5, scope: !1972, inlinedAt: !1913)
!1972 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!1973 = !DILocation(line: 340, column: 5, scope: !535, inlinedAt: !1913)
!1974 = !DILocation(line: 340, column: 5, scope: !531, inlinedAt: !1913)
!1975 = !DILocation(line: 340, column: 5, scope: !1976, inlinedAt: !1913)
!1976 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 2)
!1977 = !DILocation(line: 340, column: 5, scope: !1978, inlinedAt: !1913)
!1978 = !DILexicalBlockFile(scope: !533, file: !1, discriminator: 4)
!1979 = !DILocation(line: 340, column: 5, scope: !1980, inlinedAt: !1913)
!1980 = distinct !DILexicalBlock(scope: !533, file: !1, line: 340, column: 5)
!1981 = !DILocation(line: 340, column: 5, scope: !533, inlinedAt: !1913)
!1982 = !DILocation(line: 340, column: 5, scope: !1983, inlinedAt: !1913)
!1983 = !DILexicalBlockFile(scope: !1980, file: !1, discriminator: 6)
!1984 = !DILocation(line: 342, column: 31, scope: !511, inlinedAt: !1913)
!1985 = !DILocation(line: 236, column: 27, scope: !461, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 342, column: 15, scope: !511, inlinedAt: !1913)
!1987 = !DILocation(line: 236, column: 40, scope: !461, inlinedAt: !1986)
!1988 = !DILocation(line: 242, column: 36, scope: !461, inlinedAt: !1986)
!1989 = !DILocation(line: 242, column: 12, scope: !461, inlinedAt: !1986)
!1990 = !DILocation(line: 238, column: 15, scope: !461, inlinedAt: !1986)
!1991 = !DILocation(line: 243, column: 10, scope: !1797, inlinedAt: !1986)
!1992 = !DILocation(line: 243, column: 9, scope: !461, inlinedAt: !1986)
!1993 = !DILocation(line: 245, column: 30, scope: !461, inlinedAt: !1986)
!1994 = !DILocation(line: 245, column: 14, scope: !461, inlinedAt: !1986)
!1995 = !DILocation(line: 238, column: 22, scope: !461, inlinedAt: !1986)
!1996 = !DILocation(line: 246, column: 5, scope: !1803, inlinedAt: !1986)
!1997 = !DILocation(line: 246, column: 5, scope: !1805, inlinedAt: !1986)
!1998 = !DILocation(line: 246, column: 5, scope: !468, inlinedAt: !1986)
!1999 = !DILocation(line: 246, column: 5, scope: !1808, inlinedAt: !1986)
!2000 = !DILocation(line: 342, column: 15, scope: !511, inlinedAt: !1913)
!2001 = !DILocation(line: 343, column: 17, scope: !2002, inlinedAt: !1913)
!2002 = distinct !DILexicalBlock(scope: !511, file: !1, line: 343, column: 9)
!2003 = !DILocation(line: 343, column: 9, scope: !511, inlinedAt: !1913)
!2004 = !DILocation(line: 344, column: 5, scope: !2005, inlinedAt: !1913)
!2005 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 1)
!2006 = !DILocation(line: 344, column: 5, scope: !541, inlinedAt: !1913)
!2007 = !DILocation(line: 344, column: 5, scope: !537, inlinedAt: !1913)
!2008 = !DILocation(line: 344, column: 5, scope: !2009, inlinedAt: !1913)
!2009 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 2)
!2010 = !DILocation(line: 344, column: 5, scope: !2011, inlinedAt: !1913)
!2011 = !DILexicalBlockFile(scope: !539, file: !1, discriminator: 4)
!2012 = !DILocation(line: 344, column: 5, scope: !2013, inlinedAt: !1913)
!2013 = distinct !DILexicalBlock(scope: !539, file: !1, line: 344, column: 5)
!2014 = !DILocation(line: 344, column: 5, scope: !539, inlinedAt: !1913)
!2015 = !DILocation(line: 344, column: 5, scope: !2016, inlinedAt: !1913)
!2016 = !DILexicalBlockFile(scope: !2013, file: !1, discriminator: 6)
!2017 = !DILocation(line: 346, column: 32, scope: !511, inlinedAt: !1913)
!2018 = !DILocation(line: 346, column: 14, scope: !511, inlinedAt: !1913)
!2019 = !DILocation(line: 325, column: 18, scope: !511, inlinedAt: !1913)
!2020 = !DILocation(line: 347, column: 16, scope: !2021, inlinedAt: !1913)
!2021 = distinct !DILexicalBlock(scope: !511, file: !1, line: 347, column: 9)
!2022 = !DILocation(line: 347, column: 9, scope: !511, inlinedAt: !1913)
!2023 = !DILocation(line: 348, column: 16, scope: !2024, inlinedAt: !1913)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 347, column: 25)
!2025 = !DILocation(line: 348, column: 9, scope: !2024, inlinedAt: !1913)
!2026 = !DILocation(line: 351, column: 5, scope: !2027, inlinedAt: !1913)
!2027 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 1)
!2028 = !DILocation(line: 351, column: 5, scope: !546, inlinedAt: !1913)
!2029 = !DILocation(line: 351, column: 5, scope: !543, inlinedAt: !1913)
!2030 = !DILocation(line: 351, column: 5, scope: !2031, inlinedAt: !1913)
!2031 = !DILexicalBlockFile(scope: !545, file: !1, discriminator: 4)
!2032 = !DILocation(line: 351, column: 5, scope: !2033, inlinedAt: !1913)
!2033 = distinct !DILexicalBlock(scope: !545, file: !1, line: 351, column: 5)
!2034 = !DILocation(line: 351, column: 5, scope: !545, inlinedAt: !1913)
!2035 = !DILocation(line: 351, column: 5, scope: !2036, inlinedAt: !1913)
!2036 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 6)
!2037 = !DILocation(line: 352, column: 5, scope: !2038, inlinedAt: !1913)
!2038 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!2039 = !DILocation(line: 352, column: 5, scope: !551, inlinedAt: !1913)
!2040 = !DILocation(line: 352, column: 5, scope: !548, inlinedAt: !1913)
!2041 = !DILocation(line: 352, column: 5, scope: !2042, inlinedAt: !1913)
!2042 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 4)
!2043 = !DILocation(line: 352, column: 5, scope: !2044, inlinedAt: !1913)
!2044 = distinct !DILexicalBlock(scope: !550, file: !1, line: 352, column: 5)
!2045 = !DILocation(line: 352, column: 5, scope: !550, inlinedAt: !1913)
!2046 = !DILocation(line: 352, column: 5, scope: !2047, inlinedAt: !1913)
!2047 = !DILexicalBlockFile(scope: !2044, file: !1, discriminator: 6)
!2048 = !DILocation(line: 353, column: 5, scope: !2049, inlinedAt: !1913)
!2049 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 1)
!2050 = !DILocation(line: 353, column: 5, scope: !556, inlinedAt: !1913)
!2051 = !DILocation(line: 353, column: 5, scope: !553, inlinedAt: !1913)
!2052 = !DILocation(line: 353, column: 5, scope: !2053, inlinedAt: !1913)
!2053 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 4)
!2054 = !DILocation(line: 353, column: 5, scope: !2055, inlinedAt: !1913)
!2055 = distinct !DILexicalBlock(scope: !555, file: !1, line: 353, column: 5)
!2056 = !DILocation(line: 353, column: 5, scope: !555, inlinedAt: !1913)
!2057 = !DILocation(line: 353, column: 5, scope: !2058, inlinedAt: !1913)
!2058 = !DILexicalBlockFile(scope: !2055, file: !1, discriminator: 6)
!2059 = !DILocation(line: 354, column: 5, scope: !2060, inlinedAt: !1913)
!2060 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 1)
!2061 = !DILocation(line: 354, column: 5, scope: !561, inlinedAt: !1913)
!2062 = !DILocation(line: 354, column: 5, scope: !558, inlinedAt: !1913)
!2063 = !DILocation(line: 354, column: 5, scope: !2064, inlinedAt: !1913)
!2064 = !DILexicalBlockFile(scope: !560, file: !1, discriminator: 4)
!2065 = !DILocation(line: 354, column: 5, scope: !2066, inlinedAt: !1913)
!2066 = distinct !DILexicalBlock(scope: !560, file: !1, line: 354, column: 5)
!2067 = !DILocation(line: 354, column: 5, scope: !560, inlinedAt: !1913)
!2068 = !DILocation(line: 354, column: 5, scope: !2069, inlinedAt: !1913)
!2069 = !DILexicalBlockFile(scope: !2066, file: !1, discriminator: 6)
!2070 = !DILocation(line: 355, column: 5, scope: !2071, inlinedAt: !1913)
!2071 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 1)
!2072 = !DILocation(line: 355, column: 5, scope: !566, inlinedAt: !1913)
!2073 = !DILocation(line: 355, column: 5, scope: !563, inlinedAt: !1913)
!2074 = !DILocation(line: 355, column: 5, scope: !2075, inlinedAt: !1913)
!2075 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 4)
!2076 = !DILocation(line: 355, column: 5, scope: !2077, inlinedAt: !1913)
!2077 = distinct !DILexicalBlock(scope: !565, file: !1, line: 355, column: 5)
!2078 = !DILocation(line: 355, column: 5, scope: !565, inlinedAt: !1913)
!2079 = !DILocation(line: 355, column: 5, scope: !2080, inlinedAt: !1913)
!2080 = !DILexicalBlockFile(scope: !2077, file: !1, discriminator: 6)
!2081 = !DILocation(line: 356, column: 5, scope: !2082, inlinedAt: !1913)
!2082 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 1)
!2083 = !DILocation(line: 356, column: 5, scope: !568, inlinedAt: !1913)
!2084 = !DILocation(line: 356, column: 5, scope: !2085, inlinedAt: !1913)
!2085 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 4)
!2086 = !DILocation(line: 356, column: 5, scope: !2087, inlinedAt: !1913)
!2087 = distinct !DILexicalBlock(scope: !570, file: !1, line: 356, column: 5)
!2088 = !DILocation(line: 356, column: 5, scope: !570, inlinedAt: !1913)
!2089 = !DILocation(line: 356, column: 5, scope: !2090, inlinedAt: !1913)
!2090 = !DILexicalBlockFile(scope: !2087, file: !1, discriminator: 6)
!2091 = !DILocation(line: 358, column: 1, scope: !511, inlinedAt: !1913)
!2092 = !DILocation(line: 656, column: 9, scope: !1914)
!2093 = !DILocation(line: 658, column: 18, scope: !501)
!2094 = !DILocation(line: 660, column: 33, scope: !501)
!2095 = !{!1029, !1020, i64 24}
!2096 = !DILocation(line: 658, column: 5, scope: !501)
!2097 = !DILocation(line: 661, column: 5, scope: !501)
!2098 = !DILocation(line: 662, column: 1, scope: !501)
!2099 = !DILocation(line: 52, column: 33, scope: !572)
!2100 = !DILocation(line: 52, column: 49, scope: !572)
!2101 = !DILocation(line: 53, column: 29, scope: !572)
!2102 = !DILocation(line: 53, column: 45, scope: !572)
!2103 = !DILocation(line: 55, column: 18, scope: !572)
!2104 = !DILocation(line: 159, column: 32, scope: !588, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 57, column: 14, scope: !572)
!2106 = !DILocation(line: 159, column: 49, scope: !588, inlinedAt: !2105)
!2107 = !DILocation(line: 159, column: 65, scope: !588, inlinedAt: !2105)
!2108 = !DILocation(line: 167, column: 15, scope: !588, inlinedAt: !2105)
!2109 = !DILocation(line: 168, column: 15, scope: !588, inlinedAt: !2105)
!2110 = !DILocation(line: 169, column: 15, scope: !588, inlinedAt: !2105)
!2111 = !DILocation(line: 169, column: 29, scope: !588, inlinedAt: !2105)
!2112 = !DILocation(line: 172, column: 22, scope: !588, inlinedAt: !2105)
!2113 = !DILocation(line: 172, column: 15, scope: !588, inlinedAt: !2105)
!2114 = !DILocation(line: 173, column: 14, scope: !2115, inlinedAt: !2105)
!2115 = distinct !DILexicalBlock(scope: !588, file: !1, line: 173, column: 9)
!2116 = !DILocation(line: 173, column: 9, scope: !588, inlinedAt: !2105)
!2117 = !DILocation(line: 175, column: 18, scope: !588, inlinedAt: !2105)
!2118 = !DILocation(line: 165, column: 9, scope: !588, inlinedAt: !2105)
!2119 = !DILocation(line: 176, column: 5, scope: !2120, inlinedAt: !2105)
!2120 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!2121 = !DILocation(line: 176, column: 5, scope: !2122, inlinedAt: !2105)
!2122 = distinct !DILexicalBlock(scope: !603, file: !1, line: 176, column: 5)
!2123 = !DILocation(line: 176, column: 5, scope: !603, inlinedAt: !2105)
!2124 = !DILocation(line: 176, column: 5, scope: !2125, inlinedAt: !2105)
!2125 = !DILexicalBlockFile(scope: !2122, file: !1, discriminator: 3)
!2126 = !DILocation(line: 57, column: 14, scope: !572)
!2127 = !DILocation(line: 177, column: 9, scope: !588, inlinedAt: !2105)
!2128 = !DILocation(line: 166, column: 15, scope: !588, inlinedAt: !2105)
!2129 = !DILocation(line: 166, column: 20, scope: !588, inlinedAt: !2105)
!2130 = !DILocation(line: 183, column: 9, scope: !2131, inlinedAt: !2105)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 180, column: 26)
!2132 = distinct !DILexicalBlock(scope: !588, file: !1, line: 180, column: 9)
!2133 = !DILocation(line: 184, column: 5, scope: !2131, inlinedAt: !2105)
!2134 = !DILocation(line: 187, column: 16, scope: !2135, inlinedAt: !2105)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 184, column: 12)
!2136 = !DILocation(line: 188, column: 14, scope: !2137, inlinedAt: !2105)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 188, column: 13)
!2138 = !DILocation(line: 188, column: 13, scope: !2135, inlinedAt: !2105)
!2139 = !DILocation(line: 193, column: 9, scope: !607, inlinedAt: !2105)
!2140 = !DILocation(line: 193, column: 49, scope: !607, inlinedAt: !2105)
!2141 = !DILocation(line: 193, column: 9, scope: !588, inlinedAt: !2105)
!2142 = !DILocation(line: 194, column: 9, scope: !2143, inlinedAt: !2105)
!2143 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 1)
!2144 = !DILocation(line: 194, column: 9, scope: !2145, inlinedAt: !2105)
!2145 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 4)
!2146 = !DILocation(line: 194, column: 9, scope: !2147, inlinedAt: !2105)
!2147 = distinct !DILexicalBlock(scope: !609, file: !1, line: 194, column: 9)
!2148 = !DILocation(line: 194, column: 9, scope: !609, inlinedAt: !2105)
!2149 = !DILocation(line: 194, column: 9, scope: !2150, inlinedAt: !2105)
!2150 = !DILexicalBlockFile(scope: !2147, file: !1, discriminator: 6)
!2151 = !DILocation(line: 198, column: 16, scope: !2152, inlinedAt: !2105)
!2152 = distinct !DILexicalBlock(scope: !588, file: !1, line: 198, column: 9)
!2153 = !DILocation(line: 198, column: 37, scope: !2152, inlinedAt: !2105)
!2154 = !DILocation(line: 198, column: 9, scope: !588, inlinedAt: !2105)
!2155 = !DILocation(line: 201, column: 17, scope: !2156, inlinedAt: !2105)
!2156 = distinct !DILexicalBlock(scope: !588, file: !1, line: 201, column: 9)
!2157 = !DILocation(line: 201, column: 44, scope: !2156, inlinedAt: !2105)
!2158 = !DILocation(line: 201, column: 9, scope: !588, inlinedAt: !2105)
!2159 = !DILocation(line: 204, column: 17, scope: !2160, inlinedAt: !2105)
!2160 = distinct !DILexicalBlock(scope: !588, file: !1, line: 204, column: 9)
!2161 = !DILocation(line: 204, column: 47, scope: !2160, inlinedAt: !2105)
!2162 = !DILocation(line: 204, column: 9, scope: !588, inlinedAt: !2105)
!2163 = !DILocation(line: 207, column: 17, scope: !2164, inlinedAt: !2105)
!2164 = distinct !DILexicalBlock(scope: !588, file: !1, line: 207, column: 9)
!2165 = !DILocation(line: 207, column: 51, scope: !2164, inlinedAt: !2105)
!2166 = !DILocation(line: 207, column: 9, scope: !588, inlinedAt: !2105)
!2167 = !DILocation(line: 210, column: 19, scope: !2168, inlinedAt: !2105)
!2168 = distinct !DILexicalBlock(scope: !588, file: !1, line: 210, column: 9)
!2169 = !DILocation(line: 169, column: 43, scope: !588, inlinedAt: !2105)
!2170 = !DILocation(line: 210, column: 44, scope: !2168, inlinedAt: !2105)
!2171 = !DILocation(line: 221, column: 5, scope: !2172, inlinedAt: !2105)
!2172 = distinct !DILexicalBlock(scope: !624, file: !1, line: 221, column: 5)
!2173 = !DILocation(line: 210, column: 9, scope: !588, inlinedAt: !2105)
!2174 = !DILocation(line: 213, column: 5, scope: !2175, inlinedAt: !2105)
!2175 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!2176 = !DILocation(line: 213, column: 5, scope: !612, inlinedAt: !2105)
!2177 = !DILocation(line: 213, column: 5, scope: !2178, inlinedAt: !2105)
!2178 = !DILexicalBlockFile(scope: !2179, file: !1, discriminator: 3)
!2179 = distinct !DILexicalBlock(scope: !612, file: !1, line: 213, column: 5)
!2180 = !DILocation(line: 214, column: 5, scope: !2181, inlinedAt: !2105)
!2181 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 1)
!2182 = !DILocation(line: 214, column: 5, scope: !2183, inlinedAt: !2105)
!2183 = distinct !DILexicalBlock(scope: !614, file: !1, line: 214, column: 5)
!2184 = !DILocation(line: 214, column: 5, scope: !614, inlinedAt: !2105)
!2185 = !DILocation(line: 214, column: 5, scope: !2186, inlinedAt: !2105)
!2186 = !DILexicalBlockFile(scope: !2183, file: !1, discriminator: 3)
!2187 = !DILocation(line: 215, column: 5, scope: !2188, inlinedAt: !2105)
!2188 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 1)
!2189 = !DILocation(line: 215, column: 5, scope: !2190, inlinedAt: !2105)
!2190 = distinct !DILexicalBlock(scope: !616, file: !1, line: 215, column: 5)
!2191 = !DILocation(line: 215, column: 5, scope: !616, inlinedAt: !2105)
!2192 = !DILocation(line: 215, column: 5, scope: !2193, inlinedAt: !2105)
!2193 = !DILexicalBlockFile(scope: !2190, file: !1, discriminator: 3)
!2194 = !DILocation(line: 216, column: 5, scope: !2195, inlinedAt: !2105)
!2195 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 1)
!2196 = !DILocation(line: 216, column: 5, scope: !2197, inlinedAt: !2105)
!2197 = distinct !DILexicalBlock(scope: !618, file: !1, line: 216, column: 5)
!2198 = !DILocation(line: 216, column: 5, scope: !618, inlinedAt: !2105)
!2199 = !DILocation(line: 216, column: 5, scope: !2200, inlinedAt: !2105)
!2200 = !DILexicalBlockFile(scope: !2197, file: !1, discriminator: 3)
!2201 = !DILocation(line: 217, column: 5, scope: !2202, inlinedAt: !2105)
!2202 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!2203 = !DILocation(line: 217, column: 5, scope: !2204, inlinedAt: !2105)
!2204 = distinct !DILexicalBlock(scope: !620, file: !1, line: 217, column: 5)
!2205 = !DILocation(line: 217, column: 5, scope: !620, inlinedAt: !2105)
!2206 = !DILocation(line: 217, column: 5, scope: !2207, inlinedAt: !2105)
!2207 = !DILexicalBlockFile(scope: !2204, file: !1, discriminator: 3)
!2208 = !DILocation(line: 221, column: 5, scope: !624, inlinedAt: !2105)
!2209 = !DILocation(line: 221, column: 5, scope: !2210, inlinedAt: !2105)
!2210 = !DILexicalBlockFile(scope: !2172, file: !1, discriminator: 6)
!2211 = !DILocation(line: 222, column: 5, scope: !2212, inlinedAt: !2105)
!2212 = distinct !DILexicalBlock(scope: !629, file: !1, line: 222, column: 5)
!2213 = !DILocation(line: 222, column: 5, scope: !629, inlinedAt: !2105)
!2214 = !DILocation(line: 222, column: 5, scope: !2215, inlinedAt: !2105)
!2215 = !DILexicalBlockFile(scope: !2212, file: !1, discriminator: 6)
!2216 = !DILocation(line: 223, column: 5, scope: !2217, inlinedAt: !2105)
!2217 = !DILexicalBlockFile(scope: !634, file: !1, discriminator: 4)
!2218 = !DILocation(line: 223, column: 5, scope: !2219, inlinedAt: !2105)
!2219 = distinct !DILexicalBlock(scope: !634, file: !1, line: 223, column: 5)
!2220 = !DILocation(line: 223, column: 5, scope: !634, inlinedAt: !2105)
!2221 = !DILocation(line: 223, column: 5, scope: !2222, inlinedAt: !2105)
!2222 = !DILexicalBlockFile(scope: !2219, file: !1, discriminator: 6)
!2223 = !DILocation(line: 224, column: 5, scope: !640, inlinedAt: !2105)
!2224 = !DILocation(line: 224, column: 5, scope: !637, inlinedAt: !2105)
!2225 = !DILocation(line: 224, column: 5, scope: !2226, inlinedAt: !2105)
!2226 = distinct !DILexicalBlock(scope: !639, file: !1, line: 224, column: 5)
!2227 = !DILocation(line: 224, column: 5, scope: !639, inlinedAt: !2105)
!2228 = !DILocation(line: 224, column: 5, scope: !2229, inlinedAt: !2105)
!2229 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 6)
!2230 = !DILocation(line: 225, column: 5, scope: !2231, inlinedAt: !2105)
!2231 = !DILexicalBlockFile(scope: !642, file: !1, discriminator: 1)
!2232 = !DILocation(line: 225, column: 5, scope: !642, inlinedAt: !2105)
!2233 = !DILocation(line: 225, column: 5, scope: !2234, inlinedAt: !2105)
!2234 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 4)
!2235 = !DILocation(line: 225, column: 5, scope: !2236, inlinedAt: !2105)
!2236 = distinct !DILexicalBlock(scope: !644, file: !1, line: 225, column: 5)
!2237 = !DILocation(line: 225, column: 5, scope: !644, inlinedAt: !2105)
!2238 = !DILocation(line: 225, column: 5, scope: !2239, inlinedAt: !2105)
!2239 = !DILexicalBlockFile(scope: !2236, file: !1, discriminator: 6)
!2240 = !DILocation(line: 195, column: 16, scope: !606, inlinedAt: !2105)
!2241 = !DILocation(line: 56, column: 15, scope: !572)
!2242 = !DILocation(line: 58, column: 16, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !572, file: !1, line: 58, column: 9)
!2244 = !DILocation(line: 58, column: 9, scope: !572)
!2245 = !DILocation(line: 61, column: 11, scope: !572)
!2246 = !DILocation(line: 62, column: 13, scope: !587)
!2247 = !DILocation(line: 62, column: 9, scope: !572)
!2248 = !DILocation(line: 63, column: 9, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 1)
!2250 = !DILocation(line: 63, column: 9, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !585, file: !1, line: 63, column: 9)
!2252 = !DILocation(line: 63, column: 9, scope: !585)
!2253 = !DILocation(line: 63, column: 9, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2251, file: !1, discriminator: 3)
!2255 = !DILocation(line: 66, column: 10, scope: !572)
!2256 = !DILocation(line: 66, column: 16, scope: !572)
!2257 = !DILocation(line: 67, column: 10, scope: !572)
!2258 = !DILocation(line: 67, column: 15, scope: !572)
!2259 = !DILocation(line: 68, column: 10, scope: !572)
!2260 = !DILocation(line: 68, column: 15, scope: !572)
!2261 = !DILocation(line: 69, column: 10, scope: !572)
!2262 = !DILocation(line: 69, column: 17, scope: !572)
!2263 = !DILocation(line: 70, column: 5, scope: !572)
!2264 = !DILocation(line: 71, column: 1, scope: !572)
!2265 = !DILocation(line: 1164, column: 25, scope: !677)
!2266 = !DILocation(line: 1184, column: 35, scope: !677)
!2267 = !DILocation(line: 1184, column: 14, scope: !677)
!2268 = !DILocation(line: 1169, column: 10, scope: !677)
!2269 = !DILocation(line: 1185, column: 16, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1185, column: 9)
!2271 = !DILocation(line: 1185, column: 22, scope: !2270)
!2272 = !DILocation(line: 1185, column: 25, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2270, file: !1, discriminator: 1)
!2274 = !DILocation(line: 1185, column: 9, scope: !677)
!2275 = !DILocation(line: 1186, column: 9, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 1185, column: 43)
!2277 = !DILocation(line: 1187, column: 9, scope: !2276)
!2278 = !DILocation(line: 1189, column: 34, scope: !677)
!2279 = !DILocation(line: 1189, column: 13, scope: !677)
!2280 = !DILocation(line: 1169, column: 18, scope: !677)
!2281 = !DILocation(line: 1190, column: 15, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1190, column: 9)
!2283 = !DILocation(line: 1190, column: 21, scope: !2282)
!2284 = !DILocation(line: 1190, column: 24, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2282, file: !1, discriminator: 1)
!2286 = !DILocation(line: 1190, column: 9, scope: !677)
!2287 = !DILocation(line: 1191, column: 9, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2282, file: !1, line: 1190, column: 42)
!2289 = !DILocation(line: 1192, column: 9, scope: !2288)
!2290 = !DILocation(line: 1194, column: 34, scope: !677)
!2291 = !DILocation(line: 1194, column: 13, scope: !677)
!2292 = !DILocation(line: 1169, column: 25, scope: !677)
!2293 = !DILocation(line: 1195, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1195, column: 9)
!2295 = !DILocation(line: 1195, column: 24, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2294, file: !1, discriminator: 1)
!2297 = !DILocation(line: 1195, column: 9, scope: !677)
!2298 = !DILocation(line: 1196, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !1, line: 1195, column: 42)
!2300 = !DILocation(line: 1197, column: 9, scope: !2299)
!2301 = !DILocation(line: 1216, column: 15, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1216, column: 9)
!2303 = !DILocation(line: 1216, column: 9, scope: !677)
!2304 = !DILocation(line: 1217, column: 36, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !1, line: 1217, column: 14)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 1216, column: 20)
!2307 = !DILocation(line: 1217, column: 47, scope: !2305)
!2308 = !DILocation(line: 1217, column: 14, scope: !2306)
!2309 = !DILocation(line: 1221, column: 22, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 1221, column: 13)
!2311 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 1220, column: 10)
!2312 = !DILocation(line: 1221, column: 52, scope: !2310)
!2313 = !DILocation(line: 1221, column: 46, scope: !2310)
!2314 = !DILocation(line: 1221, column: 13, scope: !2311)
!2315 = !DILocation(line: 880, column: 23, scope: !700, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 1225, column: 12, scope: !677)
!2317 = !DILocation(line: 880, column: 32, scope: !700, inlinedAt: !2316)
!2318 = !DILocation(line: 880, column: 41, scope: !700, inlinedAt: !2316)
!2319 = !DILocation(line: 896, column: 24, scope: !1258, inlinedAt: !2316)
!2320 = !DILocation(line: 896, column: 18, scope: !1258, inlinedAt: !2316)
!2321 = !DILocation(line: 897, column: 26, scope: !1258, inlinedAt: !2316)
!2322 = !DILocation(line: 897, column: 32, scope: !1258, inlinedAt: !2316)
!2323 = !DILocation(line: 897, column: 38, scope: !1258, inlinedAt: !2316)
!2324 = !DILocation(line: 897, column: 9, scope: !1258, inlinedAt: !2316)
!2325 = !DILocation(line: 898, column: 19, scope: !1266, inlinedAt: !2316)
!2326 = !DILocation(line: 898, column: 29, scope: !1266, inlinedAt: !2316)
!2327 = !DILocation(line: 898, column: 23, scope: !1266, inlinedAt: !2316)
!2328 = !DILocation(line: 899, column: 26, scope: !1266, inlinedAt: !2316)
!2329 = !DILocation(line: 899, column: 32, scope: !1266, inlinedAt: !2316)
!2330 = !DILocation(line: 899, column: 45, scope: !1266, inlinedAt: !2316)
!2331 = !DILocation(line: 899, column: 38, scope: !1266, inlinedAt: !2316)
!2332 = !DILocation(line: 899, column: 9, scope: !1266, inlinedAt: !2316)
!2333 = !DILocation(line: 897, column: 20, scope: !1258, inlinedAt: !2316)
!2334 = !DILocation(line: 1170, column: 19, scope: !677)
!2335 = !DILocation(line: 1226, column: 14, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1226, column: 9)
!2337 = !DILocation(line: 1226, column: 9, scope: !677)
!2338 = !DILocation(line: 1229, column: 23, scope: !677)
!2339 = !DILocation(line: 1169, column: 43, scope: !677)
!2340 = !DILocation(line: 1230, column: 40, scope: !677)
!2341 = !DILocation(line: 1230, column: 33, scope: !677)
!2342 = !DILocation(line: 1169, column: 32, scope: !677)
!2343 = !DILocation(line: 1231, column: 49, scope: !677)
!2344 = !DILocation(line: 908, column: 22, scope: !707, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 1231, column: 12, scope: !677)
!2346 = !DILocation(line: 908, column: 34, scope: !707, inlinedAt: !2345)
!2347 = !DILocation(line: 908, column: 45, scope: !707, inlinedAt: !2345)
!2348 = !DILocation(line: 910, column: 27, scope: !707, inlinedAt: !2345)
!2349 = !DILocation(line: 912, column: 12, scope: !1244, inlinedAt: !2345)
!2350 = !DILocation(line: 912, column: 9, scope: !707, inlinedAt: !2345)
!2351 = !DILocation(line: 914, column: 9, scope: !707, inlinedAt: !2345)
!2352 = !DILocation(line: 914, column: 15, scope: !707, inlinedAt: !2345)
!2353 = !DILocation(line: 915, column: 9, scope: !707, inlinedAt: !2345)
!2354 = !DILocation(line: 915, column: 14, scope: !707, inlinedAt: !2345)
!2355 = !DILocation(line: 880, column: 23, scope: !700, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 916, column: 12, scope: !707, inlinedAt: !2345)
!2357 = !DILocation(line: 880, column: 32, scope: !700, inlinedAt: !2356)
!2358 = !DILocation(line: 880, column: 41, scope: !700, inlinedAt: !2356)
!2359 = !DILocation(line: 896, column: 14, scope: !1258, inlinedAt: !2356)
!2360 = !DILocation(line: 896, column: 24, scope: !1258, inlinedAt: !2356)
!2361 = !DILocation(line: 896, column: 18, scope: !1258, inlinedAt: !2356)
!2362 = !DILocation(line: 897, column: 26, scope: !1258, inlinedAt: !2356)
!2363 = !DILocation(line: 897, column: 32, scope: !1258, inlinedAt: !2356)
!2364 = !DILocation(line: 897, column: 38, scope: !1258, inlinedAt: !2356)
!2365 = !DILocation(line: 897, column: 9, scope: !1258, inlinedAt: !2356)
!2366 = !DILocation(line: 898, column: 19, scope: !1266, inlinedAt: !2356)
!2367 = !DILocation(line: 898, column: 29, scope: !1266, inlinedAt: !2356)
!2368 = !DILocation(line: 898, column: 23, scope: !1266, inlinedAt: !2356)
!2369 = !DILocation(line: 899, column: 32, scope: !1266, inlinedAt: !2356)
!2370 = !DILocation(line: 899, column: 38, scope: !1266, inlinedAt: !2356)
!2371 = !DILocation(line: 899, column: 9, scope: !1266, inlinedAt: !2356)
!2372 = !DILocation(line: 1231, column: 12, scope: !677)
!2373 = !DILocation(line: 897, column: 20, scope: !1258, inlinedAt: !2356)
!2374 = !DILocation(line: 911, column: 19, scope: !707, inlinedAt: !2345)
!2375 = !DILocation(line: 917, column: 14, scope: !719, inlinedAt: !2345)
!2376 = !DILocation(line: 917, column: 9, scope: !707, inlinedAt: !2345)
!2377 = !DILocation(line: 918, column: 9, scope: !1280, inlinedAt: !2345)
!2378 = !DILocation(line: 918, column: 9, scope: !1282, inlinedAt: !2345)
!2379 = !DILocation(line: 918, column: 9, scope: !717, inlinedAt: !2345)
!2380 = !DILocation(line: 918, column: 9, scope: !1285, inlinedAt: !2345)
!2381 = !DILocation(line: 919, column: 25, scope: !718, inlinedAt: !2345)
!2382 = !DILocation(line: 919, column: 9, scope: !718, inlinedAt: !2345)
!2383 = !DILocation(line: 921, column: 9, scope: !718, inlinedAt: !2345)
!2384 = !DILocation(line: 923, column: 9, scope: !707, inlinedAt: !2345)
!2385 = !DILocation(line: 923, column: 13, scope: !707, inlinedAt: !2345)
!2386 = !DILocation(line: 924, column: 9, scope: !707, inlinedAt: !2345)
!2387 = !DILocation(line: 924, column: 15, scope: !707, inlinedAt: !2345)
!2388 = !DILocation(line: 925, column: 5, scope: !707, inlinedAt: !2345)
!2389 = !DILocation(line: 1234, column: 10, scope: !677)
!2390 = !DILocation(line: 1235, column: 12, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1235, column: 9)
!2392 = !DILocation(line: 1235, column: 9, scope: !677)
!2393 = !DILocation(line: 1239, column: 22, scope: !677)
!2394 = !DILocation(line: 1239, column: 9, scope: !677)
!2395 = !DILocation(line: 1239, column: 13, scope: !677)
!2396 = !DILocation(line: 1240, column: 5, scope: !677)
!2397 = !DILocation(line: 1242, column: 11, scope: !677)
!2398 = !DILocation(line: 1168, column: 15, scope: !677)
!2399 = !DILocation(line: 1243, column: 10, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1243, column: 9)
!2401 = !DILocation(line: 1243, column: 9, scope: !677)
!2402 = !DILocation(line: 1246, column: 34, scope: !677)
!2403 = !DILocation(line: 1246, column: 12, scope: !677)
!2404 = !DILocation(line: 1168, column: 27, scope: !677)
!2405 = !DILocation(line: 1247, column: 5, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !693, file: !1, discriminator: 1)
!2407 = !DILocation(line: 1247, column: 5, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !693, file: !1, line: 1247, column: 5)
!2409 = !DILocation(line: 1247, column: 5, scope: !693)
!2410 = !DILocation(line: 1247, column: 5, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2408, file: !1, discriminator: 3)
!2412 = !DILocation(line: 1248, column: 10, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1248, column: 9)
!2414 = !DILocation(line: 1248, column: 9, scope: !677)
!2415 = !DILocation(line: 1251, column: 46, scope: !677)
!2416 = !DILocation(line: 1251, column: 15, scope: !677)
!2417 = !DILocation(line: 1168, column: 34, scope: !677)
!2418 = !DILocation(line: 1252, column: 5, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 1)
!2420 = !DILocation(line: 1252, column: 5, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !695, file: !1, line: 1252, column: 5)
!2422 = !DILocation(line: 1252, column: 5, scope: !695)
!2423 = !DILocation(line: 1252, column: 5, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2421, file: !1, discriminator: 3)
!2425 = !DILocation(line: 1253, column: 10, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1253, column: 9)
!2427 = !DILocation(line: 1253, column: 9, scope: !677)
!2428 = !DILocation(line: 1256, column: 31, scope: !677)
!2429 = !DILocation(line: 1256, column: 11, scope: !677)
!2430 = !DILocation(line: 1168, column: 21, scope: !677)
!2431 = !DILocation(line: 1257, column: 5, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 1)
!2433 = !DILocation(line: 1257, column: 5, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !697, file: !1, line: 1257, column: 5)
!2435 = !DILocation(line: 1257, column: 5, scope: !697)
!2436 = !DILocation(line: 1257, column: 5, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2434, file: !1, discriminator: 3)
!2438 = !DILocation(line: 1258, column: 9, scope: !677)
!2439 = !DILocation(line: 1258, column: 15, scope: !677)
!2440 = !DILocation(line: 1259, column: 10, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1259, column: 9)
!2442 = !DILocation(line: 1259, column: 9, scope: !677)
!2443 = !DILocation(line: 1262, column: 41, scope: !677)
!2444 = !DILocation(line: 1262, column: 16, scope: !677)
!2445 = !DILocation(line: 1262, column: 9, scope: !677)
!2446 = !DILocation(line: 1262, column: 14, scope: !677)
!2447 = !DILocation(line: 1263, column: 10, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1263, column: 9)
!2449 = !DILocation(line: 1263, column: 9, scope: !677)
!2450 = !DILocation(line: 1266, column: 17, scope: !677)
!2451 = !DILocation(line: 1266, column: 9, scope: !677)
!2452 = !DILocation(line: 1266, column: 15, scope: !677)
!2453 = !DILocation(line: 1267, column: 10, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !677, file: !1, line: 1267, column: 9)
!2455 = !DILocation(line: 1267, column: 9, scope: !677)
!2456 = !DILocation(line: 1273, column: 5, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !699, file: !1, discriminator: 1)
!2458 = !DILocation(line: 1273, column: 5, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !699, file: !1, line: 1273, column: 5)
!2460 = !DILocation(line: 1273, column: 5, scope: !699)
!2461 = !DILocation(line: 1273, column: 5, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2459, file: !1, discriminator: 3)
!2463 = !DILocation(line: 1275, column: 1, scope: !677)
!2464 = !DILocation(line: 637, column: 27, scope: !720)
!2465 = !DILocation(line: 637, column: 40, scope: !720)
!2466 = !DILocation(line: 639, column: 38, scope: !720)
!2467 = !DILocation(line: 640, column: 29, scope: !720)
!2468 = !DILocation(line: 640, column: 39, scope: !720)
!2469 = !DILocation(line: 640, column: 48, scope: !720)
!2470 = !DILocation(line: 639, column: 12, scope: !720)
!2471 = !DILocation(line: 639, column: 5, scope: !720)
!2472 = !DILocation(line: 553, column: 26, scope: !724)
!2473 = !DILocation(line: 553, column: 39, scope: !724)
!2474 = !DILocation(line: 555, column: 9, scope: !730)
!2475 = !DILocation(line: 555, column: 34, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 1)
!2477 = !DILocation(line: 555, column: 31, scope: !730)
!2478 = !DILocation(line: 556, column: 22, scope: !729)
!2479 = !DILocation(line: 556, column: 13, scope: !729)
!2480 = !DILocation(line: 557, column: 13, scope: !729)
!2481 = !DILocation(line: 560, column: 20, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 559, column: 18)
!2483 = distinct !DILexicalBlock(scope: !729, file: !1, line: 557, column: 13)
!2484 = !DILocation(line: 560, column: 13, scope: !2482)
!2485 = !DILocation(line: 562, column: 20, scope: !2482)
!2486 = !DILocation(line: 562, column: 13, scope: !2482)
!2487 = !DILocation(line: 565, column: 40, scope: !732)
!2488 = !DILocation(line: 565, column: 17, scope: !732)
!2489 = !DILocation(line: 564, column: 20, scope: !732)
!2490 = !DILocation(line: 566, column: 19, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !732, file: !1, line: 566, column: 13)
!2492 = !DILocation(line: 566, column: 13, scope: !732)
!2493 = !DILocation(line: 568, column: 16, scope: !732)
!2494 = !DILocation(line: 568, column: 9, scope: !732)
!2495 = !DILocation(line: 570, column: 1, scope: !724)
!2496 = !DILocation(line: 573, column: 26, scope: !733)
!2497 = !DILocation(line: 573, column: 39, scope: !733)
!2498 = !DILocation(line: 577, column: 10, scope: !740)
!2499 = !DILocation(line: 577, column: 36, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 1)
!2501 = !DILocation(line: 577, column: 32, scope: !740)
!2502 = !DILocation(line: 579, column: 40, scope: !739)
!2503 = !DILocation(line: 579, column: 17, scope: !739)
!2504 = !DILocation(line: 578, column: 20, scope: !739)
!2505 = !DILocation(line: 580, column: 19, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !739, file: !1, line: 580, column: 13)
!2507 = !DILocation(line: 580, column: 13, scope: !739)
!2508 = !DILocation(line: 582, column: 16, scope: !739)
!2509 = !DILocation(line: 582, column: 9, scope: !739)
!2510 = !DILocation(line: 585, column: 16, scope: !733)
!2511 = !DILocation(line: 575, column: 9, scope: !733)
!2512 = !DILocation(line: 586, column: 9, scope: !733)
!2513 = !DILocation(line: 590, column: 56, scope: !742)
!2514 = !DILocation(line: 590, column: 31, scope: !742)
!2515 = !DILocation(line: 590, column: 25, scope: !742)
!2516 = !DILocation(line: 591, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !742, file: !1, line: 591, column: 13)
!2518 = !DILocation(line: 591, column: 13, scope: !742)
!2519 = !DILocation(line: 594, column: 44, scope: !742)
!2520 = !DILocation(line: 594, column: 15, scope: !742)
!2521 = !DILocation(line: 590, column: 19, scope: !742)
!2522 = !DILocation(line: 595, column: 9, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!2524 = !DILocation(line: 595, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !746, file: !1, line: 595, column: 9)
!2526 = !DILocation(line: 595, column: 9, scope: !746)
!2527 = !DILocation(line: 595, column: 9, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2525, file: !1, discriminator: 3)
!2529 = !DILocation(line: 600, column: 18, scope: !733)
!2530 = !DILocation(line: 600, column: 5, scope: !733)
!2531 = !DILocation(line: 601, column: 5, scope: !733)
!2532 = !DILocation(line: 602, column: 1, scope: !733)
!2533 = !DILocation(line: 767, column: 32, scope: !816)
!2534 = !DILocation(line: 769, column: 31, scope: !816)
!2535 = !DILocation(line: 769, column: 40, scope: !816)
!2536 = !DILocation(line: 769, column: 35, scope: !816)
!2537 = !DILocation(line: 769, column: 12, scope: !816)
!2538 = !DILocation(line: 769, column: 5, scope: !816)
!2539 = !DILocation(line: 776, column: 35, scope: !819)
!2540 = !DILocation(line: 778, column: 15, scope: !819)
!2541 = !DILocation(line: 778, column: 28, scope: !819)
!2542 = !DILocation(line: 778, column: 40, scope: !819)
!2543 = !DILocation(line: 782, column: 32, scope: !819)
!2544 = !DILocation(line: 782, column: 13, scope: !819)
!2545 = !DILocation(line: 783, column: 15, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !819, file: !1, line: 783, column: 9)
!2547 = !DILocation(line: 783, column: 9, scope: !819)
!2548 = !DILocation(line: 785, column: 31, scope: !819)
!2549 = !DILocation(line: 785, column: 42, scope: !819)
!2550 = !DILocation(line: 785, column: 51, scope: !819)
!2551 = !DILocation(line: 785, column: 46, scope: !819)
!2552 = !DILocation(line: 785, column: 37, scope: !819)
!2553 = !DILocation(line: 785, column: 12, scope: !819)
!2554 = !DILocation(line: 786, column: 14, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !819, file: !1, line: 786, column: 9)
!2556 = !DILocation(line: 786, column: 9, scope: !819)
!2557 = !DILocation(line: 788, column: 31, scope: !819)
!2558 = !DILocation(line: 788, column: 12, scope: !819)
!2559 = !DILocation(line: 789, column: 14, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !819, file: !1, line: 789, column: 9)
!2561 = !DILocation(line: 789, column: 9, scope: !819)
!2562 = !DILocation(line: 791, column: 24, scope: !819)
!2563 = !DILocation(line: 779, column: 15, scope: !819)
!2564 = !DILocation(line: 793, column: 15, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !819, file: !1, line: 793, column: 9)
!2566 = !DILocation(line: 793, column: 9, scope: !819)
!2567 = !DILocation(line: 791, column: 13, scope: !819)
!2568 = !DILocation(line: 796, column: 35, scope: !819)
!2569 = !DILocation(line: 796, column: 75, scope: !819)
!2570 = !DILocation(line: 796, column: 12, scope: !819)
!2571 = !DILocation(line: 796, column: 5, scope: !819)
!2572 = !DILocation(line: 798, column: 5, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 1)
!2574 = !DILocation(line: 798, column: 5, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 4)
!2576 = !DILocation(line: 798, column: 5, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !829, file: !1, line: 798, column: 5)
!2578 = !DILocation(line: 798, column: 5, scope: !829)
!2579 = !DILocation(line: 798, column: 5, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2577, file: !1, discriminator: 6)
!2581 = !DILocation(line: 799, column: 5, scope: !832)
!2582 = !DILocation(line: 799, column: 5, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !834, file: !1, line: 799, column: 5)
!2584 = !DILocation(line: 799, column: 5, scope: !834)
!2585 = !DILocation(line: 799, column: 5, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2583, file: !1, discriminator: 6)
!2587 = !DILocation(line: 800, column: 5, scope: !840)
!2588 = !DILocation(line: 800, column: 5, scope: !837)
!2589 = !DILocation(line: 800, column: 5, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !839, file: !1, line: 800, column: 5)
!2591 = !DILocation(line: 800, column: 5, scope: !839)
!2592 = !DILocation(line: 800, column: 5, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2590, file: !1, discriminator: 6)
!2594 = !DILocation(line: 802, column: 1, scope: !819)
!2595 = !DILocation(line: 805, column: 37, scope: !841)
!2596 = !DILocation(line: 805, column: 50, scope: !841)
!2597 = !DILocation(line: 807, column: 18, scope: !841)
!2598 = !DILocation(line: 807, column: 10, scope: !841)
!2599 = !DILocation(line: 808, column: 15, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !841, file: !1, line: 808, column: 9)
!2601 = !DILocation(line: 808, column: 21, scope: !2600)
!2602 = !DILocation(line: 808, column: 24, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 1)
!2604 = !DILocation(line: 808, column: 9, scope: !841)
!2605 = !DILocation(line: 811, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !841, file: !1, line: 811, column: 9)
!2607 = !DILocation(line: 811, column: 9, scope: !841)
!2608 = !DILocation(line: 813, column: 25, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 813, column: 14)
!2610 = !DILocation(line: 813, column: 20, scope: !2609)
!2611 = !DILocation(line: 813, column: 14, scope: !2606)
!2612 = !DILocation(line: 815, column: 8, scope: !841)
!2613 = !DILocation(line: 815, column: 14, scope: !841)
!2614 = !DILocation(line: 816, column: 5, scope: !841)
!2615 = !DILocation(line: 817, column: 1, scope: !841)
!2616 = !DILocation(line: 952, column: 40, scope: !905)
!2617 = !DILocation(line: 952, column: 53, scope: !905)
!2618 = !DILocation(line: 954, column: 33, scope: !905)
!2619 = !DILocation(line: 954, column: 41, scope: !905)
!2620 = !DILocation(line: 954, column: 12, scope: !905)
!2621 = !DILocation(line: 954, column: 5, scope: !905)
!2622 = !DILocation(line: 958, column: 43, scope: !911)
!2623 = !DILocation(line: 960, column: 25, scope: !911)
!2624 = !DILocation(line: 964, column: 36, scope: !911)
!2625 = !DILocation(line: 964, column: 44, scope: !911)
!2626 = !DILocation(line: 964, column: 15, scope: !911)
!2627 = !DILocation(line: 960, column: 15, scope: !911)
!2628 = !DILocation(line: 965, column: 17, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !911, file: !1, line: 965, column: 9)
!2630 = !DILocation(line: 965, column: 9, scope: !911)
!2631 = !DILocation(line: 967, column: 28, scope: !911)
!2632 = !DILocation(line: 967, column: 12, scope: !911)
!2633 = !DILocation(line: 968, column: 5, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!2635 = !DILocation(line: 968, column: 5, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !918, file: !1, line: 968, column: 5)
!2637 = !DILocation(line: 968, column: 5, scope: !918)
!2638 = !DILocation(line: 968, column: 5, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2636, file: !1, discriminator: 3)
!2640 = !DILocation(line: 969, column: 14, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !911, file: !1, line: 969, column: 9)
!2642 = !DILocation(line: 969, column: 9, scope: !911)
!2643 = !DILocation(line: 971, column: 5, scope: !911)
!2644 = !DILocation(line: 972, column: 5, scope: !911)
!2645 = !DILocation(line: 973, column: 25, scope: !911)
!2646 = !DILocation(line: 961, column: 15, scope: !911)
!2647 = !DILocation(line: 975, column: 15, scope: !922)
!2648 = !DILocation(line: 975, column: 9, scope: !911)
!2649 = !DILocation(line: 976, column: 9, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !920, file: !1, discriminator: 1)
!2651 = !DILocation(line: 976, column: 9, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !920, file: !1, line: 976, column: 9)
!2653 = !DILocation(line: 976, column: 9, scope: !920)
!2654 = !DILocation(line: 976, column: 9, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2652, file: !1, discriminator: 3)
!2656 = !DILocation(line: 977, column: 9, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 1)
!2658 = !DILocation(line: 977, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !924, file: !1, line: 977, column: 9)
!2660 = !DILocation(line: 977, column: 9, scope: !924)
!2661 = !DILocation(line: 977, column: 9, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2659, file: !1, discriminator: 3)
!2663 = !DILocation(line: 978, column: 9, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !926, file: !1, discriminator: 1)
!2665 = !DILocation(line: 978, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !926, file: !1, line: 978, column: 9)
!2667 = !DILocation(line: 978, column: 9, scope: !926)
!2668 = !DILocation(line: 978, column: 9, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2666, file: !1, discriminator: 3)
!2670 = !DILocation(line: 973, column: 14, scope: !911)
!2671 = !DILocation(line: 983, column: 35, scope: !911)
!2672 = !DILocation(line: 983, column: 75, scope: !911)
!2673 = !DILocation(line: 983, column: 12, scope: !911)
!2674 = !DILocation(line: 983, column: 5, scope: !911)
!2675 = !DILocation(line: 984, column: 1, scope: !911)
!2676 = !DILocation(line: 987, column: 45, scope: !927)
!2677 = !DILocation(line: 987, column: 58, scope: !927)
!2678 = !DILocation(line: 992, column: 22, scope: !927)
!2679 = !DILocation(line: 992, column: 15, scope: !927)
!2680 = !DILocation(line: 993, column: 14, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !927, file: !1, line: 993, column: 9)
!2682 = !DILocation(line: 993, column: 9, scope: !927)
!2683 = !DILocation(line: 995, column: 11, scope: !927)
!2684 = !DILocation(line: 989, column: 9, scope: !927)
!2685 = !DILocation(line: 996, column: 13, scope: !936)
!2686 = !DILocation(line: 996, column: 9, scope: !927)
!2687 = !DILocation(line: 997, column: 9, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !934, file: !1, discriminator: 1)
!2689 = !DILocation(line: 997, column: 9, scope: !940)
!2690 = !DILocation(line: 997, column: 9, scope: !934)
!2691 = !DILocation(line: 997, column: 9, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 2)
!2693 = !DILocation(line: 997, column: 9, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 4)
!2695 = !DILocation(line: 997, column: 9, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !938, file: !1, line: 997, column: 9)
!2697 = !DILocation(line: 997, column: 9, scope: !938)
!2698 = !DILocation(line: 997, column: 9, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2696, file: !1, discriminator: 6)
!2700 = !DILocation(line: 998, column: 18, scope: !935)
!2701 = !DILocation(line: 999, column: 9, scope: !935)
!2702 = !DILocation(line: 1001, column: 5, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 1)
!2704 = !DILocation(line: 1001, column: 5, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1001, column: 5)
!2706 = !DILocation(line: 1001, column: 5, scope: !942)
!2707 = !DILocation(line: 1001, column: 5, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2705, file: !1, discriminator: 3)
!2709 = !DILocation(line: 1002, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1002, column: 9)
!2711 = !DILocation(line: 1002, column: 9, scope: !927)
!2712 = !DILocation(line: 1005, column: 39, scope: !927)
!2713 = !DILocation(line: 1005, column: 11, scope: !927)
!2714 = !DILocation(line: 1006, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1006, column: 9)
!2716 = !DILocation(line: 1006, column: 9, scope: !927)
!2717 = !DILocation(line: 1008, column: 13, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1008, column: 9)
!2719 = !DILocation(line: 1008, column: 9, scope: !927)
!2720 = !DILocation(line: 1009, column: 20, scope: !2718)
!2721 = !DILocation(line: 1009, column: 9, scope: !2718)
!2722 = !DILocation(line: 1011, column: 5, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !944, file: !1, discriminator: 1)
!2724 = !DILocation(line: 1011, column: 5, scope: !948)
!2725 = !DILocation(line: 1011, column: 5, scope: !944)
!2726 = !DILocation(line: 1011, column: 5, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !947, file: !1, discriminator: 2)
!2728 = !DILocation(line: 1011, column: 5, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !946, file: !1, discriminator: 4)
!2730 = !DILocation(line: 1011, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !946, file: !1, line: 1011, column: 5)
!2732 = !DILocation(line: 1011, column: 5, scope: !946)
!2733 = !DILocation(line: 1011, column: 5, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2731, file: !1, discriminator: 6)
!2735 = !DILocation(line: 1012, column: 14, scope: !927)
!2736 = !DILocation(line: 1013, column: 5, scope: !927)
!2737 = !DILocation(line: 1014, column: 5, scope: !927)
!2738 = !DILocation(line: 1015, column: 1, scope: !927)
