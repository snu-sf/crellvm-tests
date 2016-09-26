; ModuleID = './bltinmodule.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.filterobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.mapobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.zipobject = type { %struct._object, i64, %struct._object*, %struct._object* }
%struct.PyFunctionObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyCompilerFlags = type { i32 }
%struct._arena = type opaque
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.33, i32* }
%struct.anon.33 = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon.34 }
%union.anon.34 = type { i8* }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }
%struct.PyFloatObject = type { %struct._object, double }

@Py_FileSystemDefaultEncoding = global i8* null, align 8
@Py_HasFileSystemDefaultEncoding = global i32 0, align 4
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@filter_doc = internal global [193 x i8] c"filter(function or None, iterable) --> filter object\0A\0AReturn an iterator yielding those items of iterable for which function(item)\0Ais true. If function is None, return the items that are true.\00", align 16
@filter_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.filterobject*)* @filter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyFilter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.filterobject*)* @filter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @filter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.filterobject*, i32 (%struct._object*, i8*)*, i8*)* @filter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.filterobject*)* @filter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @filter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @filter_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@map_doc = internal global [174 x i8] c"map(func, *iterables) --> map object\0A\0AMake an iterator that computes the function using arguments from\0Aeach of the iterables.  Stops when the shortest iterable is exhausted.\00", align 16
@map_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mapobject*)* @map_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyMap_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.mapobject*)* @map_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @map_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.mapobject*, i32 (%struct._object*, i8*)*, i8*)* @map_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.mapobject*)* @map_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @map_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @map_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@zip_doc = internal global [299 x i8] c"zip(iter1 [,iter2 [...]]) --> zip object\0A\0AReturn a zip object whose .__next__() method returns a tuple where\0Athe i-th element comes from the i-th iterable argument.  The .__next__()\0Amethod continues until the shortest iterable in the argument sequence\0Ais exhausted and then it raises StopIteration.\00", align 16
@zip_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.zipobject*)* @zip_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyZip_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.zipobject*)* @zip_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([299 x i8], [299 x i8]* @zip_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.zipobject*, i32 (%struct._object*, i8*)*, i8*)* @zip_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.zipobject*)* @zip_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @zip_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @zip_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@builtinsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @builtin_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([42 x %struct.PyMethodDef], [42 x %struct.PyMethodDef]* @builtin_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Ellipsis\00", align 1
@_Py_EllipsisObject = external global %struct._object, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"NotImplemented\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@PyBool_Type = external global %struct._typeobject, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"memoryview\00", align 1
@PyMemoryView_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"bytearray\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@PyBytes_Type = external global %struct._typeobject, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"classmethod\00", align 1
@PyClassMethod_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@PyComplex_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"enumerate\00", align 1
@PyEnum_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"frozenset\00", align 1
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@PyProperty_Type = external global %struct._typeobject, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@PyBaseObject_Type = external global %struct._typeobject, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@PyRange_Type = external global %struct._typeobject, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"reversed\00", align 1
@PyReversed_Type = external global %struct._typeobject, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@PySet_Type = external global %struct._typeobject, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"staticmethod\00", align 1
@PyStaticMethod_Type = external global %struct._typeobject, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@PySuper_Type = external global %struct._typeobject, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"tuple\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@Py_OptimizeFlag = external global i32, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"__debug__\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"filter()\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"map()\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.37 = private unnamed_addr constant [40 x i8] c"map() must have at least two arguments.\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"zip()\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"zip argument #%zd must support iteration\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@builtin_doc = internal global [127 x i8] c"Built-in functions, exceptions, and other objects.\0A\0ANoteworthy: None is the `nil' object; Ellipsis represents `...' in slices.\00", align 16
@builtin_methods = internal global [42 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin___build_class__ to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @build_class_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin___import__ to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([861 x i8], [861 x i8]* @import_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_abs, i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @abs_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_all, i32 8, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @all_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_any, i32 8, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @any_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_ascii, i32 8, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @ascii_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_bin, i32 8, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @bin_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_callable, i32 8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @callable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_chr, i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @chr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_compile to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([754 x i8], [754 x i8]* @compile_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_delattr, i32 1, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @delattr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_dir, i32 1, i8* getelementptr inbounds ([624 x i8], [624 x i8]* @dir_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_divmod, i32 1, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @divmod_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_eval, i32 1, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @eval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_exec, i32 1, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @exec_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_format, i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @format_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_getattr, i32 1, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @getattr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @builtin_globals to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @globals_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_hasattr, i32 1, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @hasattr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_hash, i32 8, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @hash_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_hex, i32 8, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @hex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_id, i32 8, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @id_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_input, i32 1, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @input_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_isinstance, i32 1, i8* getelementptr inbounds ([325 x i8], [325 x i8]* @isinstance_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_issubclass, i32 1, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @issubclass_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_iter, i32 1, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @iter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_len, i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @len_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @builtin_locals to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @locals_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_max to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @max_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_min to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @min_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_next, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @next_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_oct, i32 8, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @oct_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_ord, i32 8, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @ord_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_pow, i32 1, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @pow_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_print to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([393 x i8], [393 x i8]* @print_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_repr, i32 8, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @repr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_round to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @round_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_setattr, i32 1, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @setattr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @builtin_sorted to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @sorted_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_sum, i32 1, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @sum_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @builtin_vars, i32 1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @vars_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"__build_class__\00", align 1
@build_class_doc = internal global [124 x i8] c"__build_class__(func, name, *bases, metaclass=None, **kwds) -> class\0A\0AInternal helper function used by the class statement.\00", align 16
@.str.43 = private unnamed_addr constant [11 x i8] c"__import__\00", align 1
@import_doc = internal global [861 x i8] c"__import__(name, globals=None, locals=None, fromlist=(), level=0) -> module\0A\0AImport a module. Because this function is meant for use by the Python\0Ainterpreter and not for general use it is better to use\0Aimportlib.import_module() to programmatically import a module.\0A\0AThe globals argument is only used to determine the context;\0Athey are not modified.  The locals argument is unused.  The fromlist\0Ashould be a list of names to emulate ``from name import ...'', or an\0Aempty list to emulate ``import name''.\0AWhen importing a module from a package, note that __import__('A.B', ...)\0Areturns package A when fromlist is empty, but its submodule B when\0Afromlist is not empty.  Level is used to determine whether to perform \0Aabsolute or relative imports. 0 is absolute while a positive number\0Ais the number of parent directories to search relative to the current module.\00", align 16
@.str.44 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@abs_doc = internal global [66 x i8] c"abs(number) -> number\0A\0AReturn the absolute value of the argument.\00", align 16
@.str.45 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@all_doc = internal global [127 x i8] c"all(iterable) -> bool\0A\0AReturn True if bool(x) is True for all values x in the iterable.\0AIf the iterable is empty, return True.\00", align 16
@.str.46 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@any_doc = internal global [121 x i8] c"any(iterable) -> bool\0A\0AReturn True if bool(x) is True for any x in the iterable.\0AIf the iterable is empty, return False.\00", align 16
@.str.47 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@ascii_doc = internal global [274 x i8] c"ascii(object) -> string\0A\0AAs repr(), return a string containing a printable representation of an\0Aobject, but escape the non-ASCII characters in the string returned by\0Arepr() using \5Cx, \5Cu or \5CU escapes.  This generates a string similar\0Ato that returned by repr() in Python 2.\00", align 16
@.str.48 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@bin_doc = internal global [123 x i8] c"bin(number) -> string\0A\0AReturn the binary representation of an integer.\0A\0A   >>> bin(2796202)\0A   '0b1010101010101010101010'\0A\00", align 16
@.str.49 = private unnamed_addr constant [9 x i8] c"callable\00", align 1
@callable_doc = internal global [181 x i8] c"callable(object) -> bool\0A\0AReturn whether the object is callable (i.e., some kind of function).\0ANote that classes are callable, as are instances of classes with a\0A__call__() method.\00", align 16
@.str.50 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@chr_doc = internal global [106 x i8] c"chr(i) -> Unicode character\0A\0AReturn a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.\00", align 16
@.str.51 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@compile_doc = internal global [754 x i8] c"compile(source, filename, mode[, flags[, dont_inherit]]) -> code object\0A\0ACompile the source (a Python module, statement or expression)\0Ainto a code object that can be executed by exec() or eval().\0AThe filename will be used for run-time error messages.\0AThe mode must be 'exec' to compile a module, 'single' to compile a\0Asingle (interactive) statement, or 'eval' to compile an expression.\0AThe flags argument, if present, controls which future statements influence\0Athe compilation of the code.\0AThe dont_inherit argument, if non-zero, stops the compilation inheriting\0Athe effects of any future statements in effect in the code calling\0Acompile; if absent or zero these statements do influence the compilation,\0Ain addition to any features explicitly specified.\00", align 16
@.str.52 = private unnamed_addr constant [8 x i8] c"delattr\00", align 1
@delattr_doc = internal global [108 x i8] c"delattr(object, name)\0A\0ADelete a named attribute on an object; delattr(x, 'y') is equivalent to\0A``del x.y''.\00", align 16
@.str.53 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@dir_doc = internal global [624 x i8] c"dir([object]) -> list of strings\0A\0AIf called without an argument, return the names in the current scope.\0AElse, return an alphabetized list of names comprising (some of) the attributes\0Aof the given object, and of attributes reachable from it.\0AIf the object supplies a method named __dir__, it will be used; otherwise\0Athe default dir() logic is used and returns:\0A  for a module object: the module's attributes.\0A  for a class object:  its attributes, and recursively the attributes\0A    of its bases.\0A  for any other object: its attributes, its class's attributes, and\0A    recursively the attributes of its class's base classes.\00", align 16
@.str.54 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@divmod_doc = internal global [93 x i8] c"divmod(x, y) -> (div, mod)\0A\0AReturn the tuple ((x-x%y)/y, x%y).  Invariant: div*y + mod == x.\00", align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@eval_doc = internal global [365 x i8] c"eval(source[, globals[, locals]]) -> value\0A\0AEvaluate the source in the context of globals and locals.\0AThe source may be a string representing a Python expression\0Aor a code object as returned by compile().\0AThe globals must be a dictionary and locals can be any mapping,\0Adefaulting to the current globals and locals.\0AIf only globals is given, locals defaults to it.\0A\00", align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@exec_doc = internal global [250 x i8] c"exec(object[, globals[, locals]])\0A\0ARead and execute code from an object, which can be a string or a code\0Aobject.\0AThe globals and locals are dictionaries, defaulting to the current\0Aglobals and locals.  If only globals is given, locals defaults to it.\00", align 16
@.str.57 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@format_doc = internal global [105 x i8] c"format(value[, format_spec]) -> string\0A\0AReturns value.__format__(format_spec)\0Aformat_spec defaults to \22\22\00", align 16
@.str.58 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@getattr_doc = internal global [251 x i8] c"getattr(object, name[, default]) -> value\0A\0AGet a named attribute from an object; getattr(x, 'y') is equivalent to x.y.\0AWhen a default argument is given, it is returned when the attribute doesn't\0Aexist; without it, an exception is raised in that case.\00", align 16
@.str.59 = private unnamed_addr constant [8 x i8] c"globals\00", align 1
@globals_doc = internal global [96 x i8] c"globals() -> dictionary\0A\0AReturn the dictionary containing the current scope's global variables.\00", align 16
@.str.60 = private unnamed_addr constant [8 x i8] c"hasattr\00", align 1
@hasattr_doc = internal global [172 x i8] c"hasattr(object, name) -> bool\0A\0AReturn whether the object has an attribute with the given name.\0A(This is done by calling getattr(object, name) and catching AttributeError.)\00", align 16
@.str.61 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@hash_doc = internal global [170 x i8] c"hash(object) -> integer\0A\0AReturn a hash value for the object.  Two objects with the same value have\0Athe same hash value.  The reverse is not necessarily true, but likely.\00", align 16
@.str.62 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@hex_doc = internal global [117 x i8] c"hex(number) -> string\0A\0AReturn the hexadecimal representation of an integer.\0A\0A   >>> hex(3735928559)\0A   '0xdeadbeef'\0A\00", align 16
@.str.63 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@id_doc = internal global [172 x i8] c"id(object) -> integer\0A\0AReturn the identity of an object.  This is guaranteed to be unique among\0Asimultaneously existing objects.  (Hint: it's the object's memory address.)\00", align 16
@.str.64 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_doc = internal global [298 x i8] c"input([prompt]) -> string\0A\0ARead a string from standard input.  The trailing newline is stripped.\0AIf the user hits EOF (Unix: Ctl-D, Windows: Ctl-Z+Return), raise EOFError.\0AOn Unix, GNU readline is used if enabled.  The prompt string, if given,\0Ais printed without a trailing newline before reading.\00", align 16
@.str.65 = private unnamed_addr constant [11 x i8] c"isinstance\00", align 1
@isinstance_doc = internal global [325 x i8] c"isinstance(object, class-or-type-or-tuple) -> bool\0A\0AReturn whether an object is an instance of a class or of a subclass thereof.\0AWith a type as second argument, return whether that is the object's type.\0AThe form using a tuple, isinstance(x, (A, B, ...)), is a shortcut for\0Aisinstance(x, A) or isinstance(x, B) or ... (etc.).\00", align 16
@.str.66 = private unnamed_addr constant [11 x i8] c"issubclass\00", align 1
@issubclass_doc = internal global [239 x i8] c"issubclass(C, B) -> bool\0A\0AReturn whether class C is a subclass (i.e., a derived class) of class B.\0AWhen using a tuple as the second argument issubclass(X, (A, B, ...)),\0Ais a shortcut for issubclass(X, A) or issubclass(X, B) or ... (etc.).\00", align 16
@.str.67 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@iter_doc = internal global [252 x i8] c"iter(iterable) -> iterator\0Aiter(callable, sentinel) -> iterator\0A\0AGet an iterator from an object.  In the first form, the argument must\0Asupply its own iterator, or be a sequence.\0AIn the second form, the callable is called until it returns the sentinel.\00", align 16
@.str.68 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@len_doc = internal global [66 x i8] c"len(object)\0A\0AReturn the number of items of a sequence or mapping.\00", align 16
@.str.69 = private unnamed_addr constant [7 x i8] c"locals\00", align 1
@locals_doc = internal global [103 x i8] c"locals() -> dictionary\0A\0AUpdate and return a dictionary containing the current scope's local variables.\00", align 16
@.str.70 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@max_doc = internal global [190 x i8] c"max(iterable[, key=func]) -> value\0Amax(a, b, c, ...[, key=func]) -> value\0A\0AWith a single iterable argument, return its largest item.\0AWith two or more arguments, return the largest argument.\00", align 16
@.str.71 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@min_doc = internal global [192 x i8] c"min(iterable[, key=func]) -> value\0Amin(a, b, c, ...[, key=func]) -> value\0A\0AWith a single iterable argument, return its smallest item.\0AWith two or more arguments, return the smallest argument.\00", align 16
@.str.72 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@next_doc = internal global [167 x i8] c"next(iterator[, default])\0A\0AReturn the next item from the iterator. If default is given and the iterator\0Ais exhausted, it is returned instead of raising StopIteration.\00", align 16
@.str.73 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@oct_doc = internal global [106 x i8] c"oct(number) -> string\0A\0AReturn the octal representation of an integer.\0A\0A   >>> oct(342391)\0A   '0o1234567'\0A\00", align 16
@.str.74 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@ord_doc = internal global [73 x i8] c"ord(c) -> integer\0A\0AReturn the integer ordinal of a one-character string.\00", align 16
@.str.75 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@pow_doc = internal global [158 x i8] c"pow(x, y[, z]) -> number\0A\0AWith two arguments, equivalent to x**y.  With three arguments,\0Aequivalent to (x**y) % z, but may be more efficient (e.g. for ints).\00", align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@print_doc = internal global [393 x i8] c"print(value, ..., sep=' ', end='\5Cn', file=sys.stdout, flush=False)\0A\0APrints the values to a stream, or to sys.stdout by default.\0AOptional keyword arguments:\0Afile:  a file-like object (stream); defaults to the current sys.stdout.\0Asep:   string inserted between values, default a space.\0Aend:   string appended after the last value, default a newline.\0Aflush: whether to forcibly flush the stream.\00", align 16
@.str.77 = private unnamed_addr constant [5 x i8] c"repr\00", align 1
@repr_doc = internal global [135 x i8] c"repr(object) -> string\0A\0AReturn the canonical string representation of the object.\0AFor most object types, eval(repr(object)) == object.\00", align 16
@.str.78 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@round_doc = internal global [225 x i8] c"round(number[, ndigits]) -> number\0A\0ARound a number to a given precision in decimal digits (default 0 digits).\0AThis returns an int when called with one argument, otherwise the\0Asame type as the number. ndigits may be negative.\00", align 16
@.str.79 = private unnamed_addr constant [8 x i8] c"setattr\00", align 1
@setattr_doc = internal global [115 x i8] c"setattr(object, name, value)\0A\0ASet a named attribute on an object; setattr(x, 'y', v) is equivalent to\0A``x.y = v''.\00", align 16
@.str.80 = private unnamed_addr constant [7 x i8] c"sorted\00", align 1
@sorted_doc = internal global [62 x i8] c"sorted(iterable, key=None, reverse=False) --> new sorted list\00", align 16
@.str.81 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@sum_doc = internal global [190 x i8] c"sum(iterable[, start]) -> value\0A\0AReturn the sum of an iterable of numbers (NOT strings) plus the value\0Aof parameter 'start' (which defaults to 0).  When the iterable is\0Aempty, return start.\00", align 16
@.str.82 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@vars_doc = internal global [122 x i8] c"vars([object]) -> dictionary\0A\0AWithout arguments, equivalent to locals().\0AWith an argument, equivalent to object.__dict__.\00", align 16
@.str.83 = private unnamed_addr constant [37 x i8] c"__build_class__: args is not a tuple\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"__build_class__: not enough arguments\00", align 1
@PyFunction_Type = external global %struct._typeobject, align 8
@.str.85 = private unnamed_addr constant [42 x i8] c"__build__class__: func must be a function\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"__build_class__: name is not a string\00", align 1
@PyId_metaclass = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), %struct._object* null }, align 8
@PyId___prepare__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@PyCell_Type = external global %struct._typeobject, align 8
@.str.87 = private unnamed_addr constant [10 x i8] c"metaclass\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"__prepare__\00", align 1
@builtin___import__.kwlist = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* null], align 16
@.str.89 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"fromlist\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"U|OOOi:__import__\00", align 1
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.93 = private unnamed_addr constant [6 x i8] c"i:chr\00", align 1
@builtin_compile.kwlist = internal global [7 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* null], align 16
@.str.94 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"dont_inherit\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@builtin_compile.start = private unnamed_addr constant [3 x i32] [i32 257, i32 258, i32 256], align 4
@.str.100 = private unnamed_addr constant [17 x i8] c"OO&s|iii:compile\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.101 = private unnamed_addr constant [30 x i8] c"compile(): unrecognised flags\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"compile(): invalid optimize value\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.104 = private unnamed_addr constant [51 x i8] c"compile() arg 3 must be 'exec', 'eval' or 'single'\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"string, bytes or AST\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"%s() arg 1 must be a %s object\00", align 1
@.str.107 = private unnamed_addr constant [45 x i8] c"source code string cannot contain null bytes\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"locals must be a mapping\00", align 1
@.str.109 = private unnamed_addr constant [57 x i8] c"globals must be a real dict; try eval(expr, {}, mapping)\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"globals must be a dict\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"eval must be given globals and locals when called without a frame\00", align 1
@PyId___builtins__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), %struct._object* null }, align 8
@PyCode_Type = external global %struct._typeobject, align 8
@.str.112 = private unnamed_addr constant [60 x i8] c"code object passed to eval() may not contain free variables\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"string, bytes or code\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.115 = private unnamed_addr constant [34 x i8] c"globals and locals cannot be NULL\00", align 1
@.str.116 = private unnamed_addr constant [40 x i8] c"exec() arg 2 must be a dict, not %.100s\00", align 1
@.str.117 = private unnamed_addr constant [44 x i8] c"arg 3 must be a mapping or None, not %.100s\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"code object passed to exec() may not contain free variables\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"O|U:format\00", align 1
@.str.120 = private unnamed_addr constant [41 x i8] c"getattr(): attribute name must be string\00", align 1
@.str.121 = private unnamed_addr constant [41 x i8] c"hasattr(): attribute name must be string\00", align 1
@PyId_stdin = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), %struct._object* null }, align 8
@PyId_stdout = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), %struct._object* null }, align 8
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.122 = private unnamed_addr constant [24 x i8] c"input(): lost sys.stdin\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"input(): lost sys.stdout\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"input(): lost sys.stderr\00", align 1
@PyId_flush = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), %struct._object* null }, align 8
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyId_fileno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), %struct._object* null }, align 8
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@PyId_encoding = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), %struct._object* null }, align 8
@PyId_errors = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_KeyboardInterrupt = external global %struct._object*, align 8
@PyExc_EOFError = external global %struct._object*, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.126 = private unnamed_addr constant [22 x i8] c"input: input too long\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"iter(v, w): v must be callable\00", align 1
@min_max.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* null], align 16
@.str.135 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"|$OO\00", align 1
@.str.138 = private unnamed_addr constant [69 x i8] c"Cannot specify a default for %s() with multiple positional arguments\00", align 1
@.str.139 = private unnamed_addr constant [30 x i8] c"%s() arg is an empty sequence\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"'%.200s' object is not an iterator\00", align 1
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"ord() expected string of length 1, but %.200s found\00", align 1
@.str.142 = private unnamed_addr constant [59 x i8] c"ord() expected a character, but string of length %zd found\00", align 1
@builtin_print.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i8* null], align 16
@.str.143 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@builtin_print.dummy_args = internal global %struct._object* null, align 8
@.str.146 = private unnamed_addr constant [12 x i8] c"|OOOO:print\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"lost sys.stdout\00", align 1
@.str.148 = private unnamed_addr constant [41 x i8] c"sep must be None or a string, not %.200s\00", align 1
@.str.149 = private unnamed_addr constant [41 x i8] c"end must be None or a string, not %.200s\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@builtin_round.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i32 0, i32 0), i8* null], align 16
@.str.152 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"ndigits\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"O|O:round\00", align 1
@PyId___round__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), %struct._object* null }, align 8
@.str.155 = private unnamed_addr constant [44 x i8] c"type %.100s doesn't define __round__ method\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"__round__\00", align 1
@builtin_sorted.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), i8* null], align 16
@.str.157 = private unnamed_addr constant [9 x i8] c"iterable\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"O|Oi:sorted\00", align 1
@PyId_sort = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), %struct._object* null }, align 8
@.str.160 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.161 = private unnamed_addr constant [51 x i8] c"sum() can't sum strings [use ''.join(seq) instead]\00", align 1
@.str.162 = private unnamed_addr constant [50 x i8] c"sum() can't sum bytes [use b''.join(seq) instead]\00", align 1
@.str.163 = private unnamed_addr constant [54 x i8] c"sum() can't sum bytearray [use b''.join(seq) instead]\00", align 1
@PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), %struct._object* null }, align 8
@.str.164 = private unnamed_addr constant [45 x i8] c"vars() argument must have __dict__ attribute\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1

; Function Attrs: nounwind uwtable
define internal void @filter_dealloc(%struct.filterobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.filterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.filterobject* %lz, %struct.filterobject** %lz.addr, align 8
  %0 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %1 = bitcast %struct.filterobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterobject, %struct.filterobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
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
  %12 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterobject, %struct.filterobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %23 = bitcast %struct.filterobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %27 = bitcast %struct.filterobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @filter_traverse(%struct.filterobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.filterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.filterobject* %lz, %struct.filterobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterobject, %struct.filterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterobject, %struct.filterobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func9, align 8
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

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @filter_next(%struct.filterobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.filterobject*, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %ok = alloca i64, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %good = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store %struct.filterobject* %lz, %struct.filterobject** %lz.addr, align 8
  %0 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %4, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.53, %entry
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %5(%struct._object* %6)
  store %struct._object* %call, %struct._object** %item, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %8 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterobject, %struct.filterobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %cmp2 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func3 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %func3, align 8
  %cmp4 = icmp eq %struct._object* %11, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBool_Type, i32 0, i32 0, i32 0)
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %12)
  %conv = sext i32 %call6 to i64
  store i64 %conv, i64* %ok, align 8
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func7 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %func7, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call8, %struct._object** %good, align 8
  %16 = load %struct._object*, %struct._object** %good, align 8
  %cmp9 = icmp eq %struct._object* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %17 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.17

if.else.15:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else
  %24 = load %struct._object*, %struct._object** %good, align 8
  %call19 = call i32 @PyObject_IsTrue(%struct._object* %24)
  %conv20 = sext i32 %call19 to i64
  store i64 %conv20, i64* %ok, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %good, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %27, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %30(%struct._object* %31)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %if.then.5
  %32 = load i64, i64* %ok, align 8
  %cmp34 = icmp sgt i64 %32, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %33 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp39, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %36, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.38
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.38
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %39(%struct._object* %40)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %41 = load i64, i64* %ok, align 8
  %cmp50 = icmp slt i64 %41, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.49
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %do.end.49
  br label %for.cond

return:                                           ; preds = %if.then.52, %if.then.36, %do.end, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @filter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %lz = alloca %struct.filterobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @PyFilter_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call9 = call %struct._object* %6(%struct._typeobject* %7, i64 0)
  %8 = bitcast %struct._object* %call9 to %struct.filterobject*
  store %struct.filterobject* %8, %struct.filterobject** %lz, align 8
  %9 = load %struct.filterobject*, %struct.filterobject** %lz, align 8
  %cmp10 = icmp eq %struct.filterobject* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %func, align 8
  %20 = load %struct.filterobject*, %struct.filterobject** %lz, align 8
  %func17 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %func17, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load %struct.filterobject*, %struct.filterobject** %lz, align 8
  %it18 = getelementptr inbounds %struct.filterobject, %struct.filterobject* %22, i32 0, i32 2
  store %struct._object* %21, %struct._object** %it18, align 8
  %23 = load %struct.filterobject*, %struct.filterobject** %lz, align 8
  %24 = bitcast %struct.filterobject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then.7, %if.then.3, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @map_dealloc(%struct.mapobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.mapobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.mapobject* %lz, %struct.mapobject** %lz.addr, align 8
  %0 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %1 = bitcast %struct.mapobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters = getelementptr inbounds %struct.mapobject, %struct.mapobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %iters, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
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
  %12 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.mapobject, %struct.mapobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %23 = bitcast %struct.mapobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %27 = bitcast %struct.mapobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @map_traverse(%struct.mapobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.mapobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.mapobject* %lz, %struct.mapobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters = getelementptr inbounds %struct.mapobject, %struct.mapobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %iters, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters1 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %iters1, align 8
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
  %8 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.mapobject, %struct.mapobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %func9, align 8
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
define internal %struct._object* @map_next(%struct.mapobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.mapobject*, align 8
  %val = alloca %struct._object*, align 8
  %argtuple = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %numargs = alloca i64, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct.mapobject* %lz, %struct.mapobject** %lz.addr, align 8
  %0 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters = getelementptr inbounds %struct.mapobject, %struct.mapobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %iters, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %1)
  store i64 %call, i64* %numargs, align 8
  %2 = load i64, i64* %numargs, align 8
  %call1 = call %struct._object* @PyTuple_New(i64 %2)
  store %struct._object* %call1, %struct._object** %argtuple, align 8
  %3 = load %struct._object*, %struct._object** %argtuple, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %numargs, align 8
  %cmp2 = icmp slt i64 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters3 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %iters3, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %6
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call4 = call %struct._object* @PyIter_Next(%struct._object* %10)
  store %struct._object* %call4, %struct._object** %val, align 8
  %11 = load %struct._object*, %struct._object** %val, align 8
  %cmp5 = icmp eq %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** %argtuple, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  %19 = load %struct._object*, %struct._object** %val, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load %struct._object*, %struct._object** %argtuple, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 %20
  store %struct._object* %19, %struct._object** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.mapobject, %struct.mapobject* %24, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %func, align 8
  %26 = load %struct._object*, %struct._object** %argtuple, align 8
  %call13 = call %struct._object* @PyObject_Call(%struct._object* %25, %struct._object* %26, %struct._object* null)
  store %struct._object* %call13, %struct._object** %result, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %for.end
  %27 = load %struct._object*, %struct._object** %argtuple, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp15, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %29, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %32(%struct._object* %33)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %34 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.24, %do.end, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @map_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %iters = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %lz = alloca %struct.mapobject*, align 8
  %numargs = alloca i64, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @PyMap_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i64 @PyTuple_Size(%struct._object* %2)
  store i64 %call1, i64* %numargs, align 8
  %3 = load i64, i64* %numargs, align 8
  %cmp2 = icmp slt i64 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %numargs, align 8
  %sub = sub i64 %5, 1
  %call5 = call %struct._object* @PyTuple_New(i64 %sub)
  store %struct._object* %call5, %struct._object** %iters, align 8
  %6 = load %struct._object*, %struct._object** %iters, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %numargs, align 8
  %cmp9 = icmp slt i64 %7, %8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call10 = call %struct._object* @PyObject_GetIter(%struct._object* %12)
  store %struct._object* %call10, %struct._object** %it, align 8
  %13 = load %struct._object*, %struct._object** %it, align 8
  %cmp11 = icmp eq %struct._object* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %14 = load %struct._object*, %struct._object** %iters, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load i64, i64* %i, align 8
  %sub17 = sub i64 %22, 1
  %23 = load %struct._object*, %struct._object** %iters, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %sub17
  store %struct._object* %21, %struct._object** %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 36
  %27 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %28 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call20 = call %struct._object* %27(%struct._typeobject* %28, i64 0)
  %29 = bitcast %struct._object* %call20 to %struct.mapobject*
  store %struct.mapobject* %29, %struct.mapobject** %lz, align 8
  %30 = load %struct.mapobject*, %struct.mapobject** %lz, align 8
  %cmp21 = icmp eq %struct.mapobject* %30, null
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %for.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %31 = load %struct._object*, %struct._object** %iters, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp24, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %33, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %36(%struct._object* %37)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %for.end
  %38 = load %struct._object*, %struct._object** %iters, align 8
  %39 = load %struct.mapobject*, %struct.mapobject** %lz, align 8
  %iters35 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %39, i32 0, i32 1
  store %struct._object* %38, %struct._object** %iters35, align 8
  %40 = load %struct._object*, %struct._object** %args.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 0
  %42 = load %struct._object*, %struct._object** %arrayidx37, align 8
  store %struct._object* %42, %struct._object** %func, align 8
  %43 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %44, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  %45 = load %struct._object*, %struct._object** %func, align 8
  %46 = load %struct.mapobject*, %struct.mapobject** %lz, align 8
  %func40 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %46, i32 0, i32 2
  store %struct._object* %45, %struct._object** %func40, align 8
  %47 = load %struct.mapobject*, %struct.mapobject** %lz, align 8
  %48 = bitcast %struct.mapobject* %47 to %struct._object*
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.34, %do.end.33, %do.end, %if.then.7, %if.then.3, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

; Function Attrs: nounwind uwtable
define internal void @zip_dealloc(%struct.zipobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.zipobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.zipobject* %lz, %struct.zipobject** %lz.addr, align 8
  %0 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %1 = bitcast %struct.zipobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.zipobject, %struct.zipobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
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
  %12 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.zipobject, %struct.zipobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %23 = bitcast %struct.zipobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %27 = bitcast %struct.zipobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zip_traverse(%struct.zipobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.zipobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.zipobject* %lz, %struct.zipobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.zipobject, %struct.zipobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %ittuple, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple1 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %ittuple1, align 8
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
  %8 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.zipobject, %struct.zipobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %result9 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
define internal %struct._object* @zip_next(%struct.zipobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.zipobject*, align 8
  %i = alloca i64, align 8
  %tuplesize = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct.zipobject* %lz, %struct.zipobject** %lz.addr, align 8
  %0 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %tuplesize1 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %0, i32 0, i32 1
  %1 = load i64, i64* %tuplesize1, align 8
  store i64 %1, i64* %tuplesize, align 8
  %2 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %result2 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %result2, align 8
  store %struct._object* %3, %struct._object** %result, align 8
  %4 = load i64, i64* %tuplesize, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %cmp3 = icmp eq i64 %6, 1
  br i1 %cmp3, label %if.then.4, label %if.else.31

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt5, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt5, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %tuplesize, align 8
  %cmp6 = icmp slt i64 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.zipobject, %struct.zipobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %ittuple, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %11
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %15, %struct._object** %it, align 8
  %16 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 26
  %18 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  %19 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %18(%struct._object* %19)
  store %struct._object* %call, %struct._object** %item, align 8
  %20 = load %struct._object*, %struct._object** %item, align 8
  %cmp7 = icmp eq %struct._object* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load %struct._object*, %struct._object** %result, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %28
  %31 = load %struct._object*, %struct._object** %arrayidx16, align 8
  store %struct._object* %31, %struct._object** %olditem, align 8
  %32 = load %struct._object*, %struct._object** %item, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load %struct._object*, %struct._object** %result, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 %33
  store %struct._object* %32, %struct._object** %arrayidx18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.14
  %36 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp20, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %38, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %41(%struct._object* %42)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %do.end.29
  %43 = load i64, i64* %i, align 8
  %inc30 = add i64 %43, 1
  store i64 %inc30, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.64

if.else.31:                                       ; preds = %if.end
  %44 = load i64, i64* %tuplesize, align 8
  %call32 = call %struct._object* @PyTuple_New(i64 %44)
  store %struct._object* %call32, %struct._object** %result, align 8
  %45 = load %struct._object*, %struct._object** %result, align 8
  %cmp33 = icmp eq %struct._object* %45, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.else.31
  store i64 0, i64* %i, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.61, %if.end.35
  %46 = load i64, i64* %i, align 8
  %47 = load i64, i64* %tuplesize, align 8
  %cmp37 = icmp slt i64 %46, %47
  br i1 %cmp37, label %for.body.38, label %for.end.63

for.body.38:                                      ; preds = %for.cond.36
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple39 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %49, i32 0, i32 2
  %50 = load %struct._object*, %struct._object** %ittuple39, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %51, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 %48
  %52 = load %struct._object*, %struct._object** %arrayidx41, align 8
  store %struct._object* %52, %struct._object** %it, align 8
  %53 = load %struct._object*, %struct._object** %it, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_iternext43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 26
  %55 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext43, align 8
  %56 = load %struct._object*, %struct._object** %it, align 8
  %call44 = call %struct._object* %55(%struct._object* %56)
  store %struct._object* %call44, %struct._object** %item, align 8
  %57 = load %struct._object*, %struct._object** %item, align 8
  %cmp45 = icmp eq %struct._object* %57, null
  br i1 %cmp45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %for.body.38
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %58 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp48, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %60, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %63(%struct._object* %64)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %for.body.38
  %65 = load %struct._object*, %struct._object** %item, align 8
  %66 = load i64, i64* %i, align 8
  %67 = load %struct._object*, %struct._object** %result, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyTupleObject*
  %ob_item59 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %68, i32 0, i32 1
  %arrayidx60 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item59, i32 0, i64 %66
  store %struct._object* %65, %struct._object** %arrayidx60, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.58
  %69 = load i64, i64* %i, align 8
  %inc62 = add i64 %69, 1
  store i64 %inc62, i64* %i, align 8
  br label %for.cond.36

for.end.63:                                       ; preds = %for.cond.36
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %for.end
  %70 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %70, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.64, %do.end.57, %if.then.34, %do.end, %if.then
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %lz = alloca %struct.zipobject*, align 8
  %i = alloca i64, align 8
  %ittuple = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tuplesize = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %tuplesize, align 8
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyZip_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._object* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %tuplesize, align 8
  %call2 = call %struct._object* @PyTuple_New(i64 %3)
  store %struct._object* %call2, %struct._object** %ittuple, align 8
  %4 = load %struct._object*, %struct._object** %ittuple, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %tuplesize, align 8
  %cmp6 = icmp slt i64 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %7
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %10, %struct._object** %item, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %call7 = call %struct._object* @PyObject_GetIter(%struct._object* %11)
  store %struct._object* %call7, %struct._object** %it, align 8
  %12 = load %struct._object*, %struct._object** %it, align 8
  %cmp8 = icmp eq %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %for.body
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call10 = call i32 @PyErr_ExceptionMatches(%struct._object* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %15 = load i64, i64* %i, align 8
  %add = add i64 %15, 1
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i32 0, i32 0), i64 %add)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  %23 = load %struct._object*, %struct._object** %it, align 8
  %24 = load i64, i64* %i, align 8
  %25 = load %struct._object*, %struct._object** %ittuple, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i64 %24
  store %struct._object* %23, %struct._object** %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %tuplesize, align 8
  %call21 = call %struct._object* @PyTuple_New(i64 %28)
  store %struct._object* %call21, %struct._object** %result, align 8
  %29 = load %struct._object*, %struct._object** %result, align 8
  %cmp22 = icmp eq %struct._object* %29, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %for.end
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %30 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp25, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %32, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %35(%struct._object* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.end.35
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %tuplesize, align 8
  %cmp37 = icmp slt i64 %37, %38
  br i1 %cmp37, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.36
  %39 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc39 = add i64 %39, 1
  store i64 %inc39, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %40 = load i64, i64* %i, align 8
  %41 = load %struct._object*, %struct._object** %result, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 %40
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.38
  %43 = load i64, i64* %i, align 8
  %inc43 = add i64 %43, 1
  store i64 %inc43, i64* %i, align 8
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  %44 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 36
  %45 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %46 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call45 = call %struct._object* %45(%struct._typeobject* %46, i64 0)
  %47 = bitcast %struct._object* %call45 to %struct.zipobject*
  store %struct.zipobject* %47, %struct.zipobject** %lz, align 8
  %48 = load %struct.zipobject*, %struct.zipobject** %lz, align 8
  %cmp46 = icmp eq %struct.zipobject* %48, null
  br i1 %cmp46, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %for.end.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %49 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp49, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %51, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %54(%struct._object* %55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp60, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %58, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %61(%struct._object* %62)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %for.end.44
  %63 = load %struct._object*, %struct._object** %ittuple, align 8
  %64 = load %struct.zipobject*, %struct.zipobject** %lz, align 8
  %ittuple71 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %64, i32 0, i32 2
  store %struct._object* %63, %struct._object** %ittuple71, align 8
  %65 = load i64, i64* %tuplesize, align 8
  %66 = load %struct.zipobject*, %struct.zipobject** %lz, align 8
  %tuplesize72 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %66, i32 0, i32 1
  store i64 %65, i64* %tuplesize72, align 8
  %67 = load %struct._object*, %struct._object** %result, align 8
  %68 = load %struct.zipobject*, %struct.zipobject** %lz, align 8
  %result73 = getelementptr inbounds %struct.zipobject, %struct.zipobject* %68, i32 0, i32 3
  store %struct._object* %67, %struct._object** %result73, align 8
  %69 = load %struct.zipobject*, %struct.zipobject** %lz, align 8
  %70 = bitcast %struct.zipobject* %69 to %struct._object*
  store %struct._object* %70, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.70, %do.end.69, %do.end.34, %do.end, %if.then.4, %if.then
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyBuiltin_Init() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %debug = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @PyFilter_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @PyMap_Type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = call i32 @PyType_Ready(%struct._typeobject* @PyZip_Type)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call6 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @builtinsmodule, i32 1013)
  store %struct._object* %call6, %struct._object** %mod, align 8
  %0 = load %struct._object*, %struct._object** %mod, align 8
  %cmp7 = icmp eq %struct._object* %0, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %mod, align 8
  %call10 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call10, %struct._object** %dict, align 8
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %call11 = call i32 @PyDict_SetItemString(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %3 = load %struct._object*, %struct._object** %dict, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* @_Py_EllipsisObject)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %call19 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._object* @_Py_NotImplementedStruct)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %call23 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0))
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %6 = load %struct._object*, %struct._object** %dict, align 8
  %call27 = call i32 @PyDict_SetItemString(%struct._object* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %call31 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBool_Type, i32 0, i32 0, i32 0))
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.30
  %8 = load %struct._object*, %struct._object** %dict, align 8
  %call35 = call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyMemoryView_Type, i32 0, i32 0, i32 0))
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  %9 = load %struct._object*, %struct._object** %dict, align 8
  %call39 = call i32 @PyDict_SetItemString(%struct._object* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyByteArray_Type, i32 0, i32 0, i32 0))
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  %10 = load %struct._object*, %struct._object** %dict, align 8
  %call43 = call i32 @PyDict_SetItemString(%struct._object* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytes_Type, i32 0, i32 0, i32 0))
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %11 = load %struct._object*, %struct._object** %dict, align 8
  %call47 = call i32 @PyDict_SetItemString(%struct._object* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyClassMethod_Type, i32 0, i32 0, i32 0))
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %12 = load %struct._object*, %struct._object** %dict, align 8
  %call51 = call i32 @PyDict_SetItemString(%struct._object* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyComplex_Type, i32 0, i32 0, i32 0))
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  %13 = load %struct._object*, %struct._object** %dict, align 8
  %call55 = call i32 @PyDict_SetItemString(%struct._object* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 0, i32 0))
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.54
  %14 = load %struct._object*, %struct._object** %dict, align 8
  %call59 = call i32 @PyDict_SetItemString(%struct._object* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEnum_Type, i32 0, i32 0, i32 0))
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %call63 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFilter_Type, i32 0, i32 0, i32 0))
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.66:                                        ; preds = %if.end.62
  %16 = load %struct._object*, %struct._object** %dict, align 8
  %call67 = call i32 @PyDict_SetItemString(%struct._object* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFloat_Type, i32 0, i32 0, i32 0))
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.66
  %17 = load %struct._object*, %struct._object** %dict, align 8
  %call71 = call i32 @PyDict_SetItemString(%struct._object* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFrozenSet_Type, i32 0, i32 0, i32 0))
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.70
  %18 = load %struct._object*, %struct._object** %dict, align 8
  %call75 = call i32 @PyDict_SetItemString(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyProperty_Type, i32 0, i32 0, i32 0))
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.78:                                        ; preds = %if.end.74
  %19 = load %struct._object*, %struct._object** %dict, align 8
  %call79 = call i32 @PyDict_SetItemString(%struct._object* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 0, i32 0))
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.82:                                        ; preds = %if.end.78
  %20 = load %struct._object*, %struct._object** %dict, align 8
  %call83 = call i32 @PyDict_SetItemString(%struct._object* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyList_Type, i32 0, i32 0, i32 0))
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.82
  %21 = load %struct._object*, %struct._object** %dict, align 8
  %call87 = call i32 @PyDict_SetItemString(%struct._object* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyMap_Type, i32 0, i32 0, i32 0))
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.86
  %22 = load %struct._object*, %struct._object** %dict, align 8
  %call91 = call i32 @PyDict_SetItemString(%struct._object* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i32 0, i32 0, i32 0))
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.94:                                        ; preds = %if.end.90
  %23 = load %struct._object*, %struct._object** %dict, align 8
  %call95 = call i32 @PyDict_SetItemString(%struct._object* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRange_Type, i32 0, i32 0, i32 0))
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.94
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.94
  %24 = load %struct._object*, %struct._object** %dict, align 8
  %call99 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyReversed_Type, i32 0, i32 0, i32 0))
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.102:                                       ; preds = %if.end.98
  %25 = load %struct._object*, %struct._object** %dict, align 8
  %call103 = call i32 @PyDict_SetItemString(%struct._object* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PySet_Type, i32 0, i32 0, i32 0))
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.106:                                       ; preds = %if.end.102
  %26 = load %struct._object*, %struct._object** %dict, align 8
  %call107 = call i32 @PyDict_SetItemString(%struct._object* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PySlice_Type, i32 0, i32 0, i32 0))
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.106
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.110:                                       ; preds = %if.end.106
  %27 = load %struct._object*, %struct._object** %dict, align 8
  %call111 = call i32 @PyDict_SetItemString(%struct._object* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStaticMethod_Type, i32 0, i32 0, i32 0))
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.114:                                       ; preds = %if.end.110
  %28 = load %struct._object*, %struct._object** %dict, align 8
  %call115 = call i32 @PyDict_SetItemString(%struct._object* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.118:                                       ; preds = %if.end.114
  %29 = load %struct._object*, %struct._object** %dict, align 8
  %call119 = call i32 @PyDict_SetItemString(%struct._object* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PySuper_Type, i32 0, i32 0, i32 0))
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.118
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.122:                                       ; preds = %if.end.118
  %30 = load %struct._object*, %struct._object** %dict, align 8
  %call123 = call i32 @PyDict_SetItemString(%struct._object* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 0, i32 0))
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.122
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.126:                                       ; preds = %if.end.122
  %31 = load %struct._object*, %struct._object** %dict, align 8
  %call127 = call i32 @PyDict_SetItemString(%struct._object* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0))
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.126
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.130:                                       ; preds = %if.end.126
  %32 = load %struct._object*, %struct._object** %dict, align 8
  %call131 = call i32 @PyDict_SetItemString(%struct._object* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyZip_Type, i32 0, i32 0, i32 0))
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.134:                                       ; preds = %if.end.130
  %33 = load i32, i32* @Py_OptimizeFlag, align 4
  %cmp135 = icmp eq i32 %33, 0
  %conv = zext i1 %cmp135 to i32
  %conv136 = sext i32 %conv to i64
  %call137 = call %struct._object* @PyBool_FromLong(i64 %conv136)
  store %struct._object* %call137, %struct._object** %debug, align 8
  %34 = load %struct._object*, %struct._object** %dict, align 8
  %35 = load %struct._object*, %struct._object** %debug, align 8
  %call138 = call i32 @PyDict_SetItemString(%struct._object* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._object* %35)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.152

if.then.141:                                      ; preds = %if.end.134
  br label %do.body

do.body:                                          ; preds = %if.then.141
  %36 = load %struct._object*, %struct._object** %debug, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp142 = icmp ne %struct._object* %37, null
  br i1 %cmp142, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %do.body
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp146 = icmp ne i64 %dec, 0
  br i1 %cmp146, label %if.then.148, label %if.else

if.then.148:                                      ; preds = %do.body.145
  br label %if.end.149

if.else:                                          ; preds = %do.body.145
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else, %if.then.148
  br label %do.end

do.end:                                           ; preds = %if.end.149
  br label %if.end.150

if.end.150:                                       ; preds = %do.end, %do.body
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.152:                                       ; preds = %if.end.134
  br label %do.body.153

do.body.153:                                      ; preds = %if.end.152
  %45 = load %struct._object*, %struct._object** %debug, align 8
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp154, align 8
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp154, align 8
  %cmp155 = icmp ne %struct._object* %46, null
  br i1 %cmp155, label %if.then.157, label %if.end.170

if.then.157:                                      ; preds = %do.body.153
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp154, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp159, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %49, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.158
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.158
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %52(%struct._object* %53)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %if.end.170

if.end.170:                                       ; preds = %do.end.169, %do.body.153
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  %54 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.171, %do.end.151, %if.then.133, %if.then.129, %if.then.125, %if.then.121, %if.then.117, %if.then.113, %if.then.109, %if.then.105, %if.then.101, %if.then.97, %if.then.93, %if.then.89, %if.then.85, %if.then.81, %if.then.77, %if.then.73, %if.then.69, %if.then.65, %if.then.61, %if.then.57, %if.then.53, %if.then.49, %if.then.45, %if.then.41, %if.then.37, %if.then.33, %if.then.29, %if.then.25, %if.then.21, %if.then.17, %if.then.13, %if.then.8, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @filter_reduce(%struct.filterobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.filterobject*, align 8
  store %struct.filterobject* %lz, %struct.filterobject** %lz.addr, align 8
  %0 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %1 = bitcast %struct.filterobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterobject, %struct.filterobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct.filterobject*, %struct.filterobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterobject, %struct.filterobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6)
  ret %struct._object* %call
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @map_reduce(%struct.mapobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.mapobject*, align 8
  %numargs = alloca i64, align 8
  %args = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %it = alloca %struct._object*, align 8
  store %struct.mapobject* %lz, %struct.mapobject** %lz.addr, align 8
  %0 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters = getelementptr inbounds %struct.mapobject, %struct.mapobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %iters, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %numargs, align 8
  %4 = load i64, i64* %numargs, align 8
  %add = add i64 %4, 1
  %call = call %struct._object* @PyTuple_New(i64 %add)
  store %struct._object* %call, %struct._object** %args, align 8
  %5 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.mapobject, %struct.mapobject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %func1 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %func1, align 8
  %11 = load %struct._object*, %struct._object** %args, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %10, %struct._object** %arrayidx, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %numargs, align 8
  %cmp2 = icmp slt i64 %13, %14
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %iters3 = getelementptr inbounds %struct.mapobject, %struct.mapobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %iters3, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item4, i32 0, i64 %15
  %19 = load %struct._object*, %struct._object** %arrayidx5, align 8
  store %struct._object* %19, %struct._object** %it, align 8
  %20 = load %struct._object*, %struct._object** %it, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt6, align 8
  %inc7 = add i64 %21, 1
  store i64 %inc7, i64* %ob_refcnt6, align 8
  %22 = load %struct._object*, %struct._object** %it, align 8
  %23 = load i64, i64* %i, align 8
  %add8 = add i64 %23, 1
  %24 = load %struct._object*, %struct._object** %args, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx10 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item9, i32 0, i64 %add8
  store %struct._object* %22, %struct._object** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i64, i64* %i, align 8
  %inc11 = add i64 %26, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.mapobject*, %struct.mapobject** %lz.addr, align 8
  %28 = bitcast %struct.mapobject* %27 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %30 = load %struct._object*, %struct._object** %args, align 8
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), %struct._typeobject* %29, %struct._object* %30)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_reduce(%struct.zipobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.zipobject*, align 8
  store %struct.zipobject* %lz, %struct.zipobject** %lz.addr, align 8
  %0 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %1 = bitcast %struct.zipobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.zipobject*, %struct.zipobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.zipobject, %struct.zipobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %ittuple, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4)
  ret %struct._object* %call
}

declare i64 @PySequence_Size(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin___build_class__(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %bases = alloca %struct._object*, align 8
  %mkw = alloca %struct._object*, align 8
  %meta = alloca %struct._object*, align 8
  %winner = alloca %struct._object*, align 8
  %prep = alloca %struct._object*, align 8
  %ns = alloca %struct._object*, align 8
  %cell = alloca %struct._object*, align 8
  %cls = alloca %struct._object*, align 8
  %nargs = alloca i64, align 8
  %isclass = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %base0 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_xdecref_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp186 = alloca %struct._object*, align 8
  %_py_decref_tmp200 = alloca %struct._object*, align 8
  %pargs = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp230 = alloca %struct._object*, align 8
  %_py_xdecref_tmp242 = alloca %struct._object*, align 8
  %_py_decref_tmp247 = alloca %struct._object*, align 8
  %_py_decref_tmp261 = alloca %struct._object*, align 8
  %_py_decref_tmp275 = alloca %struct._object*, align 8
  %_py_decref_tmp287 = alloca %struct._object*, align 8
  %_py_decref_tmp303 = alloca %struct._object*, align 8
  %_py_xdecref_tmp315 = alloca %struct._object*, align 8
  %_py_decref_tmp320 = alloca %struct._object*, align 8
  %_py_decref_tmp334 = alloca %struct._object*, align 8
  %margs = alloca %struct._object*, align 8
  %_py_decref_tmp356 = alloca %struct._object*, align 8
  %_py_decref_tmp377 = alloca %struct._object*, align 8
  %_py_decref_tmp390 = alloca %struct._object*, align 8
  %_py_decref_tmp402 = alloca %struct._object*, align 8
  %_py_xdecref_tmp414 = alloca %struct._object*, align 8
  %_py_decref_tmp419 = alloca %struct._object*, align 8
  %_py_decref_tmp433 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %cls, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %nargs, align 8
  %7 = load i64, i64* %nargs, align 8
  %cmp1 = icmp slt i64 %7, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %11, %struct._object** %func, align 8
  %12 = load %struct._object*, %struct._object** %func, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %13, @PyFunction_Type
  br i1 %cmp5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  %17 = load %struct._object*, %struct._object** %arrayidx9, align 8
  store %struct._object* %17, %struct._object** %name, align 8
  %18 = load %struct._object*, %struct._object** %name, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags11, align 8
  %and12 = and i64 %20, 268435456
  %cmp13 = icmp ne i64 %and12, 0
  br i1 %cmp13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.7
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %22 = load %struct._object*, %struct._object** %args.addr, align 8
  %23 = load i64, i64* %nargs, align 8
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %22, i64 2, i64 %23)
  store %struct._object* %call, %struct._object** %bases, align 8
  %24 = load %struct._object*, %struct._object** %bases, align 8
  %cmp16 = icmp eq %struct._object* %24, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  %25 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp19 = icmp eq %struct._object* %25, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %meta, align 8
  store %struct._object* null, %struct._object** %mkw, align 8
  br label %if.end.76

if.else:                                          ; preds = %if.end.18
  %26 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call21 = call %struct._object* @PyDict_Copy(%struct._object* %26)
  store %struct._object* %call21, %struct._object** %mkw, align 8
  %27 = load %struct._object*, %struct._object** %mkw, align 8
  %cmp22 = icmp eq %struct._object* %27, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %28 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body
  br label %if.end.28

if.else.26:                                       ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.else
  %35 = load %struct._object*, %struct._object** %mkw, align 8
  %call30 = call %struct._object* @_PyDict_GetItemId(%struct._object* %35, %struct._Py_Identifier* @PyId_metaclass)
  store %struct._object* %call30, %struct._object** %meta, align 8
  %36 = load %struct._object*, %struct._object** %meta, align 8
  %cmp31 = icmp ne %struct._object* %36, null
  br i1 %cmp31, label %if.then.32, label %if.end.75

if.then.32:                                       ; preds = %if.end.29
  %37 = load %struct._object*, %struct._object** %meta, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt33, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %ob_refcnt33, align 8
  %39 = load %struct._object*, %struct._object** %mkw, align 8
  %call34 = call i32 @_PyDict_DelItemId(%struct._object* %39, %struct._Py_Identifier* @PyId_metaclass)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.70

if.then.36:                                       ; preds = %if.then.32
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %40 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp38, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %42, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %45(%struct._object* %46)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %47 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp49, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %49, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %52(%struct._object* %53)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %54 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp60, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %56, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %59(%struct._object* %60)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.32
  %61 = load %struct._object*, %struct._object** %meta, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_flags72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 19
  %63 = load i64, i64* %tp_flags72, align 8
  %and73 = and i64 %63, 2147483648
  %cmp74 = icmp ne i64 %and73, 0
  %conv = zext i1 %cmp74 to i32
  store i32 %conv, i32* %isclass, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.70, %if.end.29
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.20
  %64 = load %struct._object*, %struct._object** %meta, align 8
  %cmp77 = icmp eq %struct._object* %64, null
  br i1 %cmp77, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %if.end.76
  %65 = load %struct._object*, %struct._object** %bases, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyVarObject*
  %ob_size80 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %66, i32 0, i32 1
  %67 = load i64, i64* %ob_size80, align 8
  %cmp81 = icmp eq i64 %67, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.then.79
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), %struct._object** %meta, align 8
  br label %if.end.88

if.else.84:                                       ; preds = %if.then.79
  %68 = load %struct._object*, %struct._object** %bases, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyTupleObject*
  %ob_item85 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %69, i32 0, i32 1
  %arrayidx86 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item85, i32 0, i64 0
  %70 = load %struct._object*, %struct._object** %arrayidx86, align 8
  store %struct._object* %70, %struct._object** %base0, align 8
  %71 = load %struct._object*, %struct._object** %base0, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %73 = bitcast %struct._typeobject* %72 to %struct._object*
  store %struct._object* %73, %struct._object** %meta, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.83
  %74 = load %struct._object*, %struct._object** %meta, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt89, align 8
  %inc90 = add i64 %75, 1
  store i64 %inc90, i64* %ob_refcnt89, align 8
  store i32 1, i32* %isclass, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.88, %if.end.76
  %76 = load i32, i32* %isclass, align 4
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.then.92, label %if.end.158

if.then.92:                                       ; preds = %if.end.91
  %77 = load %struct._object*, %struct._object** %meta, align 8
  %78 = bitcast %struct._object* %77 to %struct._typeobject*
  %79 = load %struct._object*, %struct._object** %bases, align 8
  %call93 = call %struct._typeobject* @_PyType_CalculateMetaclass(%struct._typeobject* %78, %struct._object* %79)
  %80 = bitcast %struct._typeobject* %call93 to %struct._object*
  store %struct._object* %80, %struct._object** %winner, align 8
  %81 = load %struct._object*, %struct._object** %winner, align 8
  %cmp94 = icmp eq %struct._object* %81, null
  br i1 %cmp94, label %if.then.96, label %if.end.139

if.then.96:                                       ; preds = %if.then.92
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %82 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp98, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %84, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.97
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.97
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %87(%struct._object* %88)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %89 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp, align 8
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp110 = icmp ne %struct._object* %90, null
  br i1 %cmp110, label %if.then.112, label %if.end.125

if.then.112:                                      ; preds = %do.body.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp114, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %93, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.113
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %96(%struct._object* %97)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %do.body.109
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  %98 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp128, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %100, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137

if.else.134:                                      ; preds = %do.body.127
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %103(%struct._object* %104)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.139:                                       ; preds = %if.then.92
  %105 = load %struct._object*, %struct._object** %winner, align 8
  %106 = load %struct._object*, %struct._object** %meta, align 8
  %cmp140 = icmp ne %struct._object* %105, %106
  br i1 %cmp140, label %if.then.142, label %if.end.157

if.then.142:                                      ; preds = %if.end.139
  br label %do.body.143

do.body.143:                                      ; preds = %if.then.142
  %107 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp144, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %109, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.143
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.143
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %112(%struct._object* %113)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  %114 = load %struct._object*, %struct._object** %winner, align 8
  store %struct._object* %114, %struct._object** %meta, align 8
  %115 = load %struct._object*, %struct._object** %meta, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt155, align 8
  %inc156 = add i64 %116, 1
  store i64 %inc156, i64* %ob_refcnt155, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %do.end.154, %if.end.139
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.91
  %117 = load %struct._object*, %struct._object** %meta, align 8
  %call159 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %117, %struct._Py_Identifier* @PyId___prepare__)
  store %struct._object* %call159, %struct._object** %prep, align 8
  %118 = load %struct._object*, %struct._object** %prep, align 8
  %cmp160 = icmp eq %struct._object* %118, null
  br i1 %cmp160, label %if.then.162, label %if.else.212

if.then.162:                                      ; preds = %if.end.158
  %119 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call163 = call i32 @PyErr_ExceptionMatches(%struct._object* %119)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.else.167

if.then.165:                                      ; preds = %if.then.162
  call void @PyErr_Clear()
  %call166 = call %struct._object* @PyDict_New()
  store %struct._object* %call166, %struct._object** %ns, align 8
  br label %if.end.211

if.else.167:                                      ; preds = %if.then.162
  br label %do.body.168

do.body.168:                                      ; preds = %if.else.167
  %120 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp169, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %122, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %do.body.168
  br label %if.end.178

if.else.175:                                      ; preds = %do.body.168
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %125(%struct._object* %126)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.174
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %do.body.180

do.body.180:                                      ; preds = %do.end.179
  %127 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp181, align 8
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8
  %cmp182 = icmp ne %struct._object* %128, null
  br i1 %cmp182, label %if.then.184, label %if.end.197

if.then.184:                                      ; preds = %do.body.180
  br label %do.body.185

do.body.185:                                      ; preds = %if.then.184
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp186, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_refcnt187 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt187, align 8
  %dec188 = add i64 %131, -1
  store i64 %dec188, i64* %ob_refcnt187, align 8
  %cmp189 = icmp ne i64 %dec188, 0
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %do.body.185
  br label %if.end.195

if.else.192:                                      ; preds = %do.body.185
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_type193 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type193, align 8
  %tp_dealloc194 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc194, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  call void %134(%struct._object* %135)
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.191
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %if.end.197

if.end.197:                                       ; preds = %do.end.196, %do.body.180
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  br label %do.body.199

do.body.199:                                      ; preds = %do.end.198
  %136 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp200, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_refcnt201 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt201, align 8
  %dec202 = add i64 %138, -1
  store i64 %dec202, i64* %ob_refcnt201, align 8
  %cmp203 = icmp ne i64 %dec202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %do.body.199
  br label %if.end.209

if.else.206:                                      ; preds = %do.body.199
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_type207 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type207, align 8
  %tp_dealloc208 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc208, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  call void %141(%struct._object* %142)
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.206, %if.then.205
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.211:                                       ; preds = %if.then.165
  br label %if.end.298

if.else.212:                                      ; preds = %if.end.158
  %143 = load %struct._object*, %struct._object** %name, align 8
  %144 = load %struct._object*, %struct._object** %bases, align 8
  %call213 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %143, %struct._object* %144)
  store %struct._object* %call213, %struct._object** %pargs, align 8
  %145 = load %struct._object*, %struct._object** %pargs, align 8
  %cmp214 = icmp eq %struct._object* %145, null
  br i1 %cmp214, label %if.then.216, label %if.end.272

if.then.216:                                      ; preds = %if.else.212
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %146 = load %struct._object*, %struct._object** %prep, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp218, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %148, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.217
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.217
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %151(%struct._object* %152)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %do.body.229

do.body.229:                                      ; preds = %do.end.228
  %153 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp230, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8
  %ob_refcnt231 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt231, align 8
  %dec232 = add i64 %155, -1
  store i64 %dec232, i64* %ob_refcnt231, align 8
  %cmp233 = icmp ne i64 %dec232, 0
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %do.body.229
  br label %if.end.239

if.else.236:                                      ; preds = %do.body.229
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8
  %ob_type237 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type237, align 8
  %tp_dealloc238 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc238, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8
  call void %158(%struct._object* %159)
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.236, %if.then.235
  br label %do.end.240

do.end.240:                                       ; preds = %if.end.239
  br label %do.body.241

do.body.241:                                      ; preds = %do.end.240
  %160 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %160, %struct._object** %_py_xdecref_tmp242, align 8
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp242, align 8
  %cmp243 = icmp ne %struct._object* %161, null
  br i1 %cmp243, label %if.then.245, label %if.end.258

if.then.245:                                      ; preds = %do.body.241
  br label %do.body.246

do.body.246:                                      ; preds = %if.then.245
  %162 = load %struct._object*, %struct._object** %_py_xdecref_tmp242, align 8
  store %struct._object* %162, %struct._object** %_py_decref_tmp247, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0
  %164 = load i64, i64* %ob_refcnt248, align 8
  %dec249 = add i64 %164, -1
  store i64 %dec249, i64* %ob_refcnt248, align 8
  %cmp250 = icmp ne i64 %dec249, 0
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %do.body.246
  br label %if.end.256

if.else.253:                                      ; preds = %do.body.246
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  %ob_type254 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type254, align 8
  %tp_dealloc255 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %166, i32 0, i32 4
  %167 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc255, align 8
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  call void %167(%struct._object* %168)
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.253, %if.then.252
  br label %do.end.257

do.end.257:                                       ; preds = %if.end.256
  br label %if.end.258

if.end.258:                                       ; preds = %do.end.257, %do.body.241
  br label %do.end.259

do.end.259:                                       ; preds = %if.end.258
  br label %do.body.260

do.body.260:                                      ; preds = %do.end.259
  %169 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %169, %struct._object** %_py_decref_tmp261, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  %ob_refcnt262 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0
  %171 = load i64, i64* %ob_refcnt262, align 8
  %dec263 = add i64 %171, -1
  store i64 %dec263, i64* %ob_refcnt262, align 8
  %cmp264 = icmp ne i64 %dec263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.267

if.then.266:                                      ; preds = %do.body.260
  br label %if.end.270

if.else.267:                                      ; preds = %do.body.260
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  %ob_type268 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type268, align 8
  %tp_dealloc269 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc269, align 8
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  call void %174(%struct._object* %175)
  br label %if.end.270

if.end.270:                                       ; preds = %if.else.267, %if.then.266
  br label %do.end.271

do.end.271:                                       ; preds = %if.end.270
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.272:                                       ; preds = %if.else.212
  %176 = load %struct._object*, %struct._object** %prep, align 8
  %177 = load %struct._object*, %struct._object** %pargs, align 8
  %178 = load %struct._object*, %struct._object** %mkw, align 8
  %call273 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %176, %struct._object* %177, %struct._object* %178)
  store %struct._object* %call273, %struct._object** %ns, align 8
  br label %do.body.274

do.body.274:                                      ; preds = %if.end.272
  %179 = load %struct._object*, %struct._object** %pargs, align 8
  store %struct._object* %179, %struct._object** %_py_decref_tmp275, align 8
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  %ob_refcnt276 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 0
  %181 = load i64, i64* %ob_refcnt276, align 8
  %dec277 = add i64 %181, -1
  store i64 %dec277, i64* %ob_refcnt276, align 8
  %cmp278 = icmp ne i64 %dec277, 0
  br i1 %cmp278, label %if.then.280, label %if.else.281

if.then.280:                                      ; preds = %do.body.274
  br label %if.end.284

if.else.281:                                      ; preds = %do.body.274
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  %ob_type282 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 1
  %183 = load %struct._typeobject*, %struct._typeobject** %ob_type282, align 8
  %tp_dealloc283 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %183, i32 0, i32 4
  %184 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc283, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  call void %184(%struct._object* %185)
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.281, %if.then.280
  br label %do.end.285

do.end.285:                                       ; preds = %if.end.284
  br label %do.body.286

do.body.286:                                      ; preds = %do.end.285
  %186 = load %struct._object*, %struct._object** %prep, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp287, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_refcnt288 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt288, align 8
  %dec289 = add i64 %188, -1
  store i64 %dec289, i64* %ob_refcnt288, align 8
  %cmp290 = icmp ne i64 %dec289, 0
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %do.body.286
  br label %if.end.296

if.else.293:                                      ; preds = %do.body.286
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_type294 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type294, align 8
  %tp_dealloc295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc295, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  call void %191(%struct._object* %192)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.293, %if.then.292
  br label %do.end.297

do.end.297:                                       ; preds = %if.end.296
  br label %if.end.298

if.end.298:                                       ; preds = %do.end.297, %if.end.211
  %193 = load %struct._object*, %struct._object** %ns, align 8
  %cmp299 = icmp eq %struct._object* %193, null
  br i1 %cmp299, label %if.then.301, label %if.end.345

if.then.301:                                      ; preds = %if.end.298
  br label %do.body.302

do.body.302:                                      ; preds = %if.then.301
  %194 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %194, %struct._object** %_py_decref_tmp303, align 8
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  %ob_refcnt304 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 0
  %196 = load i64, i64* %ob_refcnt304, align 8
  %dec305 = add i64 %196, -1
  store i64 %dec305, i64* %ob_refcnt304, align 8
  %cmp306 = icmp ne i64 %dec305, 0
  br i1 %cmp306, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %do.body.302
  br label %if.end.312

if.else.309:                                      ; preds = %do.body.302
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  %ob_type310 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 1
  %198 = load %struct._typeobject*, %struct._typeobject** %ob_type310, align 8
  %tp_dealloc311 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %198, i32 0, i32 4
  %199 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc311, align 8
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  call void %199(%struct._object* %200)
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.309, %if.then.308
  br label %do.end.313

do.end.313:                                       ; preds = %if.end.312
  br label %do.body.314

do.body.314:                                      ; preds = %do.end.313
  %201 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %201, %struct._object** %_py_xdecref_tmp315, align 8
  %202 = load %struct._object*, %struct._object** %_py_xdecref_tmp315, align 8
  %cmp316 = icmp ne %struct._object* %202, null
  br i1 %cmp316, label %if.then.318, label %if.end.331

if.then.318:                                      ; preds = %do.body.314
  br label %do.body.319

do.body.319:                                      ; preds = %if.then.318
  %203 = load %struct._object*, %struct._object** %_py_xdecref_tmp315, align 8
  store %struct._object* %203, %struct._object** %_py_decref_tmp320, align 8
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_refcnt321 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 0
  %205 = load i64, i64* %ob_refcnt321, align 8
  %dec322 = add i64 %205, -1
  store i64 %dec322, i64* %ob_refcnt321, align 8
  %cmp323 = icmp ne i64 %dec322, 0
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %do.body.319
  br label %if.end.329

if.else.326:                                      ; preds = %do.body.319
  %206 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_type327 = getelementptr inbounds %struct._object, %struct._object* %206, i32 0, i32 1
  %207 = load %struct._typeobject*, %struct._typeobject** %ob_type327, align 8
  %tp_dealloc328 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %207, i32 0, i32 4
  %208 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc328, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  call void %208(%struct._object* %209)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.325
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  br label %if.end.331

if.end.331:                                       ; preds = %do.end.330, %do.body.314
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.331
  br label %do.body.333

do.body.333:                                      ; preds = %do.end.332
  %210 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %210, %struct._object** %_py_decref_tmp334, align 8
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_refcnt335 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 0
  %212 = load i64, i64* %ob_refcnt335, align 8
  %dec336 = add i64 %212, -1
  store i64 %dec336, i64* %ob_refcnt335, align 8
  %cmp337 = icmp ne i64 %dec336, 0
  br i1 %cmp337, label %if.then.339, label %if.else.340

if.then.339:                                      ; preds = %do.body.333
  br label %if.end.343

if.else.340:                                      ; preds = %do.body.333
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_type341 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 1
  %214 = load %struct._typeobject*, %struct._typeobject** %ob_type341, align 8
  %tp_dealloc342 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %214, i32 0, i32 4
  %215 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc342, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  call void %215(%struct._object* %216)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.345:                                       ; preds = %if.end.298
  %217 = load %struct._object*, %struct._object** %func, align 8
  %218 = bitcast %struct._object* %217 to %struct.PyFunctionObject*
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %218, i32 0, i32 1
  %219 = load %struct._object*, %struct._object** %func_code, align 8
  %220 = load %struct._object*, %struct._object** %func, align 8
  %221 = bitcast %struct._object* %220 to %struct.PyFunctionObject*
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %221, i32 0, i32 2
  %222 = load %struct._object*, %struct._object** %func_globals, align 8
  %223 = load %struct._object*, %struct._object** %ns, align 8
  %224 = load %struct._object*, %struct._object** %func, align 8
  %225 = bitcast %struct._object* %224 to %struct.PyFunctionObject*
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %225, i32 0, i32 5
  %226 = load %struct._object*, %struct._object** %func_closure, align 8
  %call346 = call %struct._object* @PyEval_EvalCodeEx(%struct._object* %219, %struct._object* %222, %struct._object* %223, %struct._object** null, i32 0, %struct._object** null, i32 0, %struct._object** null, i32 0, %struct._object* null, %struct._object* %226)
  store %struct._object* %call346, %struct._object** %cell, align 8
  %227 = load %struct._object*, %struct._object** %cell, align 8
  %cmp347 = icmp ne %struct._object* %227, null
  br i1 %cmp347, label %if.then.349, label %if.end.388

if.then.349:                                      ; preds = %if.end.345
  %228 = load %struct._object*, %struct._object** %name, align 8
  %229 = load %struct._object*, %struct._object** %bases, align 8
  %230 = load %struct._object*, %struct._object** %ns, align 8
  %call350 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %228, %struct._object* %229, %struct._object* %230)
  store %struct._object* %call350, %struct._object** %margs, align 8
  %231 = load %struct._object*, %struct._object** %margs, align 8
  %cmp351 = icmp ne %struct._object* %231, null
  br i1 %cmp351, label %if.then.353, label %if.end.367

if.then.353:                                      ; preds = %if.then.349
  %232 = load %struct._object*, %struct._object** %meta, align 8
  %233 = load %struct._object*, %struct._object** %margs, align 8
  %234 = load %struct._object*, %struct._object** %mkw, align 8
  %call354 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %232, %struct._object* %233, %struct._object* %234)
  store %struct._object* %call354, %struct._object** %cls, align 8
  br label %do.body.355

do.body.355:                                      ; preds = %if.then.353
  %235 = load %struct._object*, %struct._object** %margs, align 8
  store %struct._object* %235, %struct._object** %_py_decref_tmp356, align 8
  %236 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  %ob_refcnt357 = getelementptr inbounds %struct._object, %struct._object* %236, i32 0, i32 0
  %237 = load i64, i64* %ob_refcnt357, align 8
  %dec358 = add i64 %237, -1
  store i64 %dec358, i64* %ob_refcnt357, align 8
  %cmp359 = icmp ne i64 %dec358, 0
  br i1 %cmp359, label %if.then.361, label %if.else.362

if.then.361:                                      ; preds = %do.body.355
  br label %if.end.365

if.else.362:                                      ; preds = %do.body.355
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  %ob_type363 = getelementptr inbounds %struct._object, %struct._object* %238, i32 0, i32 1
  %239 = load %struct._typeobject*, %struct._typeobject** %ob_type363, align 8
  %tp_dealloc364 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %239, i32 0, i32 4
  %240 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc364, align 8
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  call void %240(%struct._object* %241)
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.362, %if.then.361
  br label %do.end.366

do.end.366:                                       ; preds = %if.end.365
  br label %if.end.367

if.end.367:                                       ; preds = %do.end.366, %if.then.349
  %242 = load %struct._object*, %struct._object** %cls, align 8
  %cmp368 = icmp ne %struct._object* %242, null
  br i1 %cmp368, label %land.lhs.true, label %if.end.375

land.lhs.true:                                    ; preds = %if.end.367
  %243 = load %struct._object*, %struct._object** %cell, align 8
  %ob_type370 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 1
  %244 = load %struct._typeobject*, %struct._typeobject** %ob_type370, align 8
  %cmp371 = icmp eq %struct._typeobject* %244, @PyCell_Type
  br i1 %cmp371, label %if.then.373, label %if.end.375

if.then.373:                                      ; preds = %land.lhs.true
  %245 = load %struct._object*, %struct._object** %cell, align 8
  %246 = load %struct._object*, %struct._object** %cls, align 8
  %call374 = call i32 @PyCell_Set(%struct._object* %245, %struct._object* %246)
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.373, %land.lhs.true, %if.end.367
  br label %do.body.376

do.body.376:                                      ; preds = %if.end.375
  %247 = load %struct._object*, %struct._object** %cell, align 8
  store %struct._object* %247, %struct._object** %_py_decref_tmp377, align 8
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8
  %ob_refcnt378 = getelementptr inbounds %struct._object, %struct._object* %248, i32 0, i32 0
  %249 = load i64, i64* %ob_refcnt378, align 8
  %dec379 = add i64 %249, -1
  store i64 %dec379, i64* %ob_refcnt378, align 8
  %cmp380 = icmp ne i64 %dec379, 0
  br i1 %cmp380, label %if.then.382, label %if.else.383

if.then.382:                                      ; preds = %do.body.376
  br label %if.end.386

if.else.383:                                      ; preds = %do.body.376
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8
  %ob_type384 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 1
  %251 = load %struct._typeobject*, %struct._typeobject** %ob_type384, align 8
  %tp_dealloc385 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %251, i32 0, i32 4
  %252 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc385, align 8
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8
  call void %252(%struct._object* %253)
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.383, %if.then.382
  br label %do.end.387

do.end.387:                                       ; preds = %if.end.386
  br label %if.end.388

if.end.388:                                       ; preds = %do.end.387, %if.end.345
  br label %do.body.389

do.body.389:                                      ; preds = %if.end.388
  %254 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %254, %struct._object** %_py_decref_tmp390, align 8
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp390, align 8
  %ob_refcnt391 = getelementptr inbounds %struct._object, %struct._object* %255, i32 0, i32 0
  %256 = load i64, i64* %ob_refcnt391, align 8
  %dec392 = add i64 %256, -1
  store i64 %dec392, i64* %ob_refcnt391, align 8
  %cmp393 = icmp ne i64 %dec392, 0
  br i1 %cmp393, label %if.then.395, label %if.else.396

if.then.395:                                      ; preds = %do.body.389
  br label %if.end.399

if.else.396:                                      ; preds = %do.body.389
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp390, align 8
  %ob_type397 = getelementptr inbounds %struct._object, %struct._object* %257, i32 0, i32 1
  %258 = load %struct._typeobject*, %struct._typeobject** %ob_type397, align 8
  %tp_dealloc398 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %258, i32 0, i32 4
  %259 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc398, align 8
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp390, align 8
  call void %259(%struct._object* %260)
  br label %if.end.399

if.end.399:                                       ; preds = %if.else.396, %if.then.395
  br label %do.end.400

do.end.400:                                       ; preds = %if.end.399
  br label %do.body.401

do.body.401:                                      ; preds = %do.end.400
  %261 = load %struct._object*, %struct._object** %meta, align 8
  store %struct._object* %261, %struct._object** %_py_decref_tmp402, align 8
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp402, align 8
  %ob_refcnt403 = getelementptr inbounds %struct._object, %struct._object* %262, i32 0, i32 0
  %263 = load i64, i64* %ob_refcnt403, align 8
  %dec404 = add i64 %263, -1
  store i64 %dec404, i64* %ob_refcnt403, align 8
  %cmp405 = icmp ne i64 %dec404, 0
  br i1 %cmp405, label %if.then.407, label %if.else.408

if.then.407:                                      ; preds = %do.body.401
  br label %if.end.411

if.else.408:                                      ; preds = %do.body.401
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp402, align 8
  %ob_type409 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 1
  %265 = load %struct._typeobject*, %struct._typeobject** %ob_type409, align 8
  %tp_dealloc410 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %265, i32 0, i32 4
  %266 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc410, align 8
  %267 = load %struct._object*, %struct._object** %_py_decref_tmp402, align 8
  call void %266(%struct._object* %267)
  br label %if.end.411

if.end.411:                                       ; preds = %if.else.408, %if.then.407
  br label %do.end.412

do.end.412:                                       ; preds = %if.end.411
  br label %do.body.413

do.body.413:                                      ; preds = %do.end.412
  %268 = load %struct._object*, %struct._object** %mkw, align 8
  store %struct._object* %268, %struct._object** %_py_xdecref_tmp414, align 8
  %269 = load %struct._object*, %struct._object** %_py_xdecref_tmp414, align 8
  %cmp415 = icmp ne %struct._object* %269, null
  br i1 %cmp415, label %if.then.417, label %if.end.430

if.then.417:                                      ; preds = %do.body.413
  br label %do.body.418

do.body.418:                                      ; preds = %if.then.417
  %270 = load %struct._object*, %struct._object** %_py_xdecref_tmp414, align 8
  store %struct._object* %270, %struct._object** %_py_decref_tmp419, align 8
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_refcnt420 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0
  %272 = load i64, i64* %ob_refcnt420, align 8
  %dec421 = add i64 %272, -1
  store i64 %dec421, i64* %ob_refcnt420, align 8
  %cmp422 = icmp ne i64 %dec421, 0
  br i1 %cmp422, label %if.then.424, label %if.else.425

if.then.424:                                      ; preds = %do.body.418
  br label %if.end.428

if.else.425:                                      ; preds = %do.body.418
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_type426 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 1
  %274 = load %struct._typeobject*, %struct._typeobject** %ob_type426, align 8
  %tp_dealloc427 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %274, i32 0, i32 4
  %275 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc427, align 8
  %276 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  call void %275(%struct._object* %276)
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.425, %if.then.424
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.428
  br label %if.end.430

if.end.430:                                       ; preds = %do.end.429, %do.body.413
  br label %do.end.431

do.end.431:                                       ; preds = %if.end.430
  br label %do.body.432

do.body.432:                                      ; preds = %do.end.431
  %277 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %277, %struct._object** %_py_decref_tmp433, align 8
  %278 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  %ob_refcnt434 = getelementptr inbounds %struct._object, %struct._object* %278, i32 0, i32 0
  %279 = load i64, i64* %ob_refcnt434, align 8
  %dec435 = add i64 %279, -1
  store i64 %dec435, i64* %ob_refcnt434, align 8
  %cmp436 = icmp ne i64 %dec435, 0
  br i1 %cmp436, label %if.then.438, label %if.else.439

if.then.438:                                      ; preds = %do.body.432
  br label %if.end.442

if.else.439:                                      ; preds = %do.body.432
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  %ob_type440 = getelementptr inbounds %struct._object, %struct._object* %280, i32 0, i32 1
  %281 = load %struct._typeobject*, %struct._typeobject** %ob_type440, align 8
  %tp_dealloc441 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %281, i32 0, i32 4
  %282 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc441, align 8
  %283 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  call void %282(%struct._object* %283)
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.439, %if.then.438
  br label %do.end.443

do.end.443:                                       ; preds = %if.end.442
  %284 = load %struct._object*, %struct._object** %cls, align 8
  store %struct._object* %284, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.443, %do.end.344, %do.end.271, %do.end.210, %do.end.138, %do.end.69, %do.end, %if.then.17, %if.then.14, %if.then.6, %if.then.2, %if.then
  %285 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %285
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin___import__(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %locals = alloca %struct._object*, align 8
  %fromlist = alloca %struct._object*, align 8
  %level = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %globals, align 8
  store %struct._object* null, %struct._object** %locals, align 8
  store %struct._object* null, %struct._object** %fromlist, align 8
  store i32 0, i32* %level, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @builtin___import__.kwlist, i32 0, i32 0), %struct._object** %name, %struct._object** %globals, %struct._object** %locals, %struct._object** %fromlist, i32* %level)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %name, align 8
  %3 = load %struct._object*, %struct._object** %globals, align 8
  %4 = load %struct._object*, %struct._object** %locals, align 8
  %5 = load %struct._object*, %struct._object** %fromlist, align 8
  %6 = load i32, i32* %level, align 4
  %call1 = call %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %2, %struct._object* %3, %struct._object* %4, %struct._object* %5, i32 %6)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_abs(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_Absolute(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_all(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %it, align 8
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %4, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.38, %if.end
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call2 = call %struct._object* %5(%struct._object* %6)
  store %struct._object* %call2, %struct._object** %item, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.cond
  br label %for.end

if.end.5:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %8)
  store i32 %call6, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %16 = load i32, i32* %cmp, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp14, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %19, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %22(%struct._object* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %do.end
  %24 = load i32, i32* %cmp, align 4
  %cmp25 = icmp eq i32 %24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %32 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.24
  br label %for.cond

for.end:                                          ; preds = %if.then.4
  br label %do.body.39

do.body.39:                                       ; preds = %for.end
  %33 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp40, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %35, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %38(%struct._object* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %call50 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call50, null
  br i1 %tobool, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %do.end.49
  %40 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call52 = call i32 @PyErr_ExceptionMatches(%struct._object* %40)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  call void @PyErr_Clear()
  br label %if.end.56

if.else.55:                                       ; preds = %if.then.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %do.end.49
  %41 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc58 = add i64 %41, 1
  store i64 %inc58, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.else.55, %do.end.37, %do.end.23, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_any(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %it, align 8
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %4, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.38, %if.end
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call2 = call %struct._object* %5(%struct._object* %6)
  store %struct._object* %call2, %struct._object** %item, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.cond
  br label %for.end

if.end.5:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %8)
  store i32 %call6, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %16 = load i32, i32* %cmp, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp14, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %19, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %22(%struct._object* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %do.end
  %24 = load i32, i32* %cmp, align 4
  %cmp25 = icmp eq i32 %24, 1
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %32 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.24
  br label %for.cond

for.end:                                          ; preds = %if.then.4
  br label %do.body.39

do.body.39:                                       ; preds = %for.end
  %33 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp40, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %35, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %38(%struct._object* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %call50 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call50, null
  br i1 %tobool, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %do.end.49
  %40 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call52 = call i32 @PyErr_ExceptionMatches(%struct._object* %40)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  call void @PyErr_Clear()
  br label %if.end.56

if.else.55:                                       ; preds = %if.then.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %do.end.49
  %41 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc58 = add i64 %41, 1
  store i64 %inc58, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.else.55, %do.end.37, %do.end.23, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_ascii(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_ASCII(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_bin(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_ToBase(%struct._object* %0, i32 2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_callable(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyCallable_Check(%struct._object* %0)
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_chr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x, align 4
  %call1 = call %struct._object* @PyUnicode_FromOrdinal(i32 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_compile(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %startstr = alloca i8*, align 8
  %mode = alloca i32, align 4
  %dont_inherit = alloca i32, align 4
  %supplied_flags = alloca i32, align 4
  %optimize = alloca i32, align 4
  %is_ast = alloca i32, align 4
  %cf = alloca %struct.PyCompilerFlags, align 4
  %cmd = alloca %struct._object*, align 8
  %start = alloca [3 x i32], align 4
  %result = alloca %struct._object*, align 8
  %arena = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 -1, i32* %mode, align 4
  store i32 0, i32* %dont_inherit, align 4
  store i32 0, i32* %supplied_flags, align 4
  store i32 -1, i32* %optimize, align 4
  %0 = bitcast [3 x i32]* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i32]* @builtin_compile.start to i8*), i64 12, i32 4, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @builtin_compile.kwlist, i32 0, i32 0), %struct._object** %cmd, i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %filename, i8** %startstr, i32* %supplied_flags, i32* %dont_inherit, i32* %optimize)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %supplied_flags, align 4
  %or = or i32 %3, 256
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %cf, i32 0, i32 0
  store i32 %or, i32* %cf_flags, align 4
  %4 = load i32, i32* %supplied_flags, align 4
  %and = and i32 %4, -517649
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i32 0, i32 0))
  br label %error

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %optimize, align 4
  %cmp = icmp slt i32 %6, -1
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %7 = load i32, i32* %optimize, align 4
  %cmp4 = icmp sgt i32 %7, 2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0))
  br label %error

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %dont_inherit, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 @PyEval_MergeCompilerFlags(%struct.PyCompilerFlags* %cf)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %10 = load i8*, i8** %startstr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %mode, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.end.10
  %11 = load i8*, i8** %startstr, align 8
  %call14 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i32 1, i32* %mode, align 4
  br label %if.end.23

if.else.17:                                       ; preds = %if.else
  %12 = load i8*, i8** %startstr, align 8
  %call18 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0)) #5
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.17
  store i32 2, i32* %mode, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.17
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.104, i32 0, i32 0))
  br label %error

if.end.22:                                        ; preds = %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  %14 = load %struct._object*, %struct._object** %cmd, align 8
  %call25 = call i32 @PyAST_Check(%struct._object* %14)
  store i32 %call25, i32* %is_ast, align 4
  %15 = load i32, i32* %is_ast, align 4
  %cmp26 = icmp eq i32 %15, -1
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %error

if.end.28:                                        ; preds = %if.end.24
  %16 = load i32, i32* %is_ast, align 4
  %tobool29 = icmp ne i32 %16, 0
  br i1 %tobool29, label %if.then.30, label %if.end.49

if.then.30:                                       ; preds = %if.end.28
  %17 = load i32, i32* %supplied_flags, align 4
  %and31 = and i32 %17, 1024
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.30
  %18 = load %struct._object*, %struct._object** %cmd, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct._object*, %struct._object** %cmd, align 8
  store %struct._object* %20, %struct._object** %result, align 8
  br label %if.end.48

if.else.34:                                       ; preds = %if.then.30
  %call35 = call %struct._arena* @PyArena_New()
  store %struct._arena* %call35, %struct._arena** %arena, align 8
  %21 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp36 = icmp eq %struct._arena* %21, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.34
  br label %error

if.end.38:                                        ; preds = %if.else.34
  %22 = load %struct._object*, %struct._object** %cmd, align 8
  %23 = load %struct._arena*, %struct._arena** %arena, align 8
  %24 = load i32, i32* %mode, align 4
  %call39 = call %struct._mod* @PyAST_obj2mod(%struct._object* %22, %struct._arena* %23, i32 %24)
  store %struct._mod* %call39, %struct._mod** %mod, align 8
  %25 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp40 = icmp eq %struct._mod* %25, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %26 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %26)
  br label %error

if.end.42:                                        ; preds = %if.end.38
  %27 = load %struct._mod*, %struct._mod** %mod, align 8
  %call43 = call i32 @PyAST_Validate(%struct._mod* %27)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  %28 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %28)
  br label %error

if.end.46:                                        ; preds = %if.end.42
  %29 = load %struct._mod*, %struct._mod** %mod, align 8
  %30 = load %struct._object*, %struct._object** %filename, align 8
  %31 = load i32, i32* %optimize, align 4
  %32 = load %struct._arena*, %struct._arena** %arena, align 8
  %call47 = call %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod* %29, %struct._object* %30, %struct.PyCompilerFlags* %cf, i32 %31, %struct._arena* %32)
  %33 = bitcast %struct.PyCodeObject* %call47 to %struct._object*
  store %struct._object* %33, %struct._object** %result, align 8
  %34 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %34)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %if.then.33
  br label %finally

if.end.49:                                        ; preds = %if.end.28
  %35 = load %struct._object*, %struct._object** %cmd, align 8
  %call50 = call i8* @source_as_string(%struct._object* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0), %struct.PyCompilerFlags* %cf)
  store i8* %call50, i8** %str, align 8
  %36 = load i8*, i8** %str, align 8
  %cmp51 = icmp eq i8* %36, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  br label %error

if.end.53:                                        ; preds = %if.end.49
  %37 = load i8*, i8** %str, align 8
  %38 = load %struct._object*, %struct._object** %filename, align 8
  %39 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr [3 x i32], [3 x i32]* %start, i32 0, i64 %idxprom
  %40 = load i32, i32* %arrayidx, align 4
  %41 = load i32, i32* %optimize, align 4
  %call54 = call %struct._object* @Py_CompileStringObject(i8* %37, %struct._object* %38, i32 %40, %struct.PyCompilerFlags* %cf, i32 %41)
  store %struct._object* %call54, %struct._object** %result, align 8
  br label %finally

error:                                            ; preds = %if.then.52, %if.then.45, %if.then.41, %if.then.37, %if.then.27, %if.else.21, %if.then.5, %if.then.2
  store %struct._object* null, %struct._object** %result, align 8
  br label %finally

finally:                                          ; preds = %error, %if.end.53, %if.end.48
  br label %do.body

do.body:                                          ; preds = %finally
  %42 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt55, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* %ob_refcnt55, align 8
  %cmp56 = icmp ne i64 %dec, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body
  br label %if.end.59

if.else.58:                                       ; preds = %do.body
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %47(%struct._object* %48)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end

do.end:                                           ; preds = %if.end.59
  %49 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %49, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_delattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i64 2, i64 2, %struct._object** %v, %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call i32 @PyObject_SetAttr(%struct._object* %1, %struct._object* %2, %struct._object* null)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_dir(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i64 0, i64 1, %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %call1 = call %struct._object* @PyObject_Dir(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_divmod(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i64 2, i64 2, %struct._object** %v, %struct._object** %w)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %w, align 8
  %call1 = call %struct._object* @PyNumber_Divmod(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_eval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %cmd = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %locals = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %cf = alloca %struct.PyCompilerFlags, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %tmp, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %globals, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %locals, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i64 1, i64 3, %struct._object** %cmd, %struct._object** %globals, %struct._object** %locals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %locals, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %locals, align 8
  %call5 = call i32 @PyMapping_Check(%struct._object* %2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %4 = load %struct._object*, %struct._object** %globals, align 8
  %cmp9 = icmp ne %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** %globals, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 536870912
  %cmp11 = icmp ne i64 %and, 0
  br i1 %cmp11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %globals, align 8
  %call13 = call i32 @PyMapping_Check(%struct._object* %9)
  %tobool14 = icmp ne i32 %call13, 0
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.110, i32 0, i32 0)
  call void @PyErr_SetString(%struct._object* %8, i8* %cond)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.10, %if.end.8
  %10 = load %struct._object*, %struct._object** %globals, align 8
  %cmp16 = icmp eq %struct._object* %10, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  %call18 = call %struct._object* @PyEval_GetGlobals()
  store %struct._object* %call18, %struct._object** %globals, align 8
  %11 = load %struct._object*, %struct._object** %locals, align 8
  %cmp19 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.then.17
  %call21 = call %struct._object* @PyEval_GetLocals()
  store %struct._object* %call21, %struct._object** %locals, align 8
  %12 = load %struct._object*, %struct._object** %locals, align 8
  %cmp22 = icmp eq %struct._object* %12, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  br label %if.end.29

if.else:                                          ; preds = %if.end.15
  %13 = load %struct._object*, %struct._object** %locals, align 8
  %cmp26 = icmp eq %struct._object* %13, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** %globals, align 8
  store %struct._object* %14, %struct._object** %locals, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.25
  %15 = load %struct._object*, %struct._object** %globals, align 8
  %cmp30 = icmp eq %struct._object* %15, null
  br i1 %cmp30, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %16 = load %struct._object*, %struct._object** %locals, align 8
  %cmp31 = icmp eq %struct._object* %16, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.29
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.111, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false
  %18 = load %struct._object*, %struct._object** %globals, align 8
  %call34 = call %struct._object* @_PyDict_GetItemId(%struct._object* %18, %struct._Py_Identifier* @PyId___builtins__)
  %cmp35 = icmp eq %struct._object* %call34, null
  br i1 %cmp35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.33
  %19 = load %struct._object*, %struct._object** %globals, align 8
  %call37 = call %struct._object* @PyEval_GetBuiltins()
  %call38 = call i32 @_PyDict_SetItemId(%struct._object* %19, %struct._Py_Identifier* @PyId___builtins__, %struct._object* %call37)
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.36
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.33
  %20 = load %struct._object*, %struct._object** %cmd, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %cmp44 = icmp eq %struct._typeobject* %21, @PyCode_Type
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %22 = load %struct._object*, %struct._object** %cmd, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyCodeObject*
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %23, i32 0, i32 10
  %24 = load %struct._object*, %struct._object** %co_freevars, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size, align 8
  %cmp46 = icmp sgt i64 %26, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.45
  %27 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.112, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.45
  %28 = load %struct._object*, %struct._object** %cmd, align 8
  %29 = load %struct._object*, %struct._object** %globals, align 8
  %30 = load %struct._object*, %struct._object** %locals, align 8
  %call49 = call %struct._object* @PyEval_EvalCode(%struct._object* %28, %struct._object* %29, %struct._object* %30)
  store %struct._object* %call49, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.42
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %cf, i32 0, i32 0
  store i32 256, i32* %cf_flags, align 4
  %31 = load %struct._object*, %struct._object** %cmd, align 8
  %call51 = call i8* @source_as_string(%struct._object* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), %struct.PyCompilerFlags* %cf)
  store i8* %call51, i8** %str, align 8
  %32 = load i8*, i8** %str, align 8
  %cmp52 = icmp eq i8* %32, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.54
  %33 = load i8*, i8** %str, align 8
  %34 = load i8, i8* %33, align 1
  %conv = sext i8 %34 to i32
  %cmp55 = icmp eq i32 %conv, 32
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %35 = load i8*, i8** %str, align 8
  %36 = load i8, i8* %35, align 1
  %conv57 = sext i8 %36 to i32
  %cmp58 = icmp eq i32 %conv57, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %37 = phi i1 [ true, %while.cond ], [ %cmp58, %lor.rhs ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %38 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %call60 = call i32 @PyEval_MergeCompilerFlags(%struct.PyCompilerFlags* %cf)
  %39 = load i8*, i8** %str, align 8
  %40 = load %struct._object*, %struct._object** %globals, align 8
  %41 = load %struct._object*, %struct._object** %locals, align 8
  %call61 = call %struct._object* @PyRun_StringFlags(i8* %39, i32 258, %struct._object* %40, %struct._object* %41, %struct.PyCompilerFlags* %cf)
  store %struct._object* %call61, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %while.end
  %42 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp63 = icmp ne %struct._object* %43, null
  br i1 %cmp63, label %if.then.65, label %if.end.74

if.then.65:                                       ; preds = %do.body
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp68 = icmp ne i64 %dec, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.66
  br label %if.end.73

if.else.71:                                       ; preds = %do.body.66
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end

do.end:                                           ; preds = %if.end.73
  br label %if.end.74

if.end.74:                                        ; preds = %do.end, %do.body
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %51 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.75, %if.then.53, %if.end.48, %if.then.47, %if.then.40, %if.then.32, %if.then.23, %if.then.12, %if.then.7, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_exec(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %prog = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %locals = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %cf = alloca %struct.PyCompilerFlags, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %globals, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %locals, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i64 1, i64 3, %struct._object** %prog, %struct._object** %globals, %struct._object** %locals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %globals, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyEval_GetGlobals()
  store %struct._object* %call2, %struct._object** %globals, align 8
  %2 = load %struct._object*, %struct._object** %locals, align 8
  %cmp3 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.1
  %call5 = call %struct._object* @PyEval_GetLocals()
  store %struct._object* %call5, %struct._object** %locals, align 8
  %3 = load %struct._object*, %struct._object** %locals, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.1
  %4 = load %struct._object*, %struct._object** %globals, align 8
  %tobool10 = icmp ne %struct._object* %4, null
  br i1 %tobool10, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end.9
  %5 = load %struct._object*, %struct._object** %locals, align 8
  %tobool11 = icmp ne %struct._object* %5, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  %6 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %locals, align 8
  %cmp14 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %globals, align 8
  store %struct._object* %8, %struct._object** %locals, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.13
  %9 = load %struct._object*, %struct._object** %globals, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 536870912
  %cmp18 = icmp ne i64 %and, 0
  br i1 %cmp18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %13 = load %struct._object*, %struct._object** %globals, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %tp_name, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.116, i32 0, i32 0), i8* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %16 = load %struct._object*, %struct._object** %locals, align 8
  %call23 = call i32 @PyMapping_Check(%struct._object* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.29, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %18 = load %struct._object*, %struct._object** %locals, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_name27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1
  %20 = load i8*, i8** %tp_name27, align 8
  %call28 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.117, i32 0, i32 0), i8* %20)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %21 = load %struct._object*, %struct._object** %globals, align 8
  %call30 = call %struct._object* @_PyDict_GetItemId(%struct._object* %21, %struct._Py_Identifier* @PyId___builtins__)
  %cmp31 = icmp eq %struct._object* %call30, null
  br i1 %cmp31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.end.29
  %22 = load %struct._object*, %struct._object** %globals, align 8
  %call33 = call %struct._object* @PyEval_GetBuiltins()
  %call34 = call i32 @_PyDict_SetItemId(%struct._object* %22, %struct._Py_Identifier* @PyId___builtins__, %struct._object* %call33)
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.29
  %23 = load %struct._object*, %struct._object** %prog, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %cmp40 = icmp eq %struct._typeobject* %24, @PyCode_Type
  br i1 %cmp40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.end.38
  %25 = load %struct._object*, %struct._object** %prog, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyCodeObject*
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 10
  %27 = load %struct._object*, %struct._object** %co_freevars, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size, align 8
  %cmp42 = icmp sgt i64 %29, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.41
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.118, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.41
  %31 = load %struct._object*, %struct._object** %prog, align 8
  %32 = load %struct._object*, %struct._object** %globals, align 8
  %33 = load %struct._object*, %struct._object** %locals, align 8
  %call45 = call %struct._object* @PyEval_EvalCode(%struct._object* %31, %struct._object* %32, %struct._object* %33)
  store %struct._object* %call45, %struct._object** %v, align 8
  br label %if.end.58

if.else.46:                                       ; preds = %if.end.38
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %cf, i32 0, i32 0
  store i32 256, i32* %cf_flags, align 4
  %34 = load %struct._object*, %struct._object** %prog, align 8
  %call47 = call i8* @source_as_string(%struct._object* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), %struct.PyCompilerFlags* %cf)
  store i8* %call47, i8** %str, align 8
  %35 = load i8*, i8** %str, align 8
  %cmp48 = icmp eq i8* %35, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.46
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.else.46
  %call51 = call i32 @PyEval_MergeCompilerFlags(%struct.PyCompilerFlags* %cf)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.end.50
  %36 = load i8*, i8** %str, align 8
  %37 = load %struct._object*, %struct._object** %globals, align 8
  %38 = load %struct._object*, %struct._object** %locals, align 8
  %call54 = call %struct._object* @PyRun_StringFlags(i8* %36, i32 257, %struct._object* %37, %struct._object* %38, %struct.PyCompilerFlags* %cf)
  store %struct._object* %call54, %struct._object** %v, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %if.end.50
  %39 = load i8*, i8** %str, align 8
  %40 = load %struct._object*, %struct._object** %globals, align 8
  %41 = load %struct._object*, %struct._object** %locals, align 8
  %call56 = call %struct._object* @PyRun_StringFlags(i8* %39, i32 257, %struct._object* %40, %struct._object* %41, %struct.PyCompilerFlags* null)
  store %struct._object* %call56, %struct._object** %v, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.44
  %42 = load %struct._object*, %struct._object** %v, align 8
  %cmp59 = icmp eq %struct._object* %42, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.58
  br label %do.body

do.body:                                          ; preds = %if.end.61
  %43 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp62 = icmp ne i64 %dec, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body
  br label %if.end.66

if.else.64:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %48(%struct._object* %49)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end

do.end:                                           ; preds = %if.end.66
  %50 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.60, %if.then.49, %if.then.43, %if.then.36, %if.then.25, %if.then.19, %if.then.12, %if.then.7, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_format(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %format_spec = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %format_spec, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), %struct._object** %value, %struct._object** %format_spec)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value, align 8
  %2 = load %struct._object*, %struct._object** %format_spec, align 8
  %call1 = call %struct._object* @PyObject_Format(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_getattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %dflt = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %dflt, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i64 2, i64 3, %struct._object** %v, %struct._object** %name, %struct._object** %dflt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %name, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.120, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %name, align 8
  %call3 = call %struct._object* @PyObject_GetAttr(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %result, align 8
  %7 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %dflt, align 8
  %cmp5 = icmp ne %struct._object* %8, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %9 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call7 = call i32 @PyErr_ExceptionMatches(%struct._object* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  call void @PyErr_Clear()
  %10 = load %struct._object*, %struct._object** %dflt, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %dflt, align 8
  store %struct._object* %12, %struct._object** %result, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true.6, %land.lhs.true, %if.end.2
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.1, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_globals(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyEval_GetGlobals()
  store %struct._object* %call, %struct._object** %d, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %0, %struct._object** %_py_xincref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %d, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_hasattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i64 2, i64 2, %struct._object** %v, %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %name, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.121, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %name, align 8
  %call3 = call %struct._object* @PyObject_GetAttr(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %v, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  call void @PyErr_Clear()
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %10 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc15 = add i64 %17, 1
  store i64 %inc15, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.9, %if.then.8, %if.then.1, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_hash(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %0)
  store i64 %call, i64* %x, align 8
  %1 = load i64, i64* %x, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %x, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_hex(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_ToBase(%struct._object* %0, i32 16)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_id(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = bitcast %struct._object* %0 to i8*
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_input(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %promptarg = alloca %struct._object*, align 8
  %fin = alloca %struct._object*, align 8
  %fout = alloca %struct._object*, align 8
  %ferr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %fd = alloca i64, align 8
  %tty = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %po = alloca %struct._object*, align 8
  %prompt = alloca i8*, align 8
  %s = alloca i8*, align 8
  %stdin_encoding = alloca %struct._object*, align 8
  %stdin_errors = alloca %struct._object*, align 8
  %stdout_encoding = alloca %struct._object*, align 8
  %stdout_errors = alloca %struct._object*, align 8
  %stdin_encoding_str = alloca i8*, align 8
  %stdin_errors_str = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  %stdout_encoding_str = alloca i8*, align 8
  %stdout_errors_str = alloca i8*, align 8
  %stringpo = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_tmp191 = alloca %struct._object*, align 8
  %_py_decref_tmp197 = alloca %struct._object*, align 8
  %_py_tmp212 = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp276 = alloca %struct._object*, align 8
  %_py_decref_tmp289 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp307 = alloca %struct._object*, align 8
  %_py_xdecref_tmp322 = alloca %struct._object*, align 8
  %_py_decref_tmp328 = alloca %struct._object*, align 8
  %_py_xdecref_tmp343 = alloca %struct._object*, align 8
  %_py_decref_tmp349 = alloca %struct._object*, align 8
  %_py_xdecref_tmp364 = alloca %struct._object*, align 8
  %_py_decref_tmp370 = alloca %struct._object*, align 8
  %_py_xdecref_tmp385 = alloca %struct._object*, align 8
  %_py_decref_tmp391 = alloca %struct._object*, align 8
  %_py_xdecref_tmp406 = alloca %struct._object*, align 8
  %_py_decref_tmp412 = alloca %struct._object*, align 8
  %_py_decref_tmp442 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %promptarg, align 8
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdin)
  store %struct._object* %call, %struct._object** %fin, align 8
  %call1 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdout)
  store %struct._object* %call1, %struct._object** %fout, align 8
  %call2 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call2, %struct._object** %ferr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i64 0, i64 1, %struct._object** %promptarg)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %fin, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %fin, align 8
  %cmp6 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %fout, align 8
  %cmp9 = icmp eq %struct._object* %4, null
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** %fout, align 8
  %cmp11 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.10, %if.end.8
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.123, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.10
  %7 = load %struct._object*, %struct._object** %ferr, align 8
  %cmp14 = icmp eq %struct._object* %7, null
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.13
  %8 = load %struct._object*, %struct._object** %ferr, align 8
  %cmp16 = icmp eq %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.end.13
  %9 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.124, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.15
  %10 = load %struct._object*, %struct._object** %ferr, align 8
  %call19 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %10, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %tmp, align 8
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp20 = icmp eq %struct._object* %11, null
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  call void @PyErr_Clear()
  br label %if.end.27

if.else:                                          ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else.25:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %if.then.21
  %19 = load %struct._object*, %struct._object** %fin, align 8
  %call28 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %19, %struct._Py_Identifier* @PyId_fileno, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %tmp, align 8
  %20 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp29 = icmp eq %struct._object* %20, null
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  call void @PyErr_Clear()
  store i32 0, i32* %tty, align 4
  br label %if.end.56

if.else.31:                                       ; preds = %if.end.27
  %21 = load %struct._object*, %struct._object** %tmp, align 8
  %call32 = call i64 @PyLong_AsLong(%struct._object* %21)
  store i64 %call32, i64* %fd, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.else.31
  %22 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp35, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %24, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %27(%struct._object* %28)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %29 = load i64, i64* %fd, align 8
  %cmp45 = icmp slt i64 %29, 0
  br i1 %cmp45, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %do.end.44
  %call46 = call %struct._object* @PyErr_Occurred()
  %tobool47 = icmp ne %struct._object* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %land.lhs.true, %do.end.44
  %30 = load i64, i64* %fd, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call50 = call i32 @fileno(%struct._IO_FILE* %31) #2
  %conv = sext i32 %call50 to i64
  %cmp51 = icmp eq i64 %30, %conv
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.49
  %32 = load i64, i64* %fd, align 8
  %conv53 = trunc i64 %32 to i32
  %call54 = call i32 @isatty(i32 %conv53) #2
  %tobool55 = icmp ne i32 %call54, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.49
  %33 = phi i1 [ false, %if.end.49 ], [ %tobool55, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  store i32 %land.ext, i32* %tty, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %land.end, %if.then.30
  %34 = load i32, i32* %tty, align 4
  %tobool57 = icmp ne i32 %34, 0
  br i1 %tobool57, label %if.then.58, label %if.end.96

if.then.58:                                       ; preds = %if.end.56
  %35 = load %struct._object*, %struct._object** %fout, align 8
  %call59 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %35, %struct._Py_Identifier* @PyId_fileno, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call59, %struct._object** %tmp, align 8
  %36 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp60 = icmp eq %struct._object* %36, null
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.58
  call void @PyErr_Clear()
  br label %if.end.95

if.else.63:                                       ; preds = %if.then.58
  %37 = load %struct._object*, %struct._object** %tmp, align 8
  %call64 = call i64 @PyLong_AsLong(%struct._object* %37)
  store i64 %call64, i64* %fd, align 8
  br label %do.body.65

do.body.65:                                       ; preds = %if.else.63
  %38 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp67, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %40, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.65
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.65
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %43(%struct._object* %44)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %45 = load i64, i64* %fd, align 8
  %cmp78 = icmp slt i64 %45, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.84

land.lhs.true.80:                                 ; preds = %do.end.77
  %call81 = call %struct._object* @PyErr_Occurred()
  %tobool82 = icmp ne %struct._object* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true.80
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.80, %do.end.77
  %46 = load i64, i64* %fd, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call85 = call i32 @fileno(%struct._IO_FILE* %47) #2
  %conv86 = sext i32 %call85 to i64
  %cmp87 = icmp eq i64 %46, %conv86
  br i1 %cmp87, label %land.rhs.89, label %land.end.93

land.rhs.89:                                      ; preds = %if.end.84
  %48 = load i64, i64* %fd, align 8
  %conv90 = trunc i64 %48 to i32
  %call91 = call i32 @isatty(i32 %conv90) #2
  %tobool92 = icmp ne i32 %call91, 0
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.89, %if.end.84
  %49 = phi i1 [ false, %if.end.84 ], [ %tobool92, %land.rhs.89 ]
  %land.ext94 = zext i1 %49 to i32
  store i32 %land.ext94, i32* %tty, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %land.end.93, %if.then.62
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.56
  %50 = load i32, i32* %tty, align 4
  %tobool97 = icmp ne i32 %50, 0
  br i1 %tobool97, label %if.then.98, label %if.end.425

if.then.98:                                       ; preds = %if.end.96
  store %struct._object* null, %struct._object** %po, align 8
  store i8* null, i8** %s, align 8
  store %struct._object* null, %struct._object** %stdin_encoding, align 8
  store %struct._object* null, %struct._object** %stdin_errors, align 8
  store %struct._object* null, %struct._object** %stdout_encoding, align 8
  store %struct._object* null, %struct._object** %stdout_errors, align 8
  %51 = load %struct._object*, %struct._object** %fin, align 8
  %call110 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %51, %struct._Py_Identifier* @PyId_encoding)
  store %struct._object* %call110, %struct._object** %stdin_encoding, align 8
  %52 = load %struct._object*, %struct._object** %fin, align 8
  %call111 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %52, %struct._Py_Identifier* @PyId_errors)
  store %struct._object* %call111, %struct._object** %stdin_errors, align 8
  %53 = load %struct._object*, %struct._object** %stdin_encoding, align 8
  %tobool112 = icmp ne %struct._object* %53, null
  br i1 %tobool112, label %lor.lhs.false.113, label %if.then.115

lor.lhs.false.113:                                ; preds = %if.then.98
  %54 = load %struct._object*, %struct._object** %stdin_errors, align 8
  %tobool114 = icmp ne %struct._object* %54, null
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %lor.lhs.false.113, %if.then.98
  br label %_readline_errors

if.end.116:                                       ; preds = %lor.lhs.false.113
  %55 = load %struct._object*, %struct._object** %stdin_encoding, align 8
  %call117 = call i8* @PyUnicode_AsUTF8(%struct._object* %55)
  store i8* %call117, i8** %stdin_encoding_str, align 8
  %56 = load %struct._object*, %struct._object** %stdin_errors, align 8
  %call118 = call i8* @PyUnicode_AsUTF8(%struct._object* %56)
  store i8* %call118, i8** %stdin_errors_str, align 8
  %57 = load i8*, i8** %stdin_encoding_str, align 8
  %tobool119 = icmp ne i8* %57, null
  br i1 %tobool119, label %lor.lhs.false.120, label %if.then.122

lor.lhs.false.120:                                ; preds = %if.end.116
  %58 = load i8*, i8** %stdin_errors_str, align 8
  %tobool121 = icmp ne i8* %58, null
  br i1 %tobool121, label %if.end.123, label %if.then.122

if.then.122:                                      ; preds = %lor.lhs.false.120, %if.end.116
  br label %_readline_errors

if.end.123:                                       ; preds = %lor.lhs.false.120
  %59 = load %struct._object*, %struct._object** %fout, align 8
  %call124 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %59, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call124, %struct._object** %tmp, align 8
  %60 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp125 = icmp eq %struct._object* %60, null
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.end.123
  call void @PyErr_Clear()
  br label %if.end.142

if.else.128:                                      ; preds = %if.end.123
  br label %do.body.129

do.body.129:                                      ; preds = %if.else.128
  %61 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp131, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt132, align 8
  %dec133 = add i64 %63, -1
  store i64 %dec133, i64* %ob_refcnt132, align 8
  %cmp134 = icmp ne i64 %dec133, 0
  br i1 %cmp134, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.body.129
  br label %if.end.140

if.else.137:                                      ; preds = %do.body.129
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  call void %66(%struct._object* %67)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %if.then.127
  %68 = load %struct._object*, %struct._object** %promptarg, align 8
  %cmp143 = icmp ne %struct._object* %68, null
  br i1 %cmp143, label %if.then.145, label %if.else.240

if.then.145:                                      ; preds = %if.end.142
  %69 = load %struct._object*, %struct._object** %fout, align 8
  %call149 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %69, %struct._Py_Identifier* @PyId_encoding)
  store %struct._object* %call149, %struct._object** %stdout_encoding, align 8
  %70 = load %struct._object*, %struct._object** %fout, align 8
  %call150 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %70, %struct._Py_Identifier* @PyId_errors)
  store %struct._object* %call150, %struct._object** %stdout_errors, align 8
  %71 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  %tobool151 = icmp ne %struct._object* %71, null
  br i1 %tobool151, label %lor.lhs.false.152, label %if.then.154

lor.lhs.false.152:                                ; preds = %if.then.145
  %72 = load %struct._object*, %struct._object** %stdout_errors, align 8
  %tobool153 = icmp ne %struct._object* %72, null
  br i1 %tobool153, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %lor.lhs.false.152, %if.then.145
  br label %_readline_errors

if.end.155:                                       ; preds = %lor.lhs.false.152
  %73 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  %call156 = call i8* @PyUnicode_AsUTF8(%struct._object* %73)
  store i8* %call156, i8** %stdout_encoding_str, align 8
  %74 = load %struct._object*, %struct._object** %stdout_errors, align 8
  %call157 = call i8* @PyUnicode_AsUTF8(%struct._object* %74)
  store i8* %call157, i8** %stdout_errors_str, align 8
  %75 = load i8*, i8** %stdout_encoding_str, align 8
  %tobool158 = icmp ne i8* %75, null
  br i1 %tobool158, label %lor.lhs.false.159, label %if.then.161

lor.lhs.false.159:                                ; preds = %if.end.155
  %76 = load i8*, i8** %stdout_errors_str, align 8
  %tobool160 = icmp ne i8* %76, null
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %lor.lhs.false.159, %if.end.155
  br label %_readline_errors

if.end.162:                                       ; preds = %lor.lhs.false.159
  %77 = load %struct._object*, %struct._object** %promptarg, align 8
  %call163 = call %struct._object* @PyObject_Str(%struct._object* %77)
  store %struct._object* %call163, %struct._object** %stringpo, align 8
  %78 = load %struct._object*, %struct._object** %stringpo, align 8
  %cmp164 = icmp eq %struct._object* %78, null
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.162
  br label %_readline_errors

if.end.167:                                       ; preds = %if.end.162
  %79 = load %struct._object*, %struct._object** %stringpo, align 8
  %80 = load i8*, i8** %stdout_encoding_str, align 8
  %81 = load i8*, i8** %stdout_errors_str, align 8
  %call168 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %79, i8* %80, i8* %81)
  store %struct._object* %call168, %struct._object** %po, align 8
  br label %do.body.169

do.body.169:                                      ; preds = %if.end.167
  %82 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  store %struct._object* %82, %struct._object** %_py_tmp, align 8
  %83 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp171 = icmp ne %struct._object* %83, null
  br i1 %cmp171, label %if.then.173, label %if.end.187

if.then.173:                                      ; preds = %do.body.169
  store %struct._object* null, %struct._object** %stdout_encoding, align 8
  br label %do.body.174

do.body.174:                                      ; preds = %if.then.173
  %84 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp176, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %86, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.174
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.174
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %89(%struct._object* %90)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.body.169
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.188
  %91 = load %struct._object*, %struct._object** %stdout_errors, align 8
  store %struct._object* %91, %struct._object** %_py_tmp191, align 8
  %92 = load %struct._object*, %struct._object** %_py_tmp191, align 8
  %cmp192 = icmp ne %struct._object* %92, null
  br i1 %cmp192, label %if.then.194, label %if.end.208

if.then.194:                                      ; preds = %do.body.189
  store %struct._object* null, %struct._object** %stdout_errors, align 8
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %93 = load %struct._object*, %struct._object** %_py_tmp191, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp197, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt198, align 8
  %dec199 = add i64 %95, -1
  store i64 %dec199, i64* %ob_refcnt198, align 8
  %cmp200 = icmp ne i64 %dec199, 0
  br i1 %cmp200, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %do.body.195
  br label %if.end.206

if.else.203:                                      ; preds = %do.body.195
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_type204 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type204, align 8
  %tp_dealloc205 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  call void %98(%struct._object* %99)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.202
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %do.body.189
  br label %do.end.209

do.end.209:                                       ; preds = %if.end.208
  br label %do.body.210

do.body.210:                                      ; preds = %do.end.209
  %100 = load %struct._object*, %struct._object** %stringpo, align 8
  store %struct._object* %100, %struct._object** %_py_tmp212, align 8
  %101 = load %struct._object*, %struct._object** %_py_tmp212, align 8
  %cmp213 = icmp ne %struct._object* %101, null
  br i1 %cmp213, label %if.then.215, label %if.end.229

if.then.215:                                      ; preds = %do.body.210
  store %struct._object* null, %struct._object** %stringpo, align 8
  br label %do.body.216

do.body.216:                                      ; preds = %if.then.215
  %102 = load %struct._object*, %struct._object** %_py_tmp212, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp218, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %104, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.216
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.216
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %107(%struct._object* %108)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.228, %do.body.210
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  %109 = load %struct._object*, %struct._object** %po, align 8
  %cmp231 = icmp eq %struct._object* %109, null
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %do.end.230
  br label %_readline_errors

if.end.234:                                       ; preds = %do.end.230
  %110 = load %struct._object*, %struct._object** %po, align 8
  %call235 = call i8* @PyBytes_AsString(%struct._object* %110)
  store i8* %call235, i8** %prompt, align 8
  %111 = load i8*, i8** %prompt, align 8
  %cmp236 = icmp eq i8* %111, null
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.234
  br label %_readline_errors

if.end.239:                                       ; preds = %if.end.234
  br label %if.end.241

if.else.240:                                      ; preds = %if.end.142
  store %struct._object* null, %struct._object** %po, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0), i8** %prompt, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.240, %if.end.239
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = load i8*, i8** %prompt, align 8
  %call242 = call i8* @PyOS_Readline(%struct._IO_FILE* %112, %struct._IO_FILE* %113, i8* %114)
  store i8* %call242, i8** %s, align 8
  %115 = load i8*, i8** %s, align 8
  %cmp243 = icmp eq i8* %115, null
  br i1 %cmp243, label %if.then.245, label %if.end.251

if.then.245:                                      ; preds = %if.end.241
  %call246 = call i32 @PyErr_CheckSignals()
  %call247 = call %struct._object* @PyErr_Occurred()
  %tobool248 = icmp ne %struct._object* %call247, null
  br i1 %tobool248, label %if.end.250, label %if.then.249

if.then.249:                                      ; preds = %if.then.245
  %116 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  call void @PyErr_SetNone(%struct._object* %116)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %if.then.245
  br label %_readline_errors

if.end.251:                                       ; preds = %if.end.241
  %117 = load i8*, i8** %s, align 8
  %call252 = call i64 @strlen(i8* %117) #5
  store i64 %call252, i64* %len, align 8
  %118 = load i64, i64* %len, align 8
  %cmp253 = icmp eq i64 %118, 0
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %if.end.251
  %119 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetNone(%struct._object* %119)
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.273

if.else.256:                                      ; preds = %if.end.251
  %120 = load i64, i64* %len, align 8
  %cmp257 = icmp ugt i64 %120, 9223372036854775807
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %if.else.256
  %121 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0))
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.272

if.else.260:                                      ; preds = %if.else.256
  %122 = load i64, i64* %len, align 8
  %dec261 = add i64 %122, -1
  store i64 %dec261, i64* %len, align 8
  %123 = load i64, i64* %len, align 8
  %cmp262 = icmp ne i64 %123, 0
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.270

land.lhs.true.264:                                ; preds = %if.else.260
  %124 = load i64, i64* %len, align 8
  %sub = sub i64 %124, 1
  %125 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %125, i64 %sub
  %126 = load i8, i8* %arrayidx, align 1
  %conv265 = sext i8 %126 to i32
  %cmp266 = icmp eq i32 %conv265, 13
  br i1 %cmp266, label %if.then.268, label %if.end.270

if.then.268:                                      ; preds = %land.lhs.true.264
  %127 = load i64, i64* %len, align 8
  %dec269 = add i64 %127, -1
  store i64 %dec269, i64* %len, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.268, %land.lhs.true.264, %if.else.260
  %128 = load i8*, i8** %s, align 8
  %129 = load i64, i64* %len, align 8
  %130 = load i8*, i8** %stdin_encoding_str, align 8
  %131 = load i8*, i8** %stdin_errors_str, align 8
  %call271 = call %struct._object* @PyUnicode_Decode(i8* %128, i64 %129, i8* %130, i8* %131)
  store %struct._object* %call271, %struct._object** %result, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.270, %if.then.259
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.then.255
  br label %do.body.274

do.body.274:                                      ; preds = %if.end.273
  %132 = load %struct._object*, %struct._object** %stdin_encoding, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp276, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  %ob_refcnt277 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt277, align 8
  %dec278 = add i64 %134, -1
  store i64 %dec278, i64* %ob_refcnt277, align 8
  %cmp279 = icmp ne i64 %dec278, 0
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %do.body.274
  br label %if.end.285

if.else.282:                                      ; preds = %do.body.274
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  %ob_type283 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type283, align 8
  %tp_dealloc284 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc284, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp276, align 8
  call void %137(%struct._object* %138)
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.282, %if.then.281
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  br label %do.body.287

do.body.287:                                      ; preds = %do.end.286
  %139 = load %struct._object*, %struct._object** %stdin_errors, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp289, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  %ob_refcnt290 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt290, align 8
  %dec291 = add i64 %141, -1
  store i64 %dec291, i64* %ob_refcnt290, align 8
  %cmp292 = icmp ne i64 %dec291, 0
  br i1 %cmp292, label %if.then.294, label %if.else.295

if.then.294:                                      ; preds = %do.body.287
  br label %if.end.298

if.else.295:                                      ; preds = %do.body.287
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  %ob_type296 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type296, align 8
  %tp_dealloc297 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc297, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  call void %144(%struct._object* %145)
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.295, %if.then.294
  br label %do.end.299

do.end.299:                                       ; preds = %if.end.298
  br label %do.body.300

do.body.300:                                      ; preds = %do.end.299
  %146 = load %struct._object*, %struct._object** %po, align 8
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp, align 8
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp302 = icmp ne %struct._object* %147, null
  br i1 %cmp302, label %if.then.304, label %if.end.318

if.then.304:                                      ; preds = %do.body.300
  br label %do.body.305

do.body.305:                                      ; preds = %if.then.304
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp307, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8
  %ob_refcnt308 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt308, align 8
  %dec309 = add i64 %150, -1
  store i64 %dec309, i64* %ob_refcnt308, align 8
  %cmp310 = icmp ne i64 %dec309, 0
  br i1 %cmp310, label %if.then.312, label %if.else.313

if.then.312:                                      ; preds = %do.body.305
  br label %if.end.316

if.else.313:                                      ; preds = %do.body.305
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8
  %tp_dealloc315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc315, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8
  call void %153(%struct._object* %154)
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.313, %if.then.312
  br label %do.end.317

do.end.317:                                       ; preds = %if.end.316
  br label %if.end.318

if.end.318:                                       ; preds = %do.end.317, %do.body.300
  br label %do.end.319

do.end.319:                                       ; preds = %if.end.318
  %155 = load i8*, i8** %s, align 8
  call void @PyMem_Free(i8* %155)
  %156 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %156, %struct._object** %retval
  br label %return

_readline_errors:                                 ; preds = %if.end.250, %if.then.238, %if.then.233, %if.then.166, %if.then.161, %if.then.154, %if.then.122, %if.then.115
  br label %do.body.320

do.body.320:                                      ; preds = %_readline_errors
  %157 = load %struct._object*, %struct._object** %stdin_encoding, align 8
  store %struct._object* %157, %struct._object** %_py_xdecref_tmp322, align 8
  %158 = load %struct._object*, %struct._object** %_py_xdecref_tmp322, align 8
  %cmp323 = icmp ne %struct._object* %158, null
  br i1 %cmp323, label %if.then.325, label %if.end.339

if.then.325:                                      ; preds = %do.body.320
  br label %do.body.326

do.body.326:                                      ; preds = %if.then.325
  %159 = load %struct._object*, %struct._object** %_py_xdecref_tmp322, align 8
  store %struct._object* %159, %struct._object** %_py_decref_tmp328, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_refcnt329 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 0
  %161 = load i64, i64* %ob_refcnt329, align 8
  %dec330 = add i64 %161, -1
  store i64 %dec330, i64* %ob_refcnt329, align 8
  %cmp331 = icmp ne i64 %dec330, 0
  br i1 %cmp331, label %if.then.333, label %if.else.334

if.then.333:                                      ; preds = %do.body.326
  br label %if.end.337

if.else.334:                                      ; preds = %do.body.326
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_type335 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 1
  %163 = load %struct._typeobject*, %struct._typeobject** %ob_type335, align 8
  %tp_dealloc336 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %163, i32 0, i32 4
  %164 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc336, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  call void %164(%struct._object* %165)
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.334, %if.then.333
  br label %do.end.338

do.end.338:                                       ; preds = %if.end.337
  br label %if.end.339

if.end.339:                                       ; preds = %do.end.338, %do.body.320
  br label %do.end.340

do.end.340:                                       ; preds = %if.end.339
  br label %do.body.341

do.body.341:                                      ; preds = %do.end.340
  %166 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  store %struct._object* %166, %struct._object** %_py_xdecref_tmp343, align 8
  %167 = load %struct._object*, %struct._object** %_py_xdecref_tmp343, align 8
  %cmp344 = icmp ne %struct._object* %167, null
  br i1 %cmp344, label %if.then.346, label %if.end.360

if.then.346:                                      ; preds = %do.body.341
  br label %do.body.347

do.body.347:                                      ; preds = %if.then.346
  %168 = load %struct._object*, %struct._object** %_py_xdecref_tmp343, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp349, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  %ob_refcnt350 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt350, align 8
  %dec351 = add i64 %170, -1
  store i64 %dec351, i64* %ob_refcnt350, align 8
  %cmp352 = icmp ne i64 %dec351, 0
  br i1 %cmp352, label %if.then.354, label %if.else.355

if.then.354:                                      ; preds = %do.body.347
  br label %if.end.358

if.else.355:                                      ; preds = %do.body.347
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  %ob_type356 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type356, align 8
  %tp_dealloc357 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc357, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  call void %173(%struct._object* %174)
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.355, %if.then.354
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.358
  br label %if.end.360

if.end.360:                                       ; preds = %do.end.359, %do.body.341
  br label %do.end.361

do.end.361:                                       ; preds = %if.end.360
  br label %do.body.362

do.body.362:                                      ; preds = %do.end.361
  %175 = load %struct._object*, %struct._object** %stdin_errors, align 8
  store %struct._object* %175, %struct._object** %_py_xdecref_tmp364, align 8
  %176 = load %struct._object*, %struct._object** %_py_xdecref_tmp364, align 8
  %cmp365 = icmp ne %struct._object* %176, null
  br i1 %cmp365, label %if.then.367, label %if.end.381

if.then.367:                                      ; preds = %do.body.362
  br label %do.body.368

do.body.368:                                      ; preds = %if.then.367
  %177 = load %struct._object*, %struct._object** %_py_xdecref_tmp364, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp370, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_refcnt371 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt371, align 8
  %dec372 = add i64 %179, -1
  store i64 %dec372, i64* %ob_refcnt371, align 8
  %cmp373 = icmp ne i64 %dec372, 0
  br i1 %cmp373, label %if.then.375, label %if.else.376

if.then.375:                                      ; preds = %do.body.368
  br label %if.end.379

if.else.376:                                      ; preds = %do.body.368
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_type377 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type377, align 8
  %tp_dealloc378 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc378, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  call void %182(%struct._object* %183)
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.376, %if.then.375
  br label %do.end.380

do.end.380:                                       ; preds = %if.end.379
  br label %if.end.381

if.end.381:                                       ; preds = %do.end.380, %do.body.362
  br label %do.end.382

do.end.382:                                       ; preds = %if.end.381
  br label %do.body.383

do.body.383:                                      ; preds = %do.end.382
  %184 = load %struct._object*, %struct._object** %stdout_errors, align 8
  store %struct._object* %184, %struct._object** %_py_xdecref_tmp385, align 8
  %185 = load %struct._object*, %struct._object** %_py_xdecref_tmp385, align 8
  %cmp386 = icmp ne %struct._object* %185, null
  br i1 %cmp386, label %if.then.388, label %if.end.402

if.then.388:                                      ; preds = %do.body.383
  br label %do.body.389

do.body.389:                                      ; preds = %if.then.388
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp385, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp391, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  %ob_refcnt392 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt392, align 8
  %dec393 = add i64 %188, -1
  store i64 %dec393, i64* %ob_refcnt392, align 8
  %cmp394 = icmp ne i64 %dec393, 0
  br i1 %cmp394, label %if.then.396, label %if.else.397

if.then.396:                                      ; preds = %do.body.389
  br label %if.end.400

if.else.397:                                      ; preds = %do.body.389
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  %ob_type398 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type398, align 8
  %tp_dealloc399 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc399, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  call void %191(%struct._object* %192)
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.397, %if.then.396
  br label %do.end.401

do.end.401:                                       ; preds = %if.end.400
  br label %if.end.402

if.end.402:                                       ; preds = %do.end.401, %do.body.383
  br label %do.end.403

do.end.403:                                       ; preds = %if.end.402
  br label %do.body.404

do.body.404:                                      ; preds = %do.end.403
  %193 = load %struct._object*, %struct._object** %po, align 8
  store %struct._object* %193, %struct._object** %_py_xdecref_tmp406, align 8
  %194 = load %struct._object*, %struct._object** %_py_xdecref_tmp406, align 8
  %cmp407 = icmp ne %struct._object* %194, null
  br i1 %cmp407, label %if.then.409, label %if.end.423

if.then.409:                                      ; preds = %do.body.404
  br label %do.body.410

do.body.410:                                      ; preds = %if.then.409
  %195 = load %struct._object*, %struct._object** %_py_xdecref_tmp406, align 8
  store %struct._object* %195, %struct._object** %_py_decref_tmp412, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp412, align 8
  %ob_refcnt413 = getelementptr inbounds %struct._object, %struct._object* %196, i32 0, i32 0
  %197 = load i64, i64* %ob_refcnt413, align 8
  %dec414 = add i64 %197, -1
  store i64 %dec414, i64* %ob_refcnt413, align 8
  %cmp415 = icmp ne i64 %dec414, 0
  br i1 %cmp415, label %if.then.417, label %if.else.418

if.then.417:                                      ; preds = %do.body.410
  br label %if.end.421

if.else.418:                                      ; preds = %do.body.410
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp412, align 8
  %ob_type419 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 1
  %199 = load %struct._typeobject*, %struct._typeobject** %ob_type419, align 8
  %tp_dealloc420 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %199, i32 0, i32 4
  %200 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc420, align 8
  %201 = load %struct._object*, %struct._object** %_py_decref_tmp412, align 8
  call void %200(%struct._object* %201)
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.418, %if.then.417
  br label %do.end.422

do.end.422:                                       ; preds = %if.end.421
  br label %if.end.423

if.end.423:                                       ; preds = %do.end.422, %do.body.404
  br label %do.end.424

do.end.424:                                       ; preds = %if.end.423
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.425:                                       ; preds = %if.end.96
  %202 = load %struct._object*, %struct._object** %promptarg, align 8
  %cmp426 = icmp ne %struct._object* %202, null
  br i1 %cmp426, label %if.then.428, label %if.end.434

if.then.428:                                      ; preds = %if.end.425
  %203 = load %struct._object*, %struct._object** %promptarg, align 8
  %204 = load %struct._object*, %struct._object** %fout, align 8
  %call429 = call i32 @PyFile_WriteObject(%struct._object* %203, %struct._object* %204, i32 1)
  %cmp430 = icmp ne i32 %call429, 0
  br i1 %cmp430, label %if.then.432, label %if.end.433

if.then.432:                                      ; preds = %if.then.428
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.433:                                       ; preds = %if.then.428
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %if.end.425
  %205 = load %struct._object*, %struct._object** %fout, align 8
  %call435 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %205, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call435, %struct._object** %tmp, align 8
  %206 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp436 = icmp eq %struct._object* %206, null
  br i1 %cmp436, label %if.then.438, label %if.else.439

if.then.438:                                      ; preds = %if.end.434
  call void @PyErr_Clear()
  br label %if.end.453

if.else.439:                                      ; preds = %if.end.434
  br label %do.body.440

do.body.440:                                      ; preds = %if.else.439
  %207 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %207, %struct._object** %_py_decref_tmp442, align 8
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp442, align 8
  %ob_refcnt443 = getelementptr inbounds %struct._object, %struct._object* %208, i32 0, i32 0
  %209 = load i64, i64* %ob_refcnt443, align 8
  %dec444 = add i64 %209, -1
  store i64 %dec444, i64* %ob_refcnt443, align 8
  %cmp445 = icmp ne i64 %dec444, 0
  br i1 %cmp445, label %if.then.447, label %if.else.448

if.then.447:                                      ; preds = %do.body.440
  br label %if.end.451

if.else.448:                                      ; preds = %do.body.440
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp442, align 8
  %ob_type449 = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 1
  %211 = load %struct._typeobject*, %struct._typeobject** %ob_type449, align 8
  %tp_dealloc450 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %211, i32 0, i32 4
  %212 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc450, align 8
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp442, align 8
  call void %212(%struct._object* %213)
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.448, %if.then.447
  br label %do.end.452

do.end.452:                                       ; preds = %if.end.451
  br label %if.end.453

if.end.453:                                       ; preds = %do.end.452, %if.then.438
  %214 = load %struct._object*, %struct._object** %fin, align 8
  %call454 = call %struct._object* @PyFile_GetLine(%struct._object* %214, i32 -1)
  store %struct._object* %call454, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.453, %if.then.432, %do.end.424, %do.end.319, %if.then.83, %if.then.48, %if.then.17, %if.then.12, %if.then.7, %if.then
  %215 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %215
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_isinstance(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %inst = alloca %struct._object*, align 8
  %cls = alloca %struct._object*, align 8
  %retval1 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i64 2, i64 2, %struct._object** %inst, %struct._object** %cls)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %inst, align 8
  %2 = load %struct._object*, %struct._object** %cls, align 8
  %call2 = call i32 @PyObject_IsInstance(%struct._object* %1, %struct._object* %2)
  store i32 %call2, i32* %retval1, align 4
  %3 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %retval1, align 4
  %conv = sext i32 %4 to i64
  %call5 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_issubclass(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %derived = alloca %struct._object*, align 8
  %cls = alloca %struct._object*, align 8
  %retval1 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i64 2, i64 2, %struct._object** %derived, %struct._object** %cls)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %derived, align 8
  %2 = load %struct._object*, %struct._object** %cls, align 8
  %call2 = call i32 @PyObject_IsSubclass(%struct._object* %1, %struct._object* %2)
  store i32 %call2, i32* %retval1, align 4
  %3 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %retval1, align 4
  %conv = sext i32 %4 to i64
  %call5 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_iter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %w, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i64 1, i64 2, %struct._object** %v, %struct._object** %w)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %w, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %v, align 8
  %call2 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v, align 8
  %call4 = call i32 @PyCallable_Check(%struct._object* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.134, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %w, align 8
  %call8 = call %struct._object* @PyCallIter_New(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.1, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_len(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %res = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyObject_Size(%struct._object* %0)
  store i64 %call, i64* %res, align 8
  %1 = load i64, i64* %res, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %res, align 8
  %call2 = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_locals(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyEval_GetLocals()
  store %struct._object* %call, %struct._object** %d, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %0, %struct._object** %_py_xincref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %d, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_max(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @min_max(%struct._object* %0, %struct._object* %1, i32 4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_min(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @min_max(%struct._object* %0, %struct._object* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_next(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %def = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %def, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i64 1, i64 2, %struct._object** %it, %struct._object** %def)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 26
  %3 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  %cmp = icmp ne %struct._object* (%struct._object*)* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.then.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %it, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_iternext2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 26
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext2, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, @_PyObject_NextNotImplemented
  br i1 %cmp3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true, %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load %struct._object*, %struct._object** %it, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0), i8* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** %it, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_iternext9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 26
  %13 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext9, align 8
  %14 = load %struct._object*, %struct._object** %it, align 8
  %call10 = call %struct._object* %13(%struct._object* %14)
  store %struct._object* %call10, %struct._object** %res, align 8
  %15 = load %struct._object*, %struct._object** %res, align 8
  %cmp11 = icmp ne %struct._object* %15, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %def, align 8
  %cmp13 = icmp ne %struct._object* %17, null
  br i1 %cmp13, label %if.then.14, label %if.else.23

if.then.14:                                       ; preds = %if.else
  %call15 = call %struct._object* @PyErr_Occurred()
  %tobool16 = icmp ne %struct._object* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.then.14
  %18 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call18 = call i32 @PyErr_ExceptionMatches(%struct._object* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.17
  call void @PyErr_Clear()
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  %19 = load %struct._object*, %struct._object** %def, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct._object*, %struct._object** %def, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

if.else.23:                                       ; preds = %if.else
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool25 = icmp ne %struct._object* %call24, null
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.27:                                       ; preds = %if.else.23
  %22 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  call void @PyErr_SetNone(%struct._object* %22)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.27, %if.then.26, %if.end.22, %if.then.20, %if.then.12, %if.then.4, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_oct(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_ToBase(%struct._object* %0, i32 8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_ord(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %ord = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  store i64 %5, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %6, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %9 = load i8, i8* %arraydecay, align 1
  %conv = zext i8 %9 to i64
  store i64 %conv, i64* %ord, align 8
  %10 = load i64, i64* %ord, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %10)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.133

if.else:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags4, align 8
  %and5 = and i64 %13, 268435456
  %cmp6 = icmp ne i64 %and5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.107

if.then.8:                                        ; preds = %if.else
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3
  %16 = bitcast %struct.anon.33* %state to i32*
  %bf.load = load i32, i32* %16, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %cmp10 = icmp eq i32 %cond, -1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %cond.end
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  store i64 %20, i64* %size, align 8
  %21 = load i64, i64* %size, align 8
  %cmp14 = icmp eq i64 %21, 1
  br i1 %cmp14, label %if.then.16, label %if.end.106

if.then.16:                                       ; preds = %if.end.13
  %22 = load %struct._object*, %struct._object** %obj.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %state17 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3
  %24 = bitcast %struct.anon.33* %state17 to i32*
  %bf.load18 = load i32, i32* %24, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 2
  %bf.clear20 = and i32 %bf.lshr19, 7
  %cmp21 = icmp eq i32 %bf.clear20, 1
  br i1 %cmp21, label %cond.true.23, label %cond.false.44

cond.true.23:                                     ; preds = %if.then.16
  %25 = load %struct._object*, %struct._object** %obj.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*
  %state24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3
  %27 = bitcast %struct.anon.33* %state24 to i32*
  %bf.load25 = load i32, i32* %27, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 5
  %bf.clear27 = and i32 %bf.lshr26, 1
  %tobool28 = icmp ne i32 %bf.clear27, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.40

cond.true.29:                                     ; preds = %cond.true.23
  %28 = load %struct._object*, %struct._object** %obj.addr, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon.33* %state30 to i32*
  %bf.load31 = load i32, i32* %30, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 6
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.true.29
  %31 = load %struct._object*, %struct._object** %obj.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i64 1
  %33 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.38

cond.false.36:                                    ; preds = %cond.true.29
  %34 = load %struct._object*, %struct._object** %obj.addr, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyCompactUnicodeObject*
  %add.ptr37 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %35, i64 1
  %36 = bitcast %struct.PyCompactUnicodeObject* %add.ptr37 to i8*
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.35
  %cond39 = phi i8* [ %33, %cond.true.35 ], [ %36, %cond.false.36 ]
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.true.23
  %37 = load %struct._object*, %struct._object** %obj.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %38, i32 0, i32 1
  %any = bitcast %union.anon.34* %data to i8**
  %39 = load i8*, i8** %any, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.end.38
  %cond42 = phi i8* [ %cond39, %cond.end.38 ], [ %39, %cond.false.40 ]
  %arrayidx = getelementptr i8, i8* %cond42, i64 0
  %40 = load i8, i8* %arrayidx, align 1
  %conv43 = zext i8 %40 to i32
  br label %cond.end.102

cond.false.44:                                    ; preds = %if.then.16
  %41 = load %struct._object*, %struct._object** %obj.addr, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 3
  %43 = bitcast %struct.anon.33* %state45 to i32*
  %bf.load46 = load i32, i32* %43, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 2
  %bf.clear48 = and i32 %bf.lshr47, 7
  %cmp49 = icmp eq i32 %bf.clear48, 2
  br i1 %cmp49, label %cond.true.51, label %cond.false.76

cond.true.51:                                     ; preds = %cond.false.44
  %44 = load %struct._object*, %struct._object** %obj.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state52 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon.33* %state52 to i32*
  %bf.load53 = load i32, i32* %46, align 4
  %bf.lshr54 = lshr i32 %bf.load53, 5
  %bf.clear55 = and i32 %bf.lshr54, 1
  %tobool56 = icmp ne i32 %bf.clear55, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.69

cond.true.57:                                     ; preds = %cond.true.51
  %47 = load %struct._object*, %struct._object** %obj.addr, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %state58 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3
  %49 = bitcast %struct.anon.33* %state58 to i32*
  %bf.load59 = load i32, i32* %49, align 4
  %bf.lshr60 = lshr i32 %bf.load59, 6
  %bf.clear61 = and i32 %bf.lshr60, 1
  %tobool62 = icmp ne i32 %bf.clear61, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %cond.true.57
  %50 = load %struct._object*, %struct._object** %obj.addr, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %add.ptr64 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i64 1
  %52 = bitcast %struct.PyASCIIObject* %add.ptr64 to i8*
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.true.57
  %53 = load %struct._object*, %struct._object** %obj.addr, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyCompactUnicodeObject*
  %add.ptr66 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %54, i64 1
  %55 = bitcast %struct.PyCompactUnicodeObject* %add.ptr66 to i8*
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.63
  %cond68 = phi i8* [ %52, %cond.true.63 ], [ %55, %cond.false.65 ]
  br label %cond.end.72

cond.false.69:                                    ; preds = %cond.true.51
  %56 = load %struct._object*, %struct._object** %obj.addr, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyUnicodeObject*
  %data70 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %57, i32 0, i32 1
  %any71 = bitcast %union.anon.34* %data70 to i8**
  %58 = load i8*, i8** %any71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.end.67
  %cond73 = phi i8* [ %cond68, %cond.end.67 ], [ %58, %cond.false.69 ]
  %59 = bitcast i8* %cond73 to i16*
  %arrayidx74 = getelementptr i16, i16* %59, i64 0
  %60 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %60 to i32
  br label %cond.end.100

cond.false.76:                                    ; preds = %cond.false.44
  %61 = load %struct._object*, %struct._object** %obj.addr, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %state77 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i32 0, i32 3
  %63 = bitcast %struct.anon.33* %state77 to i32*
  %bf.load78 = load i32, i32* %63, align 4
  %bf.lshr79 = lshr i32 %bf.load78, 5
  %bf.clear80 = and i32 %bf.lshr79, 1
  %tobool81 = icmp ne i32 %bf.clear80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.94

cond.true.82:                                     ; preds = %cond.false.76
  %64 = load %struct._object*, %struct._object** %obj.addr, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %state83 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 3
  %66 = bitcast %struct.anon.33* %state83 to i32*
  %bf.load84 = load i32, i32* %66, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 6
  %bf.clear86 = and i32 %bf.lshr85, 1
  %tobool87 = icmp ne i32 %bf.clear86, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %cond.true.82
  %67 = load %struct._object*, %struct._object** %obj.addr, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %add.ptr89 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i64 1
  %69 = bitcast %struct.PyASCIIObject* %add.ptr89 to i8*
  br label %cond.end.92

cond.false.90:                                    ; preds = %cond.true.82
  %70 = load %struct._object*, %struct._object** %obj.addr, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyCompactUnicodeObject*
  %add.ptr91 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %71, i64 1
  %72 = bitcast %struct.PyCompactUnicodeObject* %add.ptr91 to i8*
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %cond.true.88
  %cond93 = phi i8* [ %69, %cond.true.88 ], [ %72, %cond.false.90 ]
  br label %cond.end.97

cond.false.94:                                    ; preds = %cond.false.76
  %73 = load %struct._object*, %struct._object** %obj.addr, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyUnicodeObject*
  %data95 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %74, i32 0, i32 1
  %any96 = bitcast %union.anon.34* %data95 to i8**
  %75 = load i8*, i8** %any96, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.94, %cond.end.92
  %cond98 = phi i8* [ %cond93, %cond.end.92 ], [ %75, %cond.false.94 ]
  %76 = bitcast i8* %cond98 to i32*
  %arrayidx99 = getelementptr i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx99, align 4
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end.97, %cond.end.72
  %cond101 = phi i32 [ %conv75, %cond.end.72 ], [ %77, %cond.end.97 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %cond.end.41
  %cond103 = phi i32 [ %conv43, %cond.end.41 ], [ %cond101, %cond.end.100 ]
  %conv104 = zext i32 %cond103 to i64
  store i64 %conv104, i64* %ord, align 8
  %78 = load i64, i64* %ord, align 8
  %call105 = call %struct._object* @PyLong_FromLong(i64 %78)
  store %struct._object* %call105, %struct._object** %retval
  br label %return

if.end.106:                                       ; preds = %if.end.13
  br label %if.end.132

if.else.107:                                      ; preds = %if.else
  %79 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %cmp109 = icmp eq %struct._typeobject* %80, @PyByteArray_Type
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.107
  %81 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %call112 = call i32 @PyType_IsSubtype(%struct._typeobject* %82, %struct._typeobject* @PyByteArray_Type)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.else.128

if.then.114:                                      ; preds = %lor.lhs.false, %if.else.107
  %83 = load %struct._object*, %struct._object** %obj.addr, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyVarObject*
  %ob_size115 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %84, i32 0, i32 1
  %85 = load i64, i64* %ob_size115, align 8
  store i64 %85, i64* %size, align 8
  %86 = load i64, i64* %size, align 8
  %cmp116 = icmp eq i64 %86, 1
  br i1 %cmp116, label %if.then.118, label %if.end.127

if.then.118:                                      ; preds = %if.then.114
  %87 = load %struct._object*, %struct._object** %obj.addr, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyVarObject*
  %ob_size119 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %88, i32 0, i32 1
  %89 = load i64, i64* %ob_size119, align 8
  %tobool120 = icmp ne i64 %89, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.then.118
  %90 = load %struct._object*, %struct._object** %obj.addr, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %91, i32 0, i32 3
  %92 = load i8*, i8** %ob_start, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.then.118
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi i8* [ %92, %cond.true.121 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.122 ]
  %93 = load i8, i8* %cond124, align 1
  %conv125 = zext i8 %93 to i64
  store i64 %conv125, i64* %ord, align 8
  %94 = load i64, i64* %ord, align 8
  %call126 = call %struct._object* @PyLong_FromLong(i64 %94)
  store %struct._object* %call126, %struct._object** %retval
  br label %return

if.end.127:                                       ; preds = %if.then.114
  br label %if.end.131

if.else.128:                                      ; preds = %lor.lhs.false
  %95 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %96 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 1
  %98 = load i8*, i8** %tp_name, align 8
  %call130 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.141, i32 0, i32 0), i8* %98)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.127
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.106
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end
  %99 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %100 = load i64, i64* %size, align 8
  %call134 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.142, i32 0, i32 0), i64 %100)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.133, %if.else.128, %cond.end.123, %cond.end.102, %if.then.12, %if.then.2
  %101 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %101
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_pow(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %z = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %z, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i64 2, i64 3, %struct._object** %v, %struct._object** %w, %struct._object** %z)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %w, align 8
  %3 = load %struct._object*, %struct._object** %z, align 8
  %call1 = call %struct._object* @PyNumber_Power(%struct._object* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_print(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %sep = alloca %struct._object*, align 8
  %end = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  %flush = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %do_flush = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %sep, align 8
  store %struct._object* null, %struct._object** %end, align 8
  store %struct._object* null, %struct._object** %file, align 8
  store %struct._object* null, %struct._object** %flush, align 8
  %0 = load %struct._object*, %struct._object** @builtin_print.dummy_args, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** @builtin_print.dummy_args, align 8
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load %struct._object*, %struct._object** @builtin_print.dummy_args, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @builtin_print.kwlist, i32 0, i32 0), %struct._object** %sep, %struct._object** %end, %struct._object** %file, %struct._object** %flush)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %file, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %file, align 8
  %cmp6 = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %call8 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdout)
  store %struct._object* %call8, %struct._object** %file, align 8
  %5 = load %struct._object*, %struct._object** %file, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %7 = load %struct._object*, %struct._object** %file, align 8
  %cmp12 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %sep, align 8
  %cmp16 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %sep, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end.15
  %10 = load %struct._object*, %struct._object** %sep, align 8
  %tobool18 = icmp ne %struct._object* %10, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %sep, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 268435456
  %cmp20 = icmp ne i64 %and, 0
  br i1 %cmp20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %15 = load %struct._object*, %struct._object** %sep, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.148, i32 0, i32 0), i8* %17)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.19, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  %18 = load %struct._object*, %struct._object** %end, align 8
  %cmp26 = icmp eq %struct._object* %18, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %end, align 8
  br label %if.end.40

if.else.28:                                       ; preds = %if.end.25
  %19 = load %struct._object*, %struct._object** %end, align 8
  %tobool29 = icmp ne %struct._object* %19, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.39

land.lhs.true.30:                                 ; preds = %if.else.28
  %20 = load %struct._object*, %struct._object** %end, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_flags32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags32, align 8
  %and33 = and i64 %22, 268435456
  %cmp34 = icmp ne i64 %and33, 0
  br i1 %cmp34, label %if.end.39, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.30
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %24 = load %struct._object*, %struct._object** %end, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_name37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name37, align 8
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.149, i32 0, i32 0), i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.30, %if.else.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.27
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %27 = load i32, i32* %i, align 4
  %conv = sext i32 %27 to i64
  %28 = load %struct._object*, %struct._object** %args.addr, align 8
  %call41 = call i64 @PyTuple_Size(%struct._object* %28)
  %cmp42 = icmp slt i64 %conv, %call41
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %cmp44 = icmp sgt i32 %29, 0
  br i1 %cmp44, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %for.body
  %30 = load %struct._object*, %struct._object** %sep, align 8
  %cmp47 = icmp eq %struct._object* %30, null
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.then.46
  %31 = load %struct._object*, %struct._object** %file, align 8
  %call50 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i32 0, i32 0), %struct._object* %31)
  store i32 %call50, i32* %err, align 4
  br label %if.end.53

if.else.51:                                       ; preds = %if.then.46
  %32 = load %struct._object*, %struct._object** %sep, align 8
  %33 = load %struct._object*, %struct._object** %file, align 8
  %call52 = call i32 @PyFile_WriteObject(%struct._object* %32, %struct._object* %33, i32 1)
  store i32 %call52, i32* %err, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  %34 = load i32, i32* %err, align 4
  %tobool54 = icmp ne i32 %34, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body
  %35 = load %struct._object*, %struct._object** %args.addr, align 8
  %36 = load i32, i32* %i, align 4
  %conv58 = sext i32 %36 to i64
  %call59 = call %struct._object* @PyTuple_GetItem(%struct._object* %35, i64 %conv58)
  %37 = load %struct._object*, %struct._object** %file, align 8
  %call60 = call i32 @PyFile_WriteObject(%struct._object* %call59, %struct._object* %37, i32 1)
  store i32 %call60, i32* %err, align 4
  %38 = load i32, i32* %err, align 4
  %tobool61 = icmp ne i32 %38, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %39 = load i32, i32* %i, align 4
  %inc64 = add i32 %39, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._object*, %struct._object** %end, align 8
  %cmp65 = icmp eq %struct._object* %40, null
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %for.end
  %41 = load %struct._object*, %struct._object** %file, align 8
  %call68 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0), %struct._object* %41)
  store i32 %call68, i32* %err, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %for.end
  %42 = load %struct._object*, %struct._object** %end, align 8
  %43 = load %struct._object*, %struct._object** %file, align 8
  %call70 = call i32 @PyFile_WriteObject(%struct._object* %42, %struct._object* %43, i32 1)
  store i32 %call70, i32* %err, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.67
  %44 = load i32, i32* %err, align 4
  %tobool72 = icmp ne i32 %44, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.71
  %45 = load %struct._object*, %struct._object** %flush, align 8
  %cmp75 = icmp ne %struct._object* %45, null
  br i1 %cmp75, label %if.then.77, label %if.end.101

if.then.77:                                       ; preds = %if.end.74
  %46 = load %struct._object*, %struct._object** %flush, align 8
  %call79 = call i32 @PyObject_IsTrue(%struct._object* %46)
  store i32 %call79, i32* %do_flush, align 4
  %47 = load i32, i32* %do_flush, align 4
  %cmp80 = icmp eq i32 %47, -1
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.then.77
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.83:                                       ; preds = %if.then.77
  %48 = load i32, i32* %do_flush, align 4
  %tobool84 = icmp ne i32 %48, 0
  br i1 %tobool84, label %if.then.85, label %if.end.99

if.then.85:                                       ; preds = %if.else.83
  %49 = load %struct._object*, %struct._object** %file, align 8
  %call86 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %49, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call86, %struct._object** %tmp, align 8
  %50 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp87 = icmp eq %struct._object* %50, null
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %if.then.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.90:                                       ; preds = %if.then.85
  br label %do.body

do.body:                                          ; preds = %if.else.90
  %51 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %53, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp92 = icmp ne i64 %dec, 0
  br i1 %cmp92, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body
  br label %if.end.97

if.else.95:                                       ; preds = %do.body
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %56(%struct._object* %57)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end

do.end:                                           ; preds = %if.end.97
  br label %if.end.98

if.end.98:                                        ; preds = %do.end
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.else.83
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.74
  %58 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc102 = add i64 %58, 1
  store i64 %inc102, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.101, %if.then.89, %if.then.82, %if.then.73, %if.then.62, %if.then.55, %if.then.35, %if.then.21, %if.then.13, %if.then.10, %if.then.3, %if.then
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_repr(%struct._object* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_Repr(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_round(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ndigits = alloca %struct._object*, align 8
  %number = alloca %struct._object*, align 8
  %round = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %ndigits, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @builtin_round.kwlist, i32 0, i32 0), %struct._object** %number, %struct._object** %ndigits)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %number, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 31
  %4 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %number, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_Ready(%struct._typeobject* %6)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %7 = load %struct._object*, %struct._object** %number, align 8
  %call8 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %7, %struct._Py_Identifier* @PyId___round__)
  store %struct._object* %call8, %struct._object** %round, align 8
  %8 = load %struct._object*, %struct._object** %round, align 8
  %cmp9 = icmp eq %struct._object* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %10 = load %struct._object*, %struct._object** %number, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.155, i32 0, i32 0), i8* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %ndigits, align 8
  %cmp18 = icmp eq %struct._object* %13, null
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.17
  %14 = load %struct._object*, %struct._object** %round, align 8
  %call20 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %14, i8* null)
  store %struct._object* %call20, %struct._object** %result, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.17
  %15 = load %struct._object*, %struct._object** %round, align 8
  %16 = load %struct._object*, %struct._object** %ndigits, align 8
  %call21 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %15, %struct._object* %16, i8* null)
  store %struct._object* %call21, %struct._object** %result, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.19
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %17 = load %struct._object*, %struct._object** %round, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.27

if.else.25:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.16, %if.then.5, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_setattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i64 3, i64 3, %struct._object** %v, %struct._object** %name, %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %3 = load %struct._object*, %struct._object** %value, align 8
  %call1 = call i32 @PyObject_SetAttr(%struct._object* %1, %struct._object* %2, %struct._object* %3)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_sorted(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %newlist = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %keyfunc = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %callable = alloca %struct._object*, align 8
  %reverse = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %keyfunc, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @builtin_sorted.kwlist, i32 0, i32 0), %struct._object** %seq, %struct._object** %keyfunc, i32* %reverse)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %seq, align 8
  %call1 = call %struct._object* @PySequence_List(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %newlist, align 8
  %3 = load %struct._object*, %struct._object** %newlist, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %newlist, align 8
  %call4 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @PyId_sort)
  store %struct._object* %call4, %struct._object** %callable, align 8
  %5 = load %struct._object*, %struct._object** %callable, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %6 = load %struct._object*, %struct._object** %newlist, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %call11 = call %struct._object* @PyTuple_GetSlice(%struct._object* %13, i64 1, i64 4)
  store %struct._object* %call11, %struct._object** %newargs, align 8
  %14 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.36

if.then.13:                                       ; preds = %if.end.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %15 = load %struct._object*, %struct._object** %newlist, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp15, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %17, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %20(%struct._object* %21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %24, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %27(%struct._object* %28)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.10
  %29 = load %struct._object*, %struct._object** %callable, align 8
  %30 = load %struct._object*, %struct._object** %newargs, align 8
  %31 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call37 = call %struct._object* @PyObject_Call(%struct._object* %29, %struct._object* %30, %struct._object* %31)
  store %struct._object* %call37, %struct._object** %v, align 8
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.36
  %32 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp39, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %34, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %37(%struct._object* %38)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %39 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp50, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %41, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %44(%struct._object* %45)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %46 = load %struct._object*, %struct._object** %v, align 8
  %cmp60 = icmp eq %struct._object* %46, null
  br i1 %cmp60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %do.end.59
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %47 = load %struct._object*, %struct._object** %newlist, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp63, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %49, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %52(%struct._object* %53)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.73:                                        ; preds = %do.end.59
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.73
  %54 = load %struct._object*, %struct._object** %v, align 8
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
  %61 = load %struct._object*, %struct._object** %newlist, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.84, %do.end.72, %do.end.35, %do.end, %if.then.2, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_sum(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %overflow = alloca i32, align 4
  %i_result = alloca i64, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %b = alloca i64, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp156 = alloca %struct._object*, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  %_py_decref_tmp180 = alloca %struct._object*, align 8
  %f_result = alloca double, align 8
  %_py_decref_tmp196 = alloca %struct._object*, align 8
  %_py_decref_tmp213 = alloca %struct._object*, align 8
  %_py_decref_tmp235 = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %overflow249 = alloca i32, align 4
  %_py_decref_tmp255 = alloca %struct._object*, align 8
  %_py_decref_tmp271 = alloca %struct._object*, align 8
  %_py_decref_tmp283 = alloca %struct._object*, align 8
  %_py_decref_tmp298 = alloca %struct._object*, align 8
  %_py_decref_tmp320 = alloca %struct._object*, align 8
  %_py_decref_tmp335 = alloca %struct._object*, align 8
  %_py_decref_tmp347 = alloca %struct._object*, align 8
  %_py_decref_tmp363 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i64 1, i64 2, %struct._object** %seq, %struct._object** %result)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %seq, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %iter, align 8
  %2 = load %struct._object*, %struct._object** %iter, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then.5, label %if.else.13

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call6, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %4, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %5 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.5
  br label %if.end.65

if.else.13:                                       ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** %result, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 268435456
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.else.13
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.161, i32 0, i32 0))
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %16 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp18, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %18, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %21(%struct._object* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.else.13
  %23 = load %struct._object*, %struct._object** %result, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19
  %25 = load i64, i64* %tp_flags30, align 8
  %and31 = and i64 %25, 134217728
  %cmp32 = icmp ne i64 %and31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %if.end.28
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.162, i32 0, i32 0))
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %27 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp35, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %29, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %32(%struct._object* %33)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.28
  %34 = load %struct._object*, %struct._object** %result, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %cmp47 = icmp eq %struct._typeobject* %35, @PyByteArray_Type
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %36 = load %struct._object*, %struct._object** %result, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %call49 = call i32 @PyType_IsSubtype(%struct._typeobject* %37, %struct._typeobject* @PyByteArray_Type)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %lor.lhs.false, %if.end.45
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.163, i32 0, i32 0))
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %39 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp53, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %41, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %44(%struct._object* %45)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false
  %46 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt64, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %ob_refcnt64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %if.end.12
  %48 = load %struct._object*, %struct._object** %result, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %cmp67 = icmp eq %struct._typeobject* %49, @PyLong_Type
  br i1 %cmp67, label %if.then.68, label %if.end.191

if.then.68:                                       ; preds = %if.end.65
  %50 = load %struct._object*, %struct._object** %result, align 8
  %call69 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %50, i32* %overflow)
  store i64 %call69, i64* %i_result, align 8
  %51 = load i32, i32* %overflow, align 4
  %cmp70 = icmp eq i32 %51, 0
  br i1 %cmp70, label %if.then.71, label %if.end.83

if.then.71:                                       ; preds = %if.then.68
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %52 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp73, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %54, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %57(%struct._object* %58)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %if.then.68
  br label %while.cond

while.cond:                                       ; preds = %if.end.190, %do.end.125, %if.end.83
  %59 = load %struct._object*, %struct._object** %result, align 8
  %cmp84 = icmp eq %struct._object* %59, null
  br i1 %cmp84, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load %struct._object*, %struct._object** %iter, align 8
  %call85 = call %struct._object* @PyIter_Next(%struct._object* %60)
  store %struct._object* %call85, %struct._object** %item, align 8
  %61 = load %struct._object*, %struct._object** %item, align 8
  %cmp86 = icmp eq %struct._object* %61, null
  br i1 %cmp86, label %if.then.87, label %if.end.104

if.then.87:                                       ; preds = %while.body
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %62 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp89, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %64, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %67(%struct._object* %68)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %call99 = call %struct._object* @PyErr_Occurred()
  %tobool100 = icmp ne %struct._object* %call99, null
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %do.end.98
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.102:                                       ; preds = %do.end.98
  %69 = load i64, i64* %i_result, align 8
  %call103 = call %struct._object* @PyLong_FromLong(i64 %69)
  store %struct._object* %call103, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %while.body
  %70 = load %struct._object*, %struct._object** %item, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %cmp106 = icmp eq %struct._typeobject* %71, @PyLong_Type
  br i1 %cmp106, label %if.then.107, label %if.end.127

if.then.107:                                      ; preds = %if.end.104
  %72 = load %struct._object*, %struct._object** %item, align 8
  %call108 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %72, i32* %overflow)
  store i64 %call108, i64* %b, align 8
  %73 = load i64, i64* %i_result, align 8
  %74 = load i64, i64* %b, align 8
  %add = add i64 %73, %74
  store i64 %add, i64* %x, align 8
  %75 = load i32, i32* %overflow, align 4
  %cmp109 = icmp eq i32 %75, 0
  br i1 %cmp109, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.then.107
  %76 = load i64, i64* %x, align 8
  %77 = load i64, i64* %i_result, align 8
  %xor = xor i64 %76, %77
  %cmp110 = icmp sge i64 %xor, 0
  br i1 %cmp110, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true
  %78 = load i64, i64* %x, align 8
  %79 = load i64, i64* %b, align 8
  %xor112 = xor i64 %78, %79
  %cmp113 = icmp sge i64 %xor112, 0
  br i1 %cmp113, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %lor.lhs.false.111, %land.lhs.true
  %80 = load i64, i64* %x, align 8
  store i64 %80, i64* %i_result, align 8
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %81 = load %struct._object*, %struct._object** %item, align 8
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
  br label %while.cond

if.end.126:                                       ; preds = %lor.lhs.false.111, %if.then.107
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.104
  %88 = load i64, i64* %i_result, align 8
  %call128 = call %struct._object* @PyLong_FromLong(i64 %88)
  store %struct._object* %call128, %struct._object** %result, align 8
  %89 = load %struct._object*, %struct._object** %result, align 8
  %cmp129 = icmp eq %struct._object* %89, null
  br i1 %cmp129, label %if.then.130, label %if.end.153

if.then.130:                                      ; preds = %if.end.127
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  %90 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp132, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt133, align 8
  %dec134 = add i64 %92, -1
  store i64 %dec134, i64* %ob_refcnt133, align 8
  %cmp135 = icmp ne i64 %dec134, 0
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.body.131
  br label %if.end.140

if.else.137:                                      ; preds = %do.body.131
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  call void %95(%struct._object* %96)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  br label %do.body.142

do.body.142:                                      ; preds = %do.end.141
  %97 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp143, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %99, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.142
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %102(%struct._object* %103)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.153:                                       ; preds = %if.end.127
  %104 = load %struct._object*, %struct._object** %result, align 8
  %105 = load %struct._object*, %struct._object** %item, align 8
  %call154 = call %struct._object* @PyNumber_Add(%struct._object* %104, %struct._object* %105)
  store %struct._object* %call154, %struct._object** %temp, align 8
  br label %do.body.155

do.body.155:                                      ; preds = %if.end.153
  %106 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp156, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt157, align 8
  %dec158 = add i64 %108, -1
  store i64 %dec158, i64* %ob_refcnt157, align 8
  %cmp159 = icmp ne i64 %dec158, 0
  br i1 %cmp159, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %do.body.155
  br label %if.end.164

if.else.161:                                      ; preds = %do.body.155
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_dealloc163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  call void %111(%struct._object* %112)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %do.body.166

do.body.166:                                      ; preds = %do.end.165
  %113 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp167, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt168, align 8
  %dec169 = add i64 %115, -1
  store i64 %dec169, i64* %ob_refcnt168, align 8
  %cmp170 = icmp ne i64 %dec169, 0
  br i1 %cmp170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %do.body.166
  br label %if.end.175

if.else.172:                                      ; preds = %do.body.166
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  call void %118(%struct._object* %119)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  %120 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %120, %struct._object** %result, align 8
  %121 = load %struct._object*, %struct._object** %result, align 8
  %cmp177 = icmp eq %struct._object* %121, null
  br i1 %cmp177, label %if.then.178, label %if.end.190

if.then.178:                                      ; preds = %do.end.176
  br label %do.body.179

do.body.179:                                      ; preds = %if.then.178
  %122 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %122, %struct._object** %_py_decref_tmp180, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_refcnt181 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt181, align 8
  %dec182 = add i64 %124, -1
  store i64 %dec182, i64* %ob_refcnt181, align 8
  %cmp183 = icmp ne i64 %dec182, 0
  br i1 %cmp183, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %do.body.179
  br label %if.end.188

if.else.185:                                      ; preds = %do.body.179
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc187, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  call void %127(%struct._object* %128)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.190:                                       ; preds = %do.end.176
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.191

if.end.191:                                       ; preds = %while.end, %if.end.65
  %129 = load %struct._object*, %struct._object** %result, align 8
  %ob_type192 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type192, align 8
  %cmp193 = icmp eq %struct._typeobject* %130, @PyFloat_Type
  br i1 %cmp193, label %if.then.194, label %if.end.311

if.then.194:                                      ; preds = %if.end.191
  %131 = load %struct._object*, %struct._object** %result, align 8
  %132 = bitcast %struct._object* %131 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %132, i32 0, i32 1
  %133 = load double, double* %ob_fval, align 8
  store double %133, double* %f_result, align 8
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %134 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %134, %struct._object** %_py_decref_tmp196, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  %ob_refcnt197 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt197, align 8
  %dec198 = add i64 %136, -1
  store i64 %dec198, i64* %ob_refcnt197, align 8
  %cmp199 = icmp ne i64 %dec198, 0
  br i1 %cmp199, label %if.then.200, label %if.else.201

if.then.200:                                      ; preds = %do.body.195
  br label %if.end.204

if.else.201:                                      ; preds = %do.body.195
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  %ob_type202 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type202, align 8
  %tp_dealloc203 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc203, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  call void %139(%struct._object* %140)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.201, %if.then.200
  br label %do.end.205

do.end.205:                                       ; preds = %if.end.204
  store %struct._object* null, %struct._object** %result, align 8
  br label %while.cond.206

while.cond.206:                                   ; preds = %if.end.309, %do.end.265, %do.end.244, %do.end.205
  %141 = load %struct._object*, %struct._object** %result, align 8
  %cmp207 = icmp eq %struct._object* %141, null
  br i1 %cmp207, label %while.body.208, label %while.end.310

while.body.208:                                   ; preds = %while.cond.206
  %142 = load %struct._object*, %struct._object** %iter, align 8
  %call209 = call %struct._object* @PyIter_Next(%struct._object* %142)
  store %struct._object* %call209, %struct._object** %item, align 8
  %143 = load %struct._object*, %struct._object** %item, align 8
  %cmp210 = icmp eq %struct._object* %143, null
  br i1 %cmp210, label %if.then.211, label %if.end.228

if.then.211:                                      ; preds = %while.body.208
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %144 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %144, %struct._object** %_py_decref_tmp213, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_refcnt214 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt214, align 8
  %dec215 = add i64 %146, -1
  store i64 %dec215, i64* %ob_refcnt214, align 8
  %cmp216 = icmp ne i64 %dec215, 0
  br i1 %cmp216, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %do.body.212
  br label %if.end.221

if.else.218:                                      ; preds = %do.body.212
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_type219 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type219, align 8
  %tp_dealloc220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc220, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  call void %149(%struct._object* %150)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.217
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  %call223 = call %struct._object* @PyErr_Occurred()
  %tobool224 = icmp ne %struct._object* %call223, null
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %do.end.222
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.226:                                       ; preds = %do.end.222
  %151 = load double, double* %f_result, align 8
  %call227 = call %struct._object* @PyFloat_FromDouble(double %151)
  store %struct._object* %call227, %struct._object** %retval
  br label %return

if.end.228:                                       ; preds = %while.body.208
  %152 = load %struct._object*, %struct._object** %item, align 8
  %ob_type229 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type229, align 8
  %cmp230 = icmp eq %struct._typeobject* %153, @PyFloat_Type
  br i1 %cmp230, label %if.then.231, label %if.end.245

if.then.231:                                      ; preds = %if.end.228
  %154 = load %struct._object*, %struct._object** %item, align 8
  %155 = bitcast %struct._object* %154 to %struct.PyFloatObject*
  %ob_fval232 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %155, i32 0, i32 1
  %156 = load double, double* %ob_fval232, align 8
  %157 = load double, double* %f_result, align 8
  %add233 = fadd double %157, %156
  store double %add233, double* %f_result, align 8
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.231
  %158 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %158, %struct._object** %_py_decref_tmp235, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_refcnt236 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0
  %160 = load i64, i64* %ob_refcnt236, align 8
  %dec237 = add i64 %160, -1
  store i64 %dec237, i64* %ob_refcnt236, align 8
  %cmp238 = icmp ne i64 %dec237, 0
  br i1 %cmp238, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %do.body.234
  br label %if.end.243

if.else.240:                                      ; preds = %do.body.234
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_type241 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type241, align 8
  %tp_dealloc242 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc242, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  call void %163(%struct._object* %164)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.240, %if.then.239
  br label %do.end.244

do.end.244:                                       ; preds = %if.end.243
  br label %while.cond.206

if.end.245:                                       ; preds = %if.end.228
  %165 = load %struct._object*, %struct._object** %item, align 8
  %ob_type246 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type246, align 8
  %cmp247 = icmp eq %struct._typeobject* %166, @PyLong_Type
  br i1 %cmp247, label %if.then.248, label %if.end.267

if.then.248:                                      ; preds = %if.end.245
  %167 = load %struct._object*, %struct._object** %item, align 8
  %call250 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %167, i32* %overflow249)
  store i64 %call250, i64* %value, align 8
  %168 = load i32, i32* %overflow249, align 4
  %tobool251 = icmp ne i32 %168, 0
  br i1 %tobool251, label %if.end.266, label %if.then.252

if.then.252:                                      ; preds = %if.then.248
  %169 = load i64, i64* %value, align 8
  %conv = sitofp i64 %169 to double
  %170 = load double, double* %f_result, align 8
  %add253 = fadd double %170, %conv
  store double %add253, double* %f_result, align 8
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.252
  %171 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp255, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_refcnt256 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt256, align 8
  %dec257 = add i64 %173, -1
  store i64 %dec257, i64* %ob_refcnt256, align 8
  %cmp258 = icmp ne i64 %dec257, 0
  br i1 %cmp258, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %do.body.254
  br label %if.end.264

if.else.261:                                      ; preds = %do.body.254
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_type262 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type262, align 8
  %tp_dealloc263 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc263, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  call void %176(%struct._object* %177)
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.261, %if.then.260
  br label %do.end.265

do.end.265:                                       ; preds = %if.end.264
  br label %while.cond.206

if.end.266:                                       ; preds = %if.then.248
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.245
  %178 = load double, double* %f_result, align 8
  %call268 = call %struct._object* @PyFloat_FromDouble(double %178)
  store %struct._object* %call268, %struct._object** %result, align 8
  %179 = load %struct._object*, %struct._object** %result, align 8
  %180 = load %struct._object*, %struct._object** %item, align 8
  %call269 = call %struct._object* @PyNumber_Add(%struct._object* %179, %struct._object* %180)
  store %struct._object* %call269, %struct._object** %temp, align 8
  br label %do.body.270

do.body.270:                                      ; preds = %if.end.267
  %181 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %181, %struct._object** %_py_decref_tmp271, align 8
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  %ob_refcnt272 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 0
  %183 = load i64, i64* %ob_refcnt272, align 8
  %dec273 = add i64 %183, -1
  store i64 %dec273, i64* %ob_refcnt272, align 8
  %cmp274 = icmp ne i64 %dec273, 0
  br i1 %cmp274, label %if.then.276, label %if.else.277

if.then.276:                                      ; preds = %do.body.270
  br label %if.end.280

if.else.277:                                      ; preds = %do.body.270
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  %ob_type278 = getelementptr inbounds %struct._object, %struct._object* %184, i32 0, i32 1
  %185 = load %struct._typeobject*, %struct._typeobject** %ob_type278, align 8
  %tp_dealloc279 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %185, i32 0, i32 4
  %186 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc279, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp271, align 8
  call void %186(%struct._object* %187)
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.277, %if.then.276
  br label %do.end.281

do.end.281:                                       ; preds = %if.end.280
  br label %do.body.282

do.body.282:                                      ; preds = %do.end.281
  %188 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %188, %struct._object** %_py_decref_tmp283, align 8
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  %ob_refcnt284 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 0
  %190 = load i64, i64* %ob_refcnt284, align 8
  %dec285 = add i64 %190, -1
  store i64 %dec285, i64* %ob_refcnt284, align 8
  %cmp286 = icmp ne i64 %dec285, 0
  br i1 %cmp286, label %if.then.288, label %if.else.289

if.then.288:                                      ; preds = %do.body.282
  br label %if.end.292

if.else.289:                                      ; preds = %do.body.282
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  %ob_type290 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 1
  %192 = load %struct._typeobject*, %struct._typeobject** %ob_type290, align 8
  %tp_dealloc291 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %192, i32 0, i32 4
  %193 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc291, align 8
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp283, align 8
  call void %193(%struct._object* %194)
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.289, %if.then.288
  br label %do.end.293

do.end.293:                                       ; preds = %if.end.292
  %195 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %195, %struct._object** %result, align 8
  %196 = load %struct._object*, %struct._object** %result, align 8
  %cmp294 = icmp eq %struct._object* %196, null
  br i1 %cmp294, label %if.then.296, label %if.end.309

if.then.296:                                      ; preds = %do.end.293
  br label %do.body.297

do.body.297:                                      ; preds = %if.then.296
  %197 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %197, %struct._object** %_py_decref_tmp298, align 8
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_refcnt299 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 0
  %199 = load i64, i64* %ob_refcnt299, align 8
  %dec300 = add i64 %199, -1
  store i64 %dec300, i64* %ob_refcnt299, align 8
  %cmp301 = icmp ne i64 %dec300, 0
  br i1 %cmp301, label %if.then.303, label %if.else.304

if.then.303:                                      ; preds = %do.body.297
  br label %if.end.307

if.else.304:                                      ; preds = %do.body.297
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_type305 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 1
  %201 = load %struct._typeobject*, %struct._typeobject** %ob_type305, align 8
  %tp_dealloc306 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %201, i32 0, i32 4
  %202 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc306, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  call void %202(%struct._object* %203)
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304, %if.then.303
  br label %do.end.308

do.end.308:                                       ; preds = %if.end.307
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.309:                                       ; preds = %do.end.293
  br label %while.cond.206

while.end.310:                                    ; preds = %while.cond.206
  br label %if.end.311

if.end.311:                                       ; preds = %while.end.310, %if.end.191
  br label %for.cond

for.cond:                                         ; preds = %if.end.361, %if.end.311
  %204 = load %struct._object*, %struct._object** %iter, align 8
  %call312 = call %struct._object* @PyIter_Next(%struct._object* %204)
  store %struct._object* %call312, %struct._object** %item, align 8
  %205 = load %struct._object*, %struct._object** %item, align 8
  %cmp313 = icmp eq %struct._object* %205, null
  br i1 %cmp313, label %if.then.315, label %if.end.332

if.then.315:                                      ; preds = %for.cond
  %call316 = call %struct._object* @PyErr_Occurred()
  %tobool317 = icmp ne %struct._object* %call316, null
  br i1 %tobool317, label %if.then.318, label %if.end.331

if.then.318:                                      ; preds = %if.then.315
  br label %do.body.319

do.body.319:                                      ; preds = %if.then.318
  %206 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %206, %struct._object** %_py_decref_tmp320, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_refcnt321 = getelementptr inbounds %struct._object, %struct._object* %207, i32 0, i32 0
  %208 = load i64, i64* %ob_refcnt321, align 8
  %dec322 = add i64 %208, -1
  store i64 %dec322, i64* %ob_refcnt321, align 8
  %cmp323 = icmp ne i64 %dec322, 0
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %do.body.319
  br label %if.end.329

if.else.326:                                      ; preds = %do.body.319
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_type327 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 1
  %210 = load %struct._typeobject*, %struct._typeobject** %ob_type327, align 8
  %tp_dealloc328 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %210, i32 0, i32 4
  %211 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc328, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  call void %211(%struct._object* %212)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.325
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.331

if.end.331:                                       ; preds = %do.end.330, %if.then.315
  br label %for.end

if.end.332:                                       ; preds = %for.cond
  %213 = load %struct._object*, %struct._object** %result, align 8
  %214 = load %struct._object*, %struct._object** %item, align 8
  %call333 = call %struct._object* @PyNumber_Add(%struct._object* %213, %struct._object* %214)
  store %struct._object* %call333, %struct._object** %temp, align 8
  br label %do.body.334

do.body.334:                                      ; preds = %if.end.332
  %215 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %215, %struct._object** %_py_decref_tmp335, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_refcnt336 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 0
  %217 = load i64, i64* %ob_refcnt336, align 8
  %dec337 = add i64 %217, -1
  store i64 %dec337, i64* %ob_refcnt336, align 8
  %cmp338 = icmp ne i64 %dec337, 0
  br i1 %cmp338, label %if.then.340, label %if.else.341

if.then.340:                                      ; preds = %do.body.334
  br label %if.end.344

if.else.341:                                      ; preds = %do.body.334
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_type342 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 1
  %219 = load %struct._typeobject*, %struct._typeobject** %ob_type342, align 8
  %tp_dealloc343 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %219, i32 0, i32 4
  %220 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc343, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  call void %220(%struct._object* %221)
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.341, %if.then.340
  br label %do.end.345

do.end.345:                                       ; preds = %if.end.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.end.345
  %222 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %222, %struct._object** %_py_decref_tmp347, align 8
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_refcnt348 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 0
  %224 = load i64, i64* %ob_refcnt348, align 8
  %dec349 = add i64 %224, -1
  store i64 %dec349, i64* %ob_refcnt348, align 8
  %cmp350 = icmp ne i64 %dec349, 0
  br i1 %cmp350, label %if.then.352, label %if.else.353

if.then.352:                                      ; preds = %do.body.346
  br label %if.end.356

if.else.353:                                      ; preds = %do.body.346
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_type354 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 1
  %226 = load %struct._typeobject*, %struct._typeobject** %ob_type354, align 8
  %tp_dealloc355 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %226, i32 0, i32 4
  %227 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc355, align 8
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  call void %227(%struct._object* %228)
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.353, %if.then.352
  br label %do.end.357

do.end.357:                                       ; preds = %if.end.356
  %229 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %229, %struct._object** %result, align 8
  %230 = load %struct._object*, %struct._object** %result, align 8
  %cmp358 = icmp eq %struct._object* %230, null
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %do.end.357
  br label %for.end

if.end.361:                                       ; preds = %do.end.357
  br label %for.cond

for.end:                                          ; preds = %if.then.360, %if.end.331
  br label %do.body.362

do.body.362:                                      ; preds = %for.end
  %231 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %231, %struct._object** %_py_decref_tmp363, align 8
  %232 = load %struct._object*, %struct._object** %_py_decref_tmp363, align 8
  %ob_refcnt364 = getelementptr inbounds %struct._object, %struct._object* %232, i32 0, i32 0
  %233 = load i64, i64* %ob_refcnt364, align 8
  %dec365 = add i64 %233, -1
  store i64 %dec365, i64* %ob_refcnt364, align 8
  %cmp366 = icmp ne i64 %dec365, 0
  br i1 %cmp366, label %if.then.368, label %if.else.369

if.then.368:                                      ; preds = %do.body.362
  br label %if.end.372

if.else.369:                                      ; preds = %do.body.362
  %234 = load %struct._object*, %struct._object** %_py_decref_tmp363, align 8
  %ob_type370 = getelementptr inbounds %struct._object, %struct._object* %234, i32 0, i32 1
  %235 = load %struct._typeobject*, %struct._typeobject** %ob_type370, align 8
  %tp_dealloc371 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %235, i32 0, i32 4
  %236 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc371, align 8
  %237 = load %struct._object*, %struct._object** %_py_decref_tmp363, align 8
  call void %236(%struct._object* %237)
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.369, %if.then.368
  br label %do.end.373

do.end.373:                                       ; preds = %if.end.372
  %238 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %238, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.373, %do.end.308, %if.end.226, %if.then.225, %do.end.189, %do.end.152, %if.end.102, %if.then.101, %do.end.62, %do.end.44, %do.end.27, %do.end, %if.then.2, %if.then
  %239 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %239
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @builtin_vars(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i64 0, i64 1, %struct._object** %v)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyEval_GetLocals()
  store %struct._object* %call2, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %3 = load %struct._object*, %struct._object** %d, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8
  %call6 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @PyId___dict__)
  store %struct._object* %call6, %struct._object** %d, align 8
  %6 = load %struct._object*, %struct._object** %d, align 8
  %cmp7 = icmp eq %struct._object* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.5
  %8 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare %struct._object* @PyDict_Copy(%struct._object*) #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @_PyDict_DelItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._typeobject* @_PyType_CalculateMetaclass(%struct._typeobject*, %struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyEval_EvalCodeEx(%struct._object*, %struct._object*, %struct._object*, %struct._object**, i32, %struct._object**, i32, %struct._object**, i32, %struct._object*, %struct._object*) #1

declare i32 @PyCell_Set(%struct._object*, %struct._object*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyImport_ImportModuleLevelObject(%struct._object*, %struct._object*, %struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyNumber_Absolute(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyObject_ASCII(%struct._object*) #1

declare %struct._object* @PyNumber_ToBase(%struct._object*, i32) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyUnicode_FromOrdinal(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #1

declare i32 @PyEval_MergeCompilerFlags(%struct.PyCompilerFlags*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @PyAST_Check(%struct._object*) #1

declare %struct._arena* @PyArena_New() #1

declare %struct._mod* @PyAST_obj2mod(%struct._object*, %struct._arena*, i32) #1

declare void @PyArena_Free(%struct._arena*) #1

declare i32 @PyAST_Validate(%struct._mod*) #1

declare %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod*, %struct._object*, %struct.PyCompilerFlags*, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i8* @source_as_string(%struct._object* %cmd, i8* %funcname, i8* %what, %struct.PyCompilerFlags* %cf) #0 {
entry:
  %retval = alloca i8*, align 8
  %cmd.addr = alloca %struct._object*, align 8
  %funcname.addr = alloca i8*, align 8
  %what.addr = alloca i8*, align 8
  %cf.addr = alloca %struct.PyCompilerFlags*, align 8
  %str = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %cmd, %struct._object** %cmd.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store %struct.PyCompilerFlags* %cf, %struct.PyCompilerFlags** %cf.addr, align 8
  %0 = load %struct._object*, %struct._object** %cmd.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %cf.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %3, i32 0, i32 0
  %4 = load i32, i32* %cf_flags, align 4
  %or = or i32 %4, 2048
  store i32 %or, i32* %cf_flags, align 4
  %5 = load %struct._object*, %struct._object** %cmd.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %5, i64* %size)
  store i8* %call, i8** %str, align 8
  %6 = load i8*, i8** %str, align 8
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %cmd.addr, align 8
  %call3 = call i32 @PyObject_CheckReadBuffer(%struct._object* %7)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else.6, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load i8*, i8** %funcname.addr, align 8
  %10 = load i8*, i8** %what.addr, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.106, i32 0, i32 0), i8* %9, i8* %10)
  store i8* null, i8** %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %cmd.addr, align 8
  %call7 = call i32 @PyObject_AsReadBuffer(%struct._object* %11, i8** %str, i64* %size)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else.6
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %12 = load i8*, i8** %str, align 8
  %call13 = call i64 @strlen(i8* %12) #5
  %13 = load i64, i64* %size, align 8
  %cmp14 = icmp ne i64 %call13, %13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %15 = load i8*, i8** %str, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.9, %if.then.4, %if.then.2
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare %struct._object* @Py_CompileStringObject(i8*, %struct._object*, i32, %struct.PyCompilerFlags*, i32) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i32 @PyObject_CheckReadBuffer(%struct._object*) #1

declare i32 @PyObject_AsReadBuffer(%struct._object*, i8**, i64*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_Dir(%struct._object*) #1

declare %struct._object* @PyNumber_Divmod(%struct._object*, %struct._object*) #1

declare i32 @PyMapping_Check(%struct._object*) #1

declare %struct._object* @PyEval_GetGlobals() #1

declare %struct._object* @PyEval_GetLocals() #1

declare i32 @_PyDict_SetItemId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @PyEval_EvalCode(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyRun_StringFlags(i8*, i32, %struct._object*, %struct._object*, %struct.PyCompilerFlags*) #1

declare %struct._object* @PyObject_Format(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @isatty(i32) #4

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i8* @PyOS_Readline(%struct._IO_FILE*, %struct._IO_FILE*, i8*) #1

declare i32 @PyErr_CheckSignals() #1

declare void @PyErr_SetNone(%struct._object*) #1

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #1

declare void @PyMem_Free(i8*) #1

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyFile_GetLine(%struct._object*, i32) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #1

declare %struct._object* @PyCallIter_New(%struct._object*, %struct._object*) #1

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @min_max(%struct._object* %args, %struct._object* %kwds, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %maxitem = alloca %struct._object*, align 8
  %maxval = alloca %struct._object*, align 8
  %keyfunc = alloca %struct._object*, align 8
  %emptytuple = alloca %struct._object*, align 8
  %defaultval = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %positional = alloca i32, align 4
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cmp48 = alloca i32, align 4
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  %_py_xdecref_tmp193 = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  %_py_decref_tmp212 = alloca %struct._object*, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct._object* null, %struct._object** %keyfunc, align 8
  store %struct._object* null, %struct._object** %defaultval, align 8
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0)
  store i8* %cond, i8** %name, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %1)
  %cmp1 = icmp sgt i64 %call, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %positional, align 4
  %2 = load i32, i32* %positional, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %3, %struct._object** %v, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load i8*, i8** %name, align 8
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* %5, i64 1, i64 1, %struct._object** %v)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %call6 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call6, %struct._object** %emptytuple, align 8
  %6 = load %struct._object*, %struct._object** %emptytuple, align 8
  %cmp7 = icmp eq %struct._object* %6, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %7 = load %struct._object*, %struct._object** %emptytuple, align 8
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call11 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @min_max.kwlist, i32 0, i32 0), %struct._object** %keyfunc, %struct._object** %defaultval)
  store i32 %call11, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %9 = load %struct._object*, %struct._object** %emptytuple, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
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
  %16 = load i32, i32* %ret, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  %17 = load i32, i32* %positional, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.19
  %18 = load %struct._object*, %struct._object** %defaultval, align 8
  %cmp21 = icmp ne %struct._object* %18, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %20 = load i8*, i8** %name, align 8
  %call24 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.138, i32 0, i32 0), i8* %20)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %if.end.19
  %21 = load %struct._object*, %struct._object** %v, align 8
  %call26 = call %struct._object* @PyObject_GetIter(%struct._object* %21)
  store %struct._object* %call26, %struct._object** %it, align 8
  %22 = load %struct._object*, %struct._object** %it, align 8
  %cmp27 = icmp eq %struct._object* %22, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.25
  store %struct._object* null, %struct._object** %maxitem, align 8
  store %struct._object* null, %struct._object** %maxval, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.108, %if.end.30
  %23 = load %struct._object*, %struct._object** %it, align 8
  %call31 = call %struct._object* @PyIter_Next(%struct._object* %23)
  store %struct._object* %call31, %struct._object** %item, align 8
  %tobool32 = icmp ne %struct._object* %call31, null
  br i1 %tobool32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._object*, %struct._object** %keyfunc, align 8
  %cmp33 = icmp ne %struct._object* %24, null
  br i1 %cmp33, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %while.body
  %25 = load %struct._object*, %struct._object** %keyfunc, align 8
  %26 = load %struct._object*, %struct._object** %item, align 8
  %call36 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %25, %struct._object* %26, i8* null)
  store %struct._object* %call36, %struct._object** %val, align 8
  %27 = load %struct._object*, %struct._object** %val, align 8
  %cmp37 = icmp eq %struct._object* %27, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  br label %Fail_it_item

if.end.40:                                        ; preds = %if.then.35
  br label %if.end.43

if.else.41:                                       ; preds = %while.body
  %28 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %28, %struct._object** %val, align 8
  %29 = load %struct._object*, %struct._object** %val, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt42, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.end.40
  %31 = load %struct._object*, %struct._object** %maxval, align 8
  %cmp44 = icmp eq %struct._object* %31, null
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43
  %32 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %32, %struct._object** %maxitem, align 8
  %33 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %33, %struct._object** %maxval, align 8
  br label %if.end.108

if.else.47:                                       ; preds = %if.end.43
  %34 = load %struct._object*, %struct._object** %val, align 8
  %35 = load %struct._object*, %struct._object** %maxval, align 8
  %36 = load i32, i32* %op.addr, align 4
  %call49 = call i32 @PyObject_RichCompareBool(%struct._object* %34, %struct._object* %35, i32 %36)
  store i32 %call49, i32* %cmp48, align 4
  %37 = load i32, i32* %cmp48, align 4
  %cmp50 = icmp slt i32 %37, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.47
  br label %Fail_it_item_and_val

if.else.53:                                       ; preds = %if.else.47
  %38 = load i32, i32* %cmp48, align 4
  %cmp54 = icmp sgt i32 %38, 0
  br i1 %cmp54, label %if.then.56, label %if.else.81

if.then.56:                                       ; preds = %if.else.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %39 = load %struct._object*, %struct._object** %maxval, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp58, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %41, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %44(%struct._object* %45)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %46 = load %struct._object*, %struct._object** %maxitem, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp70, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %48, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.69
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %51(%struct._object* %52)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %53 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %53, %struct._object** %maxval, align 8
  %54 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %54, %struct._object** %maxitem, align 8
  br label %if.end.106

if.else.81:                                       ; preds = %if.else.53
  br label %do.body.82

do.body.82:                                       ; preds = %if.else.81
  %55 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp83, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %57, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.82
  br label %if.end.92

if.else.89:                                       ; preds = %do.body.82
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %60(%struct._object* %61)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %62 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp95, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %64, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.94
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %67(%struct._object* %68)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %do.end.80
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.46
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call109 = call %struct._object* @PyErr_Occurred()
  %tobool110 = icmp ne %struct._object* %call109, null
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %while.end
  br label %Fail_it

if.end.112:                                       ; preds = %while.end
  %69 = load %struct._object*, %struct._object** %maxval, align 8
  %cmp113 = icmp eq %struct._object* %69, null
  br i1 %cmp113, label %if.then.115, label %if.else.124

if.then.115:                                      ; preds = %if.end.112
  %70 = load %struct._object*, %struct._object** %defaultval, align 8
  %cmp116 = icmp ne %struct._object* %70, null
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %if.then.115
  %71 = load %struct._object*, %struct._object** %defaultval, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt119, align 8
  %inc120 = add i64 %72, 1
  store i64 %inc120, i64* %ob_refcnt119, align 8
  %73 = load %struct._object*, %struct._object** %defaultval, align 8
  store %struct._object* %73, %struct._object** %maxitem, align 8
  br label %if.end.123

if.else.121:                                      ; preds = %if.then.115
  %74 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %75 = load i8*, i8** %name, align 8
  %call122 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.139, i32 0, i32 0), i8* %75)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.118
  br label %if.end.137

if.else.124:                                      ; preds = %if.end.112
  br label %do.body.125

do.body.125:                                      ; preds = %if.else.124
  %76 = load %struct._object*, %struct._object** %maxval, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp126, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %78, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.125
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.125
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %81(%struct._object* %82)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %if.end.123
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.137
  %83 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp139, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %85, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %88(%struct._object* %89)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  %90 = load %struct._object*, %struct._object** %maxitem, align 8
  store %struct._object* %90, %struct._object** %retval
  br label %return

Fail_it_item_and_val:                             ; preds = %if.then.52
  br label %do.body.150

do.body.150:                                      ; preds = %Fail_it_item_and_val
  %91 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp151, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %93, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %do.body.150
  br label %if.end.160

if.else.157:                                      ; preds = %do.body.150
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %96(%struct._object* %97)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %Fail_it_item

Fail_it_item:                                     ; preds = %do.end.161, %if.then.39
  br label %do.body.162

do.body.162:                                      ; preds = %Fail_it_item
  %98 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp163, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt164, align 8
  %dec165 = add i64 %100, -1
  store i64 %dec165, i64* %ob_refcnt164, align 8
  %cmp166 = icmp ne i64 %dec165, 0
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %do.body.162
  br label %if.end.172

if.else.169:                                      ; preds = %do.body.162
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type170 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type170, align 8
  %tp_dealloc171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc171, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %103(%struct._object* %104)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.169, %if.then.168
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %Fail_it

Fail_it:                                          ; preds = %do.end.173, %if.then.111
  br label %do.body.174

do.body.174:                                      ; preds = %Fail_it
  %105 = load %struct._object*, %struct._object** %maxval, align 8
  store %struct._object* %105, %struct._object** %_py_xdecref_tmp, align 8
  %106 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp175 = icmp ne %struct._object* %106, null
  br i1 %cmp175, label %if.then.177, label %if.end.190

if.then.177:                                      ; preds = %do.body.174
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.177
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp179, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %109, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %do.body.178
  br label %if.end.188

if.else.185:                                      ; preds = %do.body.178
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc187, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %112(%struct._object* %113)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %if.end.190

if.end.190:                                       ; preds = %do.end.189, %do.body.174
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  br label %do.body.192

do.body.192:                                      ; preds = %do.end.191
  %114 = load %struct._object*, %struct._object** %maxitem, align 8
  store %struct._object* %114, %struct._object** %_py_xdecref_tmp193, align 8
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp193, align 8
  %cmp194 = icmp ne %struct._object* %115, null
  br i1 %cmp194, label %if.then.196, label %if.end.209

if.then.196:                                      ; preds = %do.body.192
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %116 = load %struct._object*, %struct._object** %_py_xdecref_tmp193, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp198, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt199, align 8
  %dec200 = add i64 %118, -1
  store i64 %dec200, i64* %ob_refcnt199, align 8
  %cmp201 = icmp ne i64 %dec200, 0
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %do.body.197
  br label %if.end.207

if.else.204:                                      ; preds = %do.body.197
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_type205 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type205, align 8
  %tp_dealloc206 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc206, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  call void %121(%struct._object* %122)
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.204, %if.then.203
  br label %do.end.208

do.end.208:                                       ; preds = %if.end.207
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.208, %do.body.192
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  br label %do.body.211

do.body.211:                                      ; preds = %do.end.210
  %123 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %123, %struct._object** %_py_decref_tmp212, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp212, align 8
  %ob_refcnt213 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt213, align 8
  %dec214 = add i64 %125, -1
  store i64 %dec214, i64* %ob_refcnt213, align 8
  %cmp215 = icmp ne i64 %dec214, 0
  br i1 %cmp215, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %do.body.211
  br label %if.end.221

if.else.218:                                      ; preds = %do.body.211
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp212, align 8
  %ob_type219 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type219, align 8
  %tp_dealloc220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc220, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp212, align 8
  call void %128(%struct._object* %129)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.217
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.222, %do.end.149, %if.then.29, %if.then.23, %if.then.18, %if.then.9, %if.then.4
  %130 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %130
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @_PyObject_NextNotImplemented(%struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyFile_WriteString(i8*, %struct._object*) #1

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PySequence_List(%struct._object*) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
