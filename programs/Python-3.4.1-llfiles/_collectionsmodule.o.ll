; ModuleID = '_collectionsmodule.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.BLOCK = type { %struct.BLOCK*, [62 x %struct._object*], %struct.BLOCK* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.dequeobject = type { %struct.PyVarObject, %struct.BLOCK*, %struct.BLOCK*, i64, i64, i64, i64, %struct._object* }
%struct.defdictobject = type { %struct.PyDictObject, %struct._object* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.dequeiterobject = type { %struct._object, i64, %struct.BLOCK*, %struct.dequeobject*, i64, i64 }

@_collectionsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([160 x i8], [160 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@deque_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i64 80, i64 0, void (%struct._object*)* bitcast (void (%struct.dequeobject*)* @deque_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @deque_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* @deque_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* @PyObject_HashNotImplemented, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @deque_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dequeobject*, i32 (%struct._object*, i8*)*, i8*)* @deque_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (void (%struct.dequeobject*)* @deque_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @deque_richcompare, i64 72, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dequeobject*)* @deque_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @deque_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @deque_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.dequeobject*, %struct._object*, %struct._object*)* @deque_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @deque_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"deque\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@defdict_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.defdictobject*)* @defdict_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.defdictobject*)* @defdict_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([369 x i8], [369 x i8]* @defdict_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @defdict_traverse, i32 (%struct._object*)* bitcast (i32 (%struct.defdictobject*)* @defdict_tp_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @defdict_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @defdict_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @defdict_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"defaultdict\00", align 1
@dequeiter_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.dequeiterobject*)* @dequeiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dequeiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dequeiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dequeiterobject*)* @dequeiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dequeiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dequeiter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"_deque_iterator\00", align 1
@dequereviter_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.dequeiterobject*)* @dequeiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dequeiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dequeiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dequeiterobject*)* @dequereviter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dequeiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dequereviter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"_deque_reverse_iterator\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"_collections\00", align 1
@module_doc = internal global [160 x i8] c"High performance data structures.\0A- deque:        ordered collection accessible from endpoints only\0A- defaultdict:  dict subclass with a default value factory\0A\00", align 16
@module_functions = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_count_elements, i32 1, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @_count_elements_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [16 x i8] c"_count_elements\00", align 1
@_count_elements_doc = internal global [98 x i8] c"_count_elements(mapping, iterable) -> None\0A\0ACount elements in the iterable, updating the mappping\00", align 16
@_count_elements.PyId_get = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct._object* null }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@_count_elements.PyId___setitem__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"__setitem__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"collections.deque\00", align 1
@deque_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.dequeobject*)* @deque_len to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.dequeobject*, i64)* @deque_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* bitcast (i32 (%struct.dequeobject*, i64, %struct._object*)* @deque_ass_item to i32 (%struct._object*, i64, %struct._object*)*), i8* null, i32 (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_inplace_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* null }, align 8
@deque_doc = internal global [116 x i8] c"deque([iterable[, maxlen]]) --> deque object\0A\0ABuild an ordered collection with optimized access from its endpoints.\00", align 16
@deque_methods = internal global [16 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_append to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @append_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_appendleft to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @appendleft_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*)* @deque_clearmethod to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @clear_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @deque_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_count to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @count_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_extend to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @extend_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_extendleft to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @extendleft_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_pop to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @pop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_popleft to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @popleft_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*)* @deque_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_remove to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @remove_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*)* @deque_reviter to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @reversed_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_reverse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @reverse_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, %struct._object*)* @deque_rotate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @rotate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeobject*, i8*)* @deque_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@deque_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.dequeobject*)* @deque_get_maxlen to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@numfreeblocks = internal unnamed_addr global i64 0, align 8
@freeblocks = internal unnamed_addr global [10 x %struct.BLOCK*] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"deque(%R, maxlen=%zd)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"deque(%R)\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"deque index out of range\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"cannot add more blocks to the deque\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"pop from an empty deque\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@append_doc = internal global [47 x i8] c"Add an element to the right side of the deque.\00", align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"appendleft\00", align 1
@appendleft_doc = internal global [46 x i8] c"Add an element to the left side of the deque.\00", align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear_doc = internal global [36 x i8] c"Remove all elements from the deque.\00", align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"__copy__\00", align 1
@copy_doc = internal global [34 x i8] c"Return a shallow copy of a deque.\00", align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count_doc = internal global [67 x i8] c"D.count(value) -> integer -- return number of occurrences of value\00", align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@extend_doc = internal global [67 x i8] c"Extend the right side of the deque with elements from the iterable\00", align 16
@.str.21 = private unnamed_addr constant [11 x i8] c"extendleft\00", align 1
@extendleft_doc = internal global [66 x i8] c"Extend the left side of the deque with elements from the iterable\00", align 16
@.str.22 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop_doc = internal global [41 x i8] c"Remove and return the rightmost element.\00", align 16
@.str.23 = private unnamed_addr constant [8 x i8] c"popleft\00", align 1
@popleft_doc = internal global [40 x i8] c"Remove and return the leftmost element.\00", align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.25 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@remove_doc = internal global [53 x i8] c"D.remove(value) -- remove first occurrence of value.\00", align 16
@.str.26 = private unnamed_addr constant [13 x i8] c"__reversed__\00", align 1
@reversed_doc = internal global [61 x i8] c"D.__reversed__() -- return a reverse iterator over the deque\00", align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@reverse_doc = internal global [34 x i8] c"D.reverse() -- reverse *IN PLACE*\00", align 16
@.str.28 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@rotate_doc = internal global [86 x i8] c"Rotate the deque n steps to the right (default n=1).  If n is negative, rotates left.\00", align 16
@.str.29 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [48 x i8] c"D.__sizeof__() -- size of D in memory, in bytes\00", align 16
@.str.30 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.32 = private unnamed_addr constant [31 x i8] c"deque mutated during iteration\00", align 1
@deque_reduce.PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"O(O)\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"O(On)\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"O(OO)O\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"O(On)O\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"deque mutated during remove().\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.39 = private unnamed_addr constant [32 x i8] c"deque.remove(x): x not in deque\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"|n:rotate\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"maximum size of a deque or None if unbounded\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"iterable\00", align 1
@deque_init.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"|OO:deque\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"maxlen must be non-negative\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"collections.defaultdict\00", align 1
@defdict_doc = internal global [369 x i8] c"defaultdict(default_factory[, ...]) --> dict with default factory\0A\0AThe default factory is called without arguments to produce\0Aa new value when a key is not present, in __getitem__ only.\0AA defaultdict compares equal to a dict with the same items.\0AAll remaining arguments are treated the same as if they were\0Apassed to the dict constructor, including keyword arguments.\0A\00", align 16
@defdict_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.defdictobject*, %struct._object*)* @defdict_missing to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @defdict_missing_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.defdictobject*)* @defdict_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @defdict_copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.defdictobject*)* @defdict_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @defdict_copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.defdictobject*)* @defdict_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@defdict_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i32 6, i64 40, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"defaultdict(%U, %U)\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"__missing__\00", align 1
@defdict_missing_doc = internal global [190 x i8] c"__missing__(key) # Called by __getitem__ for missing key; pseudo-code:\0A  if self.default_factory is None: raise KeyError((key,))\0A  self[key] = value = self.default_factory()\0A  return value\0A\00", align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@defdict_copy_doc = internal global [33 x i8] c"D.copy() -> a shallow copy of D.\00", align 16
@PyExc_KeyError = external global %struct._object*, align 8
@defdict_reduce.PyId_items = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), %struct._object* null }, align 8
@.str.52 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"default_factory\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"Factory for default value called by __missing__().\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.56 = private unnamed_addr constant [32 x i8] c"first argument must be callable\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"_collections._deque_iterator\00", align 1
@dequeiter_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeiterobject*)* @dequeiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dequeiterobject*)* @dequeiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.59 = private unnamed_addr constant [5 x i8] c"O!|n\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"_collections._deque_reverse_iterator\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__collections() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @_collectionsmodule, i32 1013) #1, !dbg !1240
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !415, metadata !1241), !dbg !1242
  %cmp = icmp eq %struct._object* %call, null, !dbg !1243
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1245

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @deque_type) #1, !dbg !1246
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1248
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1249

if.end.4:                                         ; preds = %if.end
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1250, !tbaa !1251
  %inc = add i64 %0, 1, !dbg !1250
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1250, !tbaa !1251
  %call5 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i64 0, i32 0, i32 0)) #1, !dbg !1257
  store %struct._typeobject* @PyDict_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i64 0, i32 30), align 8, !dbg !1258, !tbaa !1259
  %call6 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @defdict_type) #1, !dbg !1263
  %cmp7 = icmp slt i32 %call6, 0, !dbg !1265
  br i1 %cmp7, label %cleanup, label %if.end.9, !dbg !1266

if.end.9:                                         ; preds = %if.end.4
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1267, !tbaa !1251
  %inc10 = add i64 %1, 1, !dbg !1267
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1267, !tbaa !1251
  %call11 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i64 0, i32 0, i32 0)) #1, !dbg !1268
  %call12 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @dequeiter_type) #1, !dbg !1269
  %cmp13 = icmp slt i32 %call12, 0, !dbg !1271
  br i1 %cmp13, label %cleanup, label %if.end.15, !dbg !1272

if.end.15:                                        ; preds = %if.end.9
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1273, !tbaa !1251
  %inc16 = add i64 %2, 1, !dbg !1273
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1273, !tbaa !1251
  %call17 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i64 0, i32 0, i32 0)) #1, !dbg !1274
  %call18 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @dequereviter_type) #1, !dbg !1275
  %cmp19 = icmp slt i32 %call18, 0, !dbg !1277
  br i1 %cmp19, label %cleanup, label %if.end.21, !dbg !1278

if.end.21:                                        ; preds = %if.end.15
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1279, !tbaa !1251
  %inc22 = add i64 %3, 1, !dbg !1279
  store i64 %inc22, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1279, !tbaa !1251
  %call23 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i64 0, i32 0, i32 0)) #1, !dbg !1280
  br label %cleanup, !dbg !1281

cleanup:                                          ; preds = %if.end.15, %if.end.9, %if.end.4, %if.end, %entry, %if.end.21
  %retval.0 = phi %struct._object* [ %call, %if.end.21 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.4 ], [ null, %if.end.9 ], [ null, %if.end.15 ]
  ret %struct._object* %retval.0, !dbg !1282
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_count_elements(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %iterable = alloca %struct._object*, align 8
  %mapping = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !418, metadata !1241), !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !419, metadata !1241), !dbg !1284
  %0 = bitcast %struct._object** %iterable to i8*, !dbg !1285
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1285
  %1 = bitcast %struct._object** %mapping to i8*, !dbg !1285
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1285
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !1241), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !1241), !dbg !1287
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !1241), !dbg !1288
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !427, metadata !1241), !dbg !1289
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !428, metadata !1241), !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct._object** %iterable, i64 0, metadata !421, metadata !1241), !dbg !1291
  tail call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %mapping, %struct._object** nonnull %iterable) #1, !dbg !1293
  %tobool = icmp eq i32 %call, 0, !dbg !1293
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1295

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %iterable, i64 0, metadata !421, metadata !1241), !dbg !1291
  %2 = load %struct._object*, %struct._object** %iterable, align 8, !dbg !1296, !tbaa !1297
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %2) #1, !dbg !1298
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !1241), !dbg !1299
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1300
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1302

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromLong(i64 1) #1, !dbg !1303
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !427, metadata !1241), !dbg !1289
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1304
  br i1 %cmp5, label %do.body.135, label %if.end.7, !dbg !1306

if.end.7:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %3 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1307, !tbaa !1297
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1307
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1307, !tbaa !1308
  %call8 = call %struct._object* @_PyType_LookupId(%struct._typeobject* %4, %struct._Py_Identifier* nonnull @_count_elements.PyId_get) #1, !dbg !1309
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !429, metadata !1241), !dbg !1310
  %call9 = call %struct._object* @_PyType_LookupId(%struct._typeobject* nonnull @PyDict_Type, %struct._Py_Identifier* nonnull @_count_elements.PyId_get) #1, !dbg !1311
  call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !430, metadata !1241), !dbg !1312
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %5 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1313, !tbaa !1297
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1313
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1313, !tbaa !1308
  %call11 = call %struct._object* @_PyType_LookupId(%struct._typeobject* %6, %struct._Py_Identifier* nonnull @_count_elements.PyId___setitem__) #1, !dbg !1314
  call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !431, metadata !1241), !dbg !1315
  %call12 = call %struct._object* @_PyType_LookupId(%struct._typeobject* nonnull @PyDict_Type, %struct._Py_Identifier* nonnull @_count_elements.PyId___setitem__) #1, !dbg !1316
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !432, metadata !1241), !dbg !1317
  %cmp13 = icmp eq %struct._object* %call8, null, !dbg !1318
  br i1 %cmp13, label %if.else.63, label %land.lhs.true, !dbg !1319

land.lhs.true:                                    ; preds = %if.end.7
  %cmp14 = icmp eq %struct._object* %call8, %call9, !dbg !1320
  %cmp16 = icmp ne %struct._object* %call11, null, !dbg !1321
  %or.cond = and i1 %cmp14, %cmp16, !dbg !1322
  %cmp18 = icmp eq %struct._object* %call11, %call12, !dbg !1323
  %or.cond347 = and i1 %or.cond, %cmp18, !dbg !1322
  br i1 %or.cond347, label %while.body.preheader, label %if.else.63, !dbg !1322

while.body.preheader:                             ; preds = %land.lhs.true
  %call20.361 = call %struct._object* @PyIter_Next(%struct._object* %call1) #1, !dbg !1324
  call void @llvm.dbg.value(metadata %struct._object* %call20.361, i64 0, metadata !425, metadata !1241), !dbg !1287
  %cmp21.362 = icmp eq %struct._object* %call20.361, null, !dbg !1325
  br i1 %cmp21.362, label %do.body.135, label %if.end.23.preheader, !dbg !1327

if.end.23.preheader:                              ; preds = %while.body.preheader
  br label %if.end.23, !dbg !1292

if.end.23:                                        ; preds = %if.end.23.preheader, %while.body.backedge
  %call20363 = phi %struct._object* [ %call20, %while.body.backedge ], [ %call20.361, %if.end.23.preheader ]
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %7 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1328, !tbaa !1297
  %call24 = call %struct._object* @PyDict_GetItem(%struct._object* %7, %struct._object* %call20363) #1, !dbg !1329
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !423, metadata !1241), !dbg !1330
  %cmp25 = icmp eq %struct._object* %call24, null, !dbg !1331
  br i1 %cmp25, label %if.then.26, label %if.else, !dbg !1332

if.then.26:                                       ; preds = %if.end.23
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %8 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1333, !tbaa !1297
  %call27 = call i32 @PyDict_SetItem(%struct._object* %8, %struct._object* %call20363, %struct._object* %call4) #1, !dbg !1336
  %cmp28 = icmp eq i32 %call27, -1, !dbg !1337
  br i1 %cmp28, label %do.body.135.loopexit387, label %do.body.51, !dbg !1338

if.else:                                          ; preds = %if.end.23
  %call31 = call %struct._object* @PyNumber_Add(%struct._object* %call24, %struct._object* %call4) #1, !dbg !1339
  call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !424, metadata !1241), !dbg !1286
  %cmp32 = icmp eq %struct._object* %call31, null, !dbg !1340
  br i1 %cmp32, label %do.body.135.loopexit387, label %if.end.34, !dbg !1342

if.end.34:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %9 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1343, !tbaa !1297
  %call35 = call i32 @PyDict_SetItem(%struct._object* %9, %struct._object* %call20363, %struct._object* %call31) #1, !dbg !1345
  %cmp36 = icmp eq i32 %call35, -1, !dbg !1346
  br i1 %cmp36, label %do.body.135.loopexit387, label %if.then.40, !dbg !1347

if.then.40:                                       ; preds = %if.end.34
  call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !433, metadata !1241), !dbg !1348
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !1241), !dbg !1286
  call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !440, metadata !1241), !dbg !1350
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 0, !dbg !1352
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1352, !tbaa !1251
  %dec = add i64 %10, -1, !dbg !1352
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1352, !tbaa !1251
  %cmp42 = icmp eq i64 %dec, 0, !dbg !1352
  br i1 %cmp42, label %if.else.44, label %do.body.51, !dbg !1354

if.else.44:                                       ; preds = %if.then.40
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 1, !dbg !1355
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1355, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1355
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1355, !tbaa !1357
  call void %12(%struct._object* %call31) #1, !dbg !1355
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.40, %if.else.44, %if.then.26
  call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !444, metadata !1241), !dbg !1358
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %call20363, i64 0, i32 0, !dbg !1360
  %13 = load i64, i64* %ob_refcnt53, align 8, !dbg !1360, !tbaa !1251
  %dec54 = add i64 %13, -1, !dbg !1360
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !1360, !tbaa !1251
  %cmp55 = icmp eq i64 %dec54, 0, !dbg !1360
  br i1 %cmp55, label %if.else.57, label %while.body.backedge, !dbg !1362

while.body.backedge:                              ; preds = %do.body.51, %if.else.57
  %call20 = call %struct._object* @PyIter_Next(%struct._object* %call1) #1, !dbg !1324
  call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !425, metadata !1241), !dbg !1287
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !1325
  br i1 %cmp21, label %do.body.135.loopexit387, label %if.end.23, !dbg !1327

if.else.57:                                       ; preds = %do.body.51
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %call20363, i64 0, i32 1, !dbg !1363
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !1363, !tbaa !1308
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1363
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !1363, !tbaa !1357
  call void %15(%struct._object* %call20363) #1, !dbg !1363
  br label %while.body.backedge

if.else.63:                                       ; preds = %if.end.7, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %16 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1365, !tbaa !1297
  %call64 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %16, %struct._Py_Identifier* nonnull @_count_elements.PyId_get) #1, !dbg !1366
  call void @llvm.dbg.value(metadata %struct._object* %call64, i64 0, metadata !428, metadata !1241), !dbg !1290
  %cmp65 = icmp eq %struct._object* %call64, null, !dbg !1367
  br i1 %cmp65, label %do.body.135, label %if.end.67, !dbg !1369

if.end.67:                                        ; preds = %if.else.63
  %call68 = call %struct._object* @PyLong_FromLong(i64 0) #1, !dbg !1370
  call void @llvm.dbg.value(metadata %struct._object* %call68, i64 0, metadata !426, metadata !1241), !dbg !1288
  %cmp69 = icmp eq %struct._object* %call68, null, !dbg !1371
  br i1 %cmp69, label %do.body.135, label %while.body.73.preheader, !dbg !1373

while.body.73.preheader:                          ; preds = %if.end.67
  %call74.351 = call %struct._object* @PyIter_Next(%struct._object* %call1) #1, !dbg !1374
  call void @llvm.dbg.value(metadata %struct._object* %call74.351, i64 0, metadata !425, metadata !1241), !dbg !1287
  %cmp75.352 = icmp eq %struct._object* %call74.351, null, !dbg !1375
  br i1 %cmp75.352, label %do.body.135, label %if.end.77.preheader, !dbg !1377

if.end.77.preheader:                              ; preds = %while.body.73.preheader
  br label %if.end.77, !dbg !1378

if.end.77:                                        ; preds = %if.end.77.preheader, %while.body.73.backedge
  %call74353 = phi %struct._object* [ %call74, %while.body.73.backedge ], [ %call74.351, %if.end.77.preheader ]
  %call78 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %call64, %struct._object* %call74353, %struct._object* %call68, i8* null) #1, !dbg !1378
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !423, metadata !1241), !dbg !1330
  %cmp79 = icmp eq %struct._object* %call78, null, !dbg !1379
  br i1 %cmp79, label %do.body.135.loopexit, label %if.end.81, !dbg !1381

if.end.81:                                        ; preds = %if.end.77
  %call82 = call %struct._object* @PyNumber_Add(%struct._object* %call78, %struct._object* %call4) #1, !dbg !1382
  call void @llvm.dbg.value(metadata %struct._object* %call82, i64 0, metadata !424, metadata !1241), !dbg !1286
  call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !446, metadata !1241), !dbg !1383
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 0, i32 0, !dbg !1385
  %17 = load i64, i64* %ob_refcnt85, align 8, !dbg !1385, !tbaa !1251
  %dec86 = add i64 %17, -1, !dbg !1385
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !1385, !tbaa !1251
  %cmp87 = icmp eq i64 %dec86, 0, !dbg !1385
  br i1 %cmp87, label %if.else.89, label %if.end.92, !dbg !1387

if.else.89:                                       ; preds = %if.end.81
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %call78, i64 0, i32 1, !dbg !1388
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !1388, !tbaa !1308
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1388
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !1388, !tbaa !1357
  call void %19(%struct._object* %call78) #1, !dbg !1388
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.81, %if.else.89
  %cmp95 = icmp eq %struct._object* %call82, null, !dbg !1390
  br i1 %cmp95, label %do.body.135.loopexit, label %if.end.97, !dbg !1392

if.end.97:                                        ; preds = %if.end.92
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !422, metadata !1241), !dbg !1292
  %20 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !1393, !tbaa !1297
  %call98 = call i32 @PyObject_SetItem(%struct._object* %20, %struct._object* %call74353, %struct._object* %call82) #1, !dbg !1395
  %cmp99 = icmp eq i32 %call98, -1, !dbg !1396
  br i1 %cmp99, label %do.body.135.loopexit, label %if.then.105, !dbg !1397

if.then.105:                                      ; preds = %if.end.97
  call void @llvm.dbg.value(metadata %struct._object* %call82, i64 0, metadata !450, metadata !1241), !dbg !1398
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !1241), !dbg !1286
  call void @llvm.dbg.value(metadata %struct._object* %call82, i64 0, metadata !452, metadata !1241), !dbg !1400
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %call82, i64 0, i32 0, !dbg !1402
  %21 = load i64, i64* %ob_refcnt108, align 8, !dbg !1402, !tbaa !1251
  %dec109 = add i64 %21, -1, !dbg !1402
  store i64 %dec109, i64* %ob_refcnt108, align 8, !dbg !1402, !tbaa !1251
  %cmp110 = icmp eq i64 %dec109, 0, !dbg !1402
  br i1 %cmp110, label %if.else.112, label %if.end.118, !dbg !1404

if.else.112:                                      ; preds = %if.then.105
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %call82, i64 0, i32 1, !dbg !1405
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8, !dbg !1405, !tbaa !1308
  %tp_dealloc114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1405
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc114, align 8, !dbg !1405, !tbaa !1357
  call void %23(%struct._object* %call82) #1, !dbg !1405
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.112, %if.then.105
  call void @llvm.dbg.value(metadata %struct._object* %call74, i64 0, metadata !456, metadata !1241), !dbg !1407
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %call74353, i64 0, i32 0, !dbg !1409
  %24 = load i64, i64* %ob_refcnt123, align 8, !dbg !1409, !tbaa !1251
  %dec124 = add i64 %24, -1, !dbg !1409
  store i64 %dec124, i64* %ob_refcnt123, align 8, !dbg !1409, !tbaa !1251
  %cmp125 = icmp eq i64 %dec124, 0, !dbg !1409
  br i1 %cmp125, label %if.else.127, label %while.body.73.backedge, !dbg !1411

while.body.73.backedge:                           ; preds = %if.end.118, %if.else.127
  %call74 = call %struct._object* @PyIter_Next(%struct._object* %call1) #1, !dbg !1374
  call void @llvm.dbg.value(metadata %struct._object* %call74, i64 0, metadata !425, metadata !1241), !dbg !1287
  %cmp75 = icmp eq %struct._object* %call74, null, !dbg !1375
  br i1 %cmp75, label %do.body.135.loopexit, label %if.end.77, !dbg !1377

if.else.127:                                      ; preds = %if.end.118
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %call74353, i64 0, i32 1, !dbg !1412
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8, !dbg !1412, !tbaa !1308
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1412
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8, !dbg !1412, !tbaa !1357
  call void %26(%struct._object* %call74353) #1, !dbg !1412
  br label %while.body.73.backedge

do.body.135.loopexit:                             ; preds = %while.body.73.backedge, %if.end.77, %if.end.92, %if.end.97
  %key.0.ph = phi %struct._object* [ %call74353, %if.end.97 ], [ %call74353, %if.end.92 ], [ %call74353, %if.end.77 ], [ null, %while.body.73.backedge ]
  %newval.5.ph = phi %struct._object* [ %call82, %if.end.97 ], [ null, %if.end.92 ], [ null, %if.end.77 ], [ null, %while.body.73.backedge ]
  br label %do.body.135, !dbg !1414

do.body.135.loopexit387:                          ; preds = %while.body.backedge, %if.then.26, %if.else, %if.end.34
  %key.0.ph388 = phi %struct._object* [ %call20363, %if.end.34 ], [ %call20363, %if.else ], [ %call20363, %if.then.26 ], [ null, %while.body.backedge ]
  %newval.5.ph389 = phi %struct._object* [ %call31, %if.end.34 ], [ null, %if.else ], [ null, %if.then.26 ], [ null, %while.body.backedge ]
  br label %do.body.135, !dbg !1414

do.body.135:                                      ; preds = %do.body.135.loopexit387, %do.body.135.loopexit, %while.body.preheader, %while.body.73.preheader, %if.end.3, %if.else.63, %if.end.67
  %bound_get.0 = phi %struct._object* [ null, %if.end.3 ], [ null, %if.else.63 ], [ %call64, %if.end.67 ], [ %call64, %while.body.73.preheader ], [ null, %while.body.preheader ], [ %call64, %do.body.135.loopexit ], [ null, %do.body.135.loopexit387 ]
  %zero.0 = phi %struct._object* [ null, %if.end.3 ], [ null, %if.else.63 ], [ null, %if.end.67 ], [ %call68, %while.body.73.preheader ], [ null, %while.body.preheader ], [ %call68, %do.body.135.loopexit ], [ null, %do.body.135.loopexit387 ]
  %key.0 = phi %struct._object* [ null, %if.end.3 ], [ null, %if.else.63 ], [ null, %if.end.67 ], [ null, %while.body.73.preheader ], [ null, %while.body.preheader ], [ %key.0.ph, %do.body.135.loopexit ], [ %key.0.ph388, %do.body.135.loopexit387 ]
  %newval.5 = phi %struct._object* [ null, %if.end.3 ], [ null, %if.else.63 ], [ null, %if.end.67 ], [ null, %while.body.73.preheader ], [ null, %while.body.preheader ], [ %newval.5.ph, %do.body.135.loopexit ], [ %newval.5.ph389, %do.body.135.loopexit387 ]
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !458, metadata !1241), !dbg !1414
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1416
  %27 = load i64, i64* %ob_refcnt137, align 8, !dbg !1416, !tbaa !1251
  %dec138 = add i64 %27, -1, !dbg !1416
  store i64 %dec138, i64* %ob_refcnt137, align 8, !dbg !1416, !tbaa !1251
  %cmp139 = icmp eq i64 %dec138, 0, !dbg !1416
  br i1 %cmp139, label %if.else.141, label %if.end.144, !dbg !1418

if.else.141:                                      ; preds = %do.body.135
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1419
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8, !dbg !1419, !tbaa !1308
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1419
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8, !dbg !1419, !tbaa !1357
  call void %29(%struct._object* %call1) #1, !dbg !1419
  br label %if.end.144

if.end.144:                                       ; preds = %do.body.135, %if.else.141
  call void @llvm.dbg.value(metadata %struct._object* %key.0, i64 0, metadata !460, metadata !1241), !dbg !1421
  %cmp148 = icmp eq %struct._object* %key.0, null, !dbg !1423
  br i1 %cmp148, label %if.end.162, label %do.body.150, !dbg !1424

do.body.150:                                      ; preds = %if.end.144
  call void @llvm.dbg.value(metadata %struct._object* %key.0, i64 0, metadata !462, metadata !1241), !dbg !1425
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %key.0, i64 0, i32 0, !dbg !1427
  %30 = load i64, i64* %ob_refcnt152, align 8, !dbg !1427, !tbaa !1251
  %dec153 = add i64 %30, -1, !dbg !1427
  store i64 %dec153, i64* %ob_refcnt152, align 8, !dbg !1427, !tbaa !1251
  %cmp154 = icmp eq i64 %dec153, 0, !dbg !1427
  br i1 %cmp154, label %if.else.156, label %if.end.162, !dbg !1429

if.else.156:                                      ; preds = %do.body.150
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %key.0, i64 0, i32 1, !dbg !1430
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8, !dbg !1430, !tbaa !1308
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1430
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8, !dbg !1430, !tbaa !1357
  call void %32(%struct._object* %key.0) #1, !dbg !1430
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.156, %do.body.150, %if.end.144
  call void @llvm.dbg.value(metadata %struct._object* %newval.5, i64 0, metadata !465, metadata !1241), !dbg !1432
  %cmp167 = icmp eq %struct._object* %newval.5, null, !dbg !1434
  br i1 %cmp167, label %if.end.181, label %do.body.169, !dbg !1435

do.body.169:                                      ; preds = %if.end.162
  call void @llvm.dbg.value(metadata %struct._object* %newval.5, i64 0, metadata !467, metadata !1241), !dbg !1436
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %newval.5, i64 0, i32 0, !dbg !1438
  %33 = load i64, i64* %ob_refcnt171, align 8, !dbg !1438, !tbaa !1251
  %dec172 = add i64 %33, -1, !dbg !1438
  store i64 %dec172, i64* %ob_refcnt171, align 8, !dbg !1438, !tbaa !1251
  %cmp173 = icmp eq i64 %dec172, 0, !dbg !1438
  br i1 %cmp173, label %if.else.175, label %if.end.181, !dbg !1440

if.else.175:                                      ; preds = %do.body.169
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %newval.5, i64 0, i32 1, !dbg !1441
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8, !dbg !1441, !tbaa !1308
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !1441
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8, !dbg !1441, !tbaa !1357
  call void %35(%struct._object* %newval.5) #1, !dbg !1441
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.175, %do.body.169, %if.end.162
  call void @llvm.dbg.value(metadata %struct._object* %bound_get.0, i64 0, metadata !470, metadata !1241), !dbg !1443
  %cmp186 = icmp eq %struct._object* %bound_get.0, null, !dbg !1445
  br i1 %cmp186, label %if.end.200, label %do.body.188, !dbg !1446

do.body.188:                                      ; preds = %if.end.181
  call void @llvm.dbg.value(metadata %struct._object* %bound_get.0, i64 0, metadata !472, metadata !1241), !dbg !1447
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %bound_get.0, i64 0, i32 0, !dbg !1449
  %36 = load i64, i64* %ob_refcnt190, align 8, !dbg !1449, !tbaa !1251
  %dec191 = add i64 %36, -1, !dbg !1449
  store i64 %dec191, i64* %ob_refcnt190, align 8, !dbg !1449, !tbaa !1251
  %cmp192 = icmp eq i64 %dec191, 0, !dbg !1449
  br i1 %cmp192, label %if.else.194, label %if.end.200, !dbg !1451

if.else.194:                                      ; preds = %do.body.188
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %bound_get.0, i64 0, i32 1, !dbg !1452
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8, !dbg !1452, !tbaa !1308
  %tp_dealloc196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !1452
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc196, align 8, !dbg !1452, !tbaa !1357
  call void %38(%struct._object* %bound_get.0) #1, !dbg !1452
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.194, %do.body.188, %if.end.181
  call void @llvm.dbg.value(metadata %struct._object* %zero.0, i64 0, metadata !475, metadata !1241), !dbg !1454
  %cmp205 = icmp eq %struct._object* %zero.0, null, !dbg !1456
  br i1 %cmp205, label %if.end.219, label %do.body.207, !dbg !1457

do.body.207:                                      ; preds = %if.end.200
  call void @llvm.dbg.value(metadata %struct._object* %zero.0, i64 0, metadata !477, metadata !1241), !dbg !1458
  %ob_refcnt209 = getelementptr inbounds %struct._object, %struct._object* %zero.0, i64 0, i32 0, !dbg !1460
  %39 = load i64, i64* %ob_refcnt209, align 8, !dbg !1460, !tbaa !1251
  %dec210 = add i64 %39, -1, !dbg !1460
  store i64 %dec210, i64* %ob_refcnt209, align 8, !dbg !1460, !tbaa !1251
  %cmp211 = icmp eq i64 %dec210, 0, !dbg !1460
  br i1 %cmp211, label %if.else.213, label %if.end.219, !dbg !1462

if.else.213:                                      ; preds = %do.body.207
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %zero.0, i64 0, i32 1, !dbg !1463
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8, !dbg !1463, !tbaa !1308
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !1463
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8, !dbg !1463, !tbaa !1357
  call void %41(%struct._object* %zero.0) #1, !dbg !1463
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.213, %do.body.207, %if.end.200
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !480, metadata !1241), !dbg !1465
  br i1 %cmp5, label %if.end.238, label %do.body.226, !dbg !1467

do.body.226:                                      ; preds = %if.end.219
  call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !482, metadata !1241), !dbg !1468
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1470
  %42 = load i64, i64* %ob_refcnt228, align 8, !dbg !1470, !tbaa !1251
  %dec229 = add i64 %42, -1, !dbg !1470
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !1470, !tbaa !1251
  %cmp230 = icmp eq i64 %dec229, 0, !dbg !1470
  br i1 %cmp230, label %if.else.232, label %if.end.238, !dbg !1472

if.else.232:                                      ; preds = %do.body.226
  %ob_type233 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1473
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type233, align 8, !dbg !1473, !tbaa !1308
  %tp_dealloc234 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !1473
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc234, align 8, !dbg !1473, !tbaa !1357
  call void %44(%struct._object* %call4) #1, !dbg !1473
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.232, %do.body.226, %if.end.219
  %call241 = call %struct._object* @PyErr_Occurred() #1, !dbg !1475
  %tobool242 = icmp eq %struct._object* %call241, null, !dbg !1475
  br i1 %tobool242, label %if.end.244, label %cleanup, !dbg !1477

if.end.244:                                       ; preds = %if.end.238
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1478, !tbaa !1251
  %inc = add i64 %45, 1, !dbg !1478
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1478, !tbaa !1251
  br label %cleanup, !dbg !1478

cleanup:                                          ; preds = %if.end.238, %if.end, %entry, %if.end.244
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.244 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.238 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1479
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1479
  ret %struct._object* %retval.0, !dbg !1479
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @_PyType_LookupId(%struct._typeobject*, %struct._Py_Identifier*) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal void @deque_dealloc(%struct.dequeobject* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !489, metadata !1241), !dbg !1480
  %0 = bitcast %struct.dequeobject* %deque to i8*, !dbg !1481
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !1482
  %weakreflist = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 7, !dbg !1483
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1483, !tbaa !1485
  %cmp = icmp eq %struct._object* %1, null, !dbg !1487
  br i1 %cmp, label %if.end, label %if.then, !dbg !1488

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, !dbg !1489
  tail call void @PyObject_ClearWeakRefs(%struct._object* %2) #1, !dbg !1490
  br label %if.end, !dbg !1490

if.end:                                           ; preds = %entry, %if.then
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !1491
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !1491, !tbaa !1493
  %cmp1 = icmp eq %struct.BLOCK* %3, null, !dbg !1494
  br i1 %cmp1, label %if.end.4, label %if.then.2, !dbg !1495

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !653, metadata !1241) #1, !dbg !1496
  %ob_size.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !1499
  %4 = load i64, i64* %ob_size.i, align 8, !dbg !1499, !tbaa !1502
  %tobool.6.i = icmp eq i64 %4, 0, !dbg !1503
  br i1 %tobool.6.i, label %deque_clear.exit, label %if.end.i.lr.ph.i, !dbg !1503

if.end.i.lr.ph.i:                                 ; preds = %if.then.2
  %rightindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !1504
  %rightblock.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !1506
  %leftindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !1507
  %5 = bitcast %struct.BLOCK** %rightblock.i.i to i64*, !dbg !1512
  %6 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !1504
  %7 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !1514
  %8 = bitcast i64* %leftindex.i.i to <2 x i64>*, !dbg !1515
  br label %if.end.i.i, !dbg !1503

if.end.i.i:                                       ; preds = %while.cond.backedge.i, %if.end.i.lr.ph.i
  %9 = phi i64 [ %4, %if.end.i.lr.ph.i ], [ %20, %while.cond.backedge.i ], !dbg !1516
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !1517
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !1518
  %10 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i.i, align 8, !dbg !1519, !tbaa !1520
  %11 = load <2 x i64>, <2 x i64>* %6, align 8, !dbg !1504, !tbaa !1521
  %12 = extractelement <2 x i64> %11, i32 0, !dbg !1522
  %arrayidx.i.i = getelementptr %struct.BLOCK, %struct.BLOCK* %10, i64 0, i32 1, i64 %12, !dbg !1522
  %13 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !1522, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !662, metadata !1241) #1, !dbg !1523
  %dec3.i.i = add i64 %9, -1, !dbg !1524
  store i64 %dec3.i.i, i64* %ob_size.i, align 8, !dbg !1525, !tbaa !1502
  %14 = add <2 x i64> %11, <i64 -1, i64 1>, !dbg !1514
  store <2 x i64> %14, <2 x i64>* %7, align 8, !dbg !1514, !tbaa !1521
  %cmp5.i.i = icmp eq i64 %12, 0, !dbg !1526
  br i1 %cmp5.i.i, label %if.then.6.i.i, label %deque_pop.exit.i, !dbg !1527

if.then.6.i.i:                                    ; preds = %if.end.i.i
  %cmp8.i.i = icmp eq i64 %dec3.i.i, 0, !dbg !1528
  br i1 %cmp8.i.i, label %if.then.9.i.i, label %if.else.i.i, !dbg !1529

if.then.9.i.i:                                    ; preds = %if.then.6.i.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %8, align 8, !dbg !1515, !tbaa !1521
  br label %deque_pop.exit.i, !dbg !1530

if.else.i.i:                                      ; preds = %if.then.6.i.i
  %15 = bitcast %struct.BLOCK* %10 to i64*, !dbg !1531
  %16 = load i64, i64* %15, align 8, !dbg !1531, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %10, i64 0, metadata !494, metadata !1241) #1, !dbg !1534
  %17 = load i64, i64* @numfreeblocks, align 8, !dbg !1536, !tbaa !1521
  %cmp.i.i.i = icmp slt i64 %17, 10, !dbg !1539
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i, !dbg !1540

if.then.i.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %17, !dbg !1541
  store %struct.BLOCK* %10, %struct.BLOCK** %arrayidx.i.i.i, align 8, !dbg !1542, !tbaa !1297
  %inc.i.i.i = add i64 %17, 1, !dbg !1536
  store i64 %inc.i.i.i, i64* @numfreeblocks, align 8, !dbg !1536, !tbaa !1521
  br label %freeblock.exit.i.i, !dbg !1543

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %18 = bitcast %struct.BLOCK* %10 to i8*, !dbg !1544
  tail call void @PyMem_Free(i8* %18) #1, !dbg !1546
  br label %freeblock.exit.i.i, !dbg !1547

freeblock.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then.i.i.i
  store i64 %16, i64* %5, align 8, !dbg !1512, !tbaa !1520
  store i64 61, i64* %rightindex.i.i, align 8, !dbg !1548, !tbaa !1549
  br label %deque_pop.exit.i, !dbg !1550

deque_pop.exit.i:                                 ; preds = %freeblock.exit.i.i, %if.then.9.i.i, %if.end.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !654, metadata !1241) #1, !dbg !1551
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !655, metadata !1241) #1, !dbg !1552
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1554
  %19 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1554, !tbaa !1251
  %dec.i = add i64 %19, -1, !dbg !1554
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1554, !tbaa !1251
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !1554
  br i1 %cmp.i, label %if.else.i, label %while.cond.backedge.i, !dbg !1556

while.cond.backedge.i:                            ; preds = %if.else.i, %deque_pop.exit.i
  %20 = load i64, i64* %ob_size.i, align 8, !dbg !1499, !tbaa !1502
  %tobool.i = icmp eq i64 %20, 0, !dbg !1503
  br i1 %tobool.i, label %deque_clear.exit.loopexit, label %if.end.i.i, !dbg !1503

if.else.i:                                        ; preds = %deque_pop.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !1557
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1557, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1557
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1557, !tbaa !1357
  tail call void %22(%struct._object* %13) #1, !dbg !1557
  br label %while.cond.backedge.i, !dbg !1516

deque_clear.exit.loopexit:                        ; preds = %while.cond.backedge.i
  %.pre = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !1559, !tbaa !1493
  br label %deque_clear.exit, !dbg !1559

deque_clear.exit:                                 ; preds = %deque_clear.exit.loopexit, %if.then.2
  %23 = phi %struct.BLOCK* [ %.pre, %deque_clear.exit.loopexit ], [ %3, %if.then.2 ], !dbg !1559
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %23, i64 0, metadata !494, metadata !1241) #1, !dbg !1560
  %24 = load i64, i64* @numfreeblocks, align 8, !dbg !1562, !tbaa !1521
  %cmp.i.15 = icmp slt i64 %24, 10, !dbg !1563
  br i1 %cmp.i.15, label %if.then.i, label %if.else.i.16, !dbg !1564

if.then.i:                                        ; preds = %deque_clear.exit
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %24, !dbg !1565
  store %struct.BLOCK* %23, %struct.BLOCK** %arrayidx.i, align 8, !dbg !1566, !tbaa !1297
  %inc.i = add i64 %24, 1, !dbg !1562
  store i64 %inc.i, i64* @numfreeblocks, align 8, !dbg !1562, !tbaa !1521
  br label %if.end.4, !dbg !1567

if.else.i.16:                                     ; preds = %deque_clear.exit
  %25 = bitcast %struct.BLOCK* %23 to i8*, !dbg !1568
  tail call void @PyMem_Free(i8* %25) #1, !dbg !1569
  br label %if.end.4, !dbg !1570

if.end.4:                                         ; preds = %if.else.i.16, %if.then.i, %if.end
  %ob_type = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, i32 1, !dbg !1571
  %26 = bitcast %struct.BLOCK** %leftblock to i8*, !dbg !1571
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 16, i32 8, i1 false), !dbg !1572
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1571, !tbaa !1308
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 38, !dbg !1573
  %28 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1573, !tbaa !1574
  tail call void %28(i8* %0) #1, !dbg !1571
  ret void, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_repr(%struct._object* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %deque, i64 0, metadata !497, metadata !1241), !dbg !1576
  %call = tail call i32 @Py_ReprEnter(%struct._object* %deque) #1, !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !500, metadata !1241), !dbg !1578
  %cmp = icmp eq i32 %call, 0, !dbg !1579
  br i1 %cmp, label %if.end.4, label %if.then, !dbg !1581

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %call, 0, !dbg !1582
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !1585

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #1, !dbg !1586
  br label %cleanup, !dbg !1587

if.end.4:                                         ; preds = %entry
  %call5 = tail call %struct._object* @PySequence_List(%struct._object* %deque) #1, !dbg !1588
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !498, metadata !1241), !dbg !1589
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1590
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1592

if.then.7:                                        ; preds = %if.end.4
  tail call void @Py_ReprLeave(%struct._object* %deque) #1, !dbg !1593
  br label %cleanup, !dbg !1595

if.end.8:                                         ; preds = %if.end.4
  %0 = getelementptr inbounds %struct._object, %struct._object* %deque, i64 4, i32 0, !dbg !1596
  %1 = load i64, i64* %0, align 8, !dbg !1596, !tbaa !1598
  %cmp9 = icmp eq i64 %1, -1, !dbg !1599
  br i1 %cmp9, label %if.else, label %if.then.10, !dbg !1600

if.then.10:                                       ; preds = %if.end.8
  %call12 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), %struct._object* %call5, i64 %1) #1, !dbg !1601
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !499, metadata !1241), !dbg !1602
  br label %do.body, !dbg !1603

if.else:                                          ; preds = %if.end.8
  %call13 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct._object* %call5) #1, !dbg !1604
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !499, metadata !1241), !dbg !1602
  br label %do.body

do.body:                                          ; preds = %if.then.10, %if.else
  %result.0 = phi %struct._object* [ %call12, %if.then.10 ], [ %call13, %if.else ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !501, metadata !1241), !dbg !1605
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1607
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1607, !tbaa !1251
  %dec = add i64 %2, -1, !dbg !1607
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1607, !tbaa !1251
  %cmp15 = icmp eq i64 %dec, 0, !dbg !1607
  br i1 %cmp15, label %if.else.17, label %if.end.18, !dbg !1609

if.else.17:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1610
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1610, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1610
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1610, !tbaa !1357
  tail call void %4(%struct._object* %call5) #1, !dbg !1610
  br label %if.end.18

if.end.18:                                        ; preds = %do.body, %if.else.17
  tail call void @Py_ReprLeave(%struct._object* %deque) #1, !dbg !1612
  br label %cleanup, !dbg !1613

cleanup:                                          ; preds = %if.then, %if.end.18, %if.then.7, %if.end
  %retval.0 = phi %struct._object* [ %call3, %if.end ], [ null, %if.then.7 ], [ %result.0, %if.end.18 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1614
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #3

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @deque_traverse(%struct.dequeobject* nocapture readonly %deque, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !627, metadata !1241), !dbg !1615
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !628, metadata !1241), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !629, metadata !1241), !dbg !1617
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !1618
  %0 = load i64, i64* %leftindex, align 8, !dbg !1618, !tbaa !1619
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !633, metadata !1241), !dbg !1620
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !1621
  %b.0.75 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !1621
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !1622
  %1 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !1622, !tbaa !1520
  %cmp.76 = icmp eq %struct.BLOCK* %b.0.75, %1, !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !632, metadata !1241), !dbg !1624
  br i1 %cmp.76, label %for.cond.9.preheader, label %for.cond.1.preheader.preheader, !dbg !1625

for.cond.1.preheader.preheader:                   ; preds = %entry
  br label %for.cond.1.preheader, !dbg !1626

for.cond.1.preheader:                             ; preds = %for.cond.1.preheader.preheader, %for.end
  %b.079 = phi %struct.BLOCK* [ %b.0, %for.end ], [ %b.0.75, %for.cond.1.preheader.preheader ]
  %indexlo.077 = phi i64 [ 0, %for.end ], [ %0, %for.cond.1.preheader.preheader ]
  %cmp2.71 = icmp slt i64 %indexlo.077, 62, !dbg !1626
  br i1 %cmp2.71, label %for.body.3.preheader, label %for.end, !dbg !1627

for.body.3.preheader:                             ; preds = %for.cond.1.preheader
  br label %for.body.3, !dbg !1628

for.cond.9.preheader.loopexit:                    ; preds = %for.end
  %b.0.lcssa91 = phi %struct.BLOCK* [ %b.0, %for.end ]
  br label %for.cond.9.preheader, !dbg !1629

for.cond.9.preheader:                             ; preds = %for.cond.9.preheader.loopexit, %entry
  %b.0.lcssa = phi %struct.BLOCK* [ %b.0.75, %entry ], [ %b.0.lcssa91, %for.cond.9.preheader.loopexit ]
  %indexlo.0.lcssa = phi i64 [ %0, %entry ], [ 0, %for.cond.9.preheader.loopexit ]
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !1629
  %2 = load i64, i64* %rightindex, align 8, !dbg !1629, !tbaa !1549
  %cmp10.67 = icmp sgt i64 %indexlo.0.lcssa, %2, !dbg !1630
  br i1 %cmp10.67, label %cleanup.31, label %for.body.11.preheader, !dbg !1631

for.body.11.preheader:                            ; preds = %for.cond.9.preheader
  br label %for.body.11, !dbg !1632

for.body.3:                                       ; preds = %for.body.3.preheader, %for.inc
  %index.072 = phi i64 [ %inc, %for.inc ], [ %indexlo.077, %for.body.3.preheader ]
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %b.079, i64 0, i32 1, i64 %index.072, !dbg !1628
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1628, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !631, metadata !1241), !dbg !1633
  %tobool = icmp eq %struct._object* %3, null, !dbg !1634
  br i1 %tobool, label %for.inc, label %if.then, !dbg !1636

if.then:                                          ; preds = %for.body.3
  %call = tail call i32 %visit(%struct._object* %3, i8* %arg) #1, !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !634, metadata !1241), !dbg !1637
  %tobool4 = icmp eq i32 %call, 0, !dbg !1639
  br i1 %tobool4, label %for.inc, label %cleanup.31.loopexit89

for.inc:                                          ; preds = %for.body.3, %if.then
  %inc = add nsw i64 %index.072, 1, !dbg !1641
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !632, metadata !1241), !dbg !1624
  %cmp2 = icmp slt i64 %inc, 62, !dbg !1626
  br i1 %cmp2, label %for.body.3, label %for.end.loopexit, !dbg !1627

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !1620

for.end:                                          ; preds = %for.end.loopexit, %for.cond.1.preheader
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !633, metadata !1241), !dbg !1620
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.079, i64 0, i32 2, !dbg !1642
  %b.0 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8, !dbg !1621
  %4 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !1622, !tbaa !1520
  %cmp = icmp eq %struct.BLOCK* %b.0, %4, !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !632, metadata !1241), !dbg !1624
  br i1 %cmp, label %for.cond.9.preheader.loopexit, label %for.cond.1.preheader, !dbg !1625

for.body.11:                                      ; preds = %for.body.11.preheader, %for.inc.28
  %5 = phi i64 [ %7, %for.inc.28 ], [ %2, %for.body.11.preheader ]
  %index.168 = phi i64 [ %inc29, %for.inc.28 ], [ %indexlo.0.lcssa, %for.body.11.preheader ]
  %arrayidx13 = getelementptr %struct.BLOCK, %struct.BLOCK* %b.0.lcssa, i64 0, i32 1, i64 %index.168, !dbg !1632
  %6 = load %struct._object*, %struct._object** %arrayidx13, align 8, !dbg !1632, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !631, metadata !1241), !dbg !1633
  %tobool15 = icmp eq %struct._object* %6, null, !dbg !1643
  br i1 %tobool15, label %for.inc.28, label %if.then.16, !dbg !1645

if.then.16:                                       ; preds = %for.body.11
  %call18 = tail call i32 %visit(%struct._object* %6, i8* %arg) #1, !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 %call18, i64 0, metadata !644, metadata !1241), !dbg !1646
  %tobool19 = icmp eq i32 %call18, 0, !dbg !1648
  br i1 %tobool19, label %if.then.16.for.inc.28_crit_edge, label %cleanup.31.loopexit

if.then.16.for.inc.28_crit_edge:                  ; preds = %if.then.16
  %.pre = load i64, i64* %rightindex, align 8, !dbg !1629, !tbaa !1549
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.then.16.for.inc.28_crit_edge, %for.body.11
  %7 = phi i64 [ %.pre, %if.then.16.for.inc.28_crit_edge ], [ %5, %for.body.11 ], !dbg !1629
  %inc29 = add i64 %index.168, 1, !dbg !1650
  tail call void @llvm.dbg.value(metadata i64 %inc29, i64 0, metadata !632, metadata !1241), !dbg !1624
  %cmp10 = icmp sgt i64 %inc29, %7, !dbg !1630
  br i1 %cmp10, label %cleanup.31.loopexit, label %for.body.11, !dbg !1631

cleanup.31.loopexit:                              ; preds = %for.inc.28, %if.then.16
  %retval.7.ph = phi i32 [ 0, %for.inc.28 ], [ %call18, %if.then.16 ]
  br label %cleanup.31, !dbg !1651

cleanup.31.loopexit89:                            ; preds = %if.then
  %call.lcssa = phi i32 [ %call, %if.then ]
  br label %cleanup.31, !dbg !1651

cleanup.31:                                       ; preds = %cleanup.31.loopexit89, %cleanup.31.loopexit, %for.cond.9.preheader
  %retval.7 = phi i32 [ 0, %for.cond.9.preheader ], [ %retval.7.ph, %cleanup.31.loopexit ], [ %call.lcssa, %cleanup.31.loopexit89 ]
  ret i32 %retval.7, !dbg !1651
}

; Function Attrs: nounwind uwtable
define internal void @deque_clear(%struct.dequeobject* nocapture %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !653, metadata !1241), !dbg !1652
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !1653
  %0 = load i64, i64* %ob_size, align 8, !dbg !1653, !tbaa !1502
  %tobool.6 = icmp eq i64 %0, 0, !dbg !1654
  br i1 %tobool.6, label %while.end, label %if.end.i.lr.ph, !dbg !1654

if.end.i.lr.ph:                                   ; preds = %entry
  %rightindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !1655
  %rightblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !1657
  %leftindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !1658
  %1 = bitcast %struct.BLOCK** %rightblock.i to i64*, !dbg !1659
  %2 = bitcast i64* %rightindex.i to <2 x i64>*, !dbg !1655
  %3 = bitcast i64* %rightindex.i to <2 x i64>*, !dbg !1660
  %4 = bitcast i64* %leftindex.i to <2 x i64>*, !dbg !1661
  br label %if.end.i, !dbg !1654

if.end.i:                                         ; preds = %if.end.i.lr.ph, %while.cond.backedge
  %5 = phi i64 [ %0, %if.end.i.lr.ph ], [ %16, %while.cond.backedge ]
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !1662
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !1663
  %6 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i, align 8, !dbg !1664, !tbaa !1520
  %7 = load <2 x i64>, <2 x i64>* %2, align 8, !dbg !1655, !tbaa !1521
  %8 = extractelement <2 x i64> %7, i32 0, !dbg !1665
  %arrayidx.i = getelementptr %struct.BLOCK, %struct.BLOCK* %6, i64 0, i32 1, i64 %8, !dbg !1665
  %9 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !1665, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !662, metadata !1241) #1, !dbg !1666
  %dec3.i = add i64 %5, -1, !dbg !1667
  store i64 %dec3.i, i64* %ob_size, align 8, !dbg !1668, !tbaa !1502
  %10 = add <2 x i64> %7, <i64 -1, i64 1>, !dbg !1660
  store <2 x i64> %10, <2 x i64>* %3, align 8, !dbg !1660, !tbaa !1521
  %cmp5.i = icmp eq i64 %8, 0, !dbg !1669
  br i1 %cmp5.i, label %if.then.6.i, label %deque_pop.exit, !dbg !1670

if.then.6.i:                                      ; preds = %if.end.i
  %cmp8.i = icmp eq i64 %dec3.i, 0, !dbg !1671
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i, !dbg !1672

if.then.9.i:                                      ; preds = %if.then.6.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %4, align 8, !dbg !1661, !tbaa !1521
  br label %deque_pop.exit, !dbg !1673

if.else.i:                                        ; preds = %if.then.6.i
  %11 = bitcast %struct.BLOCK* %6 to i64*, !dbg !1674
  %12 = load i64, i64* %11, align 8, !dbg !1674, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %6, i64 0, metadata !494, metadata !1241) #1, !dbg !1675
  %13 = load i64, i64* @numfreeblocks, align 8, !dbg !1677, !tbaa !1521
  %cmp.i.i = icmp slt i64 %13, 10, !dbg !1678
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1679

if.then.i.i:                                      ; preds = %if.else.i
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %13, !dbg !1680
  store %struct.BLOCK* %6, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !1681, !tbaa !1297
  %inc.i.i = add i64 %13, 1, !dbg !1677
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !1677, !tbaa !1521
  br label %freeblock.exit.i, !dbg !1682

if.else.i.i:                                      ; preds = %if.else.i
  %14 = bitcast %struct.BLOCK* %6 to i8*, !dbg !1683
  tail call void @PyMem_Free(i8* %14) #1, !dbg !1684
  br label %freeblock.exit.i, !dbg !1685

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  store i64 %12, i64* %1, align 8, !dbg !1659, !tbaa !1520
  store i64 61, i64* %rightindex.i, align 8, !dbg !1686, !tbaa !1549
  br label %deque_pop.exit, !dbg !1687

deque_pop.exit:                                   ; preds = %if.end.i, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !654, metadata !1241), !dbg !1688
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !655, metadata !1241), !dbg !1689
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1690
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1690, !tbaa !1251
  %dec = add i64 %15, -1, !dbg !1690
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1690, !tbaa !1251
  %cmp = icmp eq i64 %dec, 0, !dbg !1690
  br i1 %cmp, label %if.else, label %while.cond.backedge, !dbg !1691

while.cond.backedge:                              ; preds = %deque_pop.exit, %if.else
  %16 = load i64, i64* %ob_size, align 8, !dbg !1653, !tbaa !1502
  %tobool = icmp eq i64 %16, 0, !dbg !1654
  br i1 %tobool, label %while.end.loopexit, label %if.end.i, !dbg !1654

if.else:                                          ; preds = %deque_pop.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1692
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1692, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1692
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1692, !tbaa !1357
  tail call void %18(%struct._object* %9) #1, !dbg !1692
  br label %while.cond.backedge

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !1693

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void, !dbg !1693
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !666, metadata !1241), !dbg !1694
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !667, metadata !1241), !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !668, metadata !1241), !dbg !1696
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !669, metadata !1241), !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !670, metadata !1241), !dbg !1698
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !676, metadata !1241), !dbg !1699
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1700
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1700, !tbaa !1308
  %cmp1 = icmp eq %struct._typeobject* %0, @deque_type, !dbg !1700
  br i1 %cmp1, label %lor.lhs.false.3, label %lor.lhs.false, !dbg !1700

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @deque_type) #1, !dbg !1702
  %tobool = icmp eq i32 %call, 0, !dbg !1702
  br i1 %tobool, label %if.then, label %lor.lhs.false.3, !dbg !1704

lor.lhs.false.3:                                  ; preds = %lor.lhs.false, %entry
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1705
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1705, !tbaa !1308
  %cmp5 = icmp eq %struct._typeobject* %1, @deque_type, !dbg !1705
  br i1 %cmp5, label %if.end, label %lor.lhs.false.6, !dbg !1705

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %call8 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @deque_type) #1, !dbg !1706
  %tobool9 = icmp eq i32 %call8, 0, !dbg !1706
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1707

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1708, !tbaa !1251
  %inc = add i64 %2, 1, !dbg !1708
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1708, !tbaa !1251
  br label %cleanup, !dbg !1708

if.end:                                           ; preds = %lor.lhs.false.6, %lor.lhs.false.3
  %3 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !1710
  %4 = load i64, i64* %3, align 8, !dbg !1710, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !673, metadata !1241), !dbg !1711
  %5 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !1712
  %6 = load i64, i64* %5, align 8, !dbg !1712, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !674, metadata !1241), !dbg !1713
  switch i32 %op, label %if.end.32 [
    i32 2, label %if.then.12
    i32 3, label %if.then.23
  ], !dbg !1714

if.then.12:                                       ; preds = %if.end
  %cmp13 = icmp eq %struct._object* %v, %w, !dbg !1715
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1719

if.then.14:                                       ; preds = %if.then.12
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1720, !tbaa !1251
  %inc15 = add i64 %7, 1, !dbg !1720
  store i64 %inc15, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1720, !tbaa !1251
  br label %cleanup, !dbg !1720

if.end.16:                                        ; preds = %if.then.12
  %cmp17 = icmp eq i64 %4, %6, !dbg !1721
  br i1 %cmp17, label %if.end.32, label %if.then.18, !dbg !1723

if.then.18:                                       ; preds = %if.end.16
  %8 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1724, !tbaa !1251
  %inc19 = add i64 %8, 1, !dbg !1724
  store i64 %inc19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1724, !tbaa !1251
  br label %cleanup, !dbg !1724

if.then.23:                                       ; preds = %if.end
  %cmp24 = icmp eq %struct._object* %v, %w, !dbg !1725
  br i1 %cmp24, label %if.then.25, label %if.end.27, !dbg !1729

if.then.25:                                       ; preds = %if.then.23
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1730, !tbaa !1251
  %inc26 = add i64 %9, 1, !dbg !1730
  store i64 %inc26, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1730, !tbaa !1251
  br label %cleanup, !dbg !1730

if.end.27:                                        ; preds = %if.then.23
  %cmp28 = icmp eq i64 %4, %6, !dbg !1731
  br i1 %cmp28, label %if.end.32, label %if.then.29, !dbg !1733

if.then.29:                                       ; preds = %if.end.27
  %10 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1734, !tbaa !1251
  %inc30 = add i64 %10, 1, !dbg !1734
  store i64 %inc30, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1734, !tbaa !1251
  br label %cleanup, !dbg !1734

if.end.32:                                        ; preds = %if.end.16, %if.end, %if.end.27
  %call33 = tail call %struct._object* @PyObject_GetIter(%struct._object* %v) #1, !dbg !1735
  tail call void @llvm.dbg.value(metadata %struct._object* %call33, i64 0, metadata !669, metadata !1241), !dbg !1697
  %cmp34 = icmp eq %struct._object* %call33, null, !dbg !1736
  br i1 %cmp34, label %cleanup, label %if.end.36, !dbg !1738

if.end.36:                                        ; preds = %if.end.32
  %call37 = tail call %struct._object* @PyObject_GetIter(%struct._object* %w) #1, !dbg !1739
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !670, metadata !1241), !dbg !1698
  %cmp38 = icmp eq %struct._object* %call37, null, !dbg !1740
  br i1 %cmp38, label %do.body.163, label %for.cond.preheader, !dbg !1742

for.cond.preheader:                               ; preds = %if.end.36
  br label %for.cond, !dbg !1743

for.cond:                                         ; preds = %for.cond.preheader, %if.end.95
  %call41 = tail call %struct._object* @PyIter_Next(%struct._object* %call33) #1, !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !671, metadata !1241), !dbg !1744
  %cmp42 = icmp eq %struct._object* %call41, null, !dbg !1745
  br i1 %cmp42, label %land.lhs.true, label %if.end.46, !dbg !1747

land.lhs.true:                                    ; preds = %for.cond
  %call43 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1748
  %tobool44 = icmp eq %struct._object* %call43, null, !dbg !1748
  br i1 %tobool44, label %if.end.116, label %do.body.163, !dbg !1750

if.end.46:                                        ; preds = %for.cond
  %call47 = tail call %struct._object* @PyIter_Next(%struct._object* %call37) #1, !dbg !1751
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !672, metadata !1241), !dbg !1752
  %cmp50 = icmp eq %struct._object* %call47, null, !dbg !1753
  br i1 %cmp50, label %do.body.104, label %if.end.52, !dbg !1755

if.end.52:                                        ; preds = %if.end.46
  %call53 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call41, %struct._object* %call47, i32 2) #1, !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %call53, i64 0, metadata !675, metadata !1241), !dbg !1757
  %cmp54 = icmp eq i32 %call53, 0, !dbg !1758
  br i1 %cmp54, label %if.then.55, label %do.body.74, !dbg !1759

if.then.55:                                       ; preds = %if.end.52
  %call47.lcssa365 = phi %struct._object* [ %call47, %if.end.52 ]
  %call41.lcssa363 = phi %struct._object* [ %call41, %if.end.52 ]
  %call56 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call41.lcssa363, %struct._object* %call47.lcssa365, i32 %op) #1, !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %call56, i64 0, metadata !676, metadata !1241), !dbg !1699
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !677, metadata !1241), !dbg !1761
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call41.lcssa363, i64 0, i32 0, !dbg !1763
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1763, !tbaa !1251
  %dec = add i64 %11, -1, !dbg !1763
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1763, !tbaa !1251
  %cmp57 = icmp eq i64 %dec, 0, !dbg !1763
  br i1 %cmp57, label %if.else, label %if.end.60, !dbg !1765

if.else:                                          ; preds = %if.then.55
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %call41.lcssa363, i64 0, i32 1, !dbg !1766
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !1766, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1766
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1766, !tbaa !1357
  tail call void %13(%struct._object* %call41.lcssa363) #1, !dbg !1766
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !684, metadata !1241), !dbg !1768
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %call47.lcssa365, i64 0, i32 0, !dbg !1770
  %14 = load i64, i64* %ob_refcnt63, align 8, !dbg !1770, !tbaa !1251
  %dec64 = add i64 %14, -1, !dbg !1770
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !1770, !tbaa !1251
  %cmp65 = icmp eq i64 %dec64, 0, !dbg !1770
  br i1 %cmp65, label %if.else.67, label %do.body.163, !dbg !1772

if.else.67:                                       ; preds = %if.end.60
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %call47.lcssa365, i64 0, i32 1, !dbg !1773
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !1773, !tbaa !1308
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1773
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8, !dbg !1773, !tbaa !1357
  tail call void %16(%struct._object* %call47.lcssa365) #1, !dbg !1773
  br label %do.body.163

do.body.74:                                       ; preds = %if.end.52
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !686, metadata !1241), !dbg !1775
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 0, !dbg !1777
  %17 = load i64, i64* %ob_refcnt76, align 8, !dbg !1777, !tbaa !1251
  %dec77 = add i64 %17, -1, !dbg !1777
  store i64 %dec77, i64* %ob_refcnt76, align 8, !dbg !1777, !tbaa !1251
  %cmp78 = icmp eq i64 %dec77, 0, !dbg !1777
  br i1 %cmp78, label %if.else.80, label %if.end.83, !dbg !1779

if.else.80:                                       ; preds = %do.body.74
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 1, !dbg !1780
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1780, !tbaa !1308
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1780
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1780, !tbaa !1357
  tail call void %19(%struct._object* %call41) #1, !dbg !1780
  br label %if.end.83

if.end.83:                                        ; preds = %do.body.74, %if.else.80
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !688, metadata !1241), !dbg !1782
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %call47, i64 0, i32 0, !dbg !1784
  %20 = load i64, i64* %ob_refcnt88, align 8, !dbg !1784, !tbaa !1251
  %dec89 = add i64 %20, -1, !dbg !1784
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1784, !tbaa !1251
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1784
  br i1 %cmp90, label %if.else.92, label %if.end.95, !dbg !1786

if.else.92:                                       ; preds = %if.end.83
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %call47, i64 0, i32 1, !dbg !1787
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1787, !tbaa !1308
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1787
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1787, !tbaa !1357
  tail call void %22(%struct._object* %call47) #1, !dbg !1787
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.83, %if.else.92
  %cmp98 = icmp eq i32 %call53, -1, !dbg !1789
  br i1 %cmp98, label %do.body.163.loopexit, label %for.cond, !dbg !1791

do.body.104:                                      ; preds = %if.end.46
  %call41.lcssa362 = phi %struct._object* [ %call41, %if.end.46 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !690, metadata !1241), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !692, metadata !1241), !dbg !1794
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %call41.lcssa362, i64 0, i32 0, !dbg !1796
  %23 = load i64, i64* %ob_refcnt106, align 8, !dbg !1796, !tbaa !1251
  %dec107 = add i64 %23, -1, !dbg !1796
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !1796, !tbaa !1251
  %cmp108 = icmp eq i64 %dec107, 0, !dbg !1796
  br i1 %cmp108, label %if.else.110, label %if.end.135, !dbg !1798

if.else.110:                                      ; preds = %do.body.104
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %call41.lcssa362, i64 0, i32 1, !dbg !1799
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !1799, !tbaa !1308
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1799
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !1799, !tbaa !1357
  tail call void %25(%struct._object* %call41.lcssa362) #1, !dbg !1799
  br label %if.end.135

if.end.116:                                       ; preds = %land.lhs.true
  %call47.297 = tail call %struct._object* @PyIter_Next(%struct._object* %call37) #1, !dbg !1751
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !672, metadata !1241), !dbg !1752
  %cmp50.298 = icmp eq %struct._object* %call47.297, null, !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !690, metadata !1241), !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !695, metadata !1241), !dbg !1801
  %cmp121 = icmp eq %struct._object* %call47.297, null, !dbg !1803
  br i1 %cmp121, label %if.end.135, label %do.body.123, !dbg !1804

do.body.123:                                      ; preds = %if.end.116
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !697, metadata !1241), !dbg !1805
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %call47.297, i64 0, i32 0, !dbg !1807
  %26 = load i64, i64* %ob_refcnt125, align 8, !dbg !1807, !tbaa !1251
  %dec126 = add i64 %26, -1, !dbg !1807
  store i64 %dec126, i64* %ob_refcnt125, align 8, !dbg !1807, !tbaa !1251
  %cmp127 = icmp eq i64 %dec126, 0, !dbg !1807
  br i1 %cmp127, label %if.else.129, label %if.end.135, !dbg !1809

if.else.129:                                      ; preds = %do.body.123
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %call47.297, i64 0, i32 1, !dbg !1810
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !1810, !tbaa !1308
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1810
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8, !dbg !1810, !tbaa !1357
  tail call void %28(%struct._object* %call47.297) #1, !dbg !1810
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.116, %do.body.104, %if.else.110, %if.else.129, %do.body.123
  %cmp121346 = phi i32 [ 1, %if.else.129 ], [ 1, %do.body.123 ], [ 0, %if.end.116 ], [ 0, %if.else.110 ], [ 0, %do.body.104 ]
  %cmp50301303345 = phi i1 [ %cmp50.298, %if.else.129 ], [ %cmp50.298, %do.body.123 ], [ %cmp50.298, %if.end.116 ], [ true, %if.else.110 ], [ true, %do.body.104 ]
  %call47300305344 = phi %struct._object* [ %call47.297, %if.else.129 ], [ %call47.297, %do.body.123 ], [ null, %if.end.116 ], [ null, %if.else.110 ], [ null, %do.body.104 ]
  %cmp102307343 = phi i32 [ 0, %if.else.129 ], [ 0, %do.body.123 ], [ 0, %if.end.116 ], [ 1, %if.else.110 ], [ 1, %do.body.104 ]
  %call41331342 = phi %struct._object* [ null, %if.else.129 ], [ null, %do.body.123 ], [ null, %if.end.116 ], [ %call41.lcssa362, %if.else.110 ], [ %call41.lcssa362, %do.body.104 ]
  %cmp42335341 = phi i32 [ 1, %if.else.129 ], [ 1, %do.body.123 ], [ 1, %if.end.116 ], [ 0, %if.else.110 ], [ 0, %do.body.104 ]
  %call138 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1812
  %tobool139 = icmp eq %struct._object* %call138, null, !dbg !1812
  br i1 %tobool139, label %if.end.141, label %do.body.163, !dbg !1814

if.end.141:                                       ; preds = %if.end.135
  switch i32 %op, label %do.body.163 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.143
    i32 2, label %sw.bb.146
    i32 3, label %sw.bb.149
    i32 4, label %sw.bb.152
    i32 5, label %sw.bb.155
  ], !dbg !1815

sw.bb:                                            ; preds = %if.end.141
  tail call void @llvm.dbg.value(metadata i32 %cmp121346, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1816

sw.bb.143:                                        ; preds = %if.end.141
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1818

sw.bb.146:                                        ; preds = %if.end.141
  %cmp147 = icmp eq %struct._object* %call41331342, %call47300305344, !dbg !1819
  %conv148 = zext i1 %cmp147 to i32, !dbg !1819
  tail call void @llvm.dbg.value(metadata i32 %conv148, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1820

sw.bb.149:                                        ; preds = %if.end.141
  %cmp150 = icmp ne %struct._object* %call41331342, %call47300305344, !dbg !1821
  %conv151 = zext i1 %cmp150 to i32, !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 %conv151, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1822

sw.bb.152:                                        ; preds = %if.end.141
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1823

sw.bb.155:                                        ; preds = %if.end.141
  %conv157 = zext i1 %cmp50301303345 to i32, !dbg !1824
  tail call void @llvm.dbg.value(metadata i32 %conv157, i64 0, metadata !676, metadata !1241), !dbg !1699
  br label %do.body.163, !dbg !1825

do.body.163.loopexit:                             ; preds = %if.end.95
  br label %do.body.163, !dbg !1826

do.body.163:                                      ; preds = %do.body.163.loopexit, %sw.bb, %sw.bb.143, %sw.bb.146, %sw.bb.149, %sw.bb.152, %sw.bb.155, %if.end.141, %if.end.135, %land.lhs.true, %if.end.60, %if.else.67, %if.end.36
  %it2.0313 = phi %struct._object* [ null, %if.end.36 ], [ %call37, %if.else.67 ], [ %call37, %if.end.60 ], [ %call37, %land.lhs.true ], [ %call37, %if.end.135 ], [ %call37, %if.end.141 ], [ %call37, %sw.bb.155 ], [ %call37, %sw.bb.152 ], [ %call37, %sw.bb.149 ], [ %call37, %sw.bb.146 ], [ %call37, %sw.bb.143 ], [ %call37, %sw.bb ], [ %call37, %do.body.163.loopexit ]
  %cmp.0312 = phi i32 [ -1, %if.end.36 ], [ %call56, %if.else.67 ], [ %call56, %if.end.60 ], [ -1, %land.lhs.true ], [ -1, %if.end.135 ], [ -1, %if.end.141 ], [ %conv157, %sw.bb.155 ], [ %cmp102307343, %sw.bb.152 ], [ %conv151, %sw.bb.149 ], [ %conv148, %sw.bb.146 ], [ %cmp42335341, %sw.bb.143 ], [ %cmp121346, %sw.bb ], [ -1, %do.body.163.loopexit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call33, i64 0, metadata !702, metadata !1241), !dbg !1826
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %call33, i64 0, i32 0, !dbg !1828
  %29 = load i64, i64* %ob_refcnt165, align 8, !dbg !1828, !tbaa !1251
  %dec166 = add i64 %29, -1, !dbg !1828
  store i64 %dec166, i64* %ob_refcnt165, align 8, !dbg !1828, !tbaa !1251
  %cmp167 = icmp eq i64 %dec166, 0, !dbg !1828
  br i1 %cmp167, label %if.else.170, label %if.end.176, !dbg !1830

if.else.170:                                      ; preds = %do.body.163
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %call33, i64 0, i32 1, !dbg !1831
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8, !dbg !1831, !tbaa !1308
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1831
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8, !dbg !1831, !tbaa !1357
  tail call void %31(%struct._object* %call33) #1, !dbg !1831
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.170, %do.body.163
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !705, metadata !1241), !dbg !1833
  %cmp181 = icmp eq %struct._object* %it2.0313, null, !dbg !1835
  br i1 %cmp181, label %if.end.197, label %do.body.184, !dbg !1836

do.body.184:                                      ; preds = %if.end.176
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !707, metadata !1241), !dbg !1837
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %it2.0313, i64 0, i32 0, !dbg !1839
  %32 = load i64, i64* %ob_refcnt186, align 8, !dbg !1839, !tbaa !1251
  %dec187 = add i64 %32, -1, !dbg !1839
  store i64 %dec187, i64* %ob_refcnt186, align 8, !dbg !1839, !tbaa !1251
  %cmp188 = icmp eq i64 %dec187, 0, !dbg !1839
  br i1 %cmp188, label %if.else.191, label %if.end.197, !dbg !1841

if.else.191:                                      ; preds = %do.body.184
  %ob_type192 = getelementptr inbounds %struct._object, %struct._object* %it2.0313, i64 0, i32 1, !dbg !1842
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type192, align 8, !dbg !1842, !tbaa !1308
  %tp_dealloc193 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1842
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc193, align 8, !dbg !1842, !tbaa !1357
  tail call void %34(%struct._object* %it2.0313) #1, !dbg !1842
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.191, %do.body.184, %if.end.176
  switch i32 %cmp.0312, label %cleanup [
    i32 1, label %if.then.202
    i32 0, label %if.then.207
  ], !dbg !1844

if.then.202:                                      ; preds = %if.end.197
  %35 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1845, !tbaa !1251
  %inc203 = add i64 %35, 1, !dbg !1845
  store i64 %inc203, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1845, !tbaa !1251
  br label %cleanup, !dbg !1845

if.then.207:                                      ; preds = %if.end.197
  %36 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1847, !tbaa !1251
  %inc208 = add i64 %36, 1, !dbg !1847
  store i64 %inc208, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1847, !tbaa !1251
  br label %cleanup, !dbg !1847

cleanup:                                          ; preds = %if.end.32, %if.end.197, %if.then.207, %if.then.202, %if.then.29, %if.then.25, %if.then.18, %if.then.14, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.14 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.18 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.25 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.29 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.202 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.207 ], [ @_Py_NotImplementedStruct, %if.then ], [ null, %if.end.197 ], [ null, %if.end.32 ]
  ret %struct._object* %retval.0, !dbg !1849
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_iter(%struct.dequeobject* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !714, metadata !1241), !dbg !1850
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @dequeiter_type) #1, !dbg !1851
  %cmp = icmp eq %struct._object* %call, null, !dbg !1852
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1854

if.end:                                           ; preds = %entry
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !1855
  %0 = bitcast %struct.BLOCK** %leftblock to i64*, !dbg !1855
  %1 = load i64, i64* %0, align 8, !dbg !1855, !tbaa !1493
  %b = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1856
  %2 = bitcast %struct._typeobject** %b to i64*, !dbg !1857
  store i64 %1, i64* %2, align 8, !dbg !1857, !tbaa !1858
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !1860
  %3 = load i64, i64* %leftindex, align 8, !dbg !1860, !tbaa !1619
  %4 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !1861
  store i64 %3, i64* %4, align 8, !dbg !1862, !tbaa !1863
  %ob_refcnt = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, i32 0, !dbg !1864
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1864, !tbaa !1251
  %inc = add i64 %5, 1, !dbg !1864
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1864, !tbaa !1251
  %deque1 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, !dbg !1865
  %6 = bitcast %struct._object* %deque1 to %struct.dequeobject**, !dbg !1865
  store %struct.dequeobject* %deque, %struct.dequeobject** %6, align 8, !dbg !1866, !tbaa !1867
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !1868
  %7 = load i64, i64* %state, align 8, !dbg !1868, !tbaa !1869
  %state2 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, i32 1, !dbg !1870
  %8 = bitcast %struct._typeobject** %state2 to i64*, !dbg !1870
  store i64 %7, i64* %8, align 8, !dbg !1871, !tbaa !1872
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !1873
  %9 = load i64, i64* %ob_size, align 8, !dbg !1873, !tbaa !1502
  %10 = getelementptr inbounds %struct._object, %struct._object* %call, i64 3, i32 0, !dbg !1874
  store i64 %9, i64* %10, align 8, !dbg !1875, !tbaa !1876
  %11 = bitcast %struct._object* %call to i8*, !dbg !1877
  tail call void @PyObject_GC_Track(i8* %11) #1, !dbg !1878
  br label %cleanup, !dbg !1879

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1880
}

; Function Attrs: nounwind uwtable
define internal i32 @deque_init(%struct.dequeobject* %deque, %struct._object* %args, %struct._object* %kwdargs) #0 {
entry:
  %iterable = alloca %struct._object*, align 8
  %maxlenobj = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !858, metadata !1241), !dbg !1881
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !859, metadata !1241), !dbg !1882
  tail call void @llvm.dbg.value(metadata %struct._object* %kwdargs, i64 0, metadata !860, metadata !1241), !dbg !1883
  %0 = bitcast %struct._object** %iterable to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !861, metadata !1241), !dbg !1885
  store %struct._object* null, %struct._object** %iterable, align 8, !dbg !1885, !tbaa !1297
  %1 = bitcast %struct._object** %maxlenobj to i8*, !dbg !1886
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1886
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !862, metadata !1241), !dbg !1887
  store %struct._object* null, %struct._object** %maxlenobj, align 8, !dbg !1887, !tbaa !1297
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !863, metadata !1241), !dbg !1888
  %2 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1889
  call void @llvm.lifetime.start(i64 24, i8* %2) #1, !dbg !1889
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !864, metadata !1241), !dbg !1890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([3 x i8*]* @deque_init.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !1890
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i64 0, i64 0, !dbg !1891
  tail call void @llvm.dbg.value(metadata %struct._object** %iterable, i64 0, metadata !861, metadata !1241), !dbg !1885
  tail call void @llvm.dbg.value(metadata %struct._object** %maxlenobj, i64 0, metadata !862, metadata !1241), !dbg !1887
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwdargs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %arraydecay, %struct._object** nonnull %iterable, %struct._object** nonnull %maxlenobj) #1, !dbg !1893
  %tobool = icmp eq i32 %call, 0, !dbg !1893
  br i1 %tobool, label %cleanup.25, label %if.end, !dbg !1894

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %maxlenobj, i64 0, metadata !862, metadata !1241), !dbg !1887
  %3 = load %struct._object*, %struct._object** %maxlenobj, align 8, !dbg !1895, !tbaa !1297
  %cmp = icmp ne %struct._object* %3, null, !dbg !1897
  %cmp1 = icmp ne %struct._object* %3, @_Py_NoneStruct, !dbg !1898
  %or.cond = and i1 %cmp, %cmp1, !dbg !1899
  br i1 %or.cond, label %if.then.2, label %if.end.13, !dbg !1899

if.then.2:                                        ; preds = %if.end
  %call3 = call i64 @PyLong_AsSsize_t(%struct._object* %3) #1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !863, metadata !1241), !dbg !1888
  %cmp4 = icmp eq i64 %call3, -1, !dbg !1902
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.9, !dbg !1904

land.lhs.true.5:                                  ; preds = %if.then.2
  %call6 = call %struct._object* @PyErr_Occurred() #1, !dbg !1905
  %tobool7 = icmp eq %struct._object* %call6, null, !dbg !1905
  br i1 %tobool7, label %if.then.11, label %cleanup.25, !dbg !1907

if.end.9:                                         ; preds = %if.then.2
  %cmp10 = icmp slt i64 %call3, 0, !dbg !1908
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !1910

if.then.11:                                       ; preds = %land.lhs.true.5, %if.end.9
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1911, !tbaa !1297
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0)) #1, !dbg !1913
  br label %cleanup.25, !dbg !1914

if.end.13:                                        ; preds = %if.end.9, %if.end
  %maxlen.0 = phi i64 [ %call3, %if.end.9 ], [ -1, %if.end ]
  %maxlen14 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !1915
  store i64 %maxlen.0, i64* %maxlen14, align 8, !dbg !1916, !tbaa !1598
  call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !653, metadata !1241) #1, !dbg !1917
  %ob_size.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !1919
  %5 = load i64, i64* %ob_size.i, align 8, !dbg !1919, !tbaa !1502
  %tobool.6.i = icmp eq i64 %5, 0, !dbg !1920
  br i1 %tobool.6.i, label %deque_clear.exit, label %if.end.i.lr.ph.i, !dbg !1920

if.end.i.lr.ph.i:                                 ; preds = %if.end.13
  %rightindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !1921
  %rightblock.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !1923
  %leftindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !1924
  %6 = bitcast %struct.BLOCK** %rightblock.i.i to i64*, !dbg !1925
  %7 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !1921
  %8 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !1926
  %9 = bitcast i64* %leftindex.i.i to <2 x i64>*, !dbg !1927
  br label %if.end.i.i, !dbg !1920

if.end.i.i:                                       ; preds = %while.cond.backedge.i, %if.end.i.lr.ph.i
  %10 = phi i64 [ %5, %if.end.i.lr.ph.i ], [ %21, %while.cond.backedge.i ], !dbg !1928
  call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !1929
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !1930
  %11 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i.i, align 8, !dbg !1931, !tbaa !1520
  %12 = load <2 x i64>, <2 x i64>* %7, align 8, !dbg !1921, !tbaa !1521
  %13 = extractelement <2 x i64> %12, i32 0, !dbg !1932
  %arrayidx.i.i = getelementptr %struct.BLOCK, %struct.BLOCK* %11, i64 0, i32 1, i64 %13, !dbg !1932
  %14 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !1932, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !662, metadata !1241) #1, !dbg !1933
  %dec3.i.i = add i64 %10, -1, !dbg !1934
  store i64 %dec3.i.i, i64* %ob_size.i, align 8, !dbg !1935, !tbaa !1502
  %15 = add <2 x i64> %12, <i64 -1, i64 1>, !dbg !1926
  store <2 x i64> %15, <2 x i64>* %8, align 8, !dbg !1926, !tbaa !1521
  %cmp5.i.i = icmp eq i64 %13, 0, !dbg !1936
  br i1 %cmp5.i.i, label %if.then.6.i.i, label %deque_pop.exit.i, !dbg !1937

if.then.6.i.i:                                    ; preds = %if.end.i.i
  %cmp8.i.i = icmp eq i64 %dec3.i.i, 0, !dbg !1938
  br i1 %cmp8.i.i, label %if.then.9.i.i, label %if.else.i.i, !dbg !1939

if.then.9.i.i:                                    ; preds = %if.then.6.i.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %9, align 8, !dbg !1927, !tbaa !1521
  br label %deque_pop.exit.i, !dbg !1940

if.else.i.i:                                      ; preds = %if.then.6.i.i
  %16 = bitcast %struct.BLOCK* %11 to i64*, !dbg !1941
  %17 = load i64, i64* %16, align 8, !dbg !1941, !tbaa !1532
  call void @llvm.dbg.value(metadata %struct.BLOCK* %11, i64 0, metadata !494, metadata !1241) #1, !dbg !1942
  %18 = load i64, i64* @numfreeblocks, align 8, !dbg !1944, !tbaa !1521
  %cmp.i.i.i = icmp slt i64 %18, 10, !dbg !1945
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i, !dbg !1946

if.then.i.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %18, !dbg !1947
  store %struct.BLOCK* %11, %struct.BLOCK** %arrayidx.i.i.i, align 8, !dbg !1948, !tbaa !1297
  %inc.i.i.i = add i64 %18, 1, !dbg !1944
  store i64 %inc.i.i.i, i64* @numfreeblocks, align 8, !dbg !1944, !tbaa !1521
  br label %freeblock.exit.i.i, !dbg !1949

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %19 = bitcast %struct.BLOCK* %11 to i8*, !dbg !1950
  call void @PyMem_Free(i8* %19) #1, !dbg !1951
  br label %freeblock.exit.i.i, !dbg !1952

freeblock.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then.i.i.i
  store i64 %17, i64* %6, align 8, !dbg !1925, !tbaa !1520
  store i64 61, i64* %rightindex.i.i, align 8, !dbg !1953, !tbaa !1549
  br label %deque_pop.exit.i, !dbg !1954

deque_pop.exit.i:                                 ; preds = %freeblock.exit.i.i, %if.then.9.i.i, %if.end.i.i
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !654, metadata !1241) #1, !dbg !1955
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !655, metadata !1241) #1, !dbg !1956
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1957
  %20 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1957, !tbaa !1251
  %dec.i = add i64 %20, -1, !dbg !1957
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1957, !tbaa !1251
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !1957
  br i1 %cmp.i, label %if.else.i, label %while.cond.backedge.i, !dbg !1958

while.cond.backedge.i:                            ; preds = %if.else.i, %deque_pop.exit.i
  %21 = load i64, i64* %ob_size.i, align 8, !dbg !1919, !tbaa !1502
  %tobool.i = icmp eq i64 %21, 0, !dbg !1920
  br i1 %tobool.i, label %deque_clear.exit.loopexit, label %if.end.i.i, !dbg !1920

if.else.i:                                        ; preds = %deque_pop.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1959
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1959, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1959
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1959, !tbaa !1357
  call void %23(%struct._object* %14) #1, !dbg !1959
  br label %while.cond.backedge.i, !dbg !1928

deque_clear.exit.loopexit:                        ; preds = %while.cond.backedge.i
  br label %deque_clear.exit, !dbg !1885

deque_clear.exit:                                 ; preds = %deque_clear.exit.loopexit, %if.end.13
  call void @llvm.dbg.value(metadata %struct._object** %iterable, i64 0, metadata !861, metadata !1241), !dbg !1885
  %24 = load %struct._object*, %struct._object** %iterable, align 8, !dbg !1960, !tbaa !1297
  %cmp15 = icmp eq %struct._object* %24, null, !dbg !1961
  br i1 %cmp15, label %cleanup.25, label %if.then.16, !dbg !1962

if.then.16:                                       ; preds = %deque_clear.exit
  %call17 = call %struct._object* @deque_extend(%struct.dequeobject* %deque, %struct._object* %24), !dbg !1963
  call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !868, metadata !1241), !dbg !1964
  %cmp18 = icmp eq %struct._object* %call17, null, !dbg !1965
  br i1 %cmp18, label %cleanup.25, label %do.body, !dbg !1967

do.body:                                          ; preds = %if.then.16
  call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !871, metadata !1241), !dbg !1968
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call17, i64 0, i32 0, !dbg !1970
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1970, !tbaa !1251
  %dec = add i64 %25, -1, !dbg !1970
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1970, !tbaa !1251
  %cmp21 = icmp eq i64 %dec, 0, !dbg !1970
  br i1 %cmp21, label %if.else, label %cleanup.25, !dbg !1972

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call17, i64 0, i32 1, !dbg !1973
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1973, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1973
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1973, !tbaa !1357
  call void %27(%struct._object* %call17) #1, !dbg !1973
  br label %cleanup.25

cleanup.25:                                       ; preds = %if.then.16, %deque_clear.exit, %if.else, %do.body, %land.lhs.true.5, %entry, %if.then.11
  %retval.1 = phi i32 [ -1, %if.then.11 ], [ -1, %entry ], [ -1, %land.lhs.true.5 ], [ 0, %do.body ], [ 0, %if.else ], [ 0, %deque_clear.exit ], [ -1, %if.then.16 ]
  call void @llvm.lifetime.end(i64 24, i8* %2) #1, !dbg !1975
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1975
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1975
  ret i32 %retval.1, !dbg !1975
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !879, metadata !1241), !dbg !1976
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !880, metadata !1241), !dbg !1977
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !881, metadata !1241), !dbg !1978
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1979
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1979, !tbaa !1980
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #1, !dbg !1981
  %cmp = icmp eq %struct._object* %call, null, !dbg !1982
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1984

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !568, metadata !1241) #1, !dbg !1985
  %1 = load i64, i64* @numfreeblocks, align 8, !dbg !1987, !tbaa !1521
  %tobool.i = icmp eq i64 %1, 0, !dbg !1987
  br i1 %tobool.i, label %if.end.2.i, label %if.then.1.i, !dbg !1989

if.then.1.i:                                      ; preds = %if.end
  %dec.i = add i64 %1, -1, !dbg !1990
  store i64 %dec.i, i64* @numfreeblocks, align 8, !dbg !1990, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i, !dbg !1992
  %2 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !1992, !tbaa !1297
  br label %newblock.exit, !dbg !1993

if.end.2.i:                                       ; preds = %if.end
  %call.i = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !1994
  %cmp3.i = icmp eq i8* %call.i, null, !dbg !1995
  br i1 %cmp3.i, label %newblock.exit.thread, label %if.then.4.i, !dbg !1997

if.then.4.i:                                      ; preds = %if.end.2.i
  %3 = bitcast i8* %call.i to %struct.BLOCK*, !dbg !1994
  br label %newblock.exit, !dbg !1998

newblock.exit.thread:                             ; preds = %if.end.2.i
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2000
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i, i64 0, metadata !883, metadata !1241), !dbg !2001
  br label %do.body, !dbg !2002

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i = phi %struct.BLOCK* [ %2, %if.then.1.i ], [ %3, %if.then.4.i ], !dbg !2003
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i, i64 0, metadata !883, metadata !1241), !dbg !2001
  %cmp2 = icmp eq %struct.BLOCK* %retval.0.i, null, !dbg !2004
  br i1 %cmp2, label %do.body, label %if.end.7, !dbg !2002

do.body:                                          ; preds = %newblock.exit.thread, %newblock.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !884, metadata !1241), !dbg !2005
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2007
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2007, !tbaa !1251
  %dec = add i64 %4, -1, !dbg !2007
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2007, !tbaa !1251
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2007
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !2009

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2010
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2010, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2010
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2010, !tbaa !1357
  tail call void %6(%struct._object* %call) #1, !dbg !2010
  br label %cleanup

if.end.7:                                         ; preds = %newblock.exit
  %leftblock = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !2012
  %7 = bitcast %struct._typeobject** %leftblock to %struct.BLOCK**, !dbg !2012
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %7, align 8, !dbg !2013, !tbaa !1493
  %rightblock = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, !dbg !2014
  %8 = bitcast %struct._object* %rightblock to %struct.BLOCK**, !dbg !2014
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %8, align 8, !dbg !2015, !tbaa !1520
  %leftindex = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, i32 1, !dbg !2016
  %9 = bitcast %struct._typeobject** %leftindex to <2 x i64>*, !dbg !2017
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %9, align 8, !dbg !2017, !tbaa !1521
  %10 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !2018
  store i64 0, i64* %10, align 8, !dbg !2019, !tbaa !1502
  %state = getelementptr inbounds %struct._object, %struct._object* %call, i64 3, i32 1, !dbg !2020
  %weakreflist = getelementptr inbounds %struct._object, %struct._object* %call, i64 4, i32 1, !dbg !2021
  %11 = bitcast %struct._typeobject** %weakreflist to %struct._object**, !dbg !2021
  store %struct._object* null, %struct._object** %11, align 8, !dbg !2022, !tbaa !1485
  %12 = bitcast %struct._typeobject** %state to <2 x i64>*, !dbg !2023
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %12, align 8, !dbg !2023, !tbaa !1521
  br label %cleanup, !dbg !2024

cleanup:                                          ; preds = %if.else, %do.body, %entry, %if.end.7
  %retval.0 = phi %struct._object* [ %call, %if.end.7 ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !2025
}

declare void @PyObject_GC_Del(i8*) #3

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare void @PyMem_Free(i8*) #3

declare i32 @Py_ReprEnter(%struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PySequence_List(%struct._object*) #3

declare void @Py_ReprLeave(%struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

; Function Attrs: nounwind readonly uwtable
define internal i64 @deque_len(%struct.dequeobject* nocapture readonly %deque) #4 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !507, metadata !1241), !dbg !2026
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2027
  %0 = load i64, i64* %ob_size, align 8, !dbg !2027, !tbaa !1502
  ret i64 %0, !dbg !2028
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_item(%struct.dequeobject* nocapture readonly %deque, i64 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !512, metadata !1241), !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !513, metadata !1241), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !517, metadata !1241), !dbg !2031
  %cmp = icmp slt i64 %i, 0, !dbg !2032
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2034

lor.lhs.false:                                    ; preds = %entry
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2035
  %0 = load i64, i64* %ob_size, align 8, !dbg !2035, !tbaa !1502
  %cmp1 = icmp sgt i64 %0, %i, !dbg !2036
  br i1 %cmp1, label %if.end, label %if.then, !dbg !2037

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2038, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #1, !dbg !2040
  br label %cleanup, !dbg !2041

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp eq i64 %i, 0, !dbg !2042
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2044

if.then.3:                                        ; preds = %if.end
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2045
  %2 = load i64, i64* %leftindex, align 8, !dbg !2045, !tbaa !1619
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !513, metadata !1241), !dbg !2030
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2047
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !2047, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %3, i64 0, metadata !514, metadata !1241), !dbg !2048
  br label %if.end.28, !dbg !2049

if.else:                                          ; preds = %if.end
  %sub = add i64 %0, -1, !dbg !2050
  %cmp5 = icmp eq i64 %sub, %i, !dbg !2052
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !2053

if.then.6:                                        ; preds = %if.else
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2054
  %4 = load i64, i64* %rightindex, align 8, !dbg !2054, !tbaa !1549
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !513, metadata !1241), !dbg !2030
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2056
  %5 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !2056, !tbaa !1520
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %5, i64 0, metadata !514, metadata !1241), !dbg !2048
  br label %if.end.28, !dbg !2057

if.else.7:                                        ; preds = %if.else
  %leftindex8 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2058
  %6 = load i64, i64* %leftindex8, align 8, !dbg !2058, !tbaa !1619
  %add = add i64 %6, %i, !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !513, metadata !1241), !dbg !2030
  %div = sdiv i64 %add, 62, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !516, metadata !1241), !dbg !2062
  %rem = srem i64 %add, 62, !dbg !2063
  tail call void @llvm.dbg.value(metadata i64 %rem, i64 0, metadata !513, metadata !1241), !dbg !2030
  %shr = ashr i64 %0, 1, !dbg !2064
  %cmp10 = icmp sgt i64 %shr, %i, !dbg !2066
  br i1 %cmp10, label %if.then.11, label %if.else.13, !dbg !2067

if.then.11:                                       ; preds = %if.else.7
  %leftblock12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2068
  %b.0.59 = load %struct.BLOCK*, %struct.BLOCK** %leftblock12, align 8, !dbg !2068
  %add.off = add i64 %add, 61, !dbg !2070
  %7 = icmp ult i64 %add.off, 123, !dbg !2070
  br i1 %7, label %if.end.28, label %while.body.preheader, !dbg !2070

while.body.preheader:                             ; preds = %if.then.11
  %8 = add nsw i64 %div, -1, !dbg !2071
  %xtraiter = and i64 %div, 7, !dbg !2071
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2071
  br i1 %lcmp.mod, label %while.body.preheader.split, label %while.body.prol.preheader, !dbg !2071

while.body.prol.preheader:                        ; preds = %while.body.preheader
  br label %while.body.prol, !dbg !2071

while.body.prol:                                  ; preds = %while.body.prol.preheader, %while.body.prol
  %b.062.prol = phi %struct.BLOCK* [ %b.0.prol, %while.body.prol ], [ %b.0.59, %while.body.prol.preheader ]
  %n.061.prol = phi i64 [ %dec.prol, %while.body.prol ], [ %div, %while.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %while.body.prol ], [ %xtraiter, %while.body.prol.preheader ]
  %dec.prol = add i64 %n.061.prol, -1, !dbg !2071
  %rightlink.prol = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.062.prol, i64 0, i32 2, !dbg !2074
  %b.0.prol = load %struct.BLOCK*, %struct.BLOCK** %rightlink.prol, align 8, !dbg !2068
  tail call void @llvm.dbg.value(metadata i64 %dec.prol, i64 0, metadata !516, metadata !1241), !dbg !2062
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !2070
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !2070
  br i1 %prol.iter.cmp, label %while.body.preheader.split.loopexit, label %while.body.prol, !dbg !2070, !llvm.loop !2075

while.body.preheader.split.loopexit:              ; preds = %while.body.prol
  %b.0.prol.lcssa = phi %struct.BLOCK* [ %b.0.prol, %while.body.prol ]
  %dec.prol.lcssa = phi i64 [ %dec.prol, %while.body.prol ]
  br label %while.body.preheader.split, !dbg !2071

while.body.preheader.split:                       ; preds = %while.body.preheader.split.loopexit, %while.body.preheader
  %b.0.lcssa.unr = phi %struct.BLOCK* [ undef, %while.body.preheader ], [ %b.0.prol.lcssa, %while.body.preheader.split.loopexit ]
  %b.062.unr = phi %struct.BLOCK* [ %b.0.59, %while.body.preheader ], [ %b.0.prol.lcssa, %while.body.preheader.split.loopexit ]
  %n.061.unr = phi i64 [ %div, %while.body.preheader ], [ %dec.prol.lcssa, %while.body.preheader.split.loopexit ]
  %9 = icmp ult i64 %8, 7, !dbg !2071
  br i1 %9, label %if.end.28.loopexit, label %while.body.preheader.split.split, !dbg !2071

while.body.preheader.split.split:                 ; preds = %while.body.preheader.split
  br label %while.body, !dbg !2071

while.body:                                       ; preds = %while.body, %while.body.preheader.split.split
  %b.062 = phi %struct.BLOCK* [ %b.062.unr, %while.body.preheader.split.split ], [ %b.0.7, %while.body ]
  %n.061 = phi i64 [ %n.061.unr, %while.body.preheader.split.split ], [ %dec.7, %while.body ]
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.062, i64 0, i32 2, !dbg !2074
  %b.0 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8, !dbg !2068
  %rightlink.1 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0, i64 0, i32 2, !dbg !2074
  %b.0.1 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.1, align 8, !dbg !2068
  %rightlink.2 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.1, i64 0, i32 2, !dbg !2074
  %b.0.2 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.2, align 8, !dbg !2068
  %rightlink.3 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.2, i64 0, i32 2, !dbg !2074
  %b.0.3 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.3, align 8, !dbg !2068
  %rightlink.4 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.3, i64 0, i32 2, !dbg !2074
  %b.0.4 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.4, align 8, !dbg !2068
  %rightlink.5 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.4, i64 0, i32 2, !dbg !2074
  %b.0.5 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.5, align 8, !dbg !2068
  %rightlink.6 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.5, i64 0, i32 2, !dbg !2074
  %b.0.6 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.6, align 8, !dbg !2068
  %dec.7 = add i64 %n.061, -8, !dbg !2071
  %rightlink.7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.6, i64 0, i32 2, !dbg !2074
  %b.0.7 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.7, align 8, !dbg !2068
  %tobool.7 = icmp eq i64 %dec.7, 0, !dbg !2070
  br i1 %tobool.7, label %if.end.28.loopexit.unr-lcssa, label %while.body, !dbg !2070

if.else.13:                                       ; preds = %if.else.7
  %sub17 = add i64 %sub, %6, !dbg !2077
  %div18 = sdiv i64 %sub17, 62, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %sub19, i64 0, metadata !516, metadata !1241), !dbg !2062
  %rightblock20 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2080
  %b.1.63 = load %struct.BLOCK*, %struct.BLOCK** %rightblock20, align 8, !dbg !2080
  %tobool23.64 = icmp eq i64 %div18, %div, !dbg !2081
  br i1 %tobool23.64, label %if.end.28, label %while.body.24.lr.ph, !dbg !2081

while.body.24.lr.ph:                              ; preds = %if.else.13
  %sub19 = sub nsw i64 %div18, %div, !dbg !2082
  %10 = add nsw i64 %div18, -1, !dbg !2081
  %11 = sub nsw i64 %10, %div, !dbg !2081
  %xtraiter73 = and i64 %sub19, 7, !dbg !2081
  %lcmp.mod74 = icmp eq i64 %xtraiter73, 0, !dbg !2081
  br i1 %lcmp.mod74, label %while.body.24.lr.ph.split, label %while.body.24.prol.preheader, !dbg !2081

while.body.24.prol.preheader:                     ; preds = %while.body.24.lr.ph
  br label %while.body.24.prol, !dbg !2083

while.body.24.prol:                               ; preds = %while.body.24.prol.preheader, %while.body.24.prol
  %b.166.prol = phi %struct.BLOCK* [ %b.1.prol, %while.body.24.prol ], [ %b.1.63, %while.body.24.prol.preheader ]
  %n.165.prol = phi i64 [ %dec22.prol, %while.body.24.prol ], [ %sub19, %while.body.24.prol.preheader ]
  %prol.iter75 = phi i64 [ %prol.iter75.sub, %while.body.24.prol ], [ %xtraiter73, %while.body.24.prol.preheader ]
  %dec22.prol = add i64 %n.165.prol, -1, !dbg !2083
  %leftlink.prol = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.166.prol, i64 0, i32 0, !dbg !2086
  %b.1.prol = load %struct.BLOCK*, %struct.BLOCK** %leftlink.prol, align 8, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %dec22.prol, i64 0, metadata !516, metadata !1241), !dbg !2062
  %prol.iter75.sub = add i64 %prol.iter75, -1, !dbg !2081
  %prol.iter75.cmp = icmp eq i64 %prol.iter75.sub, 0, !dbg !2081
  br i1 %prol.iter75.cmp, label %while.body.24.lr.ph.split.loopexit, label %while.body.24.prol, !dbg !2081, !llvm.loop !2087

while.body.24.lr.ph.split.loopexit:               ; preds = %while.body.24.prol
  %b.1.prol.lcssa = phi %struct.BLOCK* [ %b.1.prol, %while.body.24.prol ]
  %dec22.prol.lcssa = phi i64 [ %dec22.prol, %while.body.24.prol ]
  br label %while.body.24.lr.ph.split, !dbg !2081

while.body.24.lr.ph.split:                        ; preds = %while.body.24.lr.ph.split.loopexit, %while.body.24.lr.ph
  %b.1.lcssa.unr = phi %struct.BLOCK* [ undef, %while.body.24.lr.ph ], [ %b.1.prol.lcssa, %while.body.24.lr.ph.split.loopexit ]
  %b.166.unr = phi %struct.BLOCK* [ %b.1.63, %while.body.24.lr.ph ], [ %b.1.prol.lcssa, %while.body.24.lr.ph.split.loopexit ]
  %n.165.unr = phi i64 [ %sub19, %while.body.24.lr.ph ], [ %dec22.prol.lcssa, %while.body.24.lr.ph.split.loopexit ]
  %12 = icmp ult i64 %11, 7, !dbg !2081
  br i1 %12, label %if.end.28.loopexit72, label %while.body.24.lr.ph.split.split, !dbg !2081

while.body.24.lr.ph.split.split:                  ; preds = %while.body.24.lr.ph.split
  br label %while.body.24, !dbg !2081

while.body.24:                                    ; preds = %while.body.24, %while.body.24.lr.ph.split.split
  %b.166 = phi %struct.BLOCK* [ %b.166.unr, %while.body.24.lr.ph.split.split ], [ %b.1.7, %while.body.24 ]
  %n.165 = phi i64 [ %n.165.unr, %while.body.24.lr.ph.split.split ], [ %dec22.7, %while.body.24 ]
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.166, i64 0, i32 0, !dbg !2086
  %b.1 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8, !dbg !2080
  %leftlink.1 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1, i64 0, i32 0, !dbg !2086
  %b.1.1 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.1, align 8, !dbg !2080
  %leftlink.2 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.1, i64 0, i32 0, !dbg !2086
  %b.1.2 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.2, align 8, !dbg !2080
  %leftlink.3 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.2, i64 0, i32 0, !dbg !2086
  %b.1.3 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.3, align 8, !dbg !2080
  %leftlink.4 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.3, i64 0, i32 0, !dbg !2086
  %b.1.4 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.4, align 8, !dbg !2080
  %leftlink.5 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.4, i64 0, i32 0, !dbg !2086
  %b.1.5 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.5, align 8, !dbg !2080
  %leftlink.6 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.5, i64 0, i32 0, !dbg !2086
  %b.1.6 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.6, align 8, !dbg !2080
  %dec22.7 = add i64 %n.165, -8, !dbg !2083
  %leftlink.7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.6, i64 0, i32 0, !dbg !2086
  %b.1.7 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.7, align 8, !dbg !2080
  %tobool23.7 = icmp eq i64 %dec22.7, 0, !dbg !2081
  br i1 %tobool23.7, label %if.end.28.loopexit72.unr-lcssa, label %while.body.24, !dbg !2081

if.end.28.loopexit.unr-lcssa:                     ; preds = %while.body
  %b.0.7.lcssa = phi %struct.BLOCK* [ %b.0.7, %while.body ]
  br label %if.end.28.loopexit, !dbg !2088

if.end.28.loopexit:                               ; preds = %while.body.preheader.split, %if.end.28.loopexit.unr-lcssa
  %b.0.lcssa = phi %struct.BLOCK* [ %b.0.lcssa.unr, %while.body.preheader.split ], [ %b.0.7.lcssa, %if.end.28.loopexit.unr-lcssa ]
  br label %if.end.28, !dbg !2088

if.end.28.loopexit72.unr-lcssa:                   ; preds = %while.body.24
  %b.1.7.lcssa = phi %struct.BLOCK* [ %b.1.7, %while.body.24 ]
  br label %if.end.28.loopexit72, !dbg !2088

if.end.28.loopexit72:                             ; preds = %while.body.24.lr.ph.split, %if.end.28.loopexit72.unr-lcssa
  %b.1.lcssa = phi %struct.BLOCK* [ %b.1.lcssa.unr, %while.body.24.lr.ph.split ], [ %b.1.7.lcssa, %if.end.28.loopexit72.unr-lcssa ]
  br label %if.end.28, !dbg !2088

if.end.28:                                        ; preds = %if.end.28.loopexit72, %if.end.28.loopexit, %if.else.13, %if.then.11, %if.then.6, %if.then.3
  %b.2 = phi %struct.BLOCK* [ %3, %if.then.3 ], [ %5, %if.then.6 ], [ %b.0.59, %if.then.11 ], [ %b.1.63, %if.else.13 ], [ %b.0.lcssa, %if.end.28.loopexit ], [ %b.1.lcssa, %if.end.28.loopexit72 ]
  %i.addr.0 = phi i64 [ %2, %if.then.3 ], [ %4, %if.then.6 ], [ %rem, %if.then.11 ], [ %rem, %if.else.13 ], [ %rem, %if.end.28.loopexit ], [ %rem, %if.end.28.loopexit72 ]
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %b.2, i64 0, i32 1, i64 %i.addr.0, !dbg !2088
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2088, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !515, metadata !1241), !dbg !2089
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !2090
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2090, !tbaa !1251
  %inc = add i64 %14, 1, !dbg !2090
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2090, !tbaa !1251
  br label %cleanup, !dbg !2091

cleanup:                                          ; preds = %if.end.28, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %13, %if.end.28 ]
  ret %struct._object* %retval.0, !dbg !2092
}

; Function Attrs: nounwind uwtable
define internal i32 @deque_ass_item(%struct.dequeobject* nocapture %deque, i64 %i, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !522, metadata !1241), !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !523, metadata !1241), !dbg !2094
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !524, metadata !1241), !dbg !2095
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2096
  %0 = load i64, i64* %ob_size, align 8, !dbg !2096, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !528, metadata !1241), !dbg !2097
  %add = add i64 %0, 1, !dbg !2098
  %shr = ashr i64 %add, 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %shr, i64 0, metadata !529, metadata !1241), !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !530, metadata !1241), !dbg !2101
  %cmp = icmp sgt i64 %i, -1, !dbg !2102
  %cmp1 = icmp sgt i64 %0, %i, !dbg !2104
  %or.cond = and i1 %cmp, %cmp1, !dbg !2105
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2105

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2106, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #1, !dbg !2108
  br label %cleanup, !dbg !2109

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct._object* %v, null, !dbg !2110
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2112

if.then.3:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !537, metadata !1241) #1, !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !538, metadata !1241) #1, !dbg !2115
  %sub.i = sub i64 0, %i, !dbg !2116
  %call.i = tail call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %sub.i) #1, !dbg !2118
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !2119
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2120

if.end.i:                                         ; preds = %if.then.3
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !574, metadata !1241) #1, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !575, metadata !1241) #1, !dbg !2123
  %2 = load i64, i64* %ob_size, align 8, !dbg !2124, !tbaa !1502
  %cmp.i.i = icmp eq i64 %2, 0, !dbg !2125
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !2127

if.then.i.i:                                      ; preds = %if.end.i
  %3 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2128, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2130
  unreachable, !dbg !2131

if.end.i.i:                                       ; preds = %if.end.i
  %leftindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2132
  %4 = load i64, i64* %leftindex.i.i, align 8, !dbg !2132, !tbaa !1619
  %leftblock.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2133
  %5 = load %struct.BLOCK*, %struct.BLOCK** %leftblock.i.i, align 8, !dbg !2134, !tbaa !1493
  %arrayidx.i.i = getelementptr %struct.BLOCK, %struct.BLOCK* %5, i64 0, i32 1, i64 %4, !dbg !2139
  %6 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !2139, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !576, metadata !1241) #1, !dbg !2140
  %inc.i.i = add i64 %4, 1, !dbg !2141
  store i64 %inc.i.i, i64* %leftindex.i.i, align 8, !dbg !2141, !tbaa !1619
  %dec.i.i = add i64 %2, -1, !dbg !2142
  store i64 %dec.i.i, i64* %ob_size, align 8, !dbg !2124, !tbaa !1502
  %state.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2143
  %7 = load i64, i64* %state.i.i, align 8, !dbg !2144, !tbaa !1869
  %inc3.i.i = add i64 %7, 1, !dbg !2144
  store i64 %inc3.i.i, i64* %state.i.i, align 8, !dbg !2144, !tbaa !1869
  %cmp5.i.i = icmp eq i64 %inc.i.i, 62, !dbg !2145
  br i1 %cmp5.i.i, label %if.then.6.i.i, label %deque_popleft.exit.i, !dbg !2146

if.then.6.i.i:                                    ; preds = %if.end.i.i
  %cmp8.i.i = icmp eq i64 %dec.i.i, 0, !dbg !2147
  br i1 %cmp8.i.i, label %if.then.9.i.i, label %if.else.i.i, !dbg !2148

if.then.9.i.i:                                    ; preds = %if.then.6.i.i
  %8 = bitcast i64* %leftindex.i.i to <2 x i64>*, !dbg !2149
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %8, align 8, !dbg !2149, !tbaa !1521
  br label %deque_popleft.exit.i, !dbg !2151

if.else.i.i:                                      ; preds = %if.then.6.i.i
  %rightlink.i.i = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %5, i64 0, i32 2, !dbg !2152
  %9 = bitcast %struct.BLOCK** %rightlink.i.i to i64*, !dbg !2152
  %10 = load i64, i64* %9, align 8, !dbg !2152, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %5, i64 0, metadata !494, metadata !1241) #1, !dbg !2154
  %11 = load i64, i64* @numfreeblocks, align 8, !dbg !2156, !tbaa !1521
  %cmp.i.i.i = icmp slt i64 %11, 10, !dbg !2157
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i, !dbg !2158

if.then.i.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %11, !dbg !2159
  store %struct.BLOCK* %5, %struct.BLOCK** %arrayidx.i.i.i, align 8, !dbg !2160, !tbaa !1297
  %inc.i.i.i = add i64 %11, 1, !dbg !2156
  store i64 %inc.i.i.i, i64* @numfreeblocks, align 8, !dbg !2156, !tbaa !1521
  br label %freeblock.exit.i.i, !dbg !2161

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %12 = bitcast %struct.BLOCK* %5 to i8*, !dbg !2162
  tail call void @PyMem_Free(i8* %12) #1, !dbg !2163
  br label %freeblock.exit.i.i, !dbg !2164

freeblock.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then.i.i.i
  %13 = bitcast %struct.BLOCK** %leftblock.i.i to i64*, !dbg !2165
  store i64 %10, i64* %13, align 8, !dbg !2165, !tbaa !1493
  store i64 0, i64* %leftindex.i.i, align 8, !dbg !2166, !tbaa !1619
  br label %deque_popleft.exit.i, !dbg !2167

deque_popleft.exit.i:                             ; preds = %freeblock.exit.i.i, %if.then.9.i.i, %if.end.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !539, metadata !1241) #1, !dbg !2168
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !540, metadata !1241) #1, !dbg !2169
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2171
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2171, !tbaa !1251
  %dec.i = add i64 %14, -1, !dbg !2171
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2171, !tbaa !1251
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2171
  br i1 %cmp2.i, label %if.else.i, label %if.end.4.i, !dbg !2173

if.else.i:                                        ; preds = %deque_popleft.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2174
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2174, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2174
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2174, !tbaa !1357
  tail call void %16(%struct._object* %6) #1, !dbg !2174
  br label %if.end.4.i, !dbg !2176

if.end.4.i:                                       ; preds = %if.else.i, %deque_popleft.exit.i
  %call5.i = tail call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %i) #1, !dbg !2177
  br label %cleanup, !dbg !2178

if.end.4:                                         ; preds = %if.end
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2179
  %17 = load i64, i64* %leftindex, align 8, !dbg !2179, !tbaa !1619
  %add5 = add i64 %17, %i, !dbg !2180
  tail call void @llvm.dbg.value(metadata i64 %add5, i64 0, metadata !523, metadata !1241), !dbg !2094
  %div = sdiv i64 %add5, 62, !dbg !2181
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !527, metadata !1241), !dbg !2182
  %rem = srem i64 %add5, 62, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %rem, i64 0, metadata !523, metadata !1241), !dbg !2094
  %cmp6 = icmp slt i64 %shr, %i, !dbg !2184
  br i1 %cmp6, label %if.else, label %if.then.7, !dbg !2186

if.then.7:                                        ; preds = %if.end.4
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2187
  %b.0.65 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !2187
  %add5.off = add i64 %add5, 61, !dbg !2189
  %18 = icmp ult i64 %add5.off, 123, !dbg !2189
  br i1 %18, label %if.end.17, label %while.body.preheader, !dbg !2189

while.body.preheader:                             ; preds = %if.then.7
  %19 = add nsw i64 %div, -1, !dbg !2190
  %xtraiter75 = and i64 %div, 7, !dbg !2190
  %lcmp.mod76 = icmp eq i64 %xtraiter75, 0, !dbg !2190
  br i1 %lcmp.mod76, label %while.body.preheader.split, label %while.body.prol.preheader, !dbg !2190

while.body.prol.preheader:                        ; preds = %while.body.preheader
  br label %while.body.prol, !dbg !2190

while.body.prol:                                  ; preds = %while.body.prol.preheader, %while.body.prol
  %b.068.prol = phi %struct.BLOCK* [ %b.0.prol, %while.body.prol ], [ %b.0.65, %while.body.prol.preheader ]
  %n.067.prol = phi i64 [ %dec.prol, %while.body.prol ], [ %div, %while.body.prol.preheader ]
  %prol.iter77 = phi i64 [ %prol.iter77.sub, %while.body.prol ], [ %xtraiter75, %while.body.prol.preheader ]
  %dec.prol = add i64 %n.067.prol, -1, !dbg !2190
  %rightlink.prol = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.068.prol, i64 0, i32 2, !dbg !2193
  %b.0.prol = load %struct.BLOCK*, %struct.BLOCK** %rightlink.prol, align 8, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %dec.prol, i64 0, metadata !527, metadata !1241), !dbg !2182
  %prol.iter77.sub = add i64 %prol.iter77, -1, !dbg !2189
  %prol.iter77.cmp = icmp eq i64 %prol.iter77.sub, 0, !dbg !2189
  br i1 %prol.iter77.cmp, label %while.body.preheader.split.loopexit, label %while.body.prol, !dbg !2189, !llvm.loop !2194

while.body.preheader.split.loopexit:              ; preds = %while.body.prol
  %b.0.prol.lcssa = phi %struct.BLOCK* [ %b.0.prol, %while.body.prol ]
  %dec.prol.lcssa = phi i64 [ %dec.prol, %while.body.prol ]
  br label %while.body.preheader.split, !dbg !2190

while.body.preheader.split:                       ; preds = %while.body.preheader.split.loopexit, %while.body.preheader
  %b.0.lcssa.unr = phi %struct.BLOCK* [ undef, %while.body.preheader ], [ %b.0.prol.lcssa, %while.body.preheader.split.loopexit ]
  %b.068.unr = phi %struct.BLOCK* [ %b.0.65, %while.body.preheader ], [ %b.0.prol.lcssa, %while.body.preheader.split.loopexit ]
  %n.067.unr = phi i64 [ %div, %while.body.preheader ], [ %dec.prol.lcssa, %while.body.preheader.split.loopexit ]
  %20 = icmp ult i64 %19, 7, !dbg !2190
  br i1 %20, label %if.end.17.loopexit74, label %while.body.preheader.split.split, !dbg !2190

while.body.preheader.split.split:                 ; preds = %while.body.preheader.split
  br label %while.body, !dbg !2190

while.body:                                       ; preds = %while.body, %while.body.preheader.split.split
  %b.068 = phi %struct.BLOCK* [ %b.068.unr, %while.body.preheader.split.split ], [ %b.0.7, %while.body ]
  %n.067 = phi i64 [ %n.067.unr, %while.body.preheader.split.split ], [ %dec.7, %while.body ]
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.068, i64 0, i32 2, !dbg !2193
  %b.0 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8, !dbg !2187
  %rightlink.1 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0, i64 0, i32 2, !dbg !2193
  %b.0.1 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.1, align 8, !dbg !2187
  %rightlink.2 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.1, i64 0, i32 2, !dbg !2193
  %b.0.2 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.2, align 8, !dbg !2187
  %rightlink.3 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.2, i64 0, i32 2, !dbg !2193
  %b.0.3 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.3, align 8, !dbg !2187
  %rightlink.4 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.3, i64 0, i32 2, !dbg !2193
  %b.0.4 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.4, align 8, !dbg !2187
  %rightlink.5 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.4, i64 0, i32 2, !dbg !2193
  %b.0.5 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.5, align 8, !dbg !2187
  %rightlink.6 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.5, i64 0, i32 2, !dbg !2193
  %b.0.6 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.6, align 8, !dbg !2187
  %dec.7 = add i64 %n.067, -8, !dbg !2190
  %rightlink.7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.6, i64 0, i32 2, !dbg !2193
  %b.0.7 = load %struct.BLOCK*, %struct.BLOCK** %rightlink.7, align 8, !dbg !2187
  %tobool.7 = icmp eq i64 %dec.7, 0, !dbg !2189
  br i1 %tobool.7, label %if.end.17.loopexit74.unr-lcssa, label %while.body, !dbg !2189

if.else:                                          ; preds = %if.end.4
  %add9 = add i64 %0, -1, !dbg !2195
  %sub = add i64 %add9, %17, !dbg !2197
  %div10 = sdiv i64 %sub, 62, !dbg !2198
  tail call void @llvm.dbg.value(metadata i64 %sub11, i64 0, metadata !527, metadata !1241), !dbg !2182
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2199
  %b.1.61 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !2199
  %tobool14.62 = icmp eq i64 %div10, %div, !dbg !2200
  br i1 %tobool14.62, label %if.end.17, label %while.body.15.lr.ph, !dbg !2200

while.body.15.lr.ph:                              ; preds = %if.else
  %sub11 = sub nsw i64 %div10, %div, !dbg !2201
  %21 = add nsw i64 %div10, -1, !dbg !2200
  %22 = sub nsw i64 %21, %div, !dbg !2200
  %xtraiter = and i64 %sub11, 7, !dbg !2200
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2200
  br i1 %lcmp.mod, label %while.body.15.lr.ph.split, label %while.body.15.prol.preheader, !dbg !2200

while.body.15.prol.preheader:                     ; preds = %while.body.15.lr.ph
  br label %while.body.15.prol, !dbg !2202

while.body.15.prol:                               ; preds = %while.body.15.prol.preheader, %while.body.15.prol
  %b.164.prol = phi %struct.BLOCK* [ %b.1.prol, %while.body.15.prol ], [ %b.1.61, %while.body.15.prol.preheader ]
  %n.163.prol = phi i64 [ %dec13.prol, %while.body.15.prol ], [ %sub11, %while.body.15.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %while.body.15.prol ], [ %xtraiter, %while.body.15.prol.preheader ]
  %dec13.prol = add i64 %n.163.prol, -1, !dbg !2202
  %leftlink.prol = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.164.prol, i64 0, i32 0, !dbg !2205
  %b.1.prol = load %struct.BLOCK*, %struct.BLOCK** %leftlink.prol, align 8, !dbg !2199
  tail call void @llvm.dbg.value(metadata i64 %dec13.prol, i64 0, metadata !527, metadata !1241), !dbg !2182
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !2200
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !2200
  br i1 %prol.iter.cmp, label %while.body.15.lr.ph.split.loopexit, label %while.body.15.prol, !dbg !2200, !llvm.loop !2206

while.body.15.lr.ph.split.loopexit:               ; preds = %while.body.15.prol
  %b.1.prol.lcssa = phi %struct.BLOCK* [ %b.1.prol, %while.body.15.prol ]
  %dec13.prol.lcssa = phi i64 [ %dec13.prol, %while.body.15.prol ]
  br label %while.body.15.lr.ph.split, !dbg !2200

while.body.15.lr.ph.split:                        ; preds = %while.body.15.lr.ph.split.loopexit, %while.body.15.lr.ph
  %b.1.lcssa.unr = phi %struct.BLOCK* [ undef, %while.body.15.lr.ph ], [ %b.1.prol.lcssa, %while.body.15.lr.ph.split.loopexit ]
  %b.164.unr = phi %struct.BLOCK* [ %b.1.61, %while.body.15.lr.ph ], [ %b.1.prol.lcssa, %while.body.15.lr.ph.split.loopexit ]
  %n.163.unr = phi i64 [ %sub11, %while.body.15.lr.ph ], [ %dec13.prol.lcssa, %while.body.15.lr.ph.split.loopexit ]
  %23 = icmp ult i64 %22, 7, !dbg !2200
  br i1 %23, label %if.end.17.loopexit, label %while.body.15.lr.ph.split.split, !dbg !2200

while.body.15.lr.ph.split.split:                  ; preds = %while.body.15.lr.ph.split
  br label %while.body.15, !dbg !2200

while.body.15:                                    ; preds = %while.body.15, %while.body.15.lr.ph.split.split
  %b.164 = phi %struct.BLOCK* [ %b.164.unr, %while.body.15.lr.ph.split.split ], [ %b.1.7, %while.body.15 ]
  %n.163 = phi i64 [ %n.163.unr, %while.body.15.lr.ph.split.split ], [ %dec13.7, %while.body.15 ]
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.164, i64 0, i32 0, !dbg !2205
  %b.1 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8, !dbg !2199
  %leftlink.1 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1, i64 0, i32 0, !dbg !2205
  %b.1.1 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.1, align 8, !dbg !2199
  %leftlink.2 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.1, i64 0, i32 0, !dbg !2205
  %b.1.2 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.2, align 8, !dbg !2199
  %leftlink.3 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.2, i64 0, i32 0, !dbg !2205
  %b.1.3 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.3, align 8, !dbg !2199
  %leftlink.4 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.3, i64 0, i32 0, !dbg !2205
  %b.1.4 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.4, align 8, !dbg !2199
  %leftlink.5 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.4, i64 0, i32 0, !dbg !2205
  %b.1.5 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.5, align 8, !dbg !2199
  %leftlink.6 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.5, i64 0, i32 0, !dbg !2205
  %b.1.6 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.6, align 8, !dbg !2199
  %dec13.7 = add i64 %n.163, -8, !dbg !2202
  %leftlink.7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1.6, i64 0, i32 0, !dbg !2205
  %b.1.7 = load %struct.BLOCK*, %struct.BLOCK** %leftlink.7, align 8, !dbg !2199
  %tobool14.7 = icmp eq i64 %dec13.7, 0, !dbg !2200
  br i1 %tobool14.7, label %if.end.17.loopexit.unr-lcssa, label %while.body.15, !dbg !2200

if.end.17.loopexit.unr-lcssa:                     ; preds = %while.body.15
  %b.1.7.lcssa = phi %struct.BLOCK* [ %b.1.7, %while.body.15 ]
  br label %if.end.17.loopexit, !dbg !2207

if.end.17.loopexit:                               ; preds = %while.body.15.lr.ph.split, %if.end.17.loopexit.unr-lcssa
  %b.1.lcssa = phi %struct.BLOCK* [ %b.1.lcssa.unr, %while.body.15.lr.ph.split ], [ %b.1.7.lcssa, %if.end.17.loopexit.unr-lcssa ]
  br label %if.end.17, !dbg !2207

if.end.17.loopexit74.unr-lcssa:                   ; preds = %while.body
  %b.0.7.lcssa = phi %struct.BLOCK* [ %b.0.7, %while.body ]
  br label %if.end.17.loopexit74, !dbg !2207

if.end.17.loopexit74:                             ; preds = %while.body.preheader.split, %if.end.17.loopexit74.unr-lcssa
  %b.0.lcssa = phi %struct.BLOCK* [ %b.0.lcssa.unr, %while.body.preheader.split ], [ %b.0.7.lcssa, %if.end.17.loopexit74.unr-lcssa ]
  br label %if.end.17, !dbg !2207

if.end.17:                                        ; preds = %if.end.17.loopexit74, %if.end.17.loopexit, %if.then.7, %if.else
  %b.2 = phi %struct.BLOCK* [ %b.1.61, %if.else ], [ %b.0.65, %if.then.7 ], [ %b.1.lcssa, %if.end.17.loopexit ], [ %b.0.lcssa, %if.end.17.loopexit74 ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 0, !dbg !2207
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !2207, !tbaa !1251
  %inc = add i64 %24, 1, !dbg !2207
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2207, !tbaa !1251
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %b.2, i64 0, i32 1, i64 %rem, !dbg !2208
  %25 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2208, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !525, metadata !1241), !dbg !2209
  store %struct._object* %v, %struct._object** %arrayidx, align 8, !dbg !2210, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !531, metadata !1241), !dbg !2211
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !2213
  %26 = load i64, i64* %ob_refcnt20, align 8, !dbg !2213, !tbaa !1251
  %dec21 = add i64 %26, -1, !dbg !2213
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2213, !tbaa !1251
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !2213
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !2215

if.else.24:                                       ; preds = %if.end.17
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !2216
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2216, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !2216
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2216, !tbaa !1357
  tail call void %28(%struct._object* %25) #1, !dbg !2216
  br label %cleanup

cleanup:                                          ; preds = %if.end.4.i, %if.then.3, %if.else.24, %if.end.17, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end.17 ], [ 0, %if.else.24 ], [ %call5.i, %if.end.4.i ], [ -1, %if.then.3 ]
  ret i32 %retval.0, !dbg !2218
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_inplace_concat(%struct.dequeobject* %deque, %struct._object* %other) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !580, metadata !1241), !dbg !2219
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !581, metadata !1241), !dbg !2220
  %call = tail call %struct._object* @deque_extend(%struct.dequeobject* %deque, %struct._object* %other), !dbg !2221
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !582, metadata !1241), !dbg !2222
  %cmp = icmp eq %struct._object* %call, null, !dbg !2223
  br i1 %cmp, label %cleanup, label %do.body, !dbg !2225

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !583, metadata !1241), !dbg !2226
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2228
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2228, !tbaa !1251
  %dec = add i64 %0, -1, !dbg !2228
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2228, !tbaa !1251
  %cmp1 = icmp eq i64 %dec, 0, !dbg !2228
  br i1 %cmp1, label %if.else, label %if.end.3, !dbg !2230

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2231
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2231, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2231
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2231, !tbaa !1357
  tail call void %2(%struct._object* %call) #1, !dbg !2231
  br label %if.end.3

if.end.3:                                         ; preds = %do.body, %if.else
  %3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, !dbg !2233
  %ob_refcnt4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, i32 0, !dbg !2233
  %4 = load i64, i64* %ob_refcnt4, align 8, !dbg !2233, !tbaa !1251
  %inc = add i64 %4, 1, !dbg !2233
  store i64 %inc, i64* %ob_refcnt4, align 8, !dbg !2233, !tbaa !1251
  br label %cleanup, !dbg !2234

cleanup:                                          ; preds = %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %3, %if.end.3 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2235
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_deque_rotate(%struct.dequeobject* nocapture %deque, i64 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !544, metadata !1241), !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %n, i64 0, metadata !545, metadata !1241), !dbg !2237
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* null, i64 0, metadata !546, metadata !1241), !dbg !2238
  %leftblock1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2239
  %0 = load %struct.BLOCK*, %struct.BLOCK** %leftblock1, align 8, !dbg !2239, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %0, i64 0, metadata !547, metadata !1241), !dbg !2240
  %rightblock2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2241
  %1 = load %struct.BLOCK*, %struct.BLOCK** %rightblock2, align 8, !dbg !2241, !tbaa !1520
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %1, i64 0, metadata !548, metadata !1241), !dbg !2242
  %leftindex3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2243
  %2 = load i64, i64* %leftindex3, align 8, !dbg !2243, !tbaa !1619
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !549, metadata !1241), !dbg !2244
  %rightindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2245
  %3 = load i64, i64* %rightindex4, align 8, !dbg !2245, !tbaa !1549
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !550, metadata !1241), !dbg !2246
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2247
  %4 = load i64, i64* %ob_size, align 8, !dbg !2247, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !551, metadata !1241), !dbg !2248
  %shr = ashr i64 %4, 1, !dbg !2249
  tail call void @llvm.dbg.value(metadata i64 %shr, i64 0, metadata !552, metadata !1241), !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !553, metadata !1241), !dbg !2251
  %cmp = icmp slt i64 %4, 2, !dbg !2252
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2254

if.end:                                           ; preds = %entry
  %cmp5 = icmp slt i64 %shr, %n, !dbg !2255
  %sub = sub nsw i64 0, %shr
  %cmp6 = icmp slt i64 %n, %sub, !dbg !2257
  %or.cond = or i1 %cmp5, %cmp6, !dbg !2258
  br i1 %or.cond, label %if.then.7, label %if.end.16, !dbg !2258

if.then.7:                                        ; preds = %if.end
  %rem = srem i64 %n, %4, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %rem, i64 0, metadata !545, metadata !1241), !dbg !2237
  %cmp8 = icmp sgt i64 %rem, %shr, !dbg !2261
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2263

if.then.9:                                        ; preds = %if.then.7
  %sub10 = sub i64 %rem, %4, !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %sub10, i64 0, metadata !545, metadata !1241), !dbg !2237
  br label %if.end.16, !dbg !2265

if.else:                                          ; preds = %if.then.7
  %cmp12 = icmp slt i64 %rem, %sub, !dbg !2266
  %add = select i1 %cmp12, i64 %4, i64 0, !dbg !2268
  %add.rem = add i64 %add, %rem, !dbg !2268
  br label %if.end.16, !dbg !2268

if.end.16:                                        ; preds = %if.else, %if.end, %if.then.9
  %n.addr.0 = phi i64 [ %sub10, %if.then.9 ], [ %n, %if.end ], [ %add.rem, %if.else ]
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2269
  %5 = load i64, i64* %state, align 8, !dbg !2270, !tbaa !1869
  %inc = add i64 %5, 1, !dbg !2270
  store i64 %inc, i64* %state, align 8, !dbg !2270, !tbaa !1869
  %cmp.i = icmp sgt i64 %4, 9223372036854775682, !dbg !2271
  br i1 %cmp.i, label %while.cond.outer.split.us.us.preheader, label %while.cond.outer.while.cond.outer.split_crit_edge.preheader, !dbg !2278

while.cond.outer.while.cond.outer.split_crit_edge.preheader: ; preds = %if.end.16
  br label %while.cond.outer.while.cond.outer.split_crit_edge, !dbg !2279

while.cond.outer.split.us.us.preheader:           ; preds = %if.end.16
  br label %while.cond.outer.split.us.us, !dbg !2279

if.then.43.us:                                    ; preds = %do.end.us.us
  %sub40.us.us.lcssa = phi i64 [ %sub40.us.us, %do.end.us.us ]
  %sub39.us.us.lcssa = phi i64 [ %sub39.us.us, %do.end.us.us ]
  %leftblock.1.us.us.lcssa = phi %struct.BLOCK* [ %leftblock.1.us.us, %do.end.us.us ]
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %rightblock.0.ph.us, i64 0, metadata !546, metadata !1241), !dbg !2238
  %leftlink44.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %rightblock.0.ph.us, i64 0, i32 0, !dbg !2280
  %6 = load %struct.BLOCK*, %struct.BLOCK** %leftlink44.us, align 8, !dbg !2280, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %6, i64 0, metadata !548, metadata !1241), !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 61, i64 0, metadata !550, metadata !1241), !dbg !2246
  br label %while.cond.outer.split.us.us, !dbg !2283

while.cond.us.us:                                 ; preds = %while.cond.outer.split.us.us, %do.end.us.us
  %b.0.us.us = phi %struct.BLOCK* [ %b.2.us.us, %do.end.us.us ], [ %b.0.ph.us, %while.cond.outer.split.us.us ]
  %leftblock.0.us.us = phi %struct.BLOCK* [ %leftblock.1.us.us, %do.end.us.us ], [ %leftblock.0.ph.us, %while.cond.outer.split.us.us ]
  %leftindex.0.us.us = phi i64 [ %sub39.us.us, %do.end.us.us ], [ %leftindex.0.ph.us, %while.cond.outer.split.us.us ]
  %rightindex.0.us.us = phi i64 [ %sub38.us.us, %do.end.us.us ], [ %rightindex.0.ph.us, %while.cond.outer.split.us.us ]
  %n.addr.1.us.us = phi i64 [ %sub40.us.us, %do.end.us.us ], [ %n.addr.1.ph.us, %while.cond.outer.split.us.us ]
  %cmp17.us.us = icmp sgt i64 %n.addr.1.us.us, 0, !dbg !2279
  br i1 %cmp17.us.us, label %while.body.us.us, label %while.cond.46.preheader.loopexit, !dbg !2284

while.body.us.us:                                 ; preds = %while.cond.us.us
  %cmp18.us.us = icmp eq i64 %leftindex.0.us.us, 0, !dbg !2285
  br i1 %cmp18.us.us, label %if.then.19.us.us, label %if.end.26.us.us, !dbg !2286

if.then.19.us.us:                                 ; preds = %while.body.us.us
  %cmp20.us.us = icmp eq %struct.BLOCK* %b.0.us.us, null, !dbg !2287
  br i1 %cmp20.us.us, label %if.then.i, label %if.end.25.us.us, !dbg !2288

if.end.25.us.us:                                  ; preds = %if.then.19.us.us
  %rightlink.us.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.0.us.us, i64 0, i32 2, !dbg !2289
  store %struct.BLOCK* %leftblock.0.us.us, %struct.BLOCK** %rightlink.us.us, align 8, !dbg !2290, !tbaa !2153
  %leftlink.us.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %leftblock.0.us.us, i64 0, i32 0, !dbg !2291
  store %struct.BLOCK* %b.0.us.us, %struct.BLOCK** %leftlink.us.us, align 8, !dbg !2292, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %b.0.us.us, i64 0, metadata !547, metadata !1241), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 62, i64 0, metadata !549, metadata !1241), !dbg !2244
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* null, i64 0, metadata !546, metadata !1241), !dbg !2238
  br label %if.end.26.us.us, !dbg !2293

if.end.26.us.us:                                  ; preds = %if.end.25.us.us, %while.body.us.us
  %b.2.us.us = phi %struct.BLOCK* [ null, %if.end.25.us.us ], [ %b.0.us.us, %while.body.us.us ]
  %leftblock.1.us.us = phi %struct.BLOCK* [ %b.0.us.us, %if.end.25.us.us ], [ %leftblock.0.us.us, %while.body.us.us ]
  %leftindex.1.us.us = phi i64 [ 62, %if.end.25.us.us ], [ %leftindex.0.us.us, %while.body.us.us ]
  tail call void @llvm.dbg.value(metadata i64 %n.addr.1.us.us, i64 0, metadata !558, metadata !1241), !dbg !2294
  %add27.us.us = add i64 %rightindex.0.us.us, 1, !dbg !2295
  %cmp28.us.us = icmp sgt i64 %n.addr.1.us.us, %add27.us.us, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %add27.us.us, i64 0, metadata !558, metadata !1241), !dbg !2294
  %add27.n.addr.1.us.us = select i1 %cmp28.us.us, i64 %add27.us.us, i64 %n.addr.1.us.us, !dbg !2298
  %cmp32.us.us = icmp sgt i64 %add27.n.addr.1.us.us, %leftindex.1.us.us, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %leftindex.1.us.us, i64 0, metadata !558, metadata !1241), !dbg !2294
  %m.1.us.us = select i1 %cmp32.us.us, i64 %leftindex.1.us.us, i64 %add27.n.addr.1.us.us, !dbg !2301
  %arrayidx.us.us = getelementptr %struct.BLOCK, %struct.BLOCK* %rightblock.0.ph.us, i64 0, i32 1, i64 %rightindex.0.us.us, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx.us.us, i64 0, metadata !554, metadata !1241), !dbg !2303
  %sub35.us.us = add i64 %leftindex.1.us.us, -1, !dbg !2304
  %arrayidx37.us.us = getelementptr %struct.BLOCK, %struct.BLOCK* %leftblock.1.us.us, i64 0, i32 1, i64 %sub35.us.us, !dbg !2305
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx37.us.us, i64 0, metadata !557, metadata !1241), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %sub38.us.us, i64 0, metadata !550, metadata !1241), !dbg !2246
  %sub39.us.us = sub i64 %leftindex.1.us.us, %m.1.us.us, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %sub39.us.us, i64 0, metadata !549, metadata !1241), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %sub40.us.us, i64 0, metadata !545, metadata !1241), !dbg !2237
  br label %do.body.us.us, !dbg !2308

do.end.us.us:                                     ; preds = %do.body.us.us
  %sub38.us.us = sub i64 %rightindex.0.us.us, %m.1.us.us, !dbg !2309
  %sub40.us.us = sub i64 %n.addr.1.us.us, %m.1.us.us, !dbg !2310
  %cmp42.us.us = icmp eq i64 %sub38.us.us, -1, !dbg !2311
  br i1 %cmp42.us.us, label %if.then.43.us, label %while.cond.us.us, !dbg !2312

do.body.us.us:                                    ; preds = %do.body.us.us, %if.end.26.us.us
  %src.0.us.us = phi %struct._object** [ %arrayidx.us.us, %if.end.26.us.us ], [ %incdec.ptr.us.us, %do.body.us.us ]
  %dest.0.us.us = phi %struct._object** [ %arrayidx37.us.us, %if.end.26.us.us ], [ %incdec.ptr41.us.us, %do.body.us.us ]
  %m.2.us.us = phi i64 [ %m.1.us.us, %if.end.26.us.us ], [ %dec.us.us, %do.body.us.us ]
  %incdec.ptr.us.us = getelementptr %struct._object*, %struct._object** %src.0.us.us, i64 -1, !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr.us.us, i64 0, metadata !554, metadata !1241), !dbg !2303
  %7 = bitcast %struct._object** %src.0.us.us to i64*, !dbg !2315
  %8 = load i64, i64* %7, align 8, !dbg !2315, !tbaa !1297
  %incdec.ptr41.us.us = getelementptr %struct._object*, %struct._object** %dest.0.us.us, i64 -1, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr41.us.us, i64 0, metadata !557, metadata !1241), !dbg !2306
  %9 = bitcast %struct._object** %dest.0.us.us to i64*, !dbg !2317
  store i64 %8, i64* %9, align 8, !dbg !2317, !tbaa !1297
  %dec.us.us = add i64 %m.2.us.us, -1, !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %dec.us.us, i64 0, metadata !558, metadata !1241), !dbg !2294
  %tobool.us.us = icmp eq i64 %dec.us.us, 0, !dbg !2320
  br i1 %tobool.us.us, label %do.end.us.us, label %do.body.us.us, !dbg !2320

while.cond.outer.split.us.us:                     ; preds = %while.cond.outer.split.us.us.preheader, %if.then.43.us
  %b.0.ph.us = phi %struct.BLOCK* [ %rightblock.0.ph.us, %if.then.43.us ], [ null, %while.cond.outer.split.us.us.preheader ]
  %leftblock.0.ph.us = phi %struct.BLOCK* [ %leftblock.1.us.us.lcssa, %if.then.43.us ], [ %0, %while.cond.outer.split.us.us.preheader ]
  %rightblock.0.ph.us = phi %struct.BLOCK* [ %6, %if.then.43.us ], [ %1, %while.cond.outer.split.us.us.preheader ]
  %leftindex.0.ph.us = phi i64 [ %sub39.us.us.lcssa, %if.then.43.us ], [ %2, %while.cond.outer.split.us.us.preheader ]
  %rightindex.0.ph.us = phi i64 [ 61, %if.then.43.us ], [ %3, %while.cond.outer.split.us.us.preheader ]
  %n.addr.1.ph.us = phi i64 [ %sub40.us.us.lcssa, %if.then.43.us ], [ %n.addr.0, %while.cond.outer.split.us.us.preheader ]
  br label %while.cond.us.us, !dbg !2279

while.cond.outer.while.cond.outer.split_crit_edge: ; preds = %while.cond.outer.while.cond.outer.split_crit_edge.preheader, %if.then.43
  %b.0.ph = phi %struct.BLOCK* [ %rightblock.0.ph, %if.then.43 ], [ null, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  %leftblock.0.ph = phi %struct.BLOCK* [ %leftblock.1.lcssa, %if.then.43 ], [ %0, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  %rightblock.0.ph = phi %struct.BLOCK* [ %21, %if.then.43 ], [ %1, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  %leftindex.0.ph = phi i64 [ %sub39.lcssa, %if.then.43 ], [ %2, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  %rightindex.0.ph = phi i64 [ 61, %if.then.43 ], [ %3, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  %n.addr.1.ph = phi i64 [ %sub40.lcssa, %if.then.43 ], [ %n.addr.0, %while.cond.outer.while.cond.outer.split_crit_edge.preheader ]
  br label %while.cond, !dbg !2279

while.cond:                                       ; preds = %while.cond.outer.while.cond.outer.split_crit_edge, %do.end
  %b.0 = phi %struct.BLOCK* [ %b.2, %do.end ], [ %b.0.ph, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %leftblock.0 = phi %struct.BLOCK* [ %leftblock.1, %do.end ], [ %leftblock.0.ph, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %leftindex.0 = phi i64 [ %sub39, %do.end ], [ %leftindex.0.ph, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %rightindex.0 = phi i64 [ %sub38, %do.end ], [ %rightindex.0.ph, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %n.addr.1 = phi i64 [ %sub40, %do.end ], [ %n.addr.1.ph, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %cmp17 = icmp sgt i64 %n.addr.1, 0, !dbg !2279
  br i1 %cmp17, label %while.body, label %while.cond.46.preheader.loopexit642, !dbg !2284

while.cond.46.preheader.loopexit:                 ; preds = %while.cond.us.us
  %rightblock.0.ph.us.lcssa = phi %struct.BLOCK* [ %rightblock.0.ph.us, %while.cond.us.us ]
  %n.addr.1.us.us.lcssa = phi i64 [ %n.addr.1.us.us, %while.cond.us.us ]
  %rightindex.0.us.us.lcssa = phi i64 [ %rightindex.0.us.us, %while.cond.us.us ]
  %leftindex.0.us.us.lcssa = phi i64 [ %leftindex.0.us.us, %while.cond.us.us ]
  %leftblock.0.us.us.lcssa = phi %struct.BLOCK* [ %leftblock.0.us.us, %while.cond.us.us ]
  %b.0.us.us.lcssa = phi %struct.BLOCK* [ %b.0.us.us, %while.cond.us.us ]
  br label %while.cond.46.preheader, !dbg !2321

while.cond.46.preheader.loopexit642:              ; preds = %while.cond
  %rightblock.0.ph.lcssa = phi %struct.BLOCK* [ %rightblock.0.ph, %while.cond ]
  %n.addr.1.lcssa758 = phi i64 [ %n.addr.1, %while.cond ]
  %rightindex.0.lcssa754 = phi i64 [ %rightindex.0, %while.cond ]
  %leftindex.0.lcssa750 = phi i64 [ %leftindex.0, %while.cond ]
  %leftblock.0.lcssa746 = phi %struct.BLOCK* [ %leftblock.0, %while.cond ]
  %b.0.lcssa742 = phi %struct.BLOCK* [ %b.0, %while.cond ]
  br label %while.cond.46.preheader, !dbg !2321

while.cond.46.preheader:                          ; preds = %while.cond.46.preheader.loopexit642, %while.cond.46.preheader.loopexit
  %rightblock.0.ph.lcssa275 = phi %struct.BLOCK* [ %rightblock.0.ph.us.lcssa, %while.cond.46.preheader.loopexit ], [ %rightblock.0.ph.lcssa, %while.cond.46.preheader.loopexit642 ]
  %n.addr.1.lcssa = phi i64 [ %n.addr.1.us.us.lcssa, %while.cond.46.preheader.loopexit ], [ %n.addr.1.lcssa758, %while.cond.46.preheader.loopexit642 ]
  %rightindex.0.lcssa = phi i64 [ %rightindex.0.us.us.lcssa, %while.cond.46.preheader.loopexit ], [ %rightindex.0.lcssa754, %while.cond.46.preheader.loopexit642 ]
  %leftindex.0.lcssa = phi i64 [ %leftindex.0.us.us.lcssa, %while.cond.46.preheader.loopexit ], [ %leftindex.0.lcssa750, %while.cond.46.preheader.loopexit642 ]
  %leftblock.0.lcssa = phi %struct.BLOCK* [ %leftblock.0.us.us.lcssa, %while.cond.46.preheader.loopexit ], [ %leftblock.0.lcssa746, %while.cond.46.preheader.loopexit642 ]
  %b.0.lcssa = phi %struct.BLOCK* [ %b.0.us.us.lcssa, %while.cond.46.preheader.loopexit ], [ %b.0.lcssa742, %while.cond.46.preheader.loopexit642 ]
  br i1 %cmp.i, label %while.cond.46.outer.split.us.us.preheader, label %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader, !dbg !2321

while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader: ; preds = %while.cond.46.preheader
  br label %while.cond.46.outer.while.cond.46.outer.split_crit_edge, !dbg !2327

while.cond.46.outer.split.us.us.preheader:        ; preds = %while.cond.46.preheader
  br label %while.cond.46.outer.split.us.us, !dbg !2327

if.then.91.us:                                    ; preds = %do.end.89.us.us
  %add82.us.us.lcssa = phi i64 [ %add82.us.us, %do.end.89.us.us ]
  %add81.us.us.lcssa = phi i64 [ %add81.us.us, %do.end.89.us.us ]
  %rightblock.2.us.us.lcssa = phi %struct.BLOCK* [ %rightblock.2.us.us, %do.end.89.us.us ]
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %leftblock.2.ph.us, i64 0, metadata !546, metadata !1241), !dbg !2238
  %rightlink92.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %leftblock.2.ph.us, i64 0, i32 2, !dbg !2328
  %10 = load %struct.BLOCK*, %struct.BLOCK** %rightlink92.us, align 8, !dbg !2328, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %10, i64 0, metadata !547, metadata !1241), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !549, metadata !1241), !dbg !2244
  br label %while.cond.46.outer.split.us.us, !dbg !2331

while.cond.46.us.us:                              ; preds = %while.cond.46.outer.split.us.us, %do.end.89.us.us
  %b.3.us.us = phi %struct.BLOCK* [ %b.5.us.us, %do.end.89.us.us ], [ %b.3.ph.us, %while.cond.46.outer.split.us.us ]
  %rightblock.1.us.us = phi %struct.BLOCK* [ %rightblock.2.us.us, %do.end.89.us.us ], [ %rightblock.1.ph.us, %while.cond.46.outer.split.us.us ]
  %leftindex.2.us.us = phi i64 [ %add80.us.us, %do.end.89.us.us ], [ %leftindex.2.ph.us, %while.cond.46.outer.split.us.us ]
  %rightindex.1.us.us = phi i64 [ %add81.us.us, %do.end.89.us.us ], [ %rightindex.1.ph.us, %while.cond.46.outer.split.us.us ]
  %n.addr.2.us.us = phi i64 [ %add82.us.us, %do.end.89.us.us ], [ %n.addr.2.ph.us, %while.cond.46.outer.split.us.us ]
  %cmp47.us.us = icmp slt i64 %n.addr.2.us.us, 0, !dbg !2327
  br i1 %cmp47.us.us, label %while.body.48.us.us, label %done.loopexit, !dbg !2332

while.body.48.us.us:                              ; preds = %while.cond.46.us.us
  %cmp49.us.us = icmp eq i64 %rightindex.1.us.us, 61, !dbg !2333
  br i1 %cmp49.us.us, label %if.then.50.us.us, label %if.end.60.us.us, !dbg !2334

if.then.50.us.us:                                 ; preds = %while.body.48.us.us
  %cmp51.us.us = icmp eq %struct.BLOCK* %b.3.us.us, null, !dbg !2335
  br i1 %cmp51.us.us, label %if.then.i.207, label %if.end.57.us.us, !dbg !2336

if.end.57.us.us:                                  ; preds = %if.then.50.us.us
  %leftlink58.us.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.3.us.us, i64 0, i32 0, !dbg !2337
  store %struct.BLOCK* %rightblock.1.us.us, %struct.BLOCK** %leftlink58.us.us, align 8, !dbg !2338, !tbaa !1532
  %rightlink59.us.us = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %rightblock.1.us.us, i64 0, i32 2, !dbg !2339
  store %struct.BLOCK* %b.3.us.us, %struct.BLOCK** %rightlink59.us.us, align 8, !dbg !2340, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %b.3.us.us, i64 0, metadata !548, metadata !1241), !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !550, metadata !1241), !dbg !2246
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* null, i64 0, metadata !546, metadata !1241), !dbg !2238
  br label %if.end.60.us.us, !dbg !2341

if.end.60.us.us:                                  ; preds = %if.end.57.us.us, %while.body.48.us.us
  %b.5.us.us = phi %struct.BLOCK* [ null, %if.end.57.us.us ], [ %b.3.us.us, %while.body.48.us.us ]
  %rightblock.2.us.us = phi %struct.BLOCK* [ %b.3.us.us, %if.end.57.us.us ], [ %rightblock.1.us.us, %while.body.48.us.us ]
  %rightindex.2.us.us = phi i64 [ -1, %if.end.57.us.us ], [ %rightindex.1.us.us, %while.body.48.us.us ]
  %sub64.us.us = sub i64 0, %n.addr.2.us.us, !dbg !2342
  tail call void @llvm.dbg.value(metadata i64 %sub64.us.us, i64 0, metadata !563, metadata !1241), !dbg !2343
  %sub65.us.us = sub i64 62, %leftindex.2.us.us, !dbg !2344
  %cmp66.us.us = icmp slt i64 %sub65.us.us, %sub64.us.us, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %sub65.us.us, i64 0, metadata !563, metadata !1241), !dbg !2343
  %sub65.sub64.us.us = select i1 %cmp66.us.us, i64 %sub65.us.us, i64 %sub64.us.us, !dbg !2347
  %sub70.us.us = sub i64 61, %rightindex.2.us.us, !dbg !2348
  %cmp71.us.us = icmp sgt i64 %sub65.sub64.us.us, %sub70.us.us, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %sub70.us.us, i64 0, metadata !563, metadata !1241), !dbg !2343
  %m63.1.us.us = select i1 %cmp71.us.us, i64 %sub70.us.us, i64 %sub65.sub64.us.us, !dbg !2351
  %arrayidx76.us.us = getelementptr %struct.BLOCK, %struct.BLOCK* %leftblock.2.ph.us, i64 0, i32 1, i64 %leftindex.2.us.us, !dbg !2352
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx76.us.us, i64 0, metadata !559, metadata !1241), !dbg !2353
  %add77.us.us = add i64 %rightindex.2.us.us, 1, !dbg !2354
  %arrayidx79.us.us = getelementptr %struct.BLOCK, %struct.BLOCK* %rightblock.2.us.us, i64 0, i32 1, i64 %add77.us.us, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx79.us.us, i64 0, metadata !562, metadata !1241), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %add80.us.us, i64 0, metadata !549, metadata !1241), !dbg !2244
  %add81.us.us = add i64 %m63.1.us.us, %rightindex.2.us.us, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %add81.us.us, i64 0, metadata !550, metadata !1241), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %add82.us.us, i64 0, metadata !545, metadata !1241), !dbg !2237
  br label %do.body.83.us.us, !dbg !2358

do.end.89.us.us:                                  ; preds = %do.body.83.us.us
  %add80.us.us = add i64 %m63.1.us.us, %leftindex.2.us.us, !dbg !2359
  %add82.us.us = add i64 %m63.1.us.us, %n.addr.2.us.us, !dbg !2360
  %cmp90.us.us = icmp eq i64 %add80.us.us, 62, !dbg !2361
  br i1 %cmp90.us.us, label %if.then.91.us, label %while.cond.46.us.us, !dbg !2362

do.body.83.us.us:                                 ; preds = %do.body.83.us.us, %if.end.60.us.us
  %src61.0.us.us = phi %struct._object** [ %arrayidx76.us.us, %if.end.60.us.us ], [ %incdec.ptr84.us.us, %do.body.83.us.us ]
  %dest62.0.us.us = phi %struct._object** [ %arrayidx79.us.us, %if.end.60.us.us ], [ %incdec.ptr85.us.us, %do.body.83.us.us ]
  %m63.2.us.us = phi i64 [ %m63.1.us.us, %if.end.60.us.us ], [ %dec87.us.us, %do.body.83.us.us ]
  %incdec.ptr84.us.us = getelementptr %struct._object*, %struct._object** %src61.0.us.us, i64 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr84.us.us, i64 0, metadata !559, metadata !1241), !dbg !2353
  %11 = bitcast %struct._object** %src61.0.us.us to i64*, !dbg !2365
  %12 = load i64, i64* %11, align 8, !dbg !2365, !tbaa !1297
  %incdec.ptr85.us.us = getelementptr %struct._object*, %struct._object** %dest62.0.us.us, i64 1, !dbg !2366
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr85.us.us, i64 0, metadata !562, metadata !1241), !dbg !2356
  %13 = bitcast %struct._object** %dest62.0.us.us to i64*, !dbg !2367
  store i64 %12, i64* %13, align 8, !dbg !2367, !tbaa !1297
  %dec87.us.us = add i64 %m63.2.us.us, -1, !dbg !2368
  tail call void @llvm.dbg.value(metadata i64 %dec87.us.us, i64 0, metadata !563, metadata !1241), !dbg !2343
  %tobool88.us.us = icmp eq i64 %dec87.us.us, 0, !dbg !2370
  br i1 %tobool88.us.us, label %do.end.89.us.us, label %do.body.83.us.us, !dbg !2370

while.cond.46.outer.split.us.us:                  ; preds = %while.cond.46.outer.split.us.us.preheader, %if.then.91.us
  %b.3.ph.us = phi %struct.BLOCK* [ %leftblock.2.ph.us, %if.then.91.us ], [ %b.0.lcssa, %while.cond.46.outer.split.us.us.preheader ]
  %leftblock.2.ph.us = phi %struct.BLOCK* [ %10, %if.then.91.us ], [ %leftblock.0.lcssa, %while.cond.46.outer.split.us.us.preheader ]
  %rightblock.1.ph.us = phi %struct.BLOCK* [ %rightblock.2.us.us.lcssa, %if.then.91.us ], [ %rightblock.0.ph.lcssa275, %while.cond.46.outer.split.us.us.preheader ]
  %leftindex.2.ph.us = phi i64 [ 0, %if.then.91.us ], [ %leftindex.0.lcssa, %while.cond.46.outer.split.us.us.preheader ]
  %rightindex.1.ph.us = phi i64 [ %add81.us.us.lcssa, %if.then.91.us ], [ %rightindex.0.lcssa, %while.cond.46.outer.split.us.us.preheader ]
  %n.addr.2.ph.us = phi i64 [ %add82.us.us.lcssa, %if.then.91.us ], [ %n.addr.1.lcssa, %while.cond.46.outer.split.us.us.preheader ]
  br label %while.cond.46.us.us, !dbg !2327

while.body:                                       ; preds = %while.cond
  %cmp18 = icmp eq i64 %leftindex.0, 0, !dbg !2285
  br i1 %cmp18, label %if.then.19, label %if.end.26, !dbg !2286

if.then.19:                                       ; preds = %while.body
  %cmp20 = icmp eq %struct.BLOCK* %b.0, null, !dbg !2287
  br i1 %cmp20, label %if.end.i, label %if.end.25, !dbg !2288

if.then.i:                                        ; preds = %if.then.19.us.us
  %rightblock.0.ph.us.lcssa741 = phi %struct.BLOCK* [ %rightblock.0.ph.us, %if.then.19.us.us ]
  %rightindex.0.us.us.lcssa737 = phi i64 [ %rightindex.0.us.us, %if.then.19.us.us ]
  %leftblock.0.us.us.lcssa733 = phi %struct.BLOCK* [ %leftblock.0.us.us, %if.then.19.us.us ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !568, metadata !1241) #1, !dbg !2371
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2372, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !2374
  br label %if.end.97, !dbg !2375

if.end.i:                                         ; preds = %if.then.19
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !568, metadata !1241) #1, !dbg !2371
  %15 = load i64, i64* @numfreeblocks, align 8, !dbg !2376, !tbaa !1521
  %tobool.i = icmp eq i64 %15, 0, !dbg !2376
  br i1 %tobool.i, label %if.end.2.i, label %if.then.1.i, !dbg !2377

if.then.1.i:                                      ; preds = %if.end.i
  %dec.i = add i64 %15, -1, !dbg !2378
  store i64 %dec.i, i64* @numfreeblocks, align 8, !dbg !2378, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i, !dbg !2379
  %16 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2379, !tbaa !1297
  br label %newblock.exit, !dbg !2380

if.end.2.i:                                       ; preds = %if.end.i
  %call.i = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !2381
  %cmp3.i = icmp eq i8* %call.i, null, !dbg !2382
  br i1 %cmp3.i, label %if.end.5.i, label %if.then.4.i, !dbg !2383

if.then.4.i:                                      ; preds = %if.end.2.i
  %17 = bitcast i8* %call.i to %struct.BLOCK*, !dbg !2381
  br label %newblock.exit, !dbg !2384

if.end.5.i:                                       ; preds = %if.end.2.i
  %rightblock.0.ph.lcssa762 = phi %struct.BLOCK* [ %rightblock.0.ph, %if.end.2.i ]
  %rightindex.0.lcssa755 = phi i64 [ %rightindex.0, %if.end.2.i ]
  %leftblock.0.lcssa747 = phi %struct.BLOCK* [ %leftblock.0, %if.end.2.i ]
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2385
  br label %if.end.97, !dbg !2386

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i = phi %struct.BLOCK* [ %16, %if.then.1.i ], [ %17, %if.then.4.i ], !dbg !2387
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i, i64 0, metadata !546, metadata !1241), !dbg !2238
  %cmp22 = icmp eq %struct.BLOCK* %retval.0.i, null, !dbg !2388
  br i1 %cmp22, label %if.end.97.loopexit643, label %if.end.25, !dbg !2390

if.end.25:                                        ; preds = %newblock.exit, %if.then.19
  %b.1 = phi %struct.BLOCK* [ %retval.0.i, %newblock.exit ], [ %b.0, %if.then.19 ]
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.1, i64 0, i32 2, !dbg !2289
  store %struct.BLOCK* %leftblock.0, %struct.BLOCK** %rightlink, align 8, !dbg !2290, !tbaa !2153
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %leftblock.0, i64 0, i32 0, !dbg !2291
  store %struct.BLOCK* %b.1, %struct.BLOCK** %leftlink, align 8, !dbg !2292, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %b.1, i64 0, metadata !547, metadata !1241), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 62, i64 0, metadata !549, metadata !1241), !dbg !2244
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* null, i64 0, metadata !546, metadata !1241), !dbg !2238
  br label %if.end.26, !dbg !2293

if.end.26:                                        ; preds = %if.end.25, %while.body
  %b.2 = phi %struct.BLOCK* [ null, %if.end.25 ], [ %b.0, %while.body ]
  %leftblock.1 = phi %struct.BLOCK* [ %b.1, %if.end.25 ], [ %leftblock.0, %while.body ]
  %leftindex.1 = phi i64 [ 62, %if.end.25 ], [ %leftindex.0, %while.body ]
  tail call void @llvm.dbg.value(metadata i64 %n.addr.1, i64 0, metadata !558, metadata !1241), !dbg !2294
  %add27 = add i64 %rightindex.0, 1, !dbg !2295
  %cmp28 = icmp sgt i64 %n.addr.1, %add27, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %add27, i64 0, metadata !558, metadata !1241), !dbg !2294
  %add27.n.addr.1 = select i1 %cmp28, i64 %add27, i64 %n.addr.1, !dbg !2298
  %cmp32 = icmp sgt i64 %add27.n.addr.1, %leftindex.1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %leftindex.1, i64 0, metadata !558, metadata !1241), !dbg !2294
  %m.1 = select i1 %cmp32, i64 %leftindex.1, i64 %add27.n.addr.1, !dbg !2301
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %rightblock.0.ph, i64 0, i32 1, i64 %rightindex.0, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx, i64 0, metadata !554, metadata !1241), !dbg !2303
  %sub35 = add i64 %leftindex.1, -1, !dbg !2304
  %arrayidx37 = getelementptr %struct.BLOCK, %struct.BLOCK* %leftblock.1, i64 0, i32 1, i64 %sub35, !dbg !2305
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx37, i64 0, metadata !557, metadata !1241), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %sub38, i64 0, metadata !550, metadata !1241), !dbg !2246
  %sub39 = sub i64 %leftindex.1, %m.1, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %sub39, i64 0, metadata !549, metadata !1241), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %sub40, i64 0, metadata !545, metadata !1241), !dbg !2237
  br label %do.body, !dbg !2308

do.body:                                          ; preds = %do.body, %if.end.26
  %src.0 = phi %struct._object** [ %arrayidx, %if.end.26 ], [ %incdec.ptr, %do.body ]
  %dest.0 = phi %struct._object** [ %arrayidx37, %if.end.26 ], [ %incdec.ptr41, %do.body ]
  %m.2 = phi i64 [ %m.1, %if.end.26 ], [ %dec, %do.body ]
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %src.0, i64 -1, !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr, i64 0, metadata !554, metadata !1241), !dbg !2303
  %18 = bitcast %struct._object** %src.0 to i64*, !dbg !2315
  %19 = load i64, i64* %18, align 8, !dbg !2315, !tbaa !1297
  %incdec.ptr41 = getelementptr %struct._object*, %struct._object** %dest.0, i64 -1, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr41, i64 0, metadata !557, metadata !1241), !dbg !2306
  %20 = bitcast %struct._object** %dest.0 to i64*, !dbg !2317
  store i64 %19, i64* %20, align 8, !dbg !2317, !tbaa !1297
  %dec = add i64 %m.2, -1, !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !558, metadata !1241), !dbg !2294
  %tobool = icmp eq i64 %dec, 0, !dbg !2320
  br i1 %tobool, label %do.end, label %do.body, !dbg !2320

do.end:                                           ; preds = %do.body
  %sub38 = sub i64 %rightindex.0, %m.1, !dbg !2309
  %sub40 = sub i64 %n.addr.1, %m.1, !dbg !2310
  %cmp42 = icmp eq i64 %sub38, -1, !dbg !2311
  br i1 %cmp42, label %if.then.43, label %while.cond, !dbg !2312

if.then.43:                                       ; preds = %do.end
  %sub40.lcssa = phi i64 [ %sub40, %do.end ]
  %sub39.lcssa = phi i64 [ %sub39, %do.end ]
  %leftblock.1.lcssa = phi %struct.BLOCK* [ %leftblock.1, %do.end ]
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %rightblock.0.ph, i64 0, metadata !546, metadata !1241), !dbg !2238
  %leftlink44 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %rightblock.0.ph, i64 0, i32 0, !dbg !2280
  %21 = load %struct.BLOCK*, %struct.BLOCK** %leftlink44, align 8, !dbg !2280, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %21, i64 0, metadata !548, metadata !1241), !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 61, i64 0, metadata !550, metadata !1241), !dbg !2246
  br label %while.cond.outer.while.cond.outer.split_crit_edge, !dbg !2283

while.cond.46:                                    ; preds = %while.cond.46.outer.while.cond.46.outer.split_crit_edge, %do.end.89
  %b.3 = phi %struct.BLOCK* [ %b.5, %do.end.89 ], [ %b.3.ph, %while.cond.46.outer.while.cond.46.outer.split_crit_edge ]
  %rightblock.1 = phi %struct.BLOCK* [ %rightblock.2, %do.end.89 ], [ %rightblock.1.ph, %while.cond.46.outer.while.cond.46.outer.split_crit_edge ]
  %leftindex.2 = phi i64 [ %add80, %do.end.89 ], [ %leftindex.2.ph, %while.cond.46.outer.while.cond.46.outer.split_crit_edge ]
  %rightindex.1 = phi i64 [ %add81, %do.end.89 ], [ %rightindex.1.ph, %while.cond.46.outer.while.cond.46.outer.split_crit_edge ]
  %n.addr.2 = phi i64 [ %add82, %do.end.89 ], [ %n.addr.2.ph, %while.cond.46.outer.while.cond.46.outer.split_crit_edge ]
  %cmp47 = icmp slt i64 %n.addr.2, 0, !dbg !2327
  br i1 %cmp47, label %while.body.48, label %done.loopexit641, !dbg !2332

while.body.48:                                    ; preds = %while.cond.46
  %cmp49 = icmp eq i64 %rightindex.1, 61, !dbg !2333
  br i1 %cmp49, label %if.then.50, label %if.end.60, !dbg !2334

if.then.50:                                       ; preds = %while.body.48
  %cmp51 = icmp eq %struct.BLOCK* %b.3, null, !dbg !2335
  br i1 %cmp51, label %if.end.i.209, label %if.end.57, !dbg !2336

if.then.i.207:                                    ; preds = %if.then.50.us.us
  %leftblock.2.ph.us.lcssa712 = phi %struct.BLOCK* [ %leftblock.2.ph.us, %if.then.50.us.us ]
  %leftindex.2.us.us.lcssa708 = phi i64 [ %leftindex.2.us.us, %if.then.50.us.us ]
  %rightblock.1.us.us.lcssa706 = phi %struct.BLOCK* [ %rightblock.1.us.us, %if.then.50.us.us ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !568, metadata !1241) #1, !dbg !2391
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2392, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !2393
  br label %if.end.97, !dbg !2394

if.end.i.209:                                     ; preds = %if.then.50
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !568, metadata !1241) #1, !dbg !2391
  %23 = load i64, i64* @numfreeblocks, align 8, !dbg !2395, !tbaa !1521
  %tobool.i.208 = icmp eq i64 %23, 0, !dbg !2395
  br i1 %tobool.i.208, label %if.end.2.i.215, label %if.then.1.i.212, !dbg !2396

if.then.1.i.212:                                  ; preds = %if.end.i.209
  %dec.i.210 = add i64 %23, -1, !dbg !2397
  store i64 %dec.i.210, i64* @numfreeblocks, align 8, !dbg !2397, !tbaa !1521
  %arrayidx.i.211 = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i.210, !dbg !2398
  %24 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i.211, align 8, !dbg !2398, !tbaa !1297
  br label %newblock.exit220, !dbg !2399

if.end.2.i.215:                                   ; preds = %if.end.i.209
  %call.i.213 = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !2400
  %cmp3.i.214 = icmp eq i8* %call.i.213, null, !dbg !2401
  br i1 %cmp3.i.214, label %if.end.5.i.218, label %if.then.4.i.216, !dbg !2402

if.then.4.i.216:                                  ; preds = %if.end.2.i.215
  %25 = bitcast i8* %call.i.213 to %struct.BLOCK*, !dbg !2400
  br label %newblock.exit220, !dbg !2403

if.end.5.i.218:                                   ; preds = %if.end.2.i.215
  %leftblock.2.ph.lcssa729 = phi %struct.BLOCK* [ %leftblock.2.ph, %if.end.2.i.215 ]
  %leftindex.2.lcssa722 = phi i64 [ %leftindex.2, %if.end.2.i.215 ]
  %rightblock.1.lcssa718 = phi %struct.BLOCK* [ %rightblock.1, %if.end.2.i.215 ]
  %call6.i.217 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2404
  br label %if.end.97, !dbg !2405

newblock.exit220:                                 ; preds = %if.then.1.i.212, %if.then.4.i.216
  %retval.0.i.219 = phi %struct.BLOCK* [ %24, %if.then.1.i.212 ], [ %25, %if.then.4.i.216 ], !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i.219, i64 0, metadata !546, metadata !1241), !dbg !2238
  %cmp54 = icmp eq %struct.BLOCK* %retval.0.i.219, null, !dbg !2407
  br i1 %cmp54, label %if.end.97.loopexit, label %if.end.57, !dbg !2409

if.end.57:                                        ; preds = %newblock.exit220, %if.then.50
  %b.4 = phi %struct.BLOCK* [ %retval.0.i.219, %newblock.exit220 ], [ %b.3, %if.then.50 ]
  %leftlink58 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.4, i64 0, i32 0, !dbg !2337
  store %struct.BLOCK* %rightblock.1, %struct.BLOCK** %leftlink58, align 8, !dbg !2338, !tbaa !1532
  %rightlink59 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %rightblock.1, i64 0, i32 2, !dbg !2339
  store %struct.BLOCK* %b.4, %struct.BLOCK** %rightlink59, align 8, !dbg !2340, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %b.4, i64 0, metadata !548, metadata !1241), !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !550, metadata !1241), !dbg !2246
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* null, i64 0, metadata !546, metadata !1241), !dbg !2238
  br label %if.end.60, !dbg !2341

if.end.60:                                        ; preds = %if.end.57, %while.body.48
  %b.5 = phi %struct.BLOCK* [ null, %if.end.57 ], [ %b.3, %while.body.48 ]
  %rightblock.2 = phi %struct.BLOCK* [ %b.4, %if.end.57 ], [ %rightblock.1, %while.body.48 ]
  %rightindex.2 = phi i64 [ -1, %if.end.57 ], [ %rightindex.1, %while.body.48 ]
  %sub64 = sub i64 0, %n.addr.2, !dbg !2342
  tail call void @llvm.dbg.value(metadata i64 %sub64, i64 0, metadata !563, metadata !1241), !dbg !2343
  %sub65 = sub i64 62, %leftindex.2, !dbg !2344
  %cmp66 = icmp slt i64 %sub65, %sub64, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %sub65, i64 0, metadata !563, metadata !1241), !dbg !2343
  %sub65.sub64 = select i1 %cmp66, i64 %sub65, i64 %sub64, !dbg !2347
  %sub70 = sub i64 61, %rightindex.2, !dbg !2348
  %cmp71 = icmp sgt i64 %sub65.sub64, %sub70, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %sub70, i64 0, metadata !563, metadata !1241), !dbg !2343
  %m63.1 = select i1 %cmp71, i64 %sub70, i64 %sub65.sub64, !dbg !2351
  %arrayidx76 = getelementptr %struct.BLOCK, %struct.BLOCK* %leftblock.2.ph, i64 0, i32 1, i64 %leftindex.2, !dbg !2352
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx76, i64 0, metadata !559, metadata !1241), !dbg !2353
  %add77 = add i64 %rightindex.2, 1, !dbg !2354
  %arrayidx79 = getelementptr %struct.BLOCK, %struct.BLOCK* %rightblock.2, i64 0, i32 1, i64 %add77, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx79, i64 0, metadata !562, metadata !1241), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %add80, i64 0, metadata !549, metadata !1241), !dbg !2244
  %add81 = add i64 %m63.1, %rightindex.2, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %add81, i64 0, metadata !550, metadata !1241), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %add82, i64 0, metadata !545, metadata !1241), !dbg !2237
  br label %do.body.83, !dbg !2358

do.body.83:                                       ; preds = %do.body.83, %if.end.60
  %src61.0 = phi %struct._object** [ %arrayidx76, %if.end.60 ], [ %incdec.ptr84, %do.body.83 ]
  %dest62.0 = phi %struct._object** [ %arrayidx79, %if.end.60 ], [ %incdec.ptr85, %do.body.83 ]
  %m63.2 = phi i64 [ %m63.1, %if.end.60 ], [ %dec87, %do.body.83 ]
  %incdec.ptr84 = getelementptr %struct._object*, %struct._object** %src61.0, i64 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr84, i64 0, metadata !559, metadata !1241), !dbg !2353
  %26 = bitcast %struct._object** %src61.0 to i64*, !dbg !2365
  %27 = load i64, i64* %26, align 8, !dbg !2365, !tbaa !1297
  %incdec.ptr85 = getelementptr %struct._object*, %struct._object** %dest62.0, i64 1, !dbg !2366
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr85, i64 0, metadata !562, metadata !1241), !dbg !2356
  %28 = bitcast %struct._object** %dest62.0 to i64*, !dbg !2367
  store i64 %27, i64* %28, align 8, !dbg !2367, !tbaa !1297
  %dec87 = add i64 %m63.2, -1, !dbg !2368
  tail call void @llvm.dbg.value(metadata i64 %dec87, i64 0, metadata !563, metadata !1241), !dbg !2343
  %tobool88 = icmp eq i64 %dec87, 0, !dbg !2370
  br i1 %tobool88, label %do.end.89, label %do.body.83, !dbg !2370

do.end.89:                                        ; preds = %do.body.83
  %add80 = add i64 %m63.1, %leftindex.2, !dbg !2359
  %add82 = add i64 %m63.1, %n.addr.2, !dbg !2360
  %cmp90 = icmp eq i64 %add80, 62, !dbg !2361
  br i1 %cmp90, label %if.then.91, label %while.cond.46, !dbg !2362

if.then.91:                                       ; preds = %do.end.89
  %add82.lcssa = phi i64 [ %add82, %do.end.89 ]
  %add81.lcssa = phi i64 [ %add81, %do.end.89 ]
  %rightblock.2.lcssa = phi %struct.BLOCK* [ %rightblock.2, %do.end.89 ]
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %leftblock.2.ph, i64 0, metadata !546, metadata !1241), !dbg !2238
  %rightlink92 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %leftblock.2.ph, i64 0, i32 2, !dbg !2328
  %29 = load %struct.BLOCK*, %struct.BLOCK** %rightlink92, align 8, !dbg !2328, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %29, i64 0, metadata !547, metadata !1241), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !549, metadata !1241), !dbg !2244
  br label %while.cond.46.outer.while.cond.46.outer.split_crit_edge, !dbg !2331

while.cond.46.outer.while.cond.46.outer.split_crit_edge: ; preds = %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader, %if.then.91
  %b.3.ph = phi %struct.BLOCK* [ %leftblock.2.ph, %if.then.91 ], [ %b.0.lcssa, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  %leftblock.2.ph = phi %struct.BLOCK* [ %29, %if.then.91 ], [ %leftblock.0.lcssa, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  %rightblock.1.ph = phi %struct.BLOCK* [ %rightblock.2.lcssa, %if.then.91 ], [ %rightblock.0.ph.lcssa275, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  %leftindex.2.ph = phi i64 [ 0, %if.then.91 ], [ %leftindex.0.lcssa, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  %rightindex.1.ph = phi i64 [ %add81.lcssa, %if.then.91 ], [ %rightindex.0.lcssa, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  %n.addr.2.ph = phi i64 [ %add82.lcssa, %if.then.91 ], [ %n.addr.1.lcssa, %while.cond.46.outer.while.cond.46.outer.split_crit_edge.preheader ]
  br label %while.cond.46, !dbg !2327

done.loopexit:                                    ; preds = %while.cond.46.us.us
  %leftblock.2.ph.us.lcssa = phi %struct.BLOCK* [ %leftblock.2.ph.us, %while.cond.46.us.us ]
  %rightindex.1.us.us.lcssa = phi i64 [ %rightindex.1.us.us, %while.cond.46.us.us ]
  %leftindex.2.us.us.lcssa = phi i64 [ %leftindex.2.us.us, %while.cond.46.us.us ]
  %rightblock.1.us.us.lcssa = phi %struct.BLOCK* [ %rightblock.1.us.us, %while.cond.46.us.us ]
  %b.3.us.us.lcssa = phi %struct.BLOCK* [ %b.3.us.us, %while.cond.46.us.us ]
  br label %done, !dbg !2410

done.loopexit641:                                 ; preds = %while.cond.46
  %leftblock.2.ph.lcssa = phi %struct.BLOCK* [ %leftblock.2.ph, %while.cond.46 ]
  %rightindex.1.lcssa725 = phi i64 [ %rightindex.1, %while.cond.46 ]
  %leftindex.2.lcssa721 = phi i64 [ %leftindex.2, %while.cond.46 ]
  %rightblock.1.lcssa717 = phi %struct.BLOCK* [ %rightblock.1, %while.cond.46 ]
  %b.3.lcssa713 = phi %struct.BLOCK* [ %b.3, %while.cond.46 ]
  br label %done, !dbg !2410

done:                                             ; preds = %done.loopexit641, %done.loopexit
  %leftblock.2.ph.lcssa252 = phi %struct.BLOCK* [ %leftblock.2.ph.us.lcssa, %done.loopexit ], [ %leftblock.2.ph.lcssa, %done.loopexit641 ]
  %rightindex.1.lcssa = phi i64 [ %rightindex.1.us.us.lcssa, %done.loopexit ], [ %rightindex.1.lcssa725, %done.loopexit641 ]
  %leftindex.2.lcssa = phi i64 [ %leftindex.2.us.us.lcssa, %done.loopexit ], [ %leftindex.2.lcssa721, %done.loopexit641 ]
  %rightblock.1.lcssa = phi %struct.BLOCK* [ %rightblock.1.us.us.lcssa, %done.loopexit ], [ %rightblock.1.lcssa717, %done.loopexit641 ]
  %b.3.lcssa = phi %struct.BLOCK* [ %b.3.us.us.lcssa, %done.loopexit ], [ %b.3.lcssa713, %done.loopexit641 ]
  %cmp95 = icmp eq %struct.BLOCK* %b.3.lcssa, null, !dbg !2410
  br i1 %cmp95, label %if.end.97, label %if.then.96, !dbg !2412

if.then.96:                                       ; preds = %done
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %b.3, i64 0, metadata !494, metadata !1241) #1, !dbg !2413
  %30 = load i64, i64* @numfreeblocks, align 8, !dbg !2415, !tbaa !1521
  %cmp.i.221 = icmp slt i64 %30, 10, !dbg !2416
  br i1 %cmp.i.221, label %if.then.i.223, label %if.else.i, !dbg !2417

if.then.i.223:                                    ; preds = %if.then.96
  %arrayidx.i.222 = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %30, !dbg !2418
  store %struct.BLOCK* %b.3.lcssa, %struct.BLOCK** %arrayidx.i.222, align 8, !dbg !2419, !tbaa !1297
  %inc.i = add i64 %30, 1, !dbg !2415
  store i64 %inc.i, i64* @numfreeblocks, align 8, !dbg !2415, !tbaa !1521
  br label %if.end.97, !dbg !2420

if.else.i:                                        ; preds = %if.then.96
  %31 = bitcast %struct.BLOCK* %b.3.lcssa to i8*, !dbg !2421
  tail call void @PyMem_Free(i8* %31) #1, !dbg !2422
  br label %if.end.97, !dbg !2423

if.end.97.loopexit:                               ; preds = %newblock.exit220
  %leftblock.2.ph.lcssa730 = phi %struct.BLOCK* [ %leftblock.2.ph, %newblock.exit220 ]
  %leftindex.2.lcssa723 = phi i64 [ %leftindex.2, %newblock.exit220 ]
  %rightblock.1.lcssa719 = phi %struct.BLOCK* [ %rightblock.1, %newblock.exit220 ]
  br label %if.end.97, !dbg !2424

if.end.97.loopexit643:                            ; preds = %newblock.exit
  %rightblock.0.ph.lcssa763 = phi %struct.BLOCK* [ %rightblock.0.ph, %newblock.exit ]
  %rightindex.0.lcssa756 = phi i64 [ %rightindex.0, %newblock.exit ]
  %leftblock.0.lcssa748 = phi %struct.BLOCK* [ %leftblock.0, %newblock.exit ]
  br label %if.end.97, !dbg !2424

if.end.97:                                        ; preds = %if.end.97.loopexit643, %if.end.97.loopexit, %if.end.5.i.218, %if.then.i.207, %if.end.5.i, %if.then.i, %if.else.i, %if.then.i.223, %done
  %rv.0232 = phi i32 [ 0, %done ], [ 0, %if.then.i.223 ], [ 0, %if.else.i ], [ -1, %if.then.i ], [ -1, %if.end.5.i ], [ -1, %if.then.i.207 ], [ -1, %if.end.5.i.218 ], [ -1, %if.end.97.loopexit ], [ -1, %if.end.97.loopexit643 ]
  %rightindex.3231 = phi i64 [ %rightindex.1.lcssa, %done ], [ %rightindex.1.lcssa, %if.then.i.223 ], [ %rightindex.1.lcssa, %if.else.i ], [ %rightindex.0.us.us.lcssa737, %if.then.i ], [ %rightindex.0.lcssa755, %if.end.5.i ], [ 61, %if.then.i.207 ], [ 61, %if.end.5.i.218 ], [ 61, %if.end.97.loopexit ], [ %rightindex.0.lcssa756, %if.end.97.loopexit643 ]
  %leftindex.3230 = phi i64 [ %leftindex.2.lcssa, %done ], [ %leftindex.2.lcssa, %if.then.i.223 ], [ %leftindex.2.lcssa, %if.else.i ], [ 0, %if.then.i ], [ 0, %if.end.5.i ], [ %leftindex.2.us.us.lcssa708, %if.then.i.207 ], [ %leftindex.2.lcssa722, %if.end.5.i.218 ], [ %leftindex.2.lcssa723, %if.end.97.loopexit ], [ 0, %if.end.97.loopexit643 ]
  %rightblock.3229 = phi %struct.BLOCK* [ %rightblock.1.lcssa, %done ], [ %rightblock.1.lcssa, %if.then.i.223 ], [ %rightblock.1.lcssa, %if.else.i ], [ %rightblock.0.ph.us.lcssa741, %if.then.i ], [ %rightblock.0.ph.lcssa762, %if.end.5.i ], [ %rightblock.1.us.us.lcssa706, %if.then.i.207 ], [ %rightblock.1.lcssa718, %if.end.5.i.218 ], [ %rightblock.1.lcssa719, %if.end.97.loopexit ], [ %rightblock.0.ph.lcssa763, %if.end.97.loopexit643 ]
  %leftblock.3228 = phi %struct.BLOCK* [ %leftblock.2.ph.lcssa252, %done ], [ %leftblock.2.ph.lcssa252, %if.then.i.223 ], [ %leftblock.2.ph.lcssa252, %if.else.i ], [ %leftblock.0.us.us.lcssa733, %if.then.i ], [ %leftblock.0.lcssa747, %if.end.5.i ], [ %leftblock.2.ph.us.lcssa712, %if.then.i.207 ], [ %leftblock.2.ph.lcssa729, %if.end.5.i.218 ], [ %leftblock.2.ph.lcssa730, %if.end.97.loopexit ], [ %leftblock.0.lcssa748, %if.end.97.loopexit643 ]
  store %struct.BLOCK* %leftblock.3228, %struct.BLOCK** %leftblock1, align 8, !dbg !2424, !tbaa !1493
  store %struct.BLOCK* %rightblock.3229, %struct.BLOCK** %rightblock2, align 8, !dbg !2425, !tbaa !1520
  store i64 %leftindex.3230, i64* %leftindex3, align 8, !dbg !2426, !tbaa !1619
  store i64 %rightindex.3231, i64* %rightindex4, align 8, !dbg !2427, !tbaa !1549
  br label %cleanup, !dbg !2428

cleanup:                                          ; preds = %entry, %if.end.97
  %retval.0 = phi i32 [ %rv.0232, %if.end.97 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !2429
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_popleft(%struct.dequeobject* nocapture %deque, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !574, metadata !1241), !dbg !2430
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !575, metadata !1241), !dbg !2431
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2432
  %0 = load i64, i64* %ob_size, align 8, !dbg !2433, !tbaa !1502
  %cmp = icmp eq i64 %0, 0, !dbg !2434
  br i1 %cmp, label %if.then, label %if.end, !dbg !2435

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2436, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2437
  br label %cleanup, !dbg !2438

if.end:                                           ; preds = %entry
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2439
  %2 = load i64, i64* %leftindex, align 8, !dbg !2439, !tbaa !1619
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2440
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !2441, !tbaa !1493
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %3, i64 0, i32 1, i64 %2, !dbg !2442
  %4 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2442, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !576, metadata !1241), !dbg !2443
  %inc = add i64 %2, 1, !dbg !2444
  store i64 %inc, i64* %leftindex, align 8, !dbg !2444, !tbaa !1619
  %dec = add i64 %0, -1, !dbg !2445
  store i64 %dec, i64* %ob_size, align 8, !dbg !2433, !tbaa !1502
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2446
  %5 = load i64, i64* %state, align 8, !dbg !2447, !tbaa !1869
  %inc3 = add i64 %5, 1, !dbg !2447
  store i64 %inc3, i64* %state, align 8, !dbg !2447, !tbaa !1869
  %cmp5 = icmp eq i64 %inc, 62, !dbg !2448
  br i1 %cmp5, label %if.then.6, label %cleanup, !dbg !2449

if.then.6:                                        ; preds = %if.end
  %cmp8 = icmp eq i64 %dec, 0, !dbg !2450
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2451

if.then.9:                                        ; preds = %if.then.6
  %6 = bitcast i64* %leftindex to <2 x i64>*, !dbg !2452
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %6, align 8, !dbg !2452, !tbaa !1521
  br label %cleanup, !dbg !2453

if.else:                                          ; preds = %if.then.6
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %3, i64 0, i32 2, !dbg !2454
  %7 = bitcast %struct.BLOCK** %rightlink to i64*, !dbg !2454
  %8 = load i64, i64* %7, align 8, !dbg !2454, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %3, i64 0, metadata !494, metadata !1241) #1, !dbg !2455
  %9 = load i64, i64* @numfreeblocks, align 8, !dbg !2457, !tbaa !1521
  %cmp.i = icmp slt i64 %9, 10, !dbg !2458
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !2459

if.then.i:                                        ; preds = %if.else
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %9, !dbg !2460
  store %struct.BLOCK* %3, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2461, !tbaa !1297
  %inc.i = add i64 %9, 1, !dbg !2457
  store i64 %inc.i, i64* @numfreeblocks, align 8, !dbg !2457, !tbaa !1521
  br label %freeblock.exit, !dbg !2462

if.else.i:                                        ; preds = %if.else
  %10 = bitcast %struct.BLOCK* %3 to i8*, !dbg !2463
  tail call void @PyMem_Free(i8* %10) #1, !dbg !2464
  br label %freeblock.exit, !dbg !2465

freeblock.exit:                                   ; preds = %if.then.i, %if.else.i
  %11 = bitcast %struct.BLOCK** %leftblock to i64*, !dbg !2466
  store i64 %8, i64* %11, align 8, !dbg !2466, !tbaa !1493
  store i64 0, i64* %leftindex, align 8, !dbg !2467, !tbaa !1619
  br label %cleanup

cleanup:                                          ; preds = %if.end, %freeblock.exit, %if.then.9, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %4, %if.then.9 ], [ %4, %freeblock.exit ], [ %4, %if.end ]
  ret %struct._object* %retval.0, !dbg !2468
}

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_extend(%struct.dequeobject* %deque, %struct._object* %iterable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !587, metadata !1241), !dbg !2469
  tail call void @llvm.dbg.value(metadata %struct._object* %iterable, i64 0, metadata !588, metadata !1241), !dbg !2470
  %0 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, !dbg !2471
  %cmp = icmp eq %struct._object* %0, %iterable, !dbg !2472
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2473

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PySequence_List(%struct._object* %iterable) #1, !dbg !2474
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !594, metadata !1241), !dbg !2475
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2476
  br i1 %cmp1, label %cleanup.101, label %if.end, !dbg !2478

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct._object* @deque_extend(%struct.dequeobject* %deque, %struct._object* %call), !dbg !2479
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !591, metadata !1241), !dbg !2480
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !595, metadata !1241), !dbg !2481
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2483
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2483, !tbaa !1251
  %dec = add i64 %1, -1, !dbg !2483
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2483, !tbaa !1251
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2483
  br i1 %cmp4, label %if.else, label %cleanup.101, !dbg !2485

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2486
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2486, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2486
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2486, !tbaa !1357
  tail call void %3(%struct._object* %call) #1, !dbg !2486
  br label %cleanup.101

if.end.8:                                         ; preds = %entry
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2488
  %4 = load i64, i64* %ob_size, align 8, !dbg !2488, !tbaa !1502
  %cmp9 = icmp eq i64 %4, 0, !dbg !2490
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2491

if.then.10:                                       ; preds = %if.end.8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2492
  %5 = bitcast i64* %leftindex to <2 x i64>*, !dbg !2494
  store <2 x i64> <i64 1, i64 0>, <2 x i64>* %5, align 8, !dbg !2494, !tbaa !1521
  br label %if.end.11, !dbg !2495

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %call12 = tail call %struct._object* @PyObject_GetIter(%struct._object* %iterable) #1, !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !589, metadata !1241), !dbg !2497
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !2498
  br i1 %cmp13, label %cleanup.101, label %if.end.15, !dbg !2500

if.end.15:                                        ; preds = %if.end.11
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !2501
  %6 = load i64, i64* %maxlen, align 8, !dbg !2501, !tbaa !1598
  %cmp16 = icmp eq i64 %6, 0, !dbg !2503
  %call.25.i = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !2504
  %cmp.26.i = icmp eq %struct._object* %call.25.i, null, !dbg !2506
  br i1 %cmp16, label %if.then.17, label %while.cond.preheader, !dbg !2507

while.cond.preheader:                             ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call.25.i, i64 0, metadata !590, metadata !1241), !dbg !2508
  br i1 %cmp.26.i, label %do.body.85, label %while.body.lr.ph, !dbg !2509

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2510
  %rightindex22 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2511
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2512
  %7 = bitcast %struct.BLOCK** %rightblock to i64*, !dbg !2512
  %leftindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2513
  %leftblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2516
  %8 = bitcast %struct.BLOCK** %leftblock.i to i64*, !dbg !2517
  %9 = bitcast i64* %leftindex.i to <2 x i64>*, !dbg !2518
  br label %while.body, !dbg !2509

if.then.17:                                       ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !616, metadata !1241) #1, !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct._object* %call.25.i, i64 0, metadata !617, metadata !1241) #1, !dbg !2520
  br i1 %cmp.26.i, label %do.body.2.i, label %do.body.i.preheader, !dbg !2521

do.body.i.preheader:                              ; preds = %if.then.17
  br label %do.body.i, !dbg !2522

do.body.i:                                        ; preds = %do.body.i.preheader, %while.cond.backedge.i
  %call27.i = phi %struct._object* [ %call.i, %while.cond.backedge.i ], [ %call.25.i, %do.body.i.preheader ], !dbg !2524
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call27.i, i64 0, i32 0, !dbg !2522
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2522, !tbaa !1251
  %dec.i = add i64 %10, -1, !dbg !2522
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2522, !tbaa !1251
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2522
  br i1 %cmp1.i, label %if.else.i, label %while.cond.backedge.i, !dbg !2525

while.cond.backedge.i:                            ; preds = %if.else.i, %do.body.i
  %call.i = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !2504
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2506
  br i1 %cmp.i, label %do.body.2.i.loopexit, label %do.body.i, !dbg !2521

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call27.i, i64 0, i32 1, !dbg !2526
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2526, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2526
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2526, !tbaa !1357
  tail call void %12(%struct._object* %call27.i) #1, !dbg !2526
  br label %while.cond.backedge.i, !dbg !2524

do.body.2.i.loopexit:                             ; preds = %while.cond.backedge.i
  br label %do.body.2.i, !dbg !2528

do.body.2.i:                                      ; preds = %do.body.2.i.loopexit, %if.then.17
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !621, metadata !1241) #1, !dbg !2528
  %ob_refcnt4.i = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2530
  %13 = load i64, i64* %ob_refcnt4.i, align 8, !dbg !2530, !tbaa !1251
  %dec5.i = add i64 %13, -1, !dbg !2530
  store i64 %dec5.i, i64* %ob_refcnt4.i, align 8, !dbg !2530, !tbaa !1251
  %cmp6.i = icmp eq i64 %dec5.i, 0, !dbg !2530
  br i1 %cmp6.i, label %if.else.8.i, label %if.end.11.i, !dbg !2532

if.else.8.i:                                      ; preds = %do.body.2.i
  %ob_type9.i = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2533
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type9.i, align 8, !dbg !2533, !tbaa !1308
  %tp_dealloc10.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2533
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10.i, align 8, !dbg !2533, !tbaa !1357
  tail call void %15(%struct._object* %call12) #1, !dbg !2533
  br label %if.end.11.i, !dbg !2524

if.end.11.i:                                      ; preds = %if.else.8.i, %do.body.2.i
  %call14.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2535
  %tobool.i = icmp eq %struct._object* %call14.i, null, !dbg !2535
  br i1 %tobool.i, label %if.end.16.i, label %cleanup.101, !dbg !2537

if.end.16.i:                                      ; preds = %if.end.11.i
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2538, !tbaa !1251
  %inc.i = add i64 %16, 1, !dbg !2538
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2538, !tbaa !1251
  br label %cleanup.101, !dbg !2538

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call20177 = phi %struct._object* [ %call.25.i, %while.body.lr.ph ], [ %call20, %while.cond.backedge ]
  %17 = load i64, i64* %state, align 8, !dbg !2539, !tbaa !1869
  %inc = add i64 %17, 1, !dbg !2539
  store i64 %inc, i64* %state, align 8, !dbg !2539, !tbaa !1869
  %18 = load i64, i64* %rightindex22, align 8, !dbg !2511, !tbaa !1549
  %cmp23 = icmp eq i64 %18, 61, !dbg !2540
  br i1 %cmp23, label %if.then.24, label %while.body.if.end.58_crit_edge, !dbg !2541

while.body.if.end.58_crit_edge:                   ; preds = %while.body
  %.pre = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !2542, !tbaa !1520
  br label %if.end.58, !dbg !2541

if.then.24:                                       ; preds = %while.body
  %19 = load i64, i64* %ob_size, align 8, !dbg !2543, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !568, metadata !1241) #1, !dbg !2544
  %cmp.i.156 = icmp sgt i64 %19, 9223372036854775682, !dbg !2546
  br i1 %cmp.i.156, label %if.then.i, label %if.end.i, !dbg !2547

if.then.i:                                        ; preds = %if.then.24
  %call20177.lcssa = phi %struct._object* [ %call20177, %if.then.24 ]
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2548, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !2549
  br label %do.body.29, !dbg !2550

if.end.i:                                         ; preds = %if.then.24
  %21 = load i64, i64* @numfreeblocks, align 8, !dbg !2551, !tbaa !1521
  %tobool.i.157 = icmp eq i64 %21, 0, !dbg !2551
  br i1 %tobool.i.157, label %if.end.2.i, label %if.then.1.i, !dbg !2552

if.then.1.i:                                      ; preds = %if.end.i
  %dec.i.158 = add i64 %21, -1, !dbg !2553
  store i64 %dec.i.158, i64* @numfreeblocks, align 8, !dbg !2553, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i.158, !dbg !2554
  %22 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2554, !tbaa !1297
  br label %newblock.exit, !dbg !2555

if.end.2.i:                                       ; preds = %if.end.i
  %call.i.159 = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !2556
  %cmp3.i = icmp eq i8* %call.i.159, null, !dbg !2557
  br i1 %cmp3.i, label %if.end.5.i, label %if.then.4.i, !dbg !2558

if.then.4.i:                                      ; preds = %if.end.2.i
  %23 = bitcast i8* %call.i.159 to %struct.BLOCK*, !dbg !2556
  br label %newblock.exit, !dbg !2559

if.end.5.i:                                       ; preds = %if.end.2.i
  %call20177.lcssa199 = phi %struct._object* [ %call20177, %if.end.2.i ]
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2560
  br label %do.body.29, !dbg !2561

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i.160 = phi %struct.BLOCK* [ %22, %if.then.1.i ], [ %23, %if.then.4.i ], !dbg !2562
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i.160, i64 0, metadata !597, metadata !1241), !dbg !2563
  %cmp27 = icmp eq %struct.BLOCK* %retval.0.i.160, null, !dbg !2564
  br i1 %cmp27, label %do.body.29.loopexit, label %if.end.53, !dbg !2565

do.body.29.loopexit:                              ; preds = %newblock.exit
  %call20177.lcssa200 = phi %struct._object* [ %call20177, %newblock.exit ]
  br label %do.body.29, !dbg !2566

do.body.29:                                       ; preds = %do.body.29.loopexit, %if.end.5.i, %if.then.i
  %call20177203 = phi %struct._object* [ %call20177.lcssa200, %do.body.29.loopexit ], [ %call20177.lcssa199, %if.end.5.i ], [ %call20177.lcssa, %if.then.i ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !601, metadata !1241), !dbg !2566
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %call20177203, i64 0, i32 0, !dbg !2568
  %24 = load i64, i64* %ob_refcnt31, align 8, !dbg !2568, !tbaa !1251
  %dec32 = add i64 %24, -1, !dbg !2568
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !2568, !tbaa !1251
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !2568
  br i1 %cmp33, label %if.else.35, label %if.end.38, !dbg !2570

if.else.35:                                       ; preds = %do.body.29
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %call20177203, i64 0, i32 1, !dbg !2571
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !2571, !tbaa !1308
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2571
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !2571, !tbaa !1357
  tail call void %26(%struct._object* %call20177203) #1, !dbg !2571
  br label %if.end.38

if.end.38:                                        ; preds = %do.body.29, %if.else.35
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !605, metadata !1241), !dbg !2573
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2575
  %27 = load i64, i64* %ob_refcnt43, align 8, !dbg !2575, !tbaa !1251
  %dec44 = add i64 %27, -1, !dbg !2575
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2575, !tbaa !1251
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !2575
  br i1 %cmp45, label %if.else.47, label %cleanup.101, !dbg !2577

if.else.47:                                       ; preds = %if.end.38
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2578
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2578, !tbaa !1308
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2578
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2578, !tbaa !1357
  tail call void %29(%struct._object* %call12) #1, !dbg !2578
  br label %cleanup.101

if.end.53:                                        ; preds = %newblock.exit
  %30 = load i64, i64* %7, align 8, !dbg !2512, !tbaa !1520
  %31 = bitcast %struct.BLOCK* %retval.0.i.160 to i64*, !dbg !2580
  store i64 %30, i64* %31, align 8, !dbg !2580, !tbaa !1532
  %32 = inttoptr i64 %30 to %struct.BLOCK*, !dbg !2581
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %32, i64 0, i32 2, !dbg !2582
  store %struct.BLOCK* %retval.0.i.160, %struct.BLOCK** %rightlink, align 8, !dbg !2583, !tbaa !2153
  store %struct.BLOCK* %retval.0.i.160, %struct.BLOCK** %rightblock, align 8, !dbg !2584, !tbaa !1520
  store i64 -1, i64* %rightindex22, align 8, !dbg !2585, !tbaa !1549
  br label %if.end.58

if.end.58:                                        ; preds = %while.body.if.end.58_crit_edge, %if.end.53
  %33 = phi %struct.BLOCK* [ %retval.0.i.160, %if.end.53 ], [ %.pre, %while.body.if.end.58_crit_edge ], !dbg !2542
  %34 = phi i64 [ -1, %if.end.53 ], [ %18, %while.body.if.end.58_crit_edge ], !dbg !2586
  %35 = load i64, i64* %ob_size, align 8, !dbg !2587, !tbaa !1502
  %inc60 = add i64 %35, 1, !dbg !2588
  store i64 %inc60, i64* %ob_size, align 8, !dbg !2587, !tbaa !1502
  %inc62 = add i64 %34, 1, !dbg !2586
  store i64 %inc62, i64* %rightindex22, align 8, !dbg !2586, !tbaa !1549
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %33, i64 0, i32 1, i64 %inc62, !dbg !2590
  store %struct._object* %call20177, %struct._object** %arrayidx, align 8, !dbg !2591, !tbaa !1297
  %36 = load i64, i64* %maxlen, align 8, !dbg !2592, !tbaa !1598
  %cmp66 = icmp ne i64 %36, -1, !dbg !2592
  %cmp69 = icmp sgt i64 %inc60, %36, !dbg !2588
  %or.cond = and i1 %cmp66, %cmp69, !dbg !2592
  br i1 %or.cond, label %if.then.70, label %while.cond.backedge, !dbg !2592

while.cond.backedge:                              ; preds = %if.end.58, %deque_popleft.exit, %if.else.78
  %call20 = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !2593
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !590, metadata !1241), !dbg !2508
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !2594
  br i1 %cmp21, label %do.body.85.loopexit, label %while.body, !dbg !2509

if.then.70:                                       ; preds = %if.end.58
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !574, metadata !1241) #1, !dbg !2595
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !575, metadata !1241) #1, !dbg !2596
  %cmp.i.161 = icmp eq i64 %inc60, 0, !dbg !2597
  br i1 %cmp.i.161, label %if.then.i.162, label %if.end.i.166, !dbg !2598

if.then.i.162:                                    ; preds = %if.then.70
  %37 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2599, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2600
  unreachable, !dbg !2601

if.end.i.166:                                     ; preds = %if.then.70
  %38 = load i64, i64* %leftindex.i, align 8, !dbg !2513, !tbaa !1619
  %39 = load %struct.BLOCK*, %struct.BLOCK** %leftblock.i, align 8, !dbg !2602, !tbaa !1493
  %arrayidx.i.163 = getelementptr %struct.BLOCK, %struct.BLOCK* %39, i64 0, i32 1, i64 %38, !dbg !2603
  %40 = load %struct._object*, %struct._object** %arrayidx.i.163, align 8, !dbg !2603, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !576, metadata !1241) #1, !dbg !2604
  %inc.i.164 = add i64 %38, 1, !dbg !2605
  store i64 %inc.i.164, i64* %leftindex.i, align 8, !dbg !2605, !tbaa !1619
  store i64 %35, i64* %ob_size, align 8, !dbg !2606, !tbaa !1502
  %41 = load i64, i64* %state, align 8, !dbg !2607, !tbaa !1869
  %inc3.i = add i64 %41, 1, !dbg !2607
  store i64 %inc3.i, i64* %state, align 8, !dbg !2607, !tbaa !1869
  %cmp5.i = icmp eq i64 %inc.i.164, 62, !dbg !2608
  br i1 %cmp5.i, label %if.then.6.i, label %deque_popleft.exit, !dbg !2609

if.then.6.i:                                      ; preds = %if.end.i.166
  %cmp8.i = icmp eq i64 %35, 0, !dbg !2610
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i.167, !dbg !2611

if.then.9.i:                                      ; preds = %if.then.6.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %9, align 8, !dbg !2518, !tbaa !1521
  br label %deque_popleft.exit, !dbg !2612

if.else.i.167:                                    ; preds = %if.then.6.i
  %rightlink.i = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %39, i64 0, i32 2, !dbg !2613
  %42 = bitcast %struct.BLOCK** %rightlink.i to i64*, !dbg !2613
  %43 = load i64, i64* %42, align 8, !dbg !2613, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %39, i64 0, metadata !494, metadata !1241) #1, !dbg !2614
  %44 = load i64, i64* @numfreeblocks, align 8, !dbg !2616, !tbaa !1521
  %cmp.i.i = icmp slt i64 %44, 10, !dbg !2617
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !2618

if.then.i.i:                                      ; preds = %if.else.i.167
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %44, !dbg !2619
  store %struct.BLOCK* %39, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !2620, !tbaa !1297
  %inc.i.i = add i64 %44, 1, !dbg !2616
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !2616, !tbaa !1521
  br label %freeblock.exit.i, !dbg !2621

if.else.i.i:                                      ; preds = %if.else.i.167
  %45 = bitcast %struct.BLOCK* %39 to i8*, !dbg !2622
  tail call void @PyMem_Free(i8* %45) #1, !dbg !2623
  br label %freeblock.exit.i, !dbg !2624

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  store i64 %43, i64* %8, align 8, !dbg !2517, !tbaa !1493
  store i64 0, i64* %leftindex.i, align 8, !dbg !2625, !tbaa !1619
  br label %deque_popleft.exit, !dbg !2626

deque_popleft.exit:                               ; preds = %if.end.i.166, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !607, metadata !1241), !dbg !2626
  tail call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !610, metadata !1241), !dbg !2627
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 0, !dbg !2629
  %46 = load i64, i64* %ob_refcnt74, align 8, !dbg !2629, !tbaa !1251
  %dec75 = add i64 %46, -1, !dbg !2629
  store i64 %dec75, i64* %ob_refcnt74, align 8, !dbg !2629, !tbaa !1251
  %cmp76 = icmp eq i64 %dec75, 0, !dbg !2629
  br i1 %cmp76, label %if.else.78, label %while.cond.backedge, !dbg !2631

if.else.78:                                       ; preds = %deque_popleft.exit
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 1, !dbg !2632
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !2632, !tbaa !1308
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !2632
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !2632, !tbaa !1357
  tail call void %48(%struct._object* %40) #1, !dbg !2632
  br label %while.cond.backedge

do.body.85.loopexit:                              ; preds = %while.cond.backedge
  br label %do.body.85, !dbg !2634

do.body.85:                                       ; preds = %do.body.85.loopexit, %while.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !612, metadata !1241), !dbg !2634
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2636
  %49 = load i64, i64* %ob_refcnt87, align 8, !dbg !2636, !tbaa !1251
  %dec88 = add i64 %49, -1, !dbg !2636
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !2636, !tbaa !1251
  %cmp89 = icmp eq i64 %dec88, 0, !dbg !2636
  br i1 %cmp89, label %if.else.91, label %if.end.94, !dbg !2638

if.else.91:                                       ; preds = %do.body.85
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2639
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !2639, !tbaa !1308
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !2639
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !2639, !tbaa !1357
  tail call void %51(%struct._object* %call12) #1, !dbg !2639
  br label %if.end.94

if.end.94:                                        ; preds = %do.body.85, %if.else.91
  %call97 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2641
  %tobool = icmp eq %struct._object* %call97, null, !dbg !2641
  br i1 %tobool, label %if.end.99, label %cleanup.101, !dbg !2643

if.end.99:                                        ; preds = %if.end.94
  %52 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2644, !tbaa !1251
  %inc100 = add i64 %52, 1, !dbg !2644
  store i64 %inc100, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2644, !tbaa !1251
  br label %cleanup.101, !dbg !2644

cleanup.101:                                      ; preds = %if.end.16.i, %if.end.11.i, %if.end.94, %if.end.38, %if.else.47, %if.end.11, %if.then, %if.end, %if.else, %if.end.99
  %retval.4 = phi %struct._object* [ @_Py_NoneStruct, %if.end.99 ], [ null, %if.then ], [ %call3, %if.end ], [ %call3, %if.else ], [ null, %if.end.11 ], [ null, %if.else.47 ], [ null, %if.end.38 ], [ null, %if.end.94 ], [ @_Py_NoneStruct, %if.end.16.i ], [ null, %if.end.11.i ]
  ret %struct._object* %retval.4, !dbg !2645
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_pop(%struct.dequeobject* nocapture %deque, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241), !dbg !2646
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !661, metadata !1241), !dbg !2647
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2648
  %0 = load i64, i64* %ob_size, align 8, !dbg !2650, !tbaa !1502
  %cmp = icmp eq i64 %0, 0, !dbg !2651
  br i1 %cmp, label %if.then, label %if.end, !dbg !2652

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2653, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2655
  br label %cleanup, !dbg !2656

if.end:                                           ; preds = %entry
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2657
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2658
  %2 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8, !dbg !2659, !tbaa !1520
  %3 = bitcast i64* %rightindex to <2 x i64>*, !dbg !2657
  %4 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !2657, !tbaa !1521
  %5 = extractelement <2 x i64> %4, i32 0, !dbg !2660
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %2, i64 0, i32 1, i64 %5, !dbg !2660
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2660, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !662, metadata !1241), !dbg !2661
  %dec3 = add i64 %0, -1, !dbg !2662
  store i64 %dec3, i64* %ob_size, align 8, !dbg !2650, !tbaa !1502
  %7 = add <2 x i64> %4, <i64 -1, i64 1>, !dbg !2663
  %8 = bitcast i64* %rightindex to <2 x i64>*, !dbg !2663
  store <2 x i64> %7, <2 x i64>* %8, align 8, !dbg !2663, !tbaa !1521
  %cmp5 = icmp eq i64 %5, 0, !dbg !2664
  br i1 %cmp5, label %if.then.6, label %cleanup, !dbg !2665

if.then.6:                                        ; preds = %if.end
  %cmp8 = icmp eq i64 %dec3, 0, !dbg !2666
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2667

if.then.9:                                        ; preds = %if.then.6
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2668
  %9 = bitcast i64* %leftindex to <2 x i64>*, !dbg !2669
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %9, align 8, !dbg !2669, !tbaa !1521
  br label %cleanup, !dbg !2670

if.else:                                          ; preds = %if.then.6
  %10 = bitcast %struct.BLOCK* %2 to i64*, !dbg !2671
  %11 = load i64, i64* %10, align 8, !dbg !2671, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %2, i64 0, metadata !494, metadata !1241) #1, !dbg !2672
  %12 = load i64, i64* @numfreeblocks, align 8, !dbg !2674, !tbaa !1521
  %cmp.i = icmp slt i64 %12, 10, !dbg !2675
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !2676

if.then.i:                                        ; preds = %if.else
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %12, !dbg !2677
  store %struct.BLOCK* %2, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2678, !tbaa !1297
  %inc.i = add i64 %12, 1, !dbg !2674
  store i64 %inc.i, i64* @numfreeblocks, align 8, !dbg !2674, !tbaa !1521
  br label %freeblock.exit, !dbg !2679

if.else.i:                                        ; preds = %if.else
  %13 = bitcast %struct.BLOCK* %2 to i8*, !dbg !2680
  tail call void @PyMem_Free(i8* %13) #1, !dbg !2681
  br label %freeblock.exit, !dbg !2682

freeblock.exit:                                   ; preds = %if.then.i, %if.else.i
  %14 = bitcast %struct.BLOCK** %rightblock to i64*, !dbg !2683
  store i64 %11, i64* %14, align 8, !dbg !2683, !tbaa !1520
  store i64 61, i64* %rightindex, align 8, !dbg !2684, !tbaa !1549
  br label %cleanup

cleanup:                                          ; preds = %if.end, %freeblock.exit, %if.then.9, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %6, %if.then.9 ], [ %6, %freeblock.exit ], [ %6, %if.end ]
  ret %struct._object* %retval.0, !dbg !2685
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare void @PyObject_GC_Track(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_append(%struct.dequeobject* nocapture %deque, %struct._object* %item) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !718, metadata !1241), !dbg !2686
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !719, metadata !1241), !dbg !2687
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2688
  %0 = load i64, i64* %state, align 8, !dbg !2689, !tbaa !1869
  %inc = add i64 %0, 1, !dbg !2689
  store i64 %inc, i64* %state, align 8, !dbg !2689, !tbaa !1869
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2690
  %1 = load i64, i64* %rightindex, align 8, !dbg !2690, !tbaa !1549
  %cmp = icmp eq i64 %1, 61, !dbg !2691
  br i1 %cmp, label %if.then, label %entry.if.end.6_crit_edge, !dbg !2692

entry.if.end.6_crit_edge:                         ; preds = %entry
  %rightblock13.phi.trans.insert = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2693
  %.pre = load %struct.BLOCK*, %struct.BLOCK** %rightblock13.phi.trans.insert, align 8, !dbg !2693, !tbaa !1520
  %.pre56 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2694
  %phitmp = add i64 %1, 1, !dbg !2692
  br label %if.end.6, !dbg !2692

if.then:                                          ; preds = %entry
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2695
  %2 = load i64, i64* %ob_size, align 8, !dbg !2695, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !568, metadata !1241) #1, !dbg !2696
  %cmp.i = icmp sgt i64 %2, 9223372036854775682, !dbg !2698
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2699

if.then.i:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2700, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !2701
  br label %return, !dbg !2702

if.end.i:                                         ; preds = %if.then
  %4 = load i64, i64* @numfreeblocks, align 8, !dbg !2703, !tbaa !1521
  %tobool.i = icmp eq i64 %4, 0, !dbg !2703
  br i1 %tobool.i, label %if.end.2.i, label %if.then.1.i, !dbg !2704

if.then.1.i:                                      ; preds = %if.end.i
  %dec.i = add i64 %4, -1, !dbg !2705
  store i64 %dec.i, i64* @numfreeblocks, align 8, !dbg !2705, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i, !dbg !2706
  %5 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2706, !tbaa !1297
  br label %newblock.exit, !dbg !2707

if.end.2.i:                                       ; preds = %if.end.i
  %call.i = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !2708
  %cmp3.i = icmp eq i8* %call.i, null, !dbg !2709
  br i1 %cmp3.i, label %if.end.5.i, label %if.then.4.i, !dbg !2710

if.then.4.i:                                      ; preds = %if.end.2.i
  %6 = bitcast i8* %call.i to %struct.BLOCK*, !dbg !2708
  br label %newblock.exit, !dbg !2711

if.end.5.i:                                       ; preds = %if.end.2.i
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2712
  br label %return, !dbg !2713

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i = phi %struct.BLOCK* [ %5, %if.then.1.i ], [ %6, %if.then.4.i ], !dbg !2714
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i, i64 0, metadata !720, metadata !1241), !dbg !2715
  %cmp1 = icmp eq %struct.BLOCK* %retval.0.i, null, !dbg !2716
  br i1 %cmp1, label %return, label %if.end, !dbg !2718

if.end:                                           ; preds = %newblock.exit
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2719
  %7 = bitcast %struct.BLOCK** %rightblock to i64*, !dbg !2719
  %8 = load i64, i64* %7, align 8, !dbg !2719, !tbaa !1520
  %9 = bitcast %struct.BLOCK* %retval.0.i to i64*, !dbg !2720
  store i64 %8, i64* %9, align 8, !dbg !2720, !tbaa !1532
  %10 = inttoptr i64 %8 to %struct.BLOCK*, !dbg !2721
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %10, i64 0, i32 2, !dbg !2722
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %rightlink, align 8, !dbg !2723, !tbaa !2153
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %rightblock, align 8, !dbg !2724, !tbaa !1520
  store i64 -1, i64* %rightindex, align 8, !dbg !2725, !tbaa !1549
  br label %if.end.6

if.end.6:                                         ; preds = %entry.if.end.6_crit_edge, %if.end
  %ob_size8.pre-phi = phi i64* [ %.pre56, %entry.if.end.6_crit_edge ], [ %ob_size, %if.end ], !dbg !2694
  %11 = phi %struct.BLOCK* [ %.pre, %entry.if.end.6_crit_edge ], [ %retval.0.i, %if.end ], !dbg !2693
  %12 = phi i64 [ %phitmp, %entry.if.end.6_crit_edge ], [ 0, %if.end ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %item, i64 0, i32 0, !dbg !2726
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2726, !tbaa !1251
  %inc7 = add i64 %13, 1, !dbg !2726
  store i64 %inc7, i64* %ob_refcnt, align 8, !dbg !2726, !tbaa !1251
  %14 = load i64, i64* %ob_size8.pre-phi, align 8, !dbg !2727, !tbaa !1502
  %inc9 = add i64 %14, 1, !dbg !2728
  store i64 %inc9, i64* %ob_size8.pre-phi, align 8, !dbg !2727, !tbaa !1502
  store i64 %12, i64* %rightindex, align 8, !dbg !2730, !tbaa !1549
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %11, i64 0, i32 1, i64 %12, !dbg !2731
  store %struct._object* %item, %struct._object** %arrayidx, align 8, !dbg !2732, !tbaa !1297
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !2733
  %15 = load i64, i64* %maxlen, align 8, !dbg !2733, !tbaa !1598
  %cmp14 = icmp ne i64 %15, -1, !dbg !2733
  %cmp17 = icmp sgt i64 %inc9, %15, !dbg !2728
  %or.cond = and i1 %cmp14, %cmp17, !dbg !2733
  br i1 %or.cond, label %if.then.18, label %if.end.24, !dbg !2733

if.then.18:                                       ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !574, metadata !1241) #1, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !575, metadata !1241) #1, !dbg !2737
  %cmp.i.49 = icmp eq i64 %inc9, 0, !dbg !2738
  br i1 %cmp.i.49, label %if.then.i.50, label %if.end.i.53, !dbg !2739

if.then.i.50:                                     ; preds = %if.then.18
  %16 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2740, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2741
  unreachable, !dbg !2742

if.end.i.53:                                      ; preds = %if.then.18
  %leftindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2743
  %17 = load i64, i64* %leftindex.i, align 8, !dbg !2743, !tbaa !1619
  %leftblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2744
  %18 = load %struct.BLOCK*, %struct.BLOCK** %leftblock.i, align 8, !dbg !2745, !tbaa !1493
  %arrayidx.i.51 = getelementptr %struct.BLOCK, %struct.BLOCK* %18, i64 0, i32 1, i64 %17, !dbg !2746
  %19 = load %struct._object*, %struct._object** %arrayidx.i.51, align 8, !dbg !2746, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !576, metadata !1241) #1, !dbg !2747
  %inc.i = add i64 %17, 1, !dbg !2748
  store i64 %inc.i, i64* %leftindex.i, align 8, !dbg !2748, !tbaa !1619
  store i64 %14, i64* %ob_size8.pre-phi, align 8, !dbg !2749, !tbaa !1502
  %20 = load i64, i64* %state, align 8, !dbg !2750, !tbaa !1869
  %inc3.i = add i64 %20, 1, !dbg !2750
  store i64 %inc3.i, i64* %state, align 8, !dbg !2750, !tbaa !1869
  %cmp5.i = icmp eq i64 %inc.i, 62, !dbg !2751
  br i1 %cmp5.i, label %if.then.6.i, label %deque_popleft.exit, !dbg !2752

if.then.6.i:                                      ; preds = %if.end.i.53
  %cmp8.i = icmp eq i64 %14, 0, !dbg !2753
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i, !dbg !2754

if.then.9.i:                                      ; preds = %if.then.6.i
  %21 = bitcast i64* %leftindex.i to <2 x i64>*, !dbg !2755
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %21, align 8, !dbg !2755, !tbaa !1521
  br label %deque_popleft.exit, !dbg !2756

if.else.i:                                        ; preds = %if.then.6.i
  %rightlink.i = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %18, i64 0, i32 2, !dbg !2757
  %22 = bitcast %struct.BLOCK** %rightlink.i to i64*, !dbg !2757
  %23 = load i64, i64* %22, align 8, !dbg !2757, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %18, i64 0, metadata !494, metadata !1241) #1, !dbg !2758
  %24 = load i64, i64* @numfreeblocks, align 8, !dbg !2760, !tbaa !1521
  %cmp.i.i = icmp slt i64 %24, 10, !dbg !2761
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !2762

if.then.i.i:                                      ; preds = %if.else.i
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %24, !dbg !2763
  store %struct.BLOCK* %18, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !2764, !tbaa !1297
  %inc.i.i = add i64 %24, 1, !dbg !2760
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !2760, !tbaa !1521
  br label %freeblock.exit.i, !dbg !2765

if.else.i.i:                                      ; preds = %if.else.i
  %25 = bitcast %struct.BLOCK* %18 to i8*, !dbg !2766
  tail call void @PyMem_Free(i8* %25) #1, !dbg !2767
  br label %freeblock.exit.i, !dbg !2768

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %26 = bitcast %struct.BLOCK** %leftblock.i to i64*, !dbg !2769
  store i64 %23, i64* %26, align 8, !dbg !2769, !tbaa !1493
  store i64 0, i64* %leftindex.i, align 8, !dbg !2770, !tbaa !1619
  br label %deque_popleft.exit, !dbg !2771

deque_popleft.exit:                               ; preds = %if.end.i.53, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !723, metadata !1241), !dbg !2771
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !726, metadata !1241), !dbg !2772
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !2774
  %27 = load i64, i64* %ob_refcnt20, align 8, !dbg !2774, !tbaa !1251
  %dec = add i64 %27, -1, !dbg !2774
  store i64 %dec, i64* %ob_refcnt20, align 8, !dbg !2774, !tbaa !1251
  %cmp21 = icmp eq i64 %dec, 0, !dbg !2774
  br i1 %cmp21, label %if.else, label %if.end.24, !dbg !2776

if.else:                                          ; preds = %deque_popleft.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !2777
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2777, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2777
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2777, !tbaa !1357
  tail call void %29(%struct._object* %19) #1, !dbg !2777
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.6, %if.else, %deque_popleft.exit
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2779, !tbaa !1251
  %inc25 = add i64 %30, 1, !dbg !2779
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2779, !tbaa !1251
  br label %return, !dbg !2779

return:                                           ; preds = %if.end.5.i, %if.then.i, %newblock.exit, %if.end.24
  %retval.1 = phi %struct._object* [ @_Py_NoneStruct, %if.end.24 ], [ null, %newblock.exit ], [ null, %if.then.i ], [ null, %if.end.5.i ]
  ret %struct._object* %retval.1, !dbg !2780
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_appendleft(%struct.dequeobject* nocapture %deque, %struct._object* %item) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !730, metadata !1241), !dbg !2781
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !731, metadata !1241), !dbg !2782
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2783
  %0 = load i64, i64* %state, align 8, !dbg !2784, !tbaa !1869
  %inc = add i64 %0, 1, !dbg !2784
  store i64 %inc, i64* %state, align 8, !dbg !2784, !tbaa !1869
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2785
  %1 = load i64, i64* %leftindex, align 8, !dbg !2785, !tbaa !1619
  %cmp = icmp eq i64 %1, 0, !dbg !2786
  br i1 %cmp, label %if.then, label %entry.if.end.6_crit_edge, !dbg !2787

entry.if.end.6_crit_edge:                         ; preds = %entry
  %leftblock12.phi.trans.insert = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2788
  %.pre = load %struct.BLOCK*, %struct.BLOCK** %leftblock12.phi.trans.insert, align 8, !dbg !2788, !tbaa !1493
  %.pre56 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2789
  %phitmp = add i64 %1, -1, !dbg !2787
  br label %if.end.6, !dbg !2787

if.then:                                          ; preds = %entry
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2790
  %2 = load i64, i64* %ob_size, align 8, !dbg !2790, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !568, metadata !1241) #1, !dbg !2791
  %cmp.i = icmp sgt i64 %2, 9223372036854775682, !dbg !2793
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2794

if.then.i:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2795, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !2796
  br label %return, !dbg !2797

if.end.i:                                         ; preds = %if.then
  %4 = load i64, i64* @numfreeblocks, align 8, !dbg !2798, !tbaa !1521
  %tobool.i = icmp eq i64 %4, 0, !dbg !2798
  br i1 %tobool.i, label %if.end.2.i, label %if.then.1.i, !dbg !2799

if.then.1.i:                                      ; preds = %if.end.i
  %dec.i = add i64 %4, -1, !dbg !2800
  store i64 %dec.i, i64* @numfreeblocks, align 8, !dbg !2800, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i, !dbg !2801
  %5 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !2801, !tbaa !1297
  br label %newblock.exit, !dbg !2802

if.end.2.i:                                       ; preds = %if.end.i
  %call.i = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !2803
  %cmp3.i = icmp eq i8* %call.i, null, !dbg !2804
  br i1 %cmp3.i, label %if.end.5.i, label %if.then.4.i, !dbg !2805

if.then.4.i:                                      ; preds = %if.end.2.i
  %6 = bitcast i8* %call.i to %struct.BLOCK*, !dbg !2803
  br label %newblock.exit, !dbg !2806

if.end.5.i:                                       ; preds = %if.end.2.i
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2807
  br label %return, !dbg !2808

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i = phi %struct.BLOCK* [ %5, %if.then.1.i ], [ %6, %if.then.4.i ], !dbg !2809
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i, i64 0, metadata !732, metadata !1241), !dbg !2810
  %cmp1 = icmp eq %struct.BLOCK* %retval.0.i, null, !dbg !2811
  br i1 %cmp1, label %return, label %if.end, !dbg !2813

if.end:                                           ; preds = %newblock.exit
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2814
  %7 = bitcast %struct.BLOCK** %leftblock to i64*, !dbg !2814
  %8 = load i64, i64* %7, align 8, !dbg !2814, !tbaa !1493
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %retval.0.i, i64 0, i32 2, !dbg !2815
  %9 = bitcast %struct.BLOCK** %rightlink to i64*, !dbg !2816
  store i64 %8, i64* %9, align 8, !dbg !2816, !tbaa !2153
  %10 = inttoptr i64 %8 to %struct.BLOCK*, !dbg !2817
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %10, i64 0, i32 0, !dbg !2818
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %leftlink, align 8, !dbg !2819, !tbaa !1532
  store %struct.BLOCK* %retval.0.i, %struct.BLOCK** %leftblock, align 8, !dbg !2820, !tbaa !1493
  store i64 62, i64* %leftindex, align 8, !dbg !2821, !tbaa !1619
  br label %if.end.6

if.end.6:                                         ; preds = %entry.if.end.6_crit_edge, %if.end
  %ob_size8.pre-phi = phi i64* [ %.pre56, %entry.if.end.6_crit_edge ], [ %ob_size, %if.end ], !dbg !2789
  %11 = phi %struct.BLOCK* [ %.pre, %entry.if.end.6_crit_edge ], [ %retval.0.i, %if.end ], !dbg !2788
  %12 = phi i64 [ %phitmp, %entry.if.end.6_crit_edge ], [ 61, %if.end ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %item, i64 0, i32 0, !dbg !2822
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2822, !tbaa !1251
  %inc7 = add i64 %13, 1, !dbg !2822
  store i64 %inc7, i64* %ob_refcnt, align 8, !dbg !2822, !tbaa !1251
  %14 = load i64, i64* %ob_size8.pre-phi, align 8, !dbg !2823, !tbaa !1502
  %inc9 = add i64 %14, 1, !dbg !2824
  store i64 %inc9, i64* %ob_size8.pre-phi, align 8, !dbg !2823, !tbaa !1502
  store i64 %12, i64* %leftindex, align 8, !dbg !2826, !tbaa !1619
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %11, i64 0, i32 1, i64 %12, !dbg !2827
  store %struct._object* %item, %struct._object** %arrayidx, align 8, !dbg !2828, !tbaa !1297
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !2829
  %15 = load i64, i64* %maxlen, align 8, !dbg !2829, !tbaa !1598
  %cmp13 = icmp ne i64 %15, -1, !dbg !2829
  %cmp16 = icmp sgt i64 %inc9, %15, !dbg !2824
  %or.cond = and i1 %cmp13, %cmp16, !dbg !2829
  br i1 %or.cond, label %if.then.17, label %if.end.24, !dbg !2829

if.then.17:                                       ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !2833
  %cmp.i.49 = icmp eq i64 %inc9, 0, !dbg !2834
  br i1 %cmp.i.49, label %if.then.i.50, label %if.end.i.53, !dbg !2835

if.then.i.50:                                     ; preds = %if.then.17
  %16 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2836, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !2837
  unreachable, !dbg !2838

if.end.i.53:                                      ; preds = %if.then.17
  %rightindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2839
  %17 = load i64, i64* %rightindex.i, align 8, !dbg !2839, !tbaa !1549
  %rightblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2840
  %18 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i, align 8, !dbg !2841, !tbaa !1520
  %arrayidx.i.51 = getelementptr %struct.BLOCK, %struct.BLOCK* %18, i64 0, i32 1, i64 %17, !dbg !2842
  %19 = load %struct._object*, %struct._object** %arrayidx.i.51, align 8, !dbg !2842, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !662, metadata !1241) #1, !dbg !2843
  %dec.i.52 = add i64 %17, -1, !dbg !2844
  store i64 %dec.i.52, i64* %rightindex.i, align 8, !dbg !2844, !tbaa !1549
  store i64 %14, i64* %ob_size8.pre-phi, align 8, !dbg !2845, !tbaa !1502
  %20 = load i64, i64* %state, align 8, !dbg !2846, !tbaa !1869
  %inc.i = add i64 %20, 1, !dbg !2846
  store i64 %inc.i, i64* %state, align 8, !dbg !2846, !tbaa !1869
  %cmp5.i = icmp eq i64 %17, 0, !dbg !2847
  br i1 %cmp5.i, label %if.then.6.i, label %deque_pop.exit, !dbg !2848

if.then.6.i:                                      ; preds = %if.end.i.53
  %cmp8.i = icmp eq i64 %14, 0, !dbg !2849
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i, !dbg !2850

if.then.9.i:                                      ; preds = %if.then.6.i
  %21 = bitcast i64* %leftindex to <2 x i64>*, !dbg !2851
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %21, align 8, !dbg !2851, !tbaa !1521
  br label %deque_pop.exit, !dbg !2852

if.else.i:                                        ; preds = %if.then.6.i
  %22 = bitcast %struct.BLOCK* %18 to i64*, !dbg !2853
  %23 = load i64, i64* %22, align 8, !dbg !2853, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %18, i64 0, metadata !494, metadata !1241) #1, !dbg !2854
  %24 = load i64, i64* @numfreeblocks, align 8, !dbg !2856, !tbaa !1521
  %cmp.i.i = icmp slt i64 %24, 10, !dbg !2857
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !2858

if.then.i.i:                                      ; preds = %if.else.i
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %24, !dbg !2859
  store %struct.BLOCK* %18, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !2860, !tbaa !1297
  %inc.i.i = add i64 %24, 1, !dbg !2856
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !2856, !tbaa !1521
  br label %freeblock.exit.i, !dbg !2861

if.else.i.i:                                      ; preds = %if.else.i
  %25 = bitcast %struct.BLOCK* %18 to i8*, !dbg !2862
  tail call void @PyMem_Free(i8* %25) #1, !dbg !2863
  br label %freeblock.exit.i, !dbg !2864

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %26 = bitcast %struct.BLOCK** %rightblock.i to i64*, !dbg !2865
  store i64 %23, i64* %26, align 8, !dbg !2865, !tbaa !1520
  store i64 61, i64* %rightindex.i, align 8, !dbg !2866, !tbaa !1549
  br label %deque_pop.exit, !dbg !2867

deque_pop.exit:                                   ; preds = %if.end.i.53, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !735, metadata !1241), !dbg !2867
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !738, metadata !1241), !dbg !2868
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !2870
  %27 = load i64, i64* %ob_refcnt19, align 8, !dbg !2870, !tbaa !1251
  %dec20 = add i64 %27, -1, !dbg !2870
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !2870, !tbaa !1251
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !2870
  br i1 %cmp21, label %if.else, label %if.end.24, !dbg !2872

if.else:                                          ; preds = %deque_pop.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !2873
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2873, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2873
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2873, !tbaa !1357
  tail call void %29(%struct._object* %19) #1, !dbg !2873
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.6, %if.else, %deque_pop.exit
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2875, !tbaa !1251
  %inc25 = add i64 %30, 1, !dbg !2875
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2875, !tbaa !1251
  br label %return, !dbg !2875

return:                                           ; preds = %if.end.5.i, %if.then.i, %newblock.exit, %if.end.24
  %retval.1 = phi %struct._object* [ @_Py_NoneStruct, %if.end.24 ], [ null, %newblock.exit ], [ null, %if.then.i ], [ null, %if.end.5.i ]
  ret %struct._object* %retval.1, !dbg !2876
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_clearmethod(%struct.dequeobject* nocapture %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !742, metadata !1241), !dbg !2877
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !653, metadata !1241) #1, !dbg !2878
  %ob_size.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2880
  %0 = load i64, i64* %ob_size.i, align 8, !dbg !2880, !tbaa !1502
  %tobool.6.i = icmp eq i64 %0, 0, !dbg !2881
  br i1 %tobool.6.i, label %deque_clear.exit, label %if.end.i.lr.ph.i, !dbg !2881

if.end.i.lr.ph.i:                                 ; preds = %entry
  %rightindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !2882
  %rightblock.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !2884
  %leftindex.i.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2885
  %1 = bitcast %struct.BLOCK** %rightblock.i.i to i64*, !dbg !2886
  %2 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !2882
  %3 = bitcast i64* %rightindex.i.i to <2 x i64>*, !dbg !2887
  %4 = bitcast i64* %leftindex.i.i to <2 x i64>*, !dbg !2888
  br label %if.end.i.i, !dbg !2881

if.end.i.i:                                       ; preds = %while.cond.backedge.i, %if.end.i.lr.ph.i
  %5 = phi i64 [ %0, %if.end.i.lr.ph.i ], [ %16, %while.cond.backedge.i ], !dbg !2889
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !2890
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !2891
  %6 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i.i, align 8, !dbg !2892, !tbaa !1520
  %7 = load <2 x i64>, <2 x i64>* %2, align 8, !dbg !2882, !tbaa !1521
  %8 = extractelement <2 x i64> %7, i32 0, !dbg !2893
  %arrayidx.i.i = getelementptr %struct.BLOCK, %struct.BLOCK* %6, i64 0, i32 1, i64 %8, !dbg !2893
  %9 = load %struct._object*, %struct._object** %arrayidx.i.i, align 8, !dbg !2893, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !662, metadata !1241) #1, !dbg !2894
  %dec3.i.i = add i64 %5, -1, !dbg !2895
  store i64 %dec3.i.i, i64* %ob_size.i, align 8, !dbg !2896, !tbaa !1502
  %10 = add <2 x i64> %7, <i64 -1, i64 1>, !dbg !2887
  store <2 x i64> %10, <2 x i64>* %3, align 8, !dbg !2887, !tbaa !1521
  %cmp5.i.i = icmp eq i64 %8, 0, !dbg !2897
  br i1 %cmp5.i.i, label %if.then.6.i.i, label %deque_pop.exit.i, !dbg !2898

if.then.6.i.i:                                    ; preds = %if.end.i.i
  %cmp8.i.i = icmp eq i64 %dec3.i.i, 0, !dbg !2899
  br i1 %cmp8.i.i, label %if.then.9.i.i, label %if.else.i.i, !dbg !2900

if.then.9.i.i:                                    ; preds = %if.then.6.i.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %4, align 8, !dbg !2888, !tbaa !1521
  br label %deque_pop.exit.i, !dbg !2901

if.else.i.i:                                      ; preds = %if.then.6.i.i
  %11 = bitcast %struct.BLOCK* %6 to i64*, !dbg !2902
  %12 = load i64, i64* %11, align 8, !dbg !2902, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %6, i64 0, metadata !494, metadata !1241) #1, !dbg !2903
  %13 = load i64, i64* @numfreeblocks, align 8, !dbg !2905, !tbaa !1521
  %cmp.i.i.i = icmp slt i64 %13, 10, !dbg !2906
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i, !dbg !2907

if.then.i.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %13, !dbg !2908
  store %struct.BLOCK* %6, %struct.BLOCK** %arrayidx.i.i.i, align 8, !dbg !2909, !tbaa !1297
  %inc.i.i.i = add i64 %13, 1, !dbg !2905
  store i64 %inc.i.i.i, i64* @numfreeblocks, align 8, !dbg !2905, !tbaa !1521
  br label %freeblock.exit.i.i, !dbg !2910

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %14 = bitcast %struct.BLOCK* %6 to i8*, !dbg !2911
  tail call void @PyMem_Free(i8* %14) #1, !dbg !2912
  br label %freeblock.exit.i.i, !dbg !2913

freeblock.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then.i.i.i
  store i64 %12, i64* %1, align 8, !dbg !2886, !tbaa !1520
  store i64 61, i64* %rightindex.i.i, align 8, !dbg !2914, !tbaa !1549
  br label %deque_pop.exit.i, !dbg !2915

deque_pop.exit.i:                                 ; preds = %freeblock.exit.i.i, %if.then.9.i.i, %if.end.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !654, metadata !1241) #1, !dbg !2916
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !655, metadata !1241) #1, !dbg !2917
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !2918
  %15 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2918, !tbaa !1251
  %dec.i = add i64 %15, -1, !dbg !2918
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2918, !tbaa !1251
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !2918
  br i1 %cmp.i, label %if.else.i, label %while.cond.backedge.i, !dbg !2919

while.cond.backedge.i:                            ; preds = %if.else.i, %deque_pop.exit.i
  %16 = load i64, i64* %ob_size.i, align 8, !dbg !2880, !tbaa !1502
  %tobool.i = icmp eq i64 %16, 0, !dbg !2881
  br i1 %tobool.i, label %deque_clear.exit.loopexit, label %if.end.i.i, !dbg !2881

if.else.i:                                        ; preds = %deque_pop.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !2920
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2920, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2920
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2920, !tbaa !1357
  tail call void %18(%struct._object* %9) #1, !dbg !2920
  br label %while.cond.backedge.i, !dbg !2889

deque_clear.exit.loopexit:                        ; preds = %while.cond.backedge.i
  br label %deque_clear.exit, !dbg !2921

deque_clear.exit:                                 ; preds = %deque_clear.exit.loopexit, %entry
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2921, !tbaa !1251
  %inc = add i64 %19, 1, !dbg !2921
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2921, !tbaa !1251
  ret %struct._object* @_Py_NoneStruct, !dbg !2921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_copy(%struct._object* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %deque, i64 0, metadata !745, metadata !1241), !dbg !2922
  %0 = getelementptr inbounds %struct._object, %struct._object* %deque, i64 4, i32 0, !dbg !2923
  %1 = load i64, i64* %0, align 8, !dbg !2923, !tbaa !1598
  %cmp = icmp eq i64 %1, -1, !dbg !2925
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %deque, i64 0, i32 1, !dbg !2926
  %2 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !2926
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !2926, !tbaa !1308
  br i1 %cmp, label %if.then, label %if.else, !dbg !2927

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %struct._object* %deque, i8* null) #1, !dbg !2928
  br label %return, !dbg !2929

if.else:                                          ; preds = %entry
  %call3 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), %struct._object* %deque, i64 %1, i8* null) #1, !dbg !2930
  br label %return, !dbg !2931

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call3, %if.else ]
  ret %struct._object* %retval.0, !dbg !2932
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_count(%struct.dequeobject* nocapture readonly %deque, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !748, metadata !1241), !dbg !2933
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !749, metadata !1241), !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %3, i64 0, metadata !750, metadata !1241), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !751, metadata !1241), !dbg !2936
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !2937
  %0 = load i64, i64* %ob_size, align 8, !dbg !2937, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !752, metadata !1241), !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !754, metadata !1241), !dbg !2939
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !2940
  %1 = load i64, i64* %state, align 8, !dbg !2940, !tbaa !1869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !756, metadata !1241), !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !753, metadata !1241), !dbg !2942
  %cmp1.43 = icmp sgt i64 %0, 0, !dbg !2943
  br i1 %cmp1.43, label %for.body.lr.ph, label %for.end, !dbg !2946

for.body.lr.ph:                                   ; preds = %entry
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !2947
  %2 = load i64, i64* %leftindex, align 8, !dbg !2947, !tbaa !1619
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !2948
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !2948, !tbaa !1493
  br label %for.body, !dbg !2946

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %b.047 = phi %struct.BLOCK* [ %3, %for.body.lr.ph ], [ %b.1, %for.inc ]
  %index.046 = phi i64 [ %2, %for.body.lr.ph ], [ %index.1, %for.inc ]
  %count.045 = phi i64 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc ]
  %i.044 = phi i64 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc ]
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %b.047, i64 0, i32 1, i64 %index.046, !dbg !2949
  %4 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2949, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !755, metadata !1241), !dbg !2951
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %4, %struct._object* %v, i32 2) #1, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !757, metadata !1241), !dbg !2953
  %cmp2 = icmp sgt i32 %call, 0, !dbg !2954
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2956

if.then:                                          ; preds = %for.body
  %inc = add i64 %count.045, 1, !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !754, metadata !1241), !dbg !2939
  br label %if.end.5, !dbg !2958

if.else:                                          ; preds = %for.body
  %cmp3 = icmp slt i32 %call, 0, !dbg !2959
  br i1 %cmp3, label %cleanup.loopexit, label %if.end.5, !dbg !2961

if.end.5:                                         ; preds = %if.else, %if.then
  %count.1 = phi i64 [ %inc, %if.then ], [ %count.045, %if.else ]
  %5 = load i64, i64* %state, align 8, !dbg !2962, !tbaa !1869
  %cmp7 = icmp eq i64 %1, %5, !dbg !2964
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !2965

if.then.8:                                        ; preds = %if.end.5
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2966, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0)) #1, !dbg !2968
  br label %cleanup, !dbg !2969

if.end.9:                                         ; preds = %if.end.5
  %inc10 = add i64 %index.046, 1, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %inc10, i64 0, metadata !751, metadata !1241), !dbg !2936
  %cmp11 = icmp eq i64 %inc10, 62, !dbg !2971
  br i1 %cmp11, label %if.then.12, label %for.inc, !dbg !2973

if.then.12:                                       ; preds = %if.end.9
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %b.047, i64 0, i32 2, !dbg !2974
  %7 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8, !dbg !2974, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %7, i64 0, metadata !750, metadata !1241), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !751, metadata !1241), !dbg !2936
  br label %for.inc, !dbg !2976

for.inc:                                          ; preds = %if.end.9, %if.then.12
  %index.1 = phi i64 [ 0, %if.then.12 ], [ %inc10, %if.end.9 ]
  %b.1 = phi %struct.BLOCK* [ %7, %if.then.12 ], [ %b.047, %if.end.9 ]
  %inc14 = add nuw nsw i64 %i.044, 1, !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %inc14, i64 0, metadata !753, metadata !1241), !dbg !2942
  %cmp1 = icmp slt i64 %inc14, %0, !dbg !2943
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !2946

for.end.loopexit:                                 ; preds = %for.inc
  %count.1.lcssa52 = phi i64 [ %count.1, %for.inc ]
  br label %for.end, !dbg !2978

for.end:                                          ; preds = %for.end.loopexit, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %count.1.lcssa52, %for.end.loopexit ]
  %call15 = tail call %struct._object* @PyLong_FromSsize_t(i64 %count.0.lcssa) #1, !dbg !2978
  br label %cleanup, !dbg !2979

cleanup.loopexit:                                 ; preds = %if.else
  br label %cleanup, !dbg !2980

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %if.then.8
  %retval.0 = phi %struct._object* [ null, %if.then.8 ], [ %call15, %for.end ], [ null, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !2980
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_extendleft(%struct.dequeobject* %deque, %struct._object* %iterable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !760, metadata !1241), !dbg !2981
  tail call void @llvm.dbg.value(metadata %struct._object* %iterable, i64 0, metadata !761, metadata !1241), !dbg !2982
  %0 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, !dbg !2983
  %cmp = icmp eq %struct._object* %0, %iterable, !dbg !2984
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2985

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PySequence_List(%struct._object* %iterable) #1, !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !767, metadata !1241), !dbg !2987
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2988
  br i1 %cmp1, label %cleanup.101, label %if.end, !dbg !2990

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct._object* @deque_extendleft(%struct.dequeobject* %deque, %struct._object* %call), !dbg !2991
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !764, metadata !1241), !dbg !2992
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !768, metadata !1241), !dbg !2993
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2995
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2995, !tbaa !1251
  %dec = add i64 %1, -1, !dbg !2995
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2995, !tbaa !1251
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2995
  br i1 %cmp4, label %if.else, label %cleanup.101, !dbg !2997

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2998
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2998, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2998
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2998, !tbaa !1357
  tail call void %3(%struct._object* %call) #1, !dbg !2998
  br label %cleanup.101

if.end.8:                                         ; preds = %entry
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !3000
  %4 = load i64, i64* %ob_size, align 8, !dbg !3000, !tbaa !1502
  %cmp9 = icmp eq i64 %4, 0, !dbg !3002
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !3003

if.then.10:                                       ; preds = %if.end.8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !3004
  %5 = bitcast i64* %leftindex to <2 x i64>*, !dbg !3006
  store <2 x i64> <i64 61, i64 60>, <2 x i64>* %5, align 8, !dbg !3006, !tbaa !1521
  br label %if.end.11, !dbg !3007

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %call12 = tail call %struct._object* @PyObject_GetIter(%struct._object* %iterable) #1, !dbg !3008
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !762, metadata !1241), !dbg !3009
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !3010
  br i1 %cmp13, label %cleanup.101, label %if.end.15, !dbg !3012

if.end.15:                                        ; preds = %if.end.11
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !3013
  %6 = load i64, i64* %maxlen, align 8, !dbg !3013, !tbaa !1598
  %cmp16 = icmp eq i64 %6, 0, !dbg !3015
  %call.25.i = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !3016
  %cmp.26.i = icmp eq %struct._object* %call.25.i, null, !dbg !3018
  br i1 %cmp16, label %if.then.17, label %while.cond.preheader, !dbg !3019

while.cond.preheader:                             ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call.25.i, i64 0, metadata !763, metadata !1241), !dbg !3020
  br i1 %cmp.26.i, label %do.body.85, label %while.body.lr.ph, !dbg !3021

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !3022
  %leftindex22 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !3023
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !3024
  %7 = bitcast %struct.BLOCK** %leftblock to i64*, !dbg !3024
  %rightindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !3025
  %rightblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !3028
  %8 = bitcast %struct.BLOCK** %rightblock.i to i64*, !dbg !3029
  %9 = bitcast i64* %rightindex.i to <2 x i64>*, !dbg !3025
  %10 = bitcast i64* %rightindex.i to <2 x i64>*, !dbg !3030
  %11 = bitcast i64* %leftindex22 to <2 x i64>*, !dbg !3031
  br label %while.body, !dbg !3021

if.then.17:                                       ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !616, metadata !1241) #1, !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct._object* %call.25.i, i64 0, metadata !617, metadata !1241) #1, !dbg !3033
  br i1 %cmp.26.i, label %do.body.2.i, label %do.body.i.preheader, !dbg !3034

do.body.i.preheader:                              ; preds = %if.then.17
  br label %do.body.i, !dbg !3035

do.body.i:                                        ; preds = %do.body.i.preheader, %while.cond.backedge.i
  %call27.i = phi %struct._object* [ %call.i, %while.cond.backedge.i ], [ %call.25.i, %do.body.i.preheader ], !dbg !3036
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call27.i, i64 0, i32 0, !dbg !3035
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3035, !tbaa !1251
  %dec.i = add i64 %12, -1, !dbg !3035
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !3035, !tbaa !1251
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !3035
  br i1 %cmp1.i, label %if.else.i, label %while.cond.backedge.i, !dbg !3037

while.cond.backedge.i:                            ; preds = %if.else.i, %do.body.i
  %call.i = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !3016
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !3018
  br i1 %cmp.i, label %do.body.2.i.loopexit, label %do.body.i, !dbg !3034

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call27.i, i64 0, i32 1, !dbg !3038
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3038, !tbaa !1308
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !3038
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3038, !tbaa !1357
  tail call void %14(%struct._object* %call27.i) #1, !dbg !3038
  br label %while.cond.backedge.i, !dbg !3036

do.body.2.i.loopexit:                             ; preds = %while.cond.backedge.i
  br label %do.body.2.i, !dbg !3039

do.body.2.i:                                      ; preds = %do.body.2.i.loopexit, %if.then.17
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !621, metadata !1241) #1, !dbg !3039
  %ob_refcnt4.i = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !3040
  %15 = load i64, i64* %ob_refcnt4.i, align 8, !dbg !3040, !tbaa !1251
  %dec5.i = add i64 %15, -1, !dbg !3040
  store i64 %dec5.i, i64* %ob_refcnt4.i, align 8, !dbg !3040, !tbaa !1251
  %cmp6.i = icmp eq i64 %dec5.i, 0, !dbg !3040
  br i1 %cmp6.i, label %if.else.8.i, label %if.end.11.i, !dbg !3041

if.else.8.i:                                      ; preds = %do.body.2.i
  %ob_type9.i = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !3042
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type9.i, align 8, !dbg !3042, !tbaa !1308
  %tp_dealloc10.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !3042
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10.i, align 8, !dbg !3042, !tbaa !1357
  tail call void %17(%struct._object* %call12) #1, !dbg !3042
  br label %if.end.11.i, !dbg !3036

if.end.11.i:                                      ; preds = %if.else.8.i, %do.body.2.i
  %call14.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !3043
  %tobool.i = icmp eq %struct._object* %call14.i, null, !dbg !3043
  br i1 %tobool.i, label %if.end.16.i, label %cleanup.101, !dbg !3044

if.end.16.i:                                      ; preds = %if.end.11.i
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3045, !tbaa !1251
  %inc.i = add i64 %18, 1, !dbg !3045
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3045, !tbaa !1251
  br label %cleanup.101, !dbg !3045

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call20177 = phi %struct._object* [ %call.25.i, %while.body.lr.ph ], [ %call20, %while.cond.backedge ]
  %19 = load i64, i64* %state, align 8, !dbg !3046, !tbaa !1869
  %inc = add i64 %19, 1, !dbg !3046
  store i64 %inc, i64* %state, align 8, !dbg !3046, !tbaa !1869
  %20 = load i64, i64* %leftindex22, align 8, !dbg !3023, !tbaa !1619
  %cmp23 = icmp eq i64 %20, 0, !dbg !3047
  br i1 %cmp23, label %if.then.24, label %while.body.if.end.58_crit_edge, !dbg !3048

while.body.if.end.58_crit_edge:                   ; preds = %while.body
  %.pre = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !3049, !tbaa !1493
  br label %if.end.58, !dbg !3048

if.then.24:                                       ; preds = %while.body
  %21 = load i64, i64* %ob_size, align 8, !dbg !3050, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !568, metadata !1241) #1, !dbg !3051
  %cmp.i.156 = icmp sgt i64 %21, 9223372036854775682, !dbg !3053
  br i1 %cmp.i.156, label %if.then.i, label %if.end.i, !dbg !3054

if.then.i:                                        ; preds = %if.then.24
  %call20177.lcssa = phi %struct._object* [ %call20177, %if.then.24 ]
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3055, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !3056
  br label %do.body.29, !dbg !3057

if.end.i:                                         ; preds = %if.then.24
  %23 = load i64, i64* @numfreeblocks, align 8, !dbg !3058, !tbaa !1521
  %tobool.i.157 = icmp eq i64 %23, 0, !dbg !3058
  br i1 %tobool.i.157, label %if.end.2.i, label %if.then.1.i, !dbg !3059

if.then.1.i:                                      ; preds = %if.end.i
  %dec.i.158 = add i64 %23, -1, !dbg !3060
  store i64 %dec.i.158, i64* @numfreeblocks, align 8, !dbg !3060, !tbaa !1521
  %arrayidx.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %dec.i.158, !dbg !3061
  %24 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx.i, align 8, !dbg !3061, !tbaa !1297
  br label %newblock.exit, !dbg !3062

if.end.2.i:                                       ; preds = %if.end.i
  %call.i.159 = tail call i8* @PyMem_Malloc(i64 512) #1, !dbg !3063
  %cmp3.i = icmp eq i8* %call.i.159, null, !dbg !3064
  br i1 %cmp3.i, label %if.end.5.i, label %if.then.4.i, !dbg !3065

if.then.4.i:                                      ; preds = %if.end.2.i
  %25 = bitcast i8* %call.i.159 to %struct.BLOCK*, !dbg !3063
  br label %newblock.exit, !dbg !3066

if.end.5.i:                                       ; preds = %if.end.2.i
  %call20177.lcssa199 = phi %struct._object* [ %call20177, %if.end.2.i ]
  %call6.i = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !3067
  br label %do.body.29, !dbg !3068

newblock.exit:                                    ; preds = %if.then.1.i, %if.then.4.i
  %retval.0.i.160 = phi %struct.BLOCK* [ %24, %if.then.1.i ], [ %25, %if.then.4.i ], !dbg !3069
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %retval.0.i.160, i64 0, metadata !770, metadata !1241), !dbg !3070
  %cmp27 = icmp eq %struct.BLOCK* %retval.0.i.160, null, !dbg !3071
  br i1 %cmp27, label %do.body.29.loopexit, label %if.end.53, !dbg !3072

do.body.29.loopexit:                              ; preds = %newblock.exit
  %call20177.lcssa200 = phi %struct._object* [ %call20177, %newblock.exit ]
  br label %do.body.29, !dbg !3073

do.body.29:                                       ; preds = %do.body.29.loopexit, %if.end.5.i, %if.then.i
  %call20177203 = phi %struct._object* [ %call20177.lcssa200, %do.body.29.loopexit ], [ %call20177.lcssa199, %if.end.5.i ], [ %call20177.lcssa, %if.then.i ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !774, metadata !1241), !dbg !3073
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %call20177203, i64 0, i32 0, !dbg !3075
  %26 = load i64, i64* %ob_refcnt31, align 8, !dbg !3075, !tbaa !1251
  %dec32 = add i64 %26, -1, !dbg !3075
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !3075, !tbaa !1251
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !3075
  br i1 %cmp33, label %if.else.35, label %if.end.38, !dbg !3077

if.else.35:                                       ; preds = %do.body.29
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %call20177203, i64 0, i32 1, !dbg !3078
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !3078, !tbaa !1308
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !3078
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !3078, !tbaa !1357
  tail call void %28(%struct._object* %call20177203) #1, !dbg !3078
  br label %if.end.38

if.end.38:                                        ; preds = %do.body.29, %if.else.35
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !778, metadata !1241), !dbg !3080
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !3082
  %29 = load i64, i64* %ob_refcnt43, align 8, !dbg !3082, !tbaa !1251
  %dec44 = add i64 %29, -1, !dbg !3082
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !3082, !tbaa !1251
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !3082
  br i1 %cmp45, label %if.else.47, label %cleanup.101, !dbg !3084

if.else.47:                                       ; preds = %if.end.38
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !3085
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !3085, !tbaa !1308
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !3085
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !3085, !tbaa !1357
  tail call void %31(%struct._object* %call12) #1, !dbg !3085
  br label %cleanup.101

if.end.53:                                        ; preds = %newblock.exit
  %32 = load i64, i64* %7, align 8, !dbg !3024, !tbaa !1493
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %retval.0.i.160, i64 0, i32 2, !dbg !3087
  %33 = bitcast %struct.BLOCK** %rightlink to i64*, !dbg !3088
  store i64 %32, i64* %33, align 8, !dbg !3088, !tbaa !2153
  %34 = inttoptr i64 %32 to %struct.BLOCK*, !dbg !3089
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %34, i64 0, i32 0, !dbg !3090
  store %struct.BLOCK* %retval.0.i.160, %struct.BLOCK** %leftlink, align 8, !dbg !3091, !tbaa !1532
  store %struct.BLOCK* %retval.0.i.160, %struct.BLOCK** %leftblock, align 8, !dbg !3092, !tbaa !1493
  store i64 62, i64* %leftindex22, align 8, !dbg !3093, !tbaa !1619
  br label %if.end.58

if.end.58:                                        ; preds = %while.body.if.end.58_crit_edge, %if.end.53
  %35 = phi %struct.BLOCK* [ %retval.0.i.160, %if.end.53 ], [ %.pre, %while.body.if.end.58_crit_edge ], !dbg !3049
  %36 = phi i64 [ 62, %if.end.53 ], [ %20, %while.body.if.end.58_crit_edge ], !dbg !3094
  %37 = load i64, i64* %ob_size, align 8, !dbg !3095, !tbaa !1502
  %inc60 = add i64 %37, 1, !dbg !3096
  store i64 %inc60, i64* %ob_size, align 8, !dbg !3095, !tbaa !1502
  %dec62 = add i64 %36, -1, !dbg !3094
  store i64 %dec62, i64* %leftindex22, align 8, !dbg !3094, !tbaa !1619
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %35, i64 0, i32 1, i64 %dec62, !dbg !3098
  store %struct._object* %call20177, %struct._object** %arrayidx, align 8, !dbg !3099, !tbaa !1297
  %38 = load i64, i64* %maxlen, align 8, !dbg !3100, !tbaa !1598
  %cmp66 = icmp ne i64 %38, -1, !dbg !3100
  %cmp69 = icmp sgt i64 %inc60, %38, !dbg !3096
  %or.cond = and i1 %cmp66, %cmp69, !dbg !3100
  br i1 %or.cond, label %if.then.70, label %while.cond.backedge, !dbg !3100

while.cond.backedge:                              ; preds = %if.end.58, %deque_pop.exit, %if.else.78
  %call20 = tail call %struct._object* @PyIter_Next(%struct._object* %call12) #1, !dbg !3101
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !763, metadata !1241), !dbg !3020
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !3102
  br i1 %cmp21, label %do.body.85.loopexit, label %while.body, !dbg !3021

if.then.70:                                       ; preds = %if.end.58
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !660, metadata !1241) #1, !dbg !3103
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1241) #1, !dbg !3104
  %cmp.i.161 = icmp eq i64 %inc60, 0, !dbg !3105
  br i1 %cmp.i.161, label %if.then.i.162, label %if.end.i.166, !dbg !3106

if.then.i.162:                                    ; preds = %if.then.70
  %39 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3107, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !3108
  unreachable, !dbg !3109

if.end.i.166:                                     ; preds = %if.then.70
  %40 = load %struct.BLOCK*, %struct.BLOCK** %rightblock.i, align 8, !dbg !3110, !tbaa !1520
  %41 = load <2 x i64>, <2 x i64>* %9, align 8, !dbg !3025, !tbaa !1521
  %42 = extractelement <2 x i64> %41, i32 0, !dbg !3111
  %arrayidx.i.163 = getelementptr %struct.BLOCK, %struct.BLOCK* %40, i64 0, i32 1, i64 %42, !dbg !3111
  %43 = load %struct._object*, %struct._object** %arrayidx.i.163, align 8, !dbg !3111, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !662, metadata !1241) #1, !dbg !3112
  store i64 %37, i64* %ob_size, align 8, !dbg !3113, !tbaa !1502
  %44 = add <2 x i64> %41, <i64 -1, i64 1>, !dbg !3030
  store <2 x i64> %44, <2 x i64>* %10, align 8, !dbg !3030, !tbaa !1521
  %cmp5.i = icmp eq i64 %42, 0, !dbg !3114
  br i1 %cmp5.i, label %if.then.6.i, label %deque_pop.exit, !dbg !3115

if.then.6.i:                                      ; preds = %if.end.i.166
  %cmp8.i = icmp eq i64 %37, 0, !dbg !3116
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i.167, !dbg !3117

if.then.9.i:                                      ; preds = %if.then.6.i
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %11, align 8, !dbg !3031, !tbaa !1521
  br label %deque_pop.exit, !dbg !3118

if.else.i.167:                                    ; preds = %if.then.6.i
  %45 = bitcast %struct.BLOCK* %40 to i64*, !dbg !3119
  %46 = load i64, i64* %45, align 8, !dbg !3119, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %40, i64 0, metadata !494, metadata !1241) #1, !dbg !3120
  %47 = load i64, i64* @numfreeblocks, align 8, !dbg !3122, !tbaa !1521
  %cmp.i.i = icmp slt i64 %47, 10, !dbg !3123
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !3124

if.then.i.i:                                      ; preds = %if.else.i.167
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %47, !dbg !3125
  store %struct.BLOCK* %40, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !3126, !tbaa !1297
  %inc.i.i = add i64 %47, 1, !dbg !3122
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !3122, !tbaa !1521
  br label %freeblock.exit.i, !dbg !3127

if.else.i.i:                                      ; preds = %if.else.i.167
  %48 = bitcast %struct.BLOCK* %40 to i8*, !dbg !3128
  tail call void @PyMem_Free(i8* %48) #1, !dbg !3129
  br label %freeblock.exit.i, !dbg !3130

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  store i64 %46, i64* %8, align 8, !dbg !3029, !tbaa !1520
  store i64 61, i64* %rightindex.i, align 8, !dbg !3131, !tbaa !1549
  br label %deque_pop.exit, !dbg !3132

deque_pop.exit:                                   ; preds = %if.end.i.166, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !780, metadata !1241), !dbg !3132
  tail call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !783, metadata !1241), !dbg !3133
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 0, !dbg !3135
  %49 = load i64, i64* %ob_refcnt74, align 8, !dbg !3135, !tbaa !1251
  %dec75 = add i64 %49, -1, !dbg !3135
  store i64 %dec75, i64* %ob_refcnt74, align 8, !dbg !3135, !tbaa !1251
  %cmp76 = icmp eq i64 %dec75, 0, !dbg !3135
  br i1 %cmp76, label %if.else.78, label %while.cond.backedge, !dbg !3137

if.else.78:                                       ; preds = %deque_pop.exit
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 1, !dbg !3138
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !3138, !tbaa !1308
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !3138
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !3138, !tbaa !1357
  tail call void %51(%struct._object* %43) #1, !dbg !3138
  br label %while.cond.backedge

do.body.85.loopexit:                              ; preds = %while.cond.backedge
  br label %do.body.85, !dbg !3140

do.body.85:                                       ; preds = %do.body.85.loopexit, %while.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !785, metadata !1241), !dbg !3140
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !3142
  %52 = load i64, i64* %ob_refcnt87, align 8, !dbg !3142, !tbaa !1251
  %dec88 = add i64 %52, -1, !dbg !3142
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !3142, !tbaa !1251
  %cmp89 = icmp eq i64 %dec88, 0, !dbg !3142
  br i1 %cmp89, label %if.else.91, label %if.end.94, !dbg !3144

if.else.91:                                       ; preds = %do.body.85
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !3145
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !3145, !tbaa !1308
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i64 0, i32 4, !dbg !3145
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !3145, !tbaa !1357
  tail call void %54(%struct._object* %call12) #1, !dbg !3145
  br label %if.end.94

if.end.94:                                        ; preds = %do.body.85, %if.else.91
  %call97 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !3147
  %tobool = icmp eq %struct._object* %call97, null, !dbg !3147
  br i1 %tobool, label %if.end.99, label %cleanup.101, !dbg !3149

if.end.99:                                        ; preds = %if.end.94
  %55 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3150, !tbaa !1251
  %inc100 = add i64 %55, 1, !dbg !3150
  store i64 %inc100, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3150, !tbaa !1251
  br label %cleanup.101, !dbg !3150

cleanup.101:                                      ; preds = %if.end.16.i, %if.end.11.i, %if.end.94, %if.end.38, %if.else.47, %if.end.11, %if.then, %if.end, %if.else, %if.end.99
  %retval.4 = phi %struct._object* [ @_Py_NoneStruct, %if.end.99 ], [ null, %if.then ], [ %call3, %if.end ], [ %call3, %if.else ], [ null, %if.end.11 ], [ null, %if.else.47 ], [ null, %if.end.38 ], [ null, %if.end.94 ], [ @_Py_NoneStruct, %if.end.16.i ], [ null, %if.end.11.i ]
  ret %struct._object* %retval.4, !dbg !3151
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reduce(%struct.dequeobject* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !789, metadata !1241), !dbg !3152
  %0 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, !dbg !3153
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %0, %struct._Py_Identifier* nonnull @deque_reduce.PyId___dict__) #1, !dbg !3154
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !790, metadata !1241), !dbg !3155
  %cmp = icmp eq %struct._object* %call, null, !dbg !3156
  br i1 %cmp, label %if.then, label %if.end, !dbg !3158

if.then:                                          ; preds = %entry
  tail call void @PyErr_Clear() #1, !dbg !3159
  br label %if.end, !dbg !3159

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call %struct._object* @PySequence_List(%struct._object* %0) #1, !dbg !3160
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !792, metadata !1241), !dbg !3161
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !3162
  br i1 %cmp2, label %do.body, label %if.end.13, !dbg !3163

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !793, metadata !1241), !dbg !3164
  br i1 %cmp, label %cleanup, label %do.body.6, !dbg !3166

do.body.6:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !797, metadata !1241), !dbg !3167
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3169
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3169, !tbaa !1251
  %dec = add i64 %1, -1, !dbg !3169
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3169, !tbaa !1251
  %cmp7 = icmp eq i64 %dec, 0, !dbg !3169
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !3171

if.else:                                          ; preds = %do.body.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3172
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3172, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !3172
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3172, !tbaa !1357
  tail call void %3(%struct._object* %call) #1, !dbg !3172
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !3174
  %4 = load i64, i64* %maxlen, align 8, !dbg !3174, !tbaa !1598
  %cmp16 = icmp eq i64 %4, -1, !dbg !3178
  %ob_type18 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, i32 1, !dbg !3179
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !3179, !tbaa !1308
  br i1 %cmp, label %if.then.15, label %if.else.25, !dbg !3180

if.then.15:                                       ; preds = %if.end.13
  br i1 %cmp16, label %if.then.17, label %if.else.20, !dbg !3181

if.then.17:                                       ; preds = %if.then.15
  %call19 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), %struct._typeobject* %5, %struct._object* %call1) #1, !dbg !3182
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !791, metadata !1241), !dbg !3183
  br label %if.end.53, !dbg !3184

if.else.20:                                       ; preds = %if.then.15
  %call23 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %struct._typeobject* %5, %struct._object* %call1, i64 %4) #1, !dbg !3185
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !791, metadata !1241), !dbg !3183
  br label %if.end.53

if.else.25:                                       ; preds = %if.end.13
  br i1 %cmp16, label %if.then.28, label %if.else.31, !dbg !3186

if.then.28:                                       ; preds = %if.else.25
  %call30 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %struct._typeobject* %5, %struct._object* %call1, %struct._object* nonnull @_Py_NoneStruct, %struct._object* %call) #1, !dbg !3188
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !791, metadata !1241), !dbg !3183
  br label %do.body.41, !dbg !3190

if.else.31:                                       ; preds = %if.else.25
  %call34 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), %struct._typeobject* %5, %struct._object* %call1, i64 %4, %struct._object* %call) #1, !dbg !3191
  tail call void @llvm.dbg.value(metadata %struct._object* %call34, i64 0, metadata !791, metadata !1241), !dbg !3183
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.28, %if.else.31
  %result.0 = phi %struct._object* [ %call30, %if.then.28 ], [ %call34, %if.else.31 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !800, metadata !1241), !dbg !3192
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !802, metadata !1241), !dbg !3194
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3196
  %6 = load i64, i64* %ob_refcnt43, align 8, !dbg !3196, !tbaa !1251
  %dec44 = add i64 %6, -1, !dbg !3196
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !3196, !tbaa !1251
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !3196
  br i1 %cmp45, label %if.else.47, label %if.end.53, !dbg !3198

if.else.47:                                       ; preds = %do.body.41
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3199
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !3199, !tbaa !1308
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !3199
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !3199, !tbaa !1357
  tail call void %8(%struct._object* %call) #1, !dbg !3199
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.17, %if.else.20, %if.else.47, %do.body.41
  %result.098 = phi %struct._object* [ %result.0, %if.else.47 ], [ %result.0, %do.body.41 ], [ %call23, %if.else.20 ], [ %call19, %if.then.17 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !805, metadata !1241), !dbg !3201
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !3203
  %9 = load i64, i64* %ob_refcnt58, align 8, !dbg !3203, !tbaa !1251
  %dec59 = add i64 %9, -1, !dbg !3203
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !3203, !tbaa !1251
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !3203
  br i1 %cmp60, label %if.else.62, label %cleanup, !dbg !3205

if.else.62:                                       ; preds = %if.end.53
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !3206
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !3206, !tbaa !1308
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !3206
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !3206, !tbaa !1357
  tail call void %11(%struct._object* %call1) #1, !dbg !3206
  br label %cleanup

cleanup:                                          ; preds = %if.else.62, %if.end.53, %do.body, %do.body.6, %if.else
  %retval.0 = phi %struct._object* [ null, %if.else ], [ null, %do.body.6 ], [ null, %do.body ], [ %result.098, %if.end.53 ], [ %result.098, %if.else.62 ]
  ret %struct._object* %retval.0, !dbg !3208
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_remove(%struct.dequeobject* nocapture %deque, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !809, metadata !1241), !dbg !3209
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !810, metadata !1241), !dbg !3210
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !3211
  %0 = load i64, i64* %ob_size, align 8, !dbg !3211, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !812, metadata !1241), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !811, metadata !1241), !dbg !3213
  %cmp.54 = icmp sgt i64 %0, 0, !dbg !3214
  br i1 %cmp.54, label %for.body.lr.ph, label %for.end, !dbg !3215

for.body.lr.ph:                                   ; preds = %entry
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !3216
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !3217
  br label %for.body, !dbg !3215

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.055 = phi i64 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc ]
  %1 = load i64, i64* %leftindex, align 8, !dbg !3216, !tbaa !1619
  %2 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !3217, !tbaa !1493
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %2, i64 0, i32 1, i64 %1, !dbg !3218
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3218, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !813, metadata !1241), !dbg !3219
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %3, %struct._object* %value, i32 2) #1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !817, metadata !1241), !dbg !3221
  %4 = load i64, i64* %ob_size, align 8, !dbg !3222, !tbaa !1502
  %cmp3 = icmp eq i64 %4, %0, !dbg !3224
  br i1 %cmp3, label %if.end, label %if.then, !dbg !3225

if.then:                                          ; preds = %for.body
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3226, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0)) #1, !dbg !3228
  br label %cleanup.24, !dbg !3229

if.end:                                           ; preds = %for.body
  %cmp4 = icmp sgt i32 %call, 0, !dbg !3230
  br i1 %cmp4, label %if.then.5, label %if.else.14, !dbg !3231

if.then.5:                                        ; preds = %if.end
  %i.055.lcssa71 = phi i64 [ %i.055, %if.end ]
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !574, metadata !1241) #1, !dbg !3232
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !575, metadata !1241) #1, !dbg !3234
  %cmp.i = icmp eq i64 %0, 0, !dbg !3235
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !3236

if.then.i:                                        ; preds = %if.then.5
  %6 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3237, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !3238
  unreachable, !dbg !3239

if.end.i:                                         ; preds = %if.then.5
  %7 = load i64, i64* %leftindex, align 8, !dbg !3240, !tbaa !1619
  %8 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8, !dbg !3241, !tbaa !1493
  %arrayidx.i = getelementptr %struct.BLOCK, %struct.BLOCK* %8, i64 0, i32 1, i64 %7, !dbg !3242
  %9 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !3242, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !576, metadata !1241) #1, !dbg !3243
  %inc.i = add i64 %7, 1, !dbg !3244
  store i64 %inc.i, i64* %leftindex, align 8, !dbg !3244, !tbaa !1619
  %dec.i = add i64 %0, -1, !dbg !3245
  store i64 %dec.i, i64* %ob_size, align 8, !dbg !3246, !tbaa !1502
  %state.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !3247
  %10 = load i64, i64* %state.i, align 8, !dbg !3248, !tbaa !1869
  %inc3.i = add i64 %10, 1, !dbg !3248
  store i64 %inc3.i, i64* %state.i, align 8, !dbg !3248, !tbaa !1869
  %cmp5.i = icmp eq i64 %inc.i, 62, !dbg !3249
  br i1 %cmp5.i, label %if.then.6.i, label %deque_popleft.exit, !dbg !3250

if.then.6.i:                                      ; preds = %if.end.i
  %cmp8.i = icmp eq i64 %dec.i, 0, !dbg !3251
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.i, !dbg !3252

if.then.9.i:                                      ; preds = %if.then.6.i
  %11 = bitcast i64* %leftindex to <2 x i64>*, !dbg !3253
  store <2 x i64> <i64 31, i64 30>, <2 x i64>* %11, align 8, !dbg !3253, !tbaa !1521
  br label %deque_popleft.exit, !dbg !3254

if.else.i:                                        ; preds = %if.then.6.i
  %rightlink.i = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %8, i64 0, i32 2, !dbg !3255
  %12 = bitcast %struct.BLOCK** %rightlink.i to i64*, !dbg !3255
  %13 = load i64, i64* %12, align 8, !dbg !3255, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %8, i64 0, metadata !494, metadata !1241) #1, !dbg !3256
  %14 = load i64, i64* @numfreeblocks, align 8, !dbg !3258, !tbaa !1521
  %cmp.i.i = icmp slt i64 %14, 10, !dbg !3259
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !3260

if.then.i.i:                                      ; preds = %if.else.i
  %arrayidx.i.i = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i64 0, i64 %14, !dbg !3261
  store %struct.BLOCK* %8, %struct.BLOCK** %arrayidx.i.i, align 8, !dbg !3262, !tbaa !1297
  %inc.i.i = add i64 %14, 1, !dbg !3258
  store i64 %inc.i.i, i64* @numfreeblocks, align 8, !dbg !3258, !tbaa !1521
  br label %freeblock.exit.i, !dbg !3263

if.else.i.i:                                      ; preds = %if.else.i
  %15 = bitcast %struct.BLOCK* %8 to i8*, !dbg !3264
  tail call void @PyMem_Free(i8* %15) #1, !dbg !3265
  br label %freeblock.exit.i, !dbg !3266

freeblock.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %16 = bitcast %struct.BLOCK** %leftblock to i64*, !dbg !3267
  store i64 %13, i64* %16, align 8, !dbg !3267, !tbaa !1493
  store i64 0, i64* %leftindex, align 8, !dbg !3268, !tbaa !1619
  br label %deque_popleft.exit, !dbg !3269

deque_popleft.exit:                               ; preds = %if.end.i, %if.then.9.i, %freeblock.exit.i
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !818, metadata !1241), !dbg !3270
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !821, metadata !1241), !dbg !3271
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !3273
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !3273, !tbaa !1251
  %dec = add i64 %17, -1, !dbg !3273
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3273, !tbaa !1251
  %cmp7 = icmp eq i64 %dec, 0, !dbg !3273
  br i1 %cmp7, label %if.else, label %if.end.9, !dbg !3275

if.else:                                          ; preds = %deque_popleft.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !3276
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3276, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !3276
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3276, !tbaa !1357
  tail call void %19(%struct._object* %9) #1, !dbg !3276
  br label %if.end.9

if.end.9:                                         ; preds = %deque_popleft.exit, %if.else
  %call10 = tail call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %i.055.lcssa71), !dbg !3278
  %cmp11 = icmp eq i32 %call10, -1, !dbg !3280
  br i1 %cmp11, label %cleanup.24, label %if.end.13, !dbg !3281

if.end.13:                                        ; preds = %if.end.9
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3282, !tbaa !1251
  %inc = add i64 %20, 1, !dbg !3282
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3282, !tbaa !1251
  br label %cleanup.24, !dbg !3282

if.else.14:                                       ; preds = %if.end
  %cmp15 = icmp slt i32 %call, 0, !dbg !3283
  br i1 %cmp15, label %if.then.16, label %for.inc, !dbg !3285

if.then.16:                                       ; preds = %if.else.14
  %i.055.lcssa72 = phi i64 [ %i.055, %if.else.14 ]
  %call17 = tail call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %i.055.lcssa72), !dbg !3286
  br label %cleanup.24, !dbg !3288

for.inc:                                          ; preds = %if.else.14
  %call20 = tail call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 -1), !dbg !3289
  %inc23 = add nuw nsw i64 %i.055, 1, !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %inc23, i64 0, metadata !811, metadata !1241), !dbg !3213
  %cmp = icmp slt i64 %inc23, %0, !dbg !3214
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3215

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !3291

for.end:                                          ; preds = %for.end.loopexit, %entry
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3291, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0)) #1, !dbg !3292
  br label %cleanup.24, !dbg !3293

cleanup.24:                                       ; preds = %if.end.13, %if.end.9, %if.then.16, %if.then, %for.end
  %retval.3 = phi %struct._object* [ null, %for.end ], [ null, %if.end.9 ], [ @_Py_NoneStruct, %if.end.13 ], [ null, %if.then.16 ], [ null, %if.then ]
  ret %struct._object* %retval.3, !dbg !3294
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reviter(%struct.dequeobject* %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !825, metadata !1241), !dbg !3295
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @dequereviter_type) #1, !dbg !3296
  %cmp = icmp eq %struct._object* %call, null, !dbg !3297
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3299

if.end:                                           ; preds = %entry
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !3300
  %0 = bitcast %struct.BLOCK** %rightblock to i64*, !dbg !3300
  %1 = load i64, i64* %0, align 8, !dbg !3300, !tbaa !1520
  %b = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !3301
  %2 = bitcast %struct._typeobject** %b to i64*, !dbg !3302
  store i64 %1, i64* %2, align 8, !dbg !3302, !tbaa !1858
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !3303
  %3 = load i64, i64* %rightindex, align 8, !dbg !3303, !tbaa !1549
  %4 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !3304
  store i64 %3, i64* %4, align 8, !dbg !3305, !tbaa !1863
  %ob_refcnt = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 0, i32 0, !dbg !3306
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !3306, !tbaa !1251
  %inc = add i64 %5, 1, !dbg !3306
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3306, !tbaa !1251
  %deque1 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, !dbg !3307
  %6 = bitcast %struct._object* %deque1 to %struct.dequeobject**, !dbg !3307
  store %struct.dequeobject* %deque, %struct.dequeobject** %6, align 8, !dbg !3308, !tbaa !1867
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 5, !dbg !3309
  %7 = load i64, i64* %state, align 8, !dbg !3309, !tbaa !1869
  %state2 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, i32 1, !dbg !3310
  %8 = bitcast %struct._typeobject** %state2 to i64*, !dbg !3310
  store i64 %7, i64* %8, align 8, !dbg !3311, !tbaa !1872
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !3312
  %9 = load i64, i64* %ob_size, align 8, !dbg !3312, !tbaa !1502
  %10 = getelementptr inbounds %struct._object, %struct._object* %call, i64 3, i32 0, !dbg !3313
  store i64 %9, i64* %10, align 8, !dbg !3314, !tbaa !1876
  %11 = bitcast %struct._object* %call to i8*, !dbg !3315
  tail call void @PyObject_GC_Track(i8* %11) #1, !dbg !3316
  br label %cleanup, !dbg !3317

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !3318
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reverse(%struct.dequeobject* nocapture readonly %deque, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !829, metadata !1241), !dbg !3319
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !830, metadata !1241), !dbg !3320
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %4, i64 0, metadata !831, metadata !1241), !dbg !3321
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %3, i64 0, metadata !832, metadata !1241), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !833, metadata !1241), !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !834, metadata !1241), !dbg !3324
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !3325
  %0 = load i64, i64* %ob_size, align 8, !dbg !3325, !tbaa !1502
  %div = sdiv i64 %0, 2, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !835, metadata !1241), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !836, metadata !1241), !dbg !3328
  %cmp.39 = icmp sgt i64 %0, 1, !dbg !3329
  br i1 %cmp.39, label %for.body.lr.ph, label %for.end, !dbg !3332

for.body.lr.ph:                                   ; preds = %entry
  %rightindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 4, !dbg !3333
  %1 = load i64, i64* %rightindex4, align 8, !dbg !3333, !tbaa !1549
  %leftindex3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !3334
  %2 = load i64, i64* %leftindex3, align 8, !dbg !3334, !tbaa !1619
  %rightblock2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 2, !dbg !3335
  %3 = load %struct.BLOCK*, %struct.BLOCK** %rightblock2, align 8, !dbg !3335, !tbaa !1520
  %leftblock1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 1, !dbg !3336
  %4 = load %struct.BLOCK*, %struct.BLOCK** %leftblock1, align 8, !dbg !3336, !tbaa !1493
  br label %for.body, !dbg !3332

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %leftblock.044 = phi %struct.BLOCK* [ %4, %for.body.lr.ph ], [ %leftblock.1, %for.inc ]
  %i.043 = phi i64 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc ]
  %rightblock.042 = phi %struct.BLOCK* [ %3, %for.body.lr.ph ], [ %rightblock.1, %for.inc ]
  %rightindex.041 = phi i64 [ %1, %for.body.lr.ph ], [ %rightindex.1, %for.inc ]
  %leftindex.040 = phi i64 [ %2, %for.body.lr.ph ], [ %leftindex.1, %for.inc ]
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %leftblock.044, i64 0, i32 1, i64 %leftindex.040, !dbg !3337
  %5 = bitcast %struct._object** %arrayidx to i64*, !dbg !3337
  %6 = load i64, i64* %5, align 8, !dbg !3337, !tbaa !1297
  %arrayidx6 = getelementptr %struct.BLOCK, %struct.BLOCK* %rightblock.042, i64 0, i32 1, i64 %rightindex.041, !dbg !3339
  %7 = bitcast %struct._object** %arrayidx6 to i64*, !dbg !3339
  %8 = load i64, i64* %7, align 8, !dbg !3339, !tbaa !1297
  store i64 %8, i64* %5, align 8, !dbg !3340, !tbaa !1297
  store i64 %6, i64* %7, align 8, !dbg !3341, !tbaa !1297
  %inc = add i64 %leftindex.040, 1, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !833, metadata !1241), !dbg !3323
  %cmp11 = icmp eq i64 %inc, 62, !dbg !3343
  br i1 %cmp11, label %if.then, label %if.end, !dbg !3345

if.then:                                          ; preds = %for.body
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %leftblock.044, i64 0, i32 2, !dbg !3346
  %9 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8, !dbg !3346, !tbaa !2153
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %9, i64 0, metadata !831, metadata !1241), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !833, metadata !1241), !dbg !3323
  br label %if.end, !dbg !3348

if.end:                                           ; preds = %if.then, %for.body
  %leftindex.1 = phi i64 [ 0, %if.then ], [ %inc, %for.body ]
  %leftblock.1 = phi %struct.BLOCK* [ %9, %if.then ], [ %leftblock.044, %for.body ]
  %dec = add i64 %rightindex.041, -1, !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !834, metadata !1241), !dbg !3324
  %cmp12 = icmp eq i64 %rightindex.041, 0, !dbg !3350
  br i1 %cmp12, label %if.then.13, label %for.inc, !dbg !3352

if.then.13:                                       ; preds = %if.end
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %rightblock.042, i64 0, i32 0, !dbg !3353
  %10 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8, !dbg !3353, !tbaa !1532
  tail call void @llvm.dbg.value(metadata %struct.BLOCK* %10, i64 0, metadata !832, metadata !1241), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 61, i64 0, metadata !834, metadata !1241), !dbg !3324
  br label %for.inc, !dbg !3355

for.inc:                                          ; preds = %if.end, %if.then.13
  %rightindex.1 = phi i64 [ 61, %if.then.13 ], [ %dec, %if.end ]
  %rightblock.1 = phi %struct.BLOCK* [ %10, %if.then.13 ], [ %rightblock.042, %if.end ]
  %inc15 = add nuw nsw i64 %i.043, 1, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %inc15, i64 0, metadata !836, metadata !1241), !dbg !3328
  %cmp = icmp slt i64 %inc15, %div, !dbg !3329
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3332

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !3357

for.end:                                          ; preds = %for.end.loopexit, %entry
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3357, !tbaa !1251
  %inc16 = add i64 %11, 1, !dbg !3357
  store i64 %inc16, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3357, !tbaa !1251
  ret %struct._object* @_Py_NoneStruct, !dbg !3357
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_rotate(%struct.dequeobject* nocapture %deque, %struct._object* %args) #0 {
entry:
  %n = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !840, metadata !1241), !dbg !3358
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !841, metadata !1241), !dbg !3359
  %0 = bitcast i64* %n to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !842, metadata !1241), !dbg !3361
  store i64 1, i64* %n, align 8, !dbg !3361, !tbaa !1521
  tail call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !842, metadata !1241), !dbg !3361
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64* nonnull %n) #1, !dbg !3362
  %tobool = icmp eq i32 %call, 0, !dbg !3362
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3364

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %n, i64 0, metadata !842, metadata !1241), !dbg !3361
  %1 = load i64, i64* %n, align 8, !dbg !3365, !tbaa !1521
  %call1 = call fastcc i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %1), !dbg !3367
  %cmp = icmp eq i32 %call1, 0, !dbg !3368
  br i1 %cmp, label %if.then.2, label %cleanup, !dbg !3369

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3370, !tbaa !1251
  %inc = add i64 %2, 1, !dbg !3370
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3370, !tbaa !1251
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %if.end, %entry, %if.then.2
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then.2 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3371
  ret %struct._object* %retval.0, !dbg !3371
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_sizeof(%struct.dequeobject* nocapture readonly %deque, i8* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !847, metadata !1241), !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %unused, i64 0, metadata !848, metadata !1241), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 80, i64 0, metadata !849, metadata !1241), !dbg !3374
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 3, !dbg !3375
  %0 = load i64, i64* %leftindex, align 8, !dbg !3375, !tbaa !1619
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 0, i32 1, !dbg !3376
  %1 = load i64, i64* %ob_size, align 8, !dbg !3376, !tbaa !1502
  %add = add i64 %0, 61, !dbg !3377
  %sub = add i64 %add, %1, !dbg !3378
  %div = sdiv i64 %sub, 62, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !850, metadata !1241), !dbg !3380
  %mul = shl i64 %div, 9, !dbg !3381
  %add2 = or i64 %mul, 80, !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %add2, i64 0, metadata !849, metadata !1241), !dbg !3374
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %add2) #1, !dbg !3383
  ret %struct._object* %call, !dbg !3384
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare void @PyErr_Clear() #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_get_maxlen(%struct.dequeobject* nocapture readonly %deque) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeobject* %deque, i64 0, metadata !853, metadata !1241), !dbg !3385
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %deque, i64 0, i32 6, !dbg !3386
  %0 = load i64, i64* %maxlen, align 8, !dbg !3386, !tbaa !1598
  %cmp = icmp eq i64 %0, -1, !dbg !3388
  br i1 %cmp, label %if.then, label %if.end, !dbg !3389

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3390, !tbaa !1251
  %inc = add i64 %1, 1, !dbg !3390
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3390, !tbaa !1251
  br label %return, !dbg !3390

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %0) #1, !dbg !3391
  br label %return, !dbg !3392

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !3393
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @defdict_dealloc(%struct.defdictobject* %dd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !892, metadata !1241), !dbg !3394
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3395
  %0 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3395, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !893, metadata !1241), !dbg !3395
  %cmp = icmp eq %struct._object* %0, null, !dbg !3400
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !3401

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %default_factory, align 8, !dbg !3402, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !895, metadata !1241), !dbg !3404
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !3406
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3406, !tbaa !1251
  %dec = add i64 %1, -1, !dbg !3406
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3406, !tbaa !1251
  %cmp3 = icmp eq i64 %dec, 0, !dbg !3406
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !3408

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !3409
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3409, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !3409
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3409, !tbaa !1357
  tail call void %3(%struct._object* %0) #1, !dbg !3409
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %4 = load void (%struct._object*)*, void (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 4), align 8, !dbg !3411, !tbaa !1357
  %5 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, !dbg !3412
  tail call void %4(%struct._object* %5) #1, !dbg !3413
  ret void, !dbg !3414
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_repr(%struct.defdictobject* %dd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !903, metadata !1241), !dbg !3415
  %0 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 9), align 8, !dbg !3416, !tbaa !3417
  %1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, !dbg !3418
  %call = tail call %struct._object* %0(%struct._object* %1) #1, !dbg !3419
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !904, metadata !1241), !dbg !3420
  %cmp = icmp eq %struct._object* %call, null, !dbg !3421
  br i1 %cmp, label %cleanup.62, label %if.end, !dbg !3423

if.end:                                           ; preds = %entry
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3424
  %2 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3424, !tbaa !3397
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !3425
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !3426

if.then.2:                                        ; preds = %if.end
  %call3 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #1, !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !905, metadata !1241), !dbg !3428
  br label %if.end.21, !dbg !3429

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @Py_ReprEnter(%struct._object* %2) #1, !dbg !3430
  tail call void @llvm.dbg.value(metadata i32 %call5, i64 0, metadata !907, metadata !1241), !dbg !3431
  %cmp6 = icmp eq i32 %call5, 0, !dbg !3432
  br i1 %cmp6, label %if.else.16, label %if.then.7, !dbg !3433

if.then.7:                                        ; preds = %if.else
  %cmp8 = icmp slt i32 %call5, 0, !dbg !3434
  br i1 %cmp8, label %do.body, label %if.end.14, !dbg !3435

do.body:                                          ; preds = %if.then.7
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !910, metadata !1241), !dbg !3436
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3438
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !3438, !tbaa !1251
  %dec = add i64 %3, -1, !dbg !3438
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3438, !tbaa !1251
  %cmp10 = icmp eq i64 %dec, 0, !dbg !3438
  br i1 %cmp10, label %if.else.12, label %cleanup.62, !dbg !3440

if.else.12:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3441
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3441, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !3441
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3441, !tbaa !1357
  tail call void %5(%struct._object* %call) #1, !dbg !3441
  br label %cleanup.62

if.end.14:                                        ; preds = %if.then.7
  %call15 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #1, !dbg !3443
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !905, metadata !1241), !dbg !3428
  br label %cleanup, !dbg !3444

if.else.16:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3445, !tbaa !3397
  %call18 = tail call %struct._object* @PyObject_Repr(%struct._object* %6) #1, !dbg !3446
  tail call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !905, metadata !1241), !dbg !3428
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.else.16
  %defrepr.0 = phi %struct._object* [ %call15, %if.end.14 ], [ %call18, %if.else.16 ]
  %7 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3447, !tbaa !3397
  tail call void @Py_ReprLeave(%struct._object* %7) #1, !dbg !3448
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup, %if.then.2
  %defrepr.2 = phi %struct._object* [ %call3, %if.then.2 ], [ %defrepr.0, %cleanup ]
  %cmp22 = icmp eq %struct._object* %defrepr.2, null, !dbg !3449
  br i1 %cmp22, label %do.body.24, label %if.end.36, !dbg !3450

do.body.24:                                       ; preds = %if.end.21
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !916, metadata !1241), !dbg !3451
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3453
  %8 = load i64, i64* %ob_refcnt26, align 8, !dbg !3453, !tbaa !1251
  %dec27 = add i64 %8, -1, !dbg !3453
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !3453, !tbaa !1251
  %cmp28 = icmp eq i64 %dec27, 0, !dbg !3453
  br i1 %cmp28, label %if.else.30, label %cleanup.62, !dbg !3455

if.else.30:                                       ; preds = %do.body.24
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3456
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !3456, !tbaa !1308
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !3456
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !3456, !tbaa !1357
  tail call void %10(%struct._object* %call) #1, !dbg !3456
  br label %cleanup.62

if.end.36:                                        ; preds = %if.end.21
  %call37 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0), %struct._object* %defrepr.2, %struct._object* %call) #1, !dbg !3458
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !906, metadata !1241), !dbg !3459
  tail call void @llvm.dbg.value(metadata %struct._object* %defrepr.2, i64 0, metadata !920, metadata !1241), !dbg !3460
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %defrepr.2, i64 0, i32 0, !dbg !3462
  %11 = load i64, i64* %ob_refcnt40, align 8, !dbg !3462, !tbaa !1251
  %dec41 = add i64 %11, -1, !dbg !3462
  store i64 %dec41, i64* %ob_refcnt40, align 8, !dbg !3462, !tbaa !1251
  %cmp42 = icmp eq i64 %dec41, 0, !dbg !3462
  br i1 %cmp42, label %if.else.44, label %if.end.47, !dbg !3464

if.else.44:                                       ; preds = %if.end.36
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %defrepr.2, i64 0, i32 1, !dbg !3465
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !3465, !tbaa !1308
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !3465
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8, !dbg !3465, !tbaa !1357
  tail call void %13(%struct._object* %defrepr.2) #1, !dbg !3465
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.36, %if.else.44
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !922, metadata !1241), !dbg !3467
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3469
  %14 = load i64, i64* %ob_refcnt52, align 8, !dbg !3469, !tbaa !1251
  %dec53 = add i64 %14, -1, !dbg !3469
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !3469, !tbaa !1251
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !3469
  br i1 %cmp54, label %if.else.56, label %cleanup.62, !dbg !3471

if.else.56:                                       ; preds = %if.end.47
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3472
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !3472, !tbaa !1308
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !3472
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !3472, !tbaa !1357
  tail call void %16(%struct._object* %call) #1, !dbg !3472
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.else.12, %do.body, %if.else.56, %if.end.47, %if.else.30, %do.body.24, %entry
  %retval.1 = phi %struct._object* [ null, %entry ], [ null, %do.body.24 ], [ null, %if.else.30 ], [ %call37, %if.end.47 ], [ %call37, %if.else.56 ], [ null, %do.body ], [ null, %if.else.12 ]
  ret %struct._object* %retval.1, !dbg !3474
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !926, metadata !1241), !dbg !3475
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !927, metadata !1241), !dbg !3476
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !928, metadata !1241), !dbg !3477
  %default_factory = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !3478
  %0 = bitcast %struct._typeobject** %default_factory to %struct._object**, !dbg !3478
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !3478, !tbaa !3397
  %tobool = icmp eq %struct._object* %1, null, !dbg !3478
  br i1 %tobool, label %do.end, label %if.then, !dbg !3480

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !929, metadata !1241), !dbg !3481
  %tobool2 = icmp eq i32 %call, 0, !dbg !3483
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  %2 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 21), align 8, !dbg !3485, !tbaa !3486
  %call5 = tail call i32 %2(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #1, !dbg !3487
  br label %return, !dbg !3488

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ %call5, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !3489
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_tp_clear(%struct.defdictobject* %dd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !937, metadata !1241), !dbg !3490
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3491
  %0 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3491, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !938, metadata !1241), !dbg !3491
  %cmp = icmp eq %struct._object* %0, null, !dbg !3493
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !3494

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %default_factory, align 8, !dbg !3495, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !940, metadata !1241), !dbg !3497
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !3499
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3499, !tbaa !1251
  %dec = add i64 %1, -1, !dbg !3499
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3499, !tbaa !1251
  %cmp3 = icmp eq i64 %dec, 0, !dbg !3499
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !3501

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !3502
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3502, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !3502
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3502, !tbaa !1357
  tail call void %3(%struct._object* %0) #1, !dbg !3502
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %4 = load i32 (%struct._object*)*, i32 (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 22), align 8, !dbg !3504, !tbaa !3505
  %5 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, !dbg !3506
  %call = tail call i32 %4(%struct._object* %5) #1, !dbg !3507
  ret i32 %call, !dbg !3508
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !989, metadata !1241), !dbg !3509
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !990, metadata !1241), !dbg !3510
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !991, metadata !1241), !dbg !3511
  %default_factory = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !3512
  %0 = bitcast %struct._typeobject** %default_factory to %struct._object**, !dbg !3512
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !3512, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !993, metadata !1241), !dbg !3513
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !994, metadata !1241), !dbg !3514
  %cmp = icmp eq %struct._object* %args, null, !dbg !3515
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3516

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 1, !dbg !3517
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3517, !tbaa !1308
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !3517
  %3 = load i64, i64* %tp_flags, align 8, !dbg !3517, !tbaa !3519
  %and = and i64 %3, 67108864, !dbg !3517
  %cmp1 = icmp eq i64 %and, 0, !dbg !3517
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3520

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct._object* @PyTuple_New(i64 0) #1, !dbg !3521
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !995, metadata !1241), !dbg !3522
  br label %if.end.9, !dbg !3523

if.else:                                          ; preds = %lor.lhs.false
  %4 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !3524
  %5 = load i64, i64* %4, align 8, !dbg !3524, !tbaa !1502
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !997, metadata !1241), !dbg !3525
  %cmp2 = icmp sgt i64 %5, 0, !dbg !3526
  br i1 %cmp2, label %if.then.3, label %cleanup.thread, !dbg !3528

if.then.3:                                        ; preds = %if.else
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !3529
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !3529
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3529, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !994, metadata !1241), !dbg !3514
  %call4 = tail call i32 @PyCallable_Check(%struct._object* %6) #1, !dbg !3531
  %tobool = icmp eq i32 %call4, 0, !dbg !3531
  %cmp5 = icmp ne %struct._object* %6, @_Py_NoneStruct, !dbg !3533
  %or.cond = and i1 %cmp5, %tobool, !dbg !3534
  br i1 %or.cond, label %cleanup, label %cleanup.thread, !dbg !3534

cleanup.thread:                                   ; preds = %if.else, %if.then.3
  %newdefault.0 = phi %struct._object* [ %6, %if.then.3 ], [ null, %if.else ]
  %call8 = tail call %struct._object* @PySequence_GetSlice(%struct._object* %args, i64 1, i64 %5) #1, !dbg !3535
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !995, metadata !1241), !dbg !3522
  br label %if.end.9

cleanup:                                          ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3536, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0)) #1, !dbg !3538
  br label %cleanup.45

if.end.9:                                         ; preds = %cleanup.thread, %if.then
  %newargs.1 = phi %struct._object* [ %call, %if.then ], [ %call8, %cleanup.thread ]
  %newdefault.2 = phi %struct._object* [ null, %if.then ], [ %newdefault.0, %cleanup.thread ]
  %cmp10 = icmp eq %struct._object* %newargs.1, null, !dbg !3539
  br i1 %cmp10, label %cleanup.45, label %do.body, !dbg !3541

do.body:                                          ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %newdefault.2, i64 0, metadata !1000, metadata !1241), !dbg !3542
  %cmp13 = icmp eq %struct._object* %newdefault.2, null, !dbg !3544
  br i1 %cmp13, label %if.end.15, label %if.then.14, !dbg !3546

if.then.14:                                       ; preds = %do.body
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %newdefault.2, i64 0, i32 0, !dbg !3547
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3547, !tbaa !1251
  %inc = add i64 %8, 1, !dbg !3547
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3547, !tbaa !1251
  br label %if.end.15, !dbg !3547

if.end.15:                                        ; preds = %do.body, %if.then.14
  store %struct._object* %newdefault.2, %struct._object** %0, align 8, !dbg !3549, !tbaa !3397
  %9 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i64 0, i32 35), align 8, !dbg !3550, !tbaa !3551
  %call17 = tail call i32 %9(%struct._object* %self, %struct._object* %newargs.1, %struct._object* %kwds) #1, !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 %call17, i64 0, metadata !996, metadata !1241), !dbg !3553
  tail call void @llvm.dbg.value(metadata %struct._object* %newargs.1, i64 0, metadata !1002, metadata !1241), !dbg !3554
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %newargs.1, i64 0, i32 0, !dbg !3556
  %10 = load i64, i64* %ob_refcnt19, align 8, !dbg !3556, !tbaa !1251
  %dec = add i64 %10, -1, !dbg !3556
  store i64 %dec, i64* %ob_refcnt19, align 8, !dbg !3556, !tbaa !1251
  %cmp20 = icmp eq i64 %dec, 0, !dbg !3556
  br i1 %cmp20, label %if.else.22, label %if.end.24, !dbg !3558

if.else.22:                                       ; preds = %if.end.15
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %newargs.1, i64 0, i32 1, !dbg !3559
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !3559, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !3559
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3559, !tbaa !1357
  tail call void %12(%struct._object* %newargs.1) #1, !dbg !3559
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.15, %if.else.22
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1004, metadata !1241), !dbg !3561
  %cmp28 = icmp eq %struct._object* %1, null, !dbg !3563
  br i1 %cmp28, label %cleanup.45, label %do.body.30, !dbg !3564

do.body.30:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1006, metadata !1241), !dbg !3565
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !3567
  %13 = load i64, i64* %ob_refcnt32, align 8, !dbg !3567, !tbaa !1251
  %dec33 = add i64 %13, -1, !dbg !3567
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !3567, !tbaa !1251
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !3567
  br i1 %cmp34, label %if.else.36, label %cleanup.45, !dbg !3569

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !3570
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !3570, !tbaa !1308
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !3570
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !3570, !tbaa !1357
  tail call void %15(%struct._object* %1) #1, !dbg !3570
  br label %cleanup.45

cleanup.45:                                       ; preds = %cleanup, %if.end.24, %do.body.30, %if.else.36, %if.end.9
  %retval.1 = phi i32 [ -1, %cleanup ], [ -1, %if.end.9 ], [ %call17, %if.else.36 ], [ %call17, %do.body.30 ], [ %call17, %if.end.24 ]
  ret i32 %retval.1, !dbg !3572
}

declare %struct._object* @PyObject_Repr(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_missing(%struct.defdictobject* %dd, %struct._object* %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !948, metadata !1241), !dbg !3573
  tail call void @llvm.dbg.value(metadata %struct._object* %key, i64 0, metadata !949, metadata !1241), !dbg !3574
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3575
  %0 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3575, !tbaa !3397
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !950, metadata !1241), !dbg !3576
  %cmp = icmp eq %struct._object* %0, null, !dbg !3577
  %cmp1 = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !3578
  %or.cond = or i1 %cmp, %cmp1, !dbg !3579
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3579

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %key) #1, !dbg !3580
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !952, metadata !1241), !dbg !3581
  %tobool = icmp eq %struct._object* %call, null, !dbg !3582
  br i1 %tobool, label %cleanup.27, label %if.end, !dbg !3584

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !3585, !tbaa !1297
  tail call void @PyErr_SetObject(%struct._object* %1, %struct._object* %call) #1, !dbg !3586
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !955, metadata !1241), !dbg !3587
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3589
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3589, !tbaa !1251
  %dec = add i64 %2, -1, !dbg !3589
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3589, !tbaa !1251
  %cmp3 = icmp eq i64 %dec, 0, !dbg !3589
  br i1 %cmp3, label %if.else, label %cleanup.27, !dbg !3591

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3592
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3592, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !3592
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3592, !tbaa !1357
  tail call void %4(%struct._object* %call) #1, !dbg !3592
  br label %cleanup.27

if.end.6:                                         ; preds = %entry
  %call7 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %0, %struct._object* null, %struct._object* null) #1, !dbg !3594
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !951, metadata !1241), !dbg !3595
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !3596
  br i1 %cmp8, label %cleanup.27, label %if.end.10, !dbg !3598

if.end.10:                                        ; preds = %if.end.6
  %5 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, !dbg !3599
  %call11 = tail call i32 @PyObject_SetItem(%struct._object* %5, %struct._object* %key, %struct._object* %call7) #1, !dbg !3600
  %cmp12 = icmp slt i32 %call11, 0, !dbg !3601
  br i1 %cmp12, label %do.body.14, label %cleanup.27, !dbg !3602

do.body.14:                                       ; preds = %if.end.10
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !957, metadata !1241), !dbg !3603
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !3605
  %6 = load i64, i64* %ob_refcnt16, align 8, !dbg !3605, !tbaa !1251
  %dec17 = add i64 %6, -1, !dbg !3605
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !3605, !tbaa !1251
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !3605
  br i1 %cmp18, label %if.else.20, label %cleanup.27, !dbg !3607

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !3608
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !3608, !tbaa !1308
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !3608
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !3608, !tbaa !1357
  tail call void %8(%struct._object* %call7) #1, !dbg !3608
  br label %cleanup.27

cleanup.27:                                       ; preds = %if.end.10, %if.else.20, %do.body.14, %if.end.6, %if.then, %if.end, %if.else
  %retval.1 = phi %struct._object* [ null, %if.else ], [ null, %if.end ], [ null, %if.then ], [ null, %if.end.6 ], [ null, %do.body.14 ], [ null, %if.else.20 ], [ %call7, %if.end.10 ]
  ret %struct._object* %retval.1, !dbg !3610
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_copy(%struct.defdictobject* %dd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !963, metadata !1241), !dbg !3611
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3612
  %0 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3612, !tbaa !3397
  %cmp = icmp eq %struct._object* %0, null, !dbg !3614
  %ob_type = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, i32 1, !dbg !3615
  %1 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !3615
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !3615, !tbaa !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !3616

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %2, %struct._object* nonnull @_Py_NoneStruct, %struct.defdictobject* %dd, i8* null) #1, !dbg !3617
  br label %return, !dbg !3618

if.end:                                           ; preds = %entry
  %call3 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %2, %struct._object* %0, %struct.defdictobject* %dd, i8* null) #1, !dbg !3619
  br label %return, !dbg !3620

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call3, %if.end ]
  ret %struct._object* %retval.0, !dbg !3621
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_reduce(%struct.defdictobject* %dd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.defdictobject* %dd, i64 0, metadata !966, metadata !1241), !dbg !3622
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 1, !dbg !3623
  %0 = load %struct._object*, %struct._object** %default_factory, align 8, !dbg !3623, !tbaa !3397
  %cmp = icmp eq %struct._object* %0, null, !dbg !3625
  %cmp2 = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !3626
  %or.cond = or i1 %cmp, %cmp2, !dbg !3627
  br i1 %or.cond, label %if.then, label %if.else, !dbg !3627

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyTuple_New(i64 0) #1, !dbg !3628
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !967, metadata !1241), !dbg !3629
  br label %if.end, !dbg !3630

if.else:                                          ; preds = %entry
  %call4 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %0) #1, !dbg !3631
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !967, metadata !1241), !dbg !3629
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %args.0 = phi %struct._object* [ %call, %if.then ], [ %call4, %if.else ]
  %cmp5 = icmp eq %struct._object* %args.0, null, !dbg !3632
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !3634

if.end.7:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, !dbg !3635
  %call8 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* nonnull @defdict_reduce.PyId_items, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #1, !dbg !3636
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !968, metadata !1241), !dbg !3637
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !3638
  br i1 %cmp9, label %do.body, label %if.end.15, !dbg !3639

do.body:                                          ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !971, metadata !1241), !dbg !3640
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !3642
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3642, !tbaa !1251
  %dec = add i64 %2, -1, !dbg !3642
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3642, !tbaa !1251
  %cmp11 = icmp eq i64 %dec, 0, !dbg !3642
  br i1 %cmp11, label %if.else.13, label %cleanup, !dbg !3644

if.else.13:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !3645
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3645, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !3645
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3645, !tbaa !1357
  tail call void %4(%struct._object* %args.0) #1, !dbg !3645
  br label %cleanup

if.end.15:                                        ; preds = %if.end.7
  %call16 = tail call %struct._object* @PyObject_GetIter(%struct._object* %call8) #1, !dbg !3647
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !969, metadata !1241), !dbg !3648
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !3649
  br i1 %cmp17, label %do.body.19, label %if.end.43, !dbg !3650

do.body.19:                                       ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !975, metadata !1241), !dbg !3651
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !3653
  %5 = load i64, i64* %ob_refcnt21, align 8, !dbg !3653, !tbaa !1251
  %dec22 = add i64 %5, -1, !dbg !3653
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !3653, !tbaa !1251
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !3653
  br i1 %cmp23, label %if.else.25, label %if.end.28, !dbg !3655

if.else.25:                                       ; preds = %do.body.19
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !3656
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !3656, !tbaa !1308
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !3656
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !3656, !tbaa !1357
  tail call void %7(%struct._object* %call8) #1, !dbg !3656
  br label %if.end.28

if.end.28:                                        ; preds = %do.body.19, %if.else.25
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !979, metadata !1241), !dbg !3658
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !3660
  %8 = load i64, i64* %ob_refcnt33, align 8, !dbg !3660, !tbaa !1251
  %dec34 = add i64 %8, -1, !dbg !3660
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !3660, !tbaa !1251
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !3660
  br i1 %cmp35, label %if.else.37, label %cleanup, !dbg !3662

if.else.37:                                       ; preds = %if.end.28
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !3663
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !3663, !tbaa !1308
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !3663
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !3663, !tbaa !1357
  tail call void %10(%struct._object* %args.0) #1, !dbg !3663
  br label %cleanup

if.end.43:                                        ; preds = %if.end.15
  %ob_type44 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %dd, i64 0, i32 0, i32 0, i32 1, !dbg !3665
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !3665, !tbaa !1308
  %call45 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 5, %struct._typeobject* %11, %struct._object* %args.0, %struct._object* nonnull @_Py_NoneStruct, %struct._object* nonnull @_Py_NoneStruct, %struct._object* %call16) #1, !dbg !3666
  tail call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !970, metadata !1241), !dbg !3667
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !981, metadata !1241), !dbg !3668
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !3670
  %12 = load i64, i64* %ob_refcnt48, align 8, !dbg !3670, !tbaa !1251
  %dec49 = add i64 %12, -1, !dbg !3670
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !3670, !tbaa !1251
  %cmp50 = icmp eq i64 %dec49, 0, !dbg !3670
  br i1 %cmp50, label %if.else.52, label %if.end.55, !dbg !3672

if.else.52:                                       ; preds = %if.end.43
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !3673
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !3673, !tbaa !1308
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !3673
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !3673, !tbaa !1357
  tail call void %14(%struct._object* %call16) #1, !dbg !3673
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.43, %if.else.52
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !983, metadata !1241), !dbg !3675
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !3677
  %15 = load i64, i64* %ob_refcnt60, align 8, !dbg !3677, !tbaa !1251
  %dec61 = add i64 %15, -1, !dbg !3677
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !3677, !tbaa !1251
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !3677
  br i1 %cmp62, label %if.else.64, label %if.end.67, !dbg !3679

if.else.64:                                       ; preds = %if.end.55
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !3680
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !3680, !tbaa !1308
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !3680
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !3680, !tbaa !1357
  tail call void %17(%struct._object* %call8) #1, !dbg !3680
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.55, %if.else.64
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !985, metadata !1241), !dbg !3682
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !3684
  %18 = load i64, i64* %ob_refcnt72, align 8, !dbg !3684, !tbaa !1251
  %dec73 = add i64 %18, -1, !dbg !3684
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !3684, !tbaa !1251
  %cmp74 = icmp eq i64 %dec73, 0, !dbg !3684
  br i1 %cmp74, label %if.else.76, label %cleanup, !dbg !3686

if.else.76:                                       ; preds = %if.end.67
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !3687
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !3687, !tbaa !1308
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !3687
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !3687, !tbaa !1357
  tail call void %20(%struct._object* %args.0) #1, !dbg !3687
  br label %cleanup

cleanup:                                          ; preds = %if.else.76, %if.end.67, %if.else.37, %if.end.28, %if.else.13, %do.body, %if.end
  %retval.0 = phi %struct._object* [ null, %if.end ], [ null, %do.body ], [ null, %if.else.13 ], [ null, %if.end.28 ], [ null, %if.else.37 ], [ %call45, %if.end.67 ], [ %call45, %if.else.76 ]
  ret %struct._object* %retval.0, !dbg !3689
}

declare %struct._object* @PyTuple_Pack(i64, ...) #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PySequence_GetSlice(%struct._object*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @dequeiter_dealloc(%struct.dequeiterobject* %dio) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %dio, i64 0, metadata !1013, metadata !1241), !dbg !3690
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %dio, i64 0, i32 3, !dbg !3691
  %0 = bitcast %struct.dequeobject** %deque to %struct._object**, !dbg !3691
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !3691, !tbaa !1867
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1014, metadata !1241), !dbg !3691
  %cmp = icmp eq %struct._object* %1, null, !dbg !3693
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !3694

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1016, metadata !1241), !dbg !3695
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !3697
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3697, !tbaa !1251
  %dec = add i64 %2, -1, !dbg !3697
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3697, !tbaa !1251
  %cmp2 = icmp eq i64 %dec, 0, !dbg !3697
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !3699

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !3700
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3700, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !3700
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3700, !tbaa !1357
  tail call void %4(%struct._object* %1) #1, !dbg !3700
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %5 = bitcast %struct.dequeiterobject* %dio to i8*, !dbg !3702
  tail call void @PyObject_GC_Del(i8* %5) #1, !dbg !3703
  ret void, !dbg !3704
}

; Function Attrs: nounwind uwtable
define internal i32 @dequeiter_traverse(%struct.dequeiterobject* nocapture readonly %dio, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %dio, i64 0, metadata !1023, metadata !1241), !dbg !3705
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !1024, metadata !1241), !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !1025, metadata !1241), !dbg !3707
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %dio, i64 0, i32 3, !dbg !3708
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8, !dbg !3708, !tbaa !1867
  %tobool = icmp eq %struct.dequeobject* %0, null, !dbg !3708
  br i1 %tobool, label %do.end, label %if.then, !dbg !3710

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i64 0, i32 0, i32 0, !dbg !3711
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !3711
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1026, metadata !1241), !dbg !3711
  %tobool2 = icmp eq i32 %call, 0, !dbg !3713
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !3715

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !3716
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_next(%struct.dequeiterobject* nocapture %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %it, i64 0, metadata !1034, metadata !1241), !dbg !3717
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 3, !dbg !3718
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8, !dbg !3718, !tbaa !1867
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i64 0, i32 5, !dbg !3720
  %1 = load i64, i64* %state, align 8, !dbg !3720, !tbaa !1869
  %state1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 4, !dbg !3721
  %2 = load i64, i64* %state1, align 8, !dbg !3721, !tbaa !1872
  %cmp = icmp eq i64 %1, %2, !dbg !3722
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 5, !dbg !3723
  br i1 %cmp, label %if.end, label %if.then, !dbg !3725

if.then:                                          ; preds = %entry
  store i64 0, i64* %counter, align 8, !dbg !3726, !tbaa !1876
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3727, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0)) #1, !dbg !3728
  br label %cleanup, !dbg !3729

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %counter, align 8, !dbg !3730, !tbaa !1876
  %cmp3 = icmp eq i64 %4, 0, !dbg !3731
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !3733

if.end.5:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 1, !dbg !3734
  %5 = load i64, i64* %index, align 8, !dbg !3734, !tbaa !1863
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 2, !dbg !3735
  %6 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8, !dbg !3736, !tbaa !1858
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %6, i64 0, i32 1, i64 %5, !dbg !3739
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3739, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !1035, metadata !1241), !dbg !3740
  %inc = add i64 %5, 1, !dbg !3741
  store i64 %inc, i64* %index, align 8, !dbg !3741, !tbaa !1863
  %dec = add i64 %4, -1, !dbg !3730
  store i64 %dec, i64* %counter, align 8, !dbg !3730, !tbaa !1876
  %cmp9 = icmp eq i64 %inc, 62, !dbg !3742
  %cmp11 = icmp sgt i64 %dec, 0, !dbg !3743
  %or.cond = and i1 %cmp9, %cmp11, !dbg !3744
  br i1 %or.cond, label %if.then.12, label %if.end.16, !dbg !3744

if.then.12:                                       ; preds = %if.end.5
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %6, i64 0, i32 2, !dbg !3745
  %8 = bitcast %struct.BLOCK** %rightlink to i64*, !dbg !3745
  %9 = load i64, i64* %8, align 8, !dbg !3745, !tbaa !2153
  %10 = bitcast %struct.BLOCK** %b to i64*, !dbg !3746
  store i64 %9, i64* %10, align 8, !dbg !3746, !tbaa !1858
  store i64 0, i64* %index, align 8, !dbg !3747, !tbaa !1863
  br label %if.end.16, !dbg !3748

if.end.16:                                        ; preds = %if.then.12, %if.end.5
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !3749
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !3749, !tbaa !1251
  %inc17 = add i64 %11, 1, !dbg !3749
  store i64 %inc17, i64* %ob_refcnt, align 8, !dbg !3749, !tbaa !1251
  br label %cleanup, !dbg !3750

cleanup:                                          ; preds = %if.end, %if.end.16, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %7, %if.end.16 ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !3751
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  %index = alloca i64, align 8
  %deque = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !1044, metadata !1241), !dbg !3752
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1045, metadata !1241), !dbg !3753
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !1046, metadata !1241), !dbg !3754
  %0 = bitcast i64* %index to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1048, metadata !1241), !dbg !3756
  store i64 0, i64* %index, align 8, !dbg !3756, !tbaa !1521
  %1 = bitcast %struct._object** %deque to i8*, !dbg !3757
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3757
  tail call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1048, metadata !1241), !dbg !3756
  tail call void @llvm.dbg.value(metadata %struct._object** %deque, i64 0, metadata !1049, metadata !1241), !dbg !3758
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._typeobject* nonnull @deque_type, %struct._object** nonnull %deque, i64* nonnull %index) #1, !dbg !3759
  %tobool = icmp eq i32 %call, 0, !dbg !3759
  br i1 %tobool, label %cleanup.28, label %if.end, !dbg !3761

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %deque, i64 0, metadata !1049, metadata !1241), !dbg !3758
  %2 = bitcast %struct._object** %deque to %struct.dequeobject**, !dbg !3762
  %3 = load %struct.dequeobject*, %struct.dequeobject** %2, align 8, !dbg !3762, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct.dequeobject* %3, i64 0, metadata !714, metadata !1241) #1, !dbg !3763
  %call.i = call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @dequeiter_type) #1, !dbg !3765
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !3766
  br i1 %cmp.i, label %cleanup.28, label %deque_iter.exit, !dbg !3767

deque_iter.exit:                                  ; preds = %if.end
  %leftblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 1, !dbg !3768
  %4 = bitcast %struct.BLOCK** %leftblock.i to i64*, !dbg !3768
  %5 = load i64, i64* %4, align 8, !dbg !3768, !tbaa !1493
  %b.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !3769
  %6 = bitcast %struct._typeobject** %b.i to i64*, !dbg !3770
  store i64 %5, i64* %6, align 8, !dbg !3770, !tbaa !1858
  %leftindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 3, !dbg !3771
  %7 = load i64, i64* %leftindex.i, align 8, !dbg !3771, !tbaa !1619
  %8 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 0, !dbg !3772
  store i64 %7, i64* %8, align 8, !dbg !3773, !tbaa !1863
  %ob_refcnt.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 0, i32 0, i32 0, !dbg !3774
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3774, !tbaa !1251
  %inc.i = add i64 %9, 1, !dbg !3774
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !3774, !tbaa !1251
  %deque1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !3775
  %10 = bitcast %struct._object* %deque1.i to %struct.dequeobject**, !dbg !3775
  store %struct.dequeobject* %3, %struct.dequeobject** %10, align 8, !dbg !3776, !tbaa !1867
  %state.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 5, !dbg !3777
  %11 = load i64, i64* %state.i, align 8, !dbg !3777, !tbaa !1869
  %state2.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !3778
  %12 = bitcast %struct._typeobject** %state2.i to i64*, !dbg !3778
  store i64 %11, i64* %12, align 8, !dbg !3779, !tbaa !1872
  %ob_size.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 0, i32 1, !dbg !3780
  %13 = load i64, i64* %ob_size.i, align 8, !dbg !3780, !tbaa !1502
  %14 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, i32 0, !dbg !3781
  store i64 %13, i64* %14, align 8, !dbg !3782, !tbaa !1876
  %15 = bitcast %struct._object* %call.i to i8*, !dbg !3783
  call void @PyObject_GC_Track(i8* %15) #1, !dbg !3784
  call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1048, metadata !1241), !dbg !3756
  %16 = load i64, i64* %index, align 8, !dbg !3785, !tbaa !1521
  %cmp.60 = icmp sgt i64 %16, 0, !dbg !3786
  br i1 %cmp.60, label %for.body.lr.ph, label %cleanup.28, !dbg !3787

for.body.lr.ph:                                   ; preds = %deque_iter.exit
  %17 = bitcast %struct._typeobject** %b.i to %struct.BLOCK**, !dbg !3788
  br label %for.body, !dbg !3787

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.061 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %18 = load %struct.dequeobject*, %struct.dequeobject** %10, align 8, !dbg !3790, !tbaa !1867
  %state.i.47 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %18, i64 0, i32 5, !dbg !3791
  %19 = load i64, i64* %state.i.47, align 8, !dbg !3791, !tbaa !1869
  %20 = load i64, i64* %12, align 8, !dbg !3792, !tbaa !1872
  %cmp.i.48 = icmp eq i64 %19, %20, !dbg !3793
  br i1 %cmp.i.48, label %if.end.i.49, label %if.then.i, !dbg !3794

if.then.i:                                        ; preds = %for.body
  store i64 0, i64* %14, align 8, !dbg !3795, !tbaa !1876
  %21 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3796, !tbaa !1297
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0)) #1, !dbg !3797
  %.pre = load i64, i64* %14, align 8, !dbg !3798, !tbaa !1876
  br label %if.else.11, !dbg !3799

if.end.i.49:                                      ; preds = %for.body
  %22 = load i64, i64* %14, align 8, !dbg !3800, !tbaa !1876
  %cmp3.i = icmp eq i64 %22, 0, !dbg !3801
  br i1 %cmp3.i, label %cleanup.28.loopexit, label %if.end.5.i, !dbg !3802

if.end.5.i:                                       ; preds = %if.end.i.49
  %23 = load i64, i64* %8, align 8, !dbg !3803, !tbaa !1863
  %24 = load %struct.BLOCK*, %struct.BLOCK** %17, align 8, !dbg !3804, !tbaa !1858
  %arrayidx.i = getelementptr %struct.BLOCK, %struct.BLOCK* %24, i64 0, i32 1, i64 %23, !dbg !3805
  %25 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !3805, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1035, metadata !1241) #1, !dbg !3806
  %inc.i.51 = add i64 %23, 1, !dbg !3807
  store i64 %inc.i.51, i64* %8, align 8, !dbg !3807, !tbaa !1863
  %dec.i = add i64 %22, -1, !dbg !3800
  store i64 %dec.i, i64* %14, align 8, !dbg !3800, !tbaa !1876
  %cmp9.i = icmp eq i64 %inc.i.51, 62, !dbg !3808
  %cmp11.i = icmp sgt i64 %dec.i, 0, !dbg !3809
  %or.cond.i = and i1 %cmp11.i, %cmp9.i, !dbg !3810
  br i1 %or.cond.i, label %if.then.12.i, label %dequeiter_next.exit, !dbg !3810

if.then.12.i:                                     ; preds = %if.end.5.i
  %rightlink.i = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %24, i64 0, i32 2, !dbg !3811
  %26 = bitcast %struct.BLOCK** %rightlink.i to i64*, !dbg !3811
  %27 = load i64, i64* %26, align 8, !dbg !3811, !tbaa !2153
  store i64 %27, i64* %6, align 8, !dbg !3812, !tbaa !1858
  store i64 0, i64* %8, align 8, !dbg !3813, !tbaa !1863
  br label %dequeiter_next.exit, !dbg !3814

dequeiter_next.exit:                              ; preds = %if.end.5.i, %if.then.12.i
  %ob_refcnt.i.52 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !3815
  %28 = load i64, i64* %ob_refcnt.i.52, align 8, !dbg !3815, !tbaa !1251
  %inc17.i = add i64 %28, 1, !dbg !3816
  store i64 %inc17.i, i64* %ob_refcnt.i.52, align 8, !dbg !3815, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1051, metadata !1241), !dbg !3818
  %tobool6 = icmp eq %struct._object* %25, null, !dbg !3819
  br i1 %tobool6, label %if.else.11.loopexit, label %do.body, !dbg !3820

do.body:                                          ; preds = %dequeiter_next.exit
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1055, metadata !1241), !dbg !3821
  store i64 %28, i64* %ob_refcnt.i.52, align 8, !dbg !3816, !tbaa !1251
  %cmp8 = icmp eq i64 %28, 0, !dbg !3816
  br i1 %cmp8, label %if.else, label %for.inc, !dbg !3823

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !3824
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3824, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !3824
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3824, !tbaa !1357
  call void %30(%struct._object* %25) #1, !dbg !3824
  br label %for.inc

if.else.11.loopexit:                              ; preds = %dequeiter_next.exit
  %dec.i.lcssa = phi i64 [ %dec.i, %dequeiter_next.exit ]
  br label %if.else.11, !dbg !3826

if.else.11:                                       ; preds = %if.else.11.loopexit, %if.then.i
  %31 = phi i64 [ %.pre, %if.then.i ], [ %dec.i.lcssa, %if.else.11.loopexit ], !dbg !3798
  %tobool12 = icmp eq i64 %31, 0, !dbg !3826
  br i1 %tobool12, label %cleanup.28, label %do.body.14, !dbg !3827

do.body.14:                                       ; preds = %if.else.11
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1059, metadata !1241), !dbg !3828
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3830
  %32 = load i64, i64* %ob_refcnt16, align 8, !dbg !3830, !tbaa !1251
  %dec17 = add i64 %32, -1, !dbg !3830
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !3830, !tbaa !1251
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !3830
  br i1 %cmp18, label %if.else.20, label %cleanup.28, !dbg !3832

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3833
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !3833, !tbaa !1308
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !3833
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !3833, !tbaa !1357
  call void %34(%struct._object* %call.i) #1, !dbg !3833
  br label %cleanup.28

for.inc:                                          ; preds = %do.body, %if.else
  %inc = add i64 %i.061, 1, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !1047, metadata !1241), !dbg !3836
  call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1048, metadata !1241), !dbg !3756
  %35 = load i64, i64* %index, align 8, !dbg !3785, !tbaa !1521
  %cmp = icmp slt i64 %inc, %35, !dbg !3786
  br i1 %cmp, label %for.body, label %cleanup.28.loopexit, !dbg !3787

cleanup.28.loopexit:                              ; preds = %for.inc, %if.end.i.49
  br label %cleanup.28, !dbg !3837

cleanup.28:                                       ; preds = %cleanup.28.loopexit, %deque_iter.exit, %if.else.20, %do.body.14, %if.end, %if.else.11, %entry
  %retval.2 = phi %struct._object* [ null, %entry ], [ %call.i, %if.else.11 ], [ null, %if.end ], [ null, %do.body.14 ], [ null, %if.else.20 ], [ %call.i, %deque_iter.exit ], [ %call.i, %cleanup.28.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !3837
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3837
  ret %struct._object* %retval.2, !dbg !3837
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_len(%struct.dequeiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %it, i64 0, metadata !1038, metadata !1241), !dbg !3838
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 5, !dbg !3839
  %0 = load i64, i64* %counter, align 8, !dbg !3839, !tbaa !1876
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %0) #1, !dbg !3840
  ret %struct._object* %call, !dbg !3841
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_reduce(%struct.dequeiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %it, i64 0, metadata !1041, metadata !1241), !dbg !3842
  %ob_type = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 0, i32 1, !dbg !3843
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3843, !tbaa !1308
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 3, !dbg !3844
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8, !dbg !3844, !tbaa !1867
  %ob_size = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %1, i64 0, i32 0, i32 1, !dbg !3845
  %2 = load i64, i64* %ob_size, align 8, !dbg !3845, !tbaa !1502
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 5, !dbg !3846
  %3 = load i64, i64* %counter, align 8, !dbg !3846, !tbaa !1876
  %sub = sub i64 %2, %3, !dbg !3847
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %struct._typeobject* %0, %struct.dequeobject* %1, i64 %sub) #1, !dbg !3848
  ret %struct._object* %call, !dbg !3849
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequereviter_next(%struct.dequeiterobject* nocapture %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.dequeiterobject* %it, i64 0, metadata !1066, metadata !1241), !dbg !3850
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 5, !dbg !3851
  %0 = load i64, i64* %counter, align 8, !dbg !3853, !tbaa !1876
  %cmp = icmp eq i64 %0, 0, !dbg !3854
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3855

if.end:                                           ; preds = %entry
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 3, !dbg !3856
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8, !dbg !3856, !tbaa !1867
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %1, i64 0, i32 5, !dbg !3858
  %2 = load i64, i64* %state, align 8, !dbg !3858, !tbaa !1869
  %state1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 4, !dbg !3859
  %3 = load i64, i64* %state1, align 8, !dbg !3859, !tbaa !1872
  %cmp2 = icmp eq i64 %2, %3, !dbg !3860
  br i1 %cmp2, label %if.end.5, label %if.then.3, !dbg !3861

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %counter, align 8, !dbg !3862, !tbaa !1876
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3864, !tbaa !1297
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0)) #1, !dbg !3865
  br label %cleanup, !dbg !3866

if.end.5:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 1, !dbg !3867
  %5 = load i64, i64* %index, align 8, !dbg !3867, !tbaa !1863
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %it, i64 0, i32 2, !dbg !3868
  %6 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8, !dbg !3868, !tbaa !1858
  %arrayidx = getelementptr %struct.BLOCK, %struct.BLOCK* %6, i64 0, i32 1, i64 %5, !dbg !3869
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3869, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !1067, metadata !1241), !dbg !3870
  %dec = add i64 %5, -1, !dbg !3871
  store i64 %dec, i64* %index, align 8, !dbg !3871, !tbaa !1863
  %dec8 = add i64 %0, -1, !dbg !3853
  store i64 %dec8, i64* %counter, align 8, !dbg !3853, !tbaa !1876
  %cmp10 = icmp eq i64 %5, 0, !dbg !3872
  %cmp12 = icmp sgt i64 %dec8, 0, !dbg !3874
  %or.cond = and i1 %cmp10, %cmp12, !dbg !3875
  br i1 %or.cond, label %if.then.13, label %if.end.17, !dbg !3875

if.then.13:                                       ; preds = %if.end.5
  %8 = bitcast %struct.BLOCK* %6 to i64*, !dbg !3876
  %9 = load i64, i64* %8, align 8, !dbg !3878, !tbaa !1532
  %10 = bitcast %struct.BLOCK** %b to i64*, !dbg !3879
  store i64 %9, i64* %10, align 8, !dbg !3879, !tbaa !1858
  store i64 61, i64* %index, align 8, !dbg !3880, !tbaa !1863
  br label %if.end.17, !dbg !3881

if.end.17:                                        ; preds = %if.then.13, %if.end.5
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !3882
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !3882, !tbaa !1251
  %inc = add i64 %11, 1, !dbg !3882
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3882, !tbaa !1251
  br label %cleanup, !dbg !3883

cleanup:                                          ; preds = %entry, %if.end.17, %if.then.3
  %retval.0 = phi %struct._object* [ null, %if.then.3 ], [ %7, %if.end.17 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !3884
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequereviter_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  %index = alloca i64, align 8
  %deque = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !1070, metadata !1241), !dbg !3885
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1071, metadata !1241), !dbg !3886
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !1072, metadata !1241), !dbg !3887
  %0 = bitcast i64* %index to i8*, !dbg !3888
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1074, metadata !1241), !dbg !3889
  store i64 0, i64* %index, align 8, !dbg !3889, !tbaa !1521
  %1 = bitcast %struct._object** %deque to i8*, !dbg !3890
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3890
  tail call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1074, metadata !1241), !dbg !3889
  tail call void @llvm.dbg.value(metadata %struct._object** %deque, i64 0, metadata !1075, metadata !1241), !dbg !3891
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._typeobject* nonnull @deque_type, %struct._object** nonnull %deque, i64* nonnull %index) #1, !dbg !3892
  %tobool = icmp eq i32 %call, 0, !dbg !3892
  br i1 %tobool, label %cleanup.28, label %if.end, !dbg !3894

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %deque, i64 0, metadata !1075, metadata !1241), !dbg !3891
  %2 = bitcast %struct._object** %deque to %struct.dequeobject**, !dbg !3895
  %3 = load %struct.dequeobject*, %struct.dequeobject** %2, align 8, !dbg !3895, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct.dequeobject* %3, i64 0, metadata !825, metadata !1241) #1, !dbg !3896
  %call.i = call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @dequereviter_type) #1, !dbg !3898
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !3899
  br i1 %cmp.i, label %cleanup.28, label %deque_reviter.exit, !dbg !3900

deque_reviter.exit:                               ; preds = %if.end
  %rightblock.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 2, !dbg !3901
  %4 = bitcast %struct.BLOCK** %rightblock.i to i64*, !dbg !3901
  %5 = load i64, i64* %4, align 8, !dbg !3901, !tbaa !1520
  %b.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !3902
  %6 = bitcast %struct._typeobject** %b.i to i64*, !dbg !3903
  store i64 %5, i64* %6, align 8, !dbg !3903, !tbaa !1858
  %rightindex.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 4, !dbg !3904
  %7 = load i64, i64* %rightindex.i, align 8, !dbg !3904, !tbaa !1549
  %8 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 0, !dbg !3905
  store i64 %7, i64* %8, align 8, !dbg !3906, !tbaa !1863
  %ob_refcnt.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 0, i32 0, i32 0, !dbg !3907
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3907, !tbaa !1251
  %inc.i = add i64 %9, 1, !dbg !3907
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !3907, !tbaa !1251
  %deque1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !3908
  %10 = bitcast %struct._object* %deque1.i to %struct.dequeobject**, !dbg !3908
  store %struct.dequeobject* %3, %struct.dequeobject** %10, align 8, !dbg !3909, !tbaa !1867
  %state.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 5, !dbg !3910
  %11 = load i64, i64* %state.i, align 8, !dbg !3910, !tbaa !1869
  %state2.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !3911
  %12 = bitcast %struct._typeobject** %state2.i to i64*, !dbg !3911
  store i64 %11, i64* %12, align 8, !dbg !3912, !tbaa !1872
  %ob_size.i = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i64 0, i32 0, i32 1, !dbg !3913
  %13 = load i64, i64* %ob_size.i, align 8, !dbg !3913, !tbaa !1502
  %14 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, i32 0, !dbg !3914
  store i64 %13, i64* %14, align 8, !dbg !3915, !tbaa !1876
  %15 = bitcast %struct._object* %call.i to i8*, !dbg !3916
  call void @PyObject_GC_Track(i8* %15) #1, !dbg !3917
  call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1074, metadata !1241), !dbg !3889
  %16 = load i64, i64* %index, align 8, !dbg !3918, !tbaa !1521
  %cmp.60 = icmp sgt i64 %16, 0, !dbg !3919
  br i1 %cmp.60, label %for.body.lr.ph, label %cleanup.28, !dbg !3920

for.body.lr.ph:                                   ; preds = %deque_reviter.exit
  %17 = bitcast %struct._typeobject** %b.i to %struct.BLOCK**, !dbg !3921
  br label %for.body, !dbg !3920

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.061 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %18 = load i64, i64* %14, align 8, !dbg !3923, !tbaa !1876
  %cmp.i.47 = icmp eq i64 %18, 0, !dbg !3924
  br i1 %cmp.i.47, label %cleanup.28.loopexit, label %if.end.i.49, !dbg !3925

if.end.i.49:                                      ; preds = %for.body
  %19 = load %struct.dequeobject*, %struct.dequeobject** %10, align 8, !dbg !3926, !tbaa !1867
  %state.i.48 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %19, i64 0, i32 5, !dbg !3927
  %20 = load i64, i64* %state.i.48, align 8, !dbg !3927, !tbaa !1869
  %21 = load i64, i64* %12, align 8, !dbg !3928, !tbaa !1872
  %cmp2.i = icmp eq i64 %20, %21, !dbg !3929
  br i1 %cmp2.i, label %if.end.5.i, label %if.then.3.i, !dbg !3930

if.then.3.i:                                      ; preds = %if.end.i.49
  store i64 0, i64* %14, align 8, !dbg !3931, !tbaa !1876
  %22 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3932, !tbaa !1297
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0)) #1, !dbg !3933
  %.pre = load i64, i64* %14, align 8, !dbg !3934, !tbaa !1876
  br label %if.else.11, !dbg !3935

if.end.5.i:                                       ; preds = %if.end.i.49
  %23 = load i64, i64* %8, align 8, !dbg !3936, !tbaa !1863
  %24 = load %struct.BLOCK*, %struct.BLOCK** %17, align 8, !dbg !3921, !tbaa !1858
  %arrayidx.i = getelementptr %struct.BLOCK, %struct.BLOCK* %24, i64 0, i32 1, i64 %23, !dbg !3937
  %25 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !3937, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1067, metadata !1241) #1, !dbg !3938
  %dec.i = add i64 %23, -1, !dbg !3939
  store i64 %dec.i, i64* %8, align 8, !dbg !3939, !tbaa !1863
  %dec8.i = add i64 %18, -1, !dbg !3923
  store i64 %dec8.i, i64* %14, align 8, !dbg !3923, !tbaa !1876
  %cmp10.i = icmp eq i64 %23, 0, !dbg !3940
  %cmp12.i = icmp sgt i64 %dec8.i, 0, !dbg !3941
  %or.cond.i = and i1 %cmp12.i, %cmp10.i, !dbg !3942
  br i1 %or.cond.i, label %if.then.13.i, label %dequereviter_next.exit, !dbg !3942

if.then.13.i:                                     ; preds = %if.end.5.i
  %26 = bitcast %struct.BLOCK* %24 to i64*, !dbg !3943
  %27 = load i64, i64* %26, align 8, !dbg !3944, !tbaa !1532
  store i64 %27, i64* %6, align 8, !dbg !3945, !tbaa !1858
  store i64 61, i64* %8, align 8, !dbg !3946, !tbaa !1863
  br label %dequereviter_next.exit, !dbg !3947

dequereviter_next.exit:                           ; preds = %if.end.5.i, %if.then.13.i
  %ob_refcnt.i.51 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !3948
  %28 = load i64, i64* %ob_refcnt.i.51, align 8, !dbg !3948, !tbaa !1251
  %inc.i.52 = add i64 %28, 1, !dbg !3949
  store i64 %inc.i.52, i64* %ob_refcnt.i.51, align 8, !dbg !3948, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1077, metadata !1241), !dbg !3951
  %tobool6 = icmp eq %struct._object* %25, null, !dbg !3952
  br i1 %tobool6, label %if.else.11.loopexit, label %do.body, !dbg !3953

do.body:                                          ; preds = %dequereviter_next.exit
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !1081, metadata !1241), !dbg !3954
  store i64 %28, i64* %ob_refcnt.i.51, align 8, !dbg !3949, !tbaa !1251
  %cmp8 = icmp eq i64 %28, 0, !dbg !3949
  br i1 %cmp8, label %if.else, label %for.inc, !dbg !3956

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !3957
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3957, !tbaa !1308
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !3957
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3957, !tbaa !1357
  call void %30(%struct._object* %25) #1, !dbg !3957
  br label %for.inc

if.else.11.loopexit:                              ; preds = %dequereviter_next.exit
  %dec8.i.lcssa = phi i64 [ %dec8.i, %dequereviter_next.exit ]
  br label %if.else.11, !dbg !3959

if.else.11:                                       ; preds = %if.else.11.loopexit, %if.then.3.i
  %31 = phi i64 [ %.pre, %if.then.3.i ], [ %dec8.i.lcssa, %if.else.11.loopexit ], !dbg !3934
  %tobool12 = icmp eq i64 %31, 0, !dbg !3959
  br i1 %tobool12, label %cleanup.28, label %do.body.14, !dbg !3960

do.body.14:                                       ; preds = %if.else.11
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1085, metadata !1241), !dbg !3961
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3963
  %32 = load i64, i64* %ob_refcnt16, align 8, !dbg !3963, !tbaa !1251
  %dec17 = add i64 %32, -1, !dbg !3963
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !3963, !tbaa !1251
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !3963
  br i1 %cmp18, label %if.else.20, label %cleanup.28, !dbg !3965

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3966
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !3966, !tbaa !1308
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !3966
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !3966, !tbaa !1357
  call void %34(%struct._object* %call.i) #1, !dbg !3966
  br label %cleanup.28

for.inc:                                          ; preds = %do.body, %if.else
  %inc = add i64 %i.061, 1, !dbg !3968
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !1073, metadata !1241), !dbg !3969
  call void @llvm.dbg.value(metadata i64* %index, i64 0, metadata !1074, metadata !1241), !dbg !3889
  %35 = load i64, i64* %index, align 8, !dbg !3918, !tbaa !1521
  %cmp = icmp slt i64 %inc, %35, !dbg !3919
  br i1 %cmp, label %for.body, label %cleanup.28.loopexit, !dbg !3920

cleanup.28.loopexit:                              ; preds = %for.inc, %for.body
  br label %cleanup.28, !dbg !3970

cleanup.28:                                       ; preds = %cleanup.28.loopexit, %deque_reviter.exit, %if.else.20, %do.body.14, %if.end, %if.else.11, %entry
  %retval.2 = phi %struct._object* [ null, %entry ], [ %call.i, %if.else.11 ], [ null, %if.end ], [ null, %do.body.14 ], [ null, %if.else.20 ], [ %call.i, %deque_reviter.exit ], [ %call.i, %cleanup.28.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !3970
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3970
  ret %struct._object* %retval.2, !dbg !3970
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1237, !1238}
!llvm.ident = !{!1239}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !410, globals: !1090)
!1 = !DIFile(filename: "./Modules/_collectionsmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !373, !11, !94, !374, !384, !402}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "dequeobject", file: !1, line: 128, baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 119, size: 640, align: 64, elements: !353)
!353 = !{!354, !355, !367, !368, !369, !370, !371, !372}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !352, file: !1, line: 120, baseType: !23, size: 192, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "leftblock", scope: !352, file: !1, line: 121, baseType: !356, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "block", file: !1, line: 54, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "BLOCK", file: !1, line: 50, size: 4096, align: 64, elements: !359)
!359 = !{!360, !362, !366}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "leftlink", scope: !358, file: !1, line: 51, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !358, file: !1, line: 52, baseType: !363, size: 3968, align: 64, offset: 64)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3968, align: 64, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 62)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rightlink", scope: !358, file: !1, line: 53, baseType: !361, size: 64, align: 64, offset: 4032)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rightblock", scope: !352, file: !1, line: 122, baseType: !356, size: 64, align: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "leftindex", scope: !352, file: !1, line: 123, baseType: !11, size: 64, align: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rightindex", scope: !352, file: !1, line: 124, baseType: !11, size: 64, align: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !1, line: 125, baseType: !17, size: 64, align: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !352, file: !1, line: 126, baseType: !11, size: 64, align: 64, offset: 512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !352, file: !1, line: 127, baseType: !5, size: 64, align: 64, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dequeiterobject", file: !1, line: 1203, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 1196, size: 448, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !376, file: !1, line: 1197, baseType: !6, size: 128, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !376, file: !1, line: 1198, baseType: !11, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !376, file: !1, line: 1199, baseType: !356, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "deque", scope: !376, file: !1, line: 1200, baseType: !350, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !1, line: 1201, baseType: !17, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !376, file: !1, line: 1202, baseType: !11, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "defdictobject", file: !1, line: 1486, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 1483, size: 384, align: 64, elements: !387)
!387 = !{!388, !401}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !386, file: !1, line: 1484, baseType: !389, size: 320, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !390, line: 28, baseType: !391)
!390 = !DIFile(filename: "Include/dictobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 23, size: 320, align: 64, elements: !392)
!392 = !{!393, !394, !395, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !391, file: !390, line: 24, baseType: !6, size: 128, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !391, file: !390, line: 25, baseType: !11, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !391, file: !390, line: 26, baseType: !396, size: 64, align: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !390, line: 18, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !7, line: 461, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !391, file: !390, line: 27, baseType: !400, size: 64, align: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_factory", scope: !386, file: !1, line: 1485, baseType: !5, size: 64, align: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !404, line: 33, baseType: !405)
!404 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!405 = !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 25, size: 256, align: 64, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !405, file: !404, line: 26, baseType: !23, size: 192, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !405, file: !404, line: 27, baseType: !409, size: 64, align: 64, offset: 192)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!410 = !{!411, !416, !485, !490, !495, !503, !508, !518, !533, !542, !564, !570, !578, !585, !614, !623, !651, !658, !664, !710, !716, !728, !740, !743, !746, !758, !787, !807, !823, !827, !838, !843, !851, !854, !873, !888, !899, !924, !933, !944, !961, !964, !987, !1009, !1019, !1030, !1036, !1039, !1042, !1064, !1068}
!411 = !DISubprogram(name: "PyInit__collections", scope: !1, file: !1, line: 1885, type: !412, isLocal: false, isDefinition: true, scopeLine: 1886, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__collections, variables: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!5}
!414 = !{!415}
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !411, file: !1, line: 1887, type: !5)
!416 = !DISubprogram(name: "_count_elements", scope: !1, file: !1, line: 1766, type: !126, isLocal: true, isDefinition: true, scopeLine: 1767, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_count_elements, variables: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !440, !444, !446, !450, !452, !456, !458, !460, !462, !465, !467, !470, !472, !475, !477, !480, !482}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !416, file: !1, line: 1766, type: !5)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !416, file: !1, line: 1766, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !416, file: !1, line: 1770, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterable", scope: !416, file: !1, line: 1770, type: !5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !416, file: !1, line: 1770, type: !5)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldval", scope: !416, file: !1, line: 1770, type: !5)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newval", scope: !416, file: !1, line: 1771, type: !5)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !416, file: !1, line: 1772, type: !5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !416, file: !1, line: 1773, type: !5)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !416, file: !1, line: 1774, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound_get", scope: !416, file: !1, line: 1775, type: !5)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping_get", scope: !416, file: !1, line: 1776, type: !5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict_get", scope: !416, file: !1, line: 1777, type: !5)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping_setitem", scope: !416, file: !1, line: 1778, type: !5)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict_setitem", scope: !416, file: !1, line: 1779, type: !5)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !434, file: !1, line: 1816, type: !5)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1816, column: 17)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 1810, column: 20)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1807, column: 17)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 1802, column: 19)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 1801, column: 69)
!439 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1800, column: 9)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 1816, type: !5)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 1816, column: 17)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 1816, column: 17)
!443 = distinct !DILexicalBlock(scope: !434, file: !1, line: 1816, column: 17)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !1, line: 1818, type: !5)
!445 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1818, column: 13)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !1, line: 1837, type: !5)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1837, column: 13)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1829, column: 19)
!449 = distinct !DILexicalBlock(scope: !439, file: !1, line: 1820, column: 12)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !451, file: !1, line: 1842, type: !5)
!451 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1842, column: 13)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !1, line: 1842, type: !5)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1842, column: 13)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 1842, column: 13)
!455 = distinct !DILexicalBlock(scope: !451, file: !1, line: 1842, column: 13)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !1, line: 1843, type: !5)
!457 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1843, column: 13)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !459, file: !1, line: 1848, type: !5)
!459 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1848, column: 5)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !461, file: !1, line: 1849, type: !5)
!461 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1849, column: 5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !1, line: 1849, type: !5)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 1849, column: 5)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 1849, column: 5)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !466, file: !1, line: 1850, type: !5)
!466 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1850, column: 5)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !1, line: 1850, type: !5)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 1850, column: 5)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1850, column: 5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !471, file: !1, line: 1851, type: !5)
!471 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1851, column: 5)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !1, line: 1851, type: !5)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1851, column: 5)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 1851, column: 5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !476, file: !1, line: 1852, type: !5)
!476 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1852, column: 5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !1, line: 1852, type: !5)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 1852, column: 5)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 1852, column: 5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !481, file: !1, line: 1853, type: !5)
!481 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1853, column: 5)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !1, line: 1853, type: !5)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 1853, column: 5)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 1853, column: 5)
!485 = !DISubprogram(name: "deque_dealloc", scope: !1, file: !1, line: 841, type: !486, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.dequeobject*)* @deque_dealloc, variables: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !350}
!488 = !{!489}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !485, file: !1, line: 841, type: !350)
!490 = !DISubprogram(name: "freeblock", scope: !1, file: !1, line: 109, type: !491, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !356}
!493 = !{!494}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !490, file: !1, line: 109, type: !356)
!495 = !DISubprogram(name: "deque_repr", scope: !1, file: !1, line: 923, type: !116, isLocal: true, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @deque_repr, variables: !496)
!496 = !{!497, !498, !499, !500, !501}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !495, file: !1, line: 923, type: !5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aslist", scope: !495, file: !1, line: 925, type: !5)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !495, file: !1, line: 925, type: !5)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !495, file: !1, line: 926, type: !44)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !1, line: 946, type: !5)
!502 = distinct !DILexicalBlock(scope: !495, file: !1, line: 946, column: 5)
!503 = !DISubprogram(name: "deque_len", scope: !1, file: !1, line: 679, type: !504, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.dequeobject*)* @deque_len, variables: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!11, !350}
!506 = !{!507}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !503, file: !1, line: 679, type: !350)
!508 = !DISubprogram(name: "deque_item", scope: !1, file: !1, line: 735, type: !509, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, i64)* @deque_item, variables: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!5, !350, !11}
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !508, file: !1, line: 735, type: !350)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !508, file: !1, line: 735, type: !11)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !508, file: !1, line: 737, type: !356)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !508, file: !1, line: 738, type: !5)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !508, file: !1, line: 739, type: !11)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !508, file: !1, line: 739, type: !11)
!518 = !DISubprogram(name: "deque_ass_item", scope: !1, file: !1, line: 797, type: !519, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.dequeobject*, i64, %struct._object*)* @deque_ass_item, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!44, !350, !11, !5}
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !518, file: !1, line: 797, type: !350)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !518, file: !1, line: 797, type: !11)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !518, file: !1, line: 797, type: !5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_value", scope: !518, file: !1, line: 799, type: !5)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !518, file: !1, line: 800, type: !356)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !518, file: !1, line: 801, type: !11)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !518, file: !1, line: 801, type: !11)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "halflen", scope: !518, file: !1, line: 801, type: !11)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !518, file: !1, line: 801, type: !11)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !1, line: 827, type: !5)
!532 = distinct !DILexicalBlock(scope: !518, file: !1, line: 827, column: 5)
!533 = !DISubprogram(name: "deque_del_item", scope: !1, file: !1, line: 781, type: !534, isLocal: true, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: true, variables: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!44, !350, !11}
!536 = !{!537, !538, !539, !540}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !533, file: !1, line: 781, type: !350)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !533, file: !1, line: 781, type: !11)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !533, file: !1, line: 783, type: !5)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !541, file: !1, line: 791, type: !5)
!541 = distinct !DILexicalBlock(scope: !533, file: !1, line: 791, column: 5)
!542 = !DISubprogram(name: "_deque_rotate", scope: !1, file: !1, line: 458, type: !534, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.dequeobject*, i64)* @_deque_rotate, variables: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !557, !558, !559, !562, !563}
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !542, file: !1, line: 458, type: !350)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !542, file: !1, line: 458, type: !11)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !542, file: !1, line: 460, type: !356)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftblock", scope: !542, file: !1, line: 461, type: !356)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rightblock", scope: !542, file: !1, line: 462, type: !356)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftindex", scope: !542, file: !1, line: 463, type: !11)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rightindex", scope: !542, file: !1, line: 464, type: !11)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !542, file: !1, line: 465, type: !11)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "halflen", scope: !542, file: !1, line: 465, type: !11)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !542, file: !1, line: 466, type: !44)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !555, file: !1, line: 498, type: !400)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 497, column: 9)
!556 = distinct !DILexicalBlock(scope: !542, file: !1, line: 481, column: 19)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !555, file: !1, line: 498, type: !400)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !555, file: !1, line: 499, type: !11)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !560, file: !1, line: 542, type: !400)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 541, column: 9)
!561 = distinct !DILexicalBlock(scope: !542, file: !1, line: 525, column: 19)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !560, file: !1, line: 542, type: !400)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !560, file: !1, line: 543, type: !11)
!564 = !DISubprogram(name: "newblock", scope: !1, file: !1, line: 87, type: !565, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!356, !11}
!567 = !{!568, !569}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 1, scope: !564, file: !1, line: 87, type: !11)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !564, file: !1, line: 88, type: !356)
!570 = !DISubprogram(name: "deque_popleft", scope: !1, file: !1, line: 218, type: !571, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_popleft, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!5, !350, !5}
!573 = !{!574, !575, !576, !577}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !570, file: !1, line: 218, type: !350)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !570, file: !1, line: 218, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !570, file: !1, line: 220, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prevblock", scope: !570, file: !1, line: 221, type: !356)
!578 = !DISubprogram(name: "deque_inplace_concat", scope: !1, file: !1, line: 445, type: !571, isLocal: true, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_inplace_concat, variables: !579)
!579 = !{!580, !581, !582, !583}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !578, file: !1, line: 445, type: !350)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !578, file: !1, line: 445, type: !5)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !578, file: !1, line: 447, type: !5)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 452, type: !5)
!584 = distinct !DILexicalBlock(scope: !578, file: !1, line: 452, column: 5)
!585 = !DISubprogram(name: "deque_extend", scope: !1, file: !1, line: 323, type: !571, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_extend, variables: !586)
!586 = !{!587, !588, !589, !590, !591, !594, !595, !597, !601, !605, !607, !610, !612}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !585, file: !1, line: 323, type: !350)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterable", arg: 2, scope: !585, file: !1, line: 323, type: !5)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !585, file: !1, line: 325, type: !5)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !585, file: !1, line: 325, type: !5)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !592, file: !1, line: 329, type: !5)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 328, column: 40)
!593 = distinct !DILexicalBlock(scope: !585, file: !1, line: 328, column: 9)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !592, file: !1, line: 330, type: !5)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !1, line: 334, type: !5)
!596 = distinct !DILexicalBlock(scope: !592, file: !1, line: 334, column: 9)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !598, file: !1, line: 356, type: !356)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 355, column: 46)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 355, column: 13)
!600 = distinct !DILexicalBlock(scope: !585, file: !1, line: 353, column: 46)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !1, line: 358, type: !5)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 358, column: 17)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 357, column: 28)
!604 = distinct !DILexicalBlock(scope: !598, file: !1, line: 357, column: 17)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !1, line: 359, type: !5)
!606 = distinct !DILexicalBlock(scope: !603, file: !1, line: 359, column: 17)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !608, file: !1, line: 372, type: !5)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 372, column: 9)
!609 = distinct !DILexicalBlock(scope: !600, file: !1, line: 372, column: 9)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !1, line: 372, type: !5)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 372, column: 9)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !1, line: 374, type: !5)
!613 = distinct !DILexicalBlock(scope: !585, file: !1, line: 374, column: 5)
!614 = !DISubprogram(name: "consume_iterator", scope: !1, file: !1, line: 309, type: !116, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, variables: !615)
!615 = !{!616, !617, !618, !621}
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !614, file: !1, line: 309, type: !5)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !614, file: !1, line: 311, type: !5)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !1, line: 314, type: !5)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 314, column: 9)
!620 = distinct !DILexicalBlock(scope: !614, file: !1, line: 313, column: 46)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !622, file: !1, line: 316, type: !5)
!622 = distinct !DILexicalBlock(scope: !614, file: !1, line: 316, column: 5)
!623 = !DISubprogram(name: "deque_traverse", scope: !1, file: !1, line: 857, type: !624, isLocal: true, isDefinition: true, scopeLine: 858, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.dequeobject*, i32 (%struct._object*, i8*)*, i8*)* @deque_traverse, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!44, !350, !263, !4}
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !644}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !623, file: !1, line: 857, type: !350)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !623, file: !1, line: 857, type: !263)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !623, file: !1, line: 857, type: !4)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !623, file: !1, line: 859, type: !356)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !623, file: !1, line: 860, type: !5)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !623, file: !1, line: 861, type: !11)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indexlo", scope: !623, file: !1, line: 862, type: !11)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !635, file: !1, line: 867, type: !44)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 867, column: 13)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 867, column: 13)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 867, column: 13)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 865, column: 59)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 865, column: 9)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 865, column: 9)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 864, column: 74)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 864, column: 5)
!643 = distinct !DILexicalBlock(scope: !623, file: !1, line: 864, column: 5)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !645, file: !1, line: 873, type: !44)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 873, column: 9)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 873, column: 9)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 873, column: 9)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 871, column: 64)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 871, column: 5)
!650 = distinct !DILexicalBlock(scope: !623, file: !1, line: 871, column: 5)
!651 = !DISubprogram(name: "deque_clear", scope: !1, file: !1, line: 720, type: !486, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.dequeobject*)* @deque_clear, variables: !652)
!652 = !{!653, !654, !655}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !651, file: !1, line: 720, type: !350)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !651, file: !1, line: 722, type: !5)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !1, line: 727, type: !5)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 727, column: 9)
!657 = distinct !DILexicalBlock(scope: !651, file: !1, line: 724, column: 28)
!658 = !DISubprogram(name: "deque_pop", scope: !1, file: !1, line: 181, type: !571, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_pop, variables: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !658, file: !1, line: 181, type: !350)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !658, file: !1, line: 181, type: !5)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !658, file: !1, line: 183, type: !5)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prevblock", scope: !658, file: !1, line: 184, type: !356)
!664 = !DISubprogram(name: "deque_richcompare", scope: !1, file: !1, line: 952, type: !271, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @deque_richcompare, variables: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !684, !686, !688, !690, !692, !695, !697, !700, !702, !705, !707}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !664, file: !1, line: 952, type: !5)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !664, file: !1, line: 952, type: !5)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !664, file: !1, line: 952, type: !44)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it1", scope: !664, file: !1, line: 954, type: !5)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it2", scope: !664, file: !1, line: 954, type: !5)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !664, file: !1, line: 954, type: !5)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !664, file: !1, line: 954, type: !5)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vs", scope: !664, file: !1, line: 955, type: !11)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ws", scope: !664, file: !1, line: 955, type: !11)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !664, file: !1, line: 956, type: !44)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !664, file: !1, line: 956, type: !44)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !1, line: 996, type: !5)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 996, column: 13)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 994, column: 21)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 994, column: 13)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 986, column: 14)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 986, column: 5)
!683 = distinct !DILexicalBlock(scope: !664, file: !1, line: 986, column: 5)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !1, line: 997, type: !5)
!685 = distinct !DILexicalBlock(scope: !679, file: !1, line: 997, column: 13)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !687, file: !1, line: 1000, type: !5)
!687 = distinct !DILexicalBlock(scope: !681, file: !1, line: 1000, column: 9)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !689, file: !1, line: 1001, type: !5)
!689 = distinct !DILexicalBlock(scope: !681, file: !1, line: 1001, column: 9)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !691, file: !1, line: 1006, type: !5)
!691 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1006, column: 5)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !693, file: !1, line: 1006, type: !5)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 1006, column: 5)
!694 = distinct !DILexicalBlock(scope: !691, file: !1, line: 1006, column: 5)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !696, file: !1, line: 1007, type: !5)
!696 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1007, column: 5)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !698, file: !1, line: 1007, type: !5)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 1007, column: 5)
!699 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1007, column: 5)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !701, file: !1, line: 1020, type: !5)
!701 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1020, column: 5)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !703, file: !1, line: 1020, type: !5)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 1020, column: 5)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 1020, column: 5)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !706, file: !1, line: 1021, type: !5)
!706 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1021, column: 5)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 1021, type: !5)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 1021, column: 5)
!709 = distinct !DILexicalBlock(scope: !706, file: !1, line: 1021, column: 5)
!710 = !DISubprogram(name: "deque_iter", scope: !1, file: !1, line: 1208, type: !711, isLocal: true, isDefinition: true, scopeLine: 1209, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*)* @deque_iter, variables: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{!5, !350}
!713 = !{!714, !715}
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !710, file: !1, line: 1208, type: !350)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !710, file: !1, line: 1210, type: !374)
!716 = !DISubprogram(name: "deque_append", scope: !1, file: !1, line: 256, type: !571, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_append, variables: !717)
!717 = !{!718, !719, !720, !723, !726}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !716, file: !1, line: 256, type: !350)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !716, file: !1, line: 256, type: !5)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !721, file: !1, line: 260, type: !356)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 259, column: 42)
!722 = distinct !DILexicalBlock(scope: !716, file: !1, line: 259, column: 9)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !724, file: !1, line: 274, type: !5)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 274, column: 5)
!725 = distinct !DILexicalBlock(scope: !716, file: !1, line: 274, column: 5)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !727, file: !1, line: 274, type: !5)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 274, column: 5)
!728 = !DISubprogram(name: "deque_appendleft", scope: !1, file: !1, line: 281, type: !571, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_appendleft, variables: !729)
!729 = !{!730, !731, !732, !735, !738}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !728, file: !1, line: 281, type: !350)
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !728, file: !1, line: 281, type: !5)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !733, file: !1, line: 285, type: !356)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 284, column: 32)
!734 = distinct !DILexicalBlock(scope: !728, file: !1, line: 284, column: 9)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !736, file: !1, line: 299, type: !5)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 299, column: 5)
!737 = distinct !DILexicalBlock(scope: !728, file: !1, line: 299, column: 5)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !739, file: !1, line: 299, type: !5)
!739 = distinct !DILexicalBlock(scope: !736, file: !1, line: 299, column: 5)
!740 = !DISubprogram(name: "deque_clearmethod", scope: !1, file: !1, line: 832, type: !711, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*)* @deque_clearmethod, variables: !741)
!741 = !{!742}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !740, file: !1, line: 832, type: !350)
!743 = !DISubprogram(name: "deque_copy", scope: !1, file: !1, line: 879, type: !116, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @deque_copy, variables: !744)
!744 = !{!745}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !743, file: !1, line: 879, type: !5)
!746 = !DISubprogram(name: "deque_count", scope: !1, file: !1, line: 639, type: !571, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_count, variables: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !746, file: !1, line: 639, type: !350)
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !746, file: !1, line: 639, type: !5)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !746, file: !1, line: 641, type: !356)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !746, file: !1, line: 642, type: !11)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !746, file: !1, line: 643, type: !11)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !746, file: !1, line: 644, type: !11)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !746, file: !1, line: 645, type: !11)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !746, file: !1, line: 646, type: !5)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_state", scope: !746, file: !1, line: 647, type: !17)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !746, file: !1, line: 648, type: !44)
!758 = !DISubprogram(name: "deque_extendleft", scope: !1, file: !1, line: 384, type: !571, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_extendleft, variables: !759)
!759 = !{!760, !761, !762, !763, !764, !767, !768, !770, !774, !778, !780, !783, !785}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !758, file: !1, line: 384, type: !350)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterable", arg: 2, scope: !758, file: !1, line: 384, type: !5)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !758, file: !1, line: 386, type: !5)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !758, file: !1, line: 386, type: !5)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !765, file: !1, line: 390, type: !5)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 389, column: 40)
!766 = distinct !DILexicalBlock(scope: !758, file: !1, line: 389, column: 9)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !765, file: !1, line: 391, type: !5)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !1, line: 395, type: !5)
!769 = distinct !DILexicalBlock(scope: !765, file: !1, line: 395, column: 9)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !771, file: !1, line: 417, type: !356)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 416, column: 36)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 416, column: 13)
!773 = distinct !DILexicalBlock(scope: !758, file: !1, line: 414, column: 46)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !775, file: !1, line: 419, type: !5)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 419, column: 17)
!776 = distinct !DILexicalBlock(scope: !777, file: !1, line: 418, column: 28)
!777 = distinct !DILexicalBlock(scope: !771, file: !1, line: 418, column: 17)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !779, file: !1, line: 420, type: !5)
!779 = distinct !DILexicalBlock(scope: !776, file: !1, line: 420, column: 17)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !781, file: !1, line: 433, type: !5)
!781 = distinct !DILexicalBlock(scope: !782, file: !1, line: 433, column: 9)
!782 = distinct !DILexicalBlock(scope: !773, file: !1, line: 433, column: 9)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !1, line: 433, type: !5)
!784 = distinct !DILexicalBlock(scope: !781, file: !1, line: 433, column: 9)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !786, file: !1, line: 435, type: !5)
!786 = distinct !DILexicalBlock(scope: !758, file: !1, line: 435, column: 5)
!787 = !DISubprogram(name: "deque_reduce", scope: !1, file: !1, line: 891, type: !711, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*)* @deque_reduce, variables: !788)
!788 = !{!789, !790, !791, !792, !793, !797, !800, !802, !805}
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !787, file: !1, line: 891, type: !350)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !787, file: !1, line: 893, type: !5)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !787, file: !1, line: 893, type: !5)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aslist", scope: !787, file: !1, line: 893, type: !5)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !794, file: !1, line: 901, type: !5)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 901, column: 9)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 900, column: 25)
!796 = distinct !DILexicalBlock(scope: !787, file: !1, line: 900, column: 9)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !798, file: !1, line: 901, type: !5)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 901, column: 9)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 901, column: 9)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !801, file: !1, line: 915, type: !5)
!801 = distinct !DILexicalBlock(scope: !787, file: !1, line: 915, column: 5)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !803, file: !1, line: 915, type: !5)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 915, column: 5)
!804 = distinct !DILexicalBlock(scope: !801, file: !1, line: 915, column: 5)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !806, file: !1, line: 916, type: !5)
!806 = distinct !DILexicalBlock(scope: !787, file: !1, line: 916, column: 5)
!807 = !DISubprogram(name: "deque_remove", scope: !1, file: !1, line: 685, type: !571, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_remove, variables: !808)
!808 = !{!809, !810, !811, !812, !813, !817, !818, !821}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !807, file: !1, line: 685, type: !350)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !807, file: !1, line: 685, type: !5)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !807, file: !1, line: 687, type: !11)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !807, file: !1, line: 687, type: !11)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !814, file: !1, line: 690, type: !5)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 689, column: 27)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 689, column: 5)
!816 = distinct !DILexicalBlock(scope: !807, file: !1, line: 689, column: 5)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !814, file: !1, line: 691, type: !44)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tgt", scope: !819, file: !1, line: 699, type: !5)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 698, column: 22)
!820 = distinct !DILexicalBlock(scope: !814, file: !1, line: 698, column: 13)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !822, file: !1, line: 701, type: !5)
!822 = distinct !DILexicalBlock(scope: !819, file: !1, line: 701, column: 13)
!823 = !DISubprogram(name: "deque_reviter", scope: !1, file: !1, line: 1364, type: !711, isLocal: true, isDefinition: true, scopeLine: 1365, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*)* @deque_reviter, variables: !824)
!824 = !{!825, !826}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !823, file: !1, line: 1364, type: !350)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !823, file: !1, line: 1366, type: !374)
!827 = !DISubprogram(name: "deque_reverse", scope: !1, file: !1, line: 597, type: !571, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_reverse, variables: !828)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !827, file: !1, line: 597, type: !350)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !827, file: !1, line: 597, type: !5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftblock", scope: !827, file: !1, line: 599, type: !356)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rightblock", scope: !827, file: !1, line: 600, type: !356)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftindex", scope: !827, file: !1, line: 601, type: !11)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rightindex", scope: !827, file: !1, line: 602, type: !11)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !827, file: !1, line: 603, type: !11)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !827, file: !1, line: 604, type: !11)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !827, file: !1, line: 605, type: !5)
!838 = !DISubprogram(name: "deque_rotate", scope: !1, file: !1, line: 582, type: !571, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, %struct._object*)* @deque_rotate, variables: !839)
!839 = !{!840, !841, !842}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !838, file: !1, line: 582, type: !350)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !838, file: !1, line: 582, type: !5)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !838, file: !1, line: 584, type: !11)
!843 = !DISubprogram(name: "deque_sizeof", scope: !1, file: !1, line: 1060, type: !844, isLocal: true, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*, i8*)* @deque_sizeof, variables: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!5, !350, !4}
!846 = !{!847, !848, !849, !850}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !843, file: !1, line: 1060, type: !350)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !843, file: !1, line: 1060, type: !4)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !843, file: !1, line: 1062, type: !11)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocks", scope: !843, file: !1, line: 1063, type: !11)
!851 = !DISubprogram(name: "deque_get_maxlen", scope: !1, file: !1, line: 1077, type: !711, isLocal: true, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeobject*)* @deque_get_maxlen, variables: !852)
!852 = !{!853}
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !851, file: !1, line: 1077, type: !350)
!854 = !DISubprogram(name: "deque_init", scope: !1, file: !1, line: 1030, type: !855, isLocal: true, isDefinition: true, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.dequeobject*, %struct._object*, %struct._object*)* @deque_init, variables: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!44, !350, !5, !5}
!857 = !{!858, !859, !860, !861, !862, !863, !864, !868, !871}
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deque", arg: 1, scope: !854, file: !1, line: 1030, type: !350)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !854, file: !1, line: 1030, type: !5)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwdargs", arg: 3, scope: !854, file: !1, line: 1030, type: !5)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterable", scope: !854, file: !1, line: 1032, type: !5)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxlenobj", scope: !854, file: !1, line: 1033, type: !5)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxlen", scope: !854, file: !1, line: 1034, type: !11)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !854, file: !1, line: 1035, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, align: 64, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 3)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !869, file: !1, line: 1051, type: !5)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 1050, column: 27)
!870 = distinct !DILexicalBlock(scope: !854, file: !1, line: 1050, column: 9)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !872, file: !1, line: 1054, type: !5)
!872 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1054, column: 9)
!873 = !DISubprogram(name: "deque_new", scope: !1, file: !1, line: 149, type: !874, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @deque_new, variables: !878)
!874 = !DISubroutineType(types: !875)
!875 = !{!5, !876, !5, !5}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!878 = !{!879, !880, !881, !882, !883, !884}
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !873, file: !1, line: 149, type: !876)
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !873, file: !1, line: 149, type: !5)
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !873, file: !1, line: 149, type: !5)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deque", scope: !873, file: !1, line: 151, type: !350)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !873, file: !1, line: 152, type: !356)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !885, file: !1, line: 161, type: !5)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 161, column: 9)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 160, column: 20)
!887 = distinct !DILexicalBlock(scope: !873, file: !1, line: 160, column: 9)
!888 = !DISubprogram(name: "defdict_dealloc", scope: !1, file: !1, line: 1613, type: !889, isLocal: true, isDefinition: true, scopeLine: 1614, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.defdictobject*)* @defdict_dealloc, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !384}
!891 = !{!892, !893, !895}
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !888, file: !1, line: 1613, type: !384)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !894, file: !1, line: 1615, type: !5)
!894 = distinct !DILexicalBlock(scope: !888, file: !1, line: 1615, column: 5)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !896, file: !1, line: 1615, type: !5)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1615, column: 5)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 1615, column: 5)
!898 = distinct !DILexicalBlock(scope: !894, file: !1, line: 1615, column: 5)
!899 = !DISubprogram(name: "defdict_repr", scope: !1, file: !1, line: 1620, type: !900, isLocal: true, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.defdictobject*)* @defdict_repr, variables: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!5, !384}
!902 = !{!903, !904, !905, !906, !907, !910, !916, !920, !922}
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !899, file: !1, line: 1620, type: !384)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "baserepr", scope: !899, file: !1, line: 1622, type: !5)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defrepr", scope: !899, file: !1, line: 1623, type: !5)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !899, file: !1, line: 1624, type: !5)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !908, file: !1, line: 1632, type: !44)
!908 = distinct !DILexicalBlock(scope: !909, file: !1, line: 1631, column: 5)
!909 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1628, column: 9)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !911, file: !1, line: 1635, type: !5)
!911 = distinct !DILexicalBlock(scope: !912, file: !1, line: 1635, column: 17)
!912 = distinct !DILexicalBlock(scope: !913, file: !1, line: 1634, column: 29)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 1634, column: 17)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 1633, column: 26)
!915 = distinct !DILexicalBlock(scope: !908, file: !1, line: 1633, column: 13)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !917, file: !1, line: 1645, type: !5)
!917 = distinct !DILexicalBlock(scope: !918, file: !1, line: 1645, column: 9)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 1644, column: 26)
!919 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1644, column: 9)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !921, file: !1, line: 1650, type: !5)
!921 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1650, column: 5)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !923, file: !1, line: 1651, type: !5)
!923 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1651, column: 5)
!924 = !DISubprogram(name: "defdict_traverse", scope: !1, file: !1, line: 1656, type: !261, isLocal: true, isDefinition: true, scopeLine: 1657, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @defdict_traverse, variables: !925)
!925 = !{!926, !927, !928, !929}
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !924, file: !1, line: 1656, type: !5)
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !924, file: !1, line: 1656, type: !263)
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !924, file: !1, line: 1656, type: !4)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !930, file: !1, line: 1658, type: !44)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1658, column: 5)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1658, column: 5)
!932 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1658, column: 5)
!933 = !DISubprogram(name: "defdict_tp_clear", scope: !1, file: !1, line: 1663, type: !934, isLocal: true, isDefinition: true, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.defdictobject*)* @defdict_tp_clear, variables: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!44, !384}
!936 = !{!937, !938, !940}
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !933, file: !1, line: 1663, type: !384)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !939, file: !1, line: 1665, type: !5)
!939 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1665, column: 5)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !941, file: !1, line: 1665, type: !5)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1665, column: 5)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 1665, column: 5)
!943 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1665, column: 5)
!944 = !DISubprogram(name: "defdict_missing", scope: !1, file: !1, line: 1498, type: !945, isLocal: true, isDefinition: true, scopeLine: 1499, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.defdictobject*, %struct._object*)* @defdict_missing, variables: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!5, !384, !5}
!947 = !{!948, !949, !950, !951, !952, !955, !957}
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !944, file: !1, line: 1498, type: !384)
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !944, file: !1, line: 1498, type: !5)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factory", scope: !944, file: !1, line: 1500, type: !5)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !944, file: !1, line: 1501, type: !5)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !953, file: !1, line: 1504, type: !5)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 1502, column: 48)
!954 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1502, column: 9)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !956, file: !1, line: 1508, type: !5)
!956 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1508, column: 9)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !958, file: !1, line: 1515, type: !5)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1515, column: 9)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 1514, column: 59)
!960 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1514, column: 9)
!961 = !DISubprogram(name: "defdict_copy", scope: !1, file: !1, line: 1524, type: !900, isLocal: true, isDefinition: true, scopeLine: 1525, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.defdictobject*)* @defdict_copy, variables: !962)
!962 = !{!963}
!963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !961, file: !1, line: 1524, type: !384)
!964 = !DISubprogram(name: "defdict_reduce", scope: !1, file: !1, line: 1538, type: !900, isLocal: true, isDefinition: true, scopeLine: 1539, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.defdictobject*)* @defdict_reduce, variables: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !975, !979, !981, !983, !985}
!966 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dd", arg: 1, scope: !964, file: !1, line: 1538, type: !384)
!967 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !964, file: !1, line: 1562, type: !5)
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !964, file: !1, line: 1563, type: !5)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iter", scope: !964, file: !1, line: 1564, type: !5)
!970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !964, file: !1, line: 1565, type: !5)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !972, file: !1, line: 1576, type: !5)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1576, column: 9)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 1575, column: 24)
!974 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1575, column: 9)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !976, file: !1, line: 1581, type: !5)
!976 = distinct !DILexicalBlock(scope: !977, file: !1, line: 1581, column: 9)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 1580, column: 23)
!978 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1580, column: 9)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !980, file: !1, line: 1582, type: !5)
!980 = distinct !DILexicalBlock(scope: !977, file: !1, line: 1582, column: 9)
!981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !982, file: !1, line: 1587, type: !5)
!982 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1587, column: 5)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !984, file: !1, line: 1588, type: !5)
!984 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1588, column: 5)
!985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !986, file: !1, line: 1589, type: !5)
!986 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1589, column: 5)
!987 = !DISubprogram(name: "defdict_init", scope: !1, file: !1, line: 1670, type: !211, isLocal: true, isDefinition: true, scopeLine: 1671, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @defdict_init, variables: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997, !1000, !1002, !1004, !1006}
!989 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !987, file: !1, line: 1670, type: !5)
!990 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !987, file: !1, line: 1670, type: !5)
!991 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !987, file: !1, line: 1670, type: !5)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dd", scope: !987, file: !1, line: 1672, type: !384)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "olddefault", scope: !987, file: !1, line: 1673, type: !5)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newdefault", scope: !987, file: !1, line: 1674, type: !5)
!995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !987, file: !1, line: 1675, type: !5)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !987, file: !1, line: 1676, type: !44)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !998, file: !1, line: 1680, type: !11)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 1679, column: 10)
!999 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1677, column: 9)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1001, file: !1, line: 1693, type: !5)
!1001 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1693, column: 5)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1003, file: !1, line: 1696, type: !5)
!1003 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1696, column: 5)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1005, file: !1, line: 1697, type: !5)
!1005 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1697, column: 5)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1007, file: !1, line: 1697, type: !5)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 1697, column: 5)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 1697, column: 5)
!1009 = !DISubprogram(name: "dequeiter_dealloc", scope: !1, file: !1, line: 1233, type: !1010, isLocal: true, isDefinition: true, scopeLine: 1234, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.dequeiterobject*)* @dequeiter_dealloc, variables: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !374}
!1012 = !{!1013, !1014, !1016}
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dio", arg: 1, scope: !1009, file: !1, line: 1233, type: !374)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1015, file: !1, line: 1235, type: !5)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 1235, column: 5)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1017, file: !1, line: 1235, type: !5)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1235, column: 5)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 1235, column: 5)
!1019 = !DISubprogram(name: "dequeiter_traverse", scope: !1, file: !1, line: 1226, type: !1020, isLocal: true, isDefinition: true, scopeLine: 1227, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.dequeiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dequeiter_traverse, variables: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!44, !374, !263, !4}
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dio", arg: 1, scope: !1019, file: !1, line: 1226, type: !374)
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !1019, file: !1, line: 1226, type: !263)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !1019, file: !1, line: 1226, type: !4)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1027, file: !1, line: 1228, type: !44)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 1228, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 1228, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 1228, column: 5)
!1030 = !DISubprogram(name: "dequeiter_next", scope: !1, file: !1, line: 1240, type: !1031, isLocal: true, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeiterobject*)* @dequeiter_next, variables: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!5, !374}
!1033 = !{!1034, !1035}
!1034 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !1030, file: !1, line: 1240, type: !374)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !1030, file: !1, line: 1242, type: !5)
!1036 = !DISubprogram(name: "dequeiter_len", scope: !1, file: !1, line: 1297, type: !1031, isLocal: true, isDefinition: true, scopeLine: 1298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeiterobject*)* @dequeiter_len, variables: !1037)
!1037 = !{!1038}
!1038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !1036, file: !1, line: 1297, type: !374)
!1039 = !DISubprogram(name: "dequeiter_reduce", scope: !1, file: !1, line: 1305, type: !1031, isLocal: true, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeiterobject*)* @dequeiter_reduce, variables: !1040)
!1040 = !{!1041}
!1041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !1039, file: !1, line: 1305, type: !374)
!1042 = !DISubprogram(name: "dequeiter_new", scope: !1, file: !1, line: 1268, type: !874, isLocal: true, isDefinition: true, scopeLine: 1269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dequeiter_new, variables: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1055, !1059}
!1044 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !1042, file: !1, line: 1268, type: !876)
!1045 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1042, file: !1, line: 1268, type: !5)
!1046 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !1042, file: !1, line: 1268, type: !5)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1042, file: !1, line: 1270, type: !11)
!1048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !1042, file: !1, line: 1270, type: !11)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deque", scope: !1042, file: !1, line: 1271, type: !5)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !1042, file: !1, line: 1272, type: !374)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !1052, file: !1, line: 1282, type: !5)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 1281, column: 28)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 1281, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 1281, column: 5)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1056, file: !1, line: 1284, type: !5)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 1284, column: 13)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 1283, column: 19)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 1283, column: 13)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1060, file: !1, line: 1287, type: !5)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1287, column: 17)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 1286, column: 30)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 1286, column: 17)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 1285, column: 16)
!1064 = !DISubprogram(name: "dequereviter_next", scope: !1, file: !1, line: 1382, type: !1031, isLocal: true, isDefinition: true, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.dequeiterobject*)* @dequereviter_next, variables: !1065)
!1065 = !{!1066, !1067}
!1066 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !1064, file: !1, line: 1382, type: !374)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !1064, file: !1, line: 1384, type: !5)
!1068 = !DISubprogram(name: "dequereviter_new", scope: !1, file: !1, line: 1410, type: !874, isLocal: true, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dequereviter_new, variables: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1081, !1085}
!1070 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !1068, file: !1, line: 1410, type: !876)
!1071 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1068, file: !1, line: 1410, type: !5)
!1072 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !1068, file: !1, line: 1410, type: !5)
!1073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1068, file: !1, line: 1412, type: !11)
!1074 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !1068, file: !1, line: 1412, type: !11)
!1075 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deque", scope: !1068, file: !1, line: 1413, type: !5)
!1076 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !1068, file: !1, line: 1414, type: !374)
!1077 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !1078, file: !1, line: 1424, type: !5)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 1423, column: 28)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 1423, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 1423, column: 5)
!1081 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1082, file: !1, line: 1426, type: !5)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 1426, column: 13)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 1425, column: 19)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 1425, column: 13)
!1085 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1086, file: !1, line: 1429, type: !5)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 1429, column: 17)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 1428, column: 30)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 1428, column: 17)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 1427, column: 16)
!1090 = !{!1091, !1114, !1118, !1122, !1130, !1131, !1135, !1136, !1137, !1141, !1142, !1146, !1150, !1154, !1158, !1162, !1166, !1170, !1171, !1175, !1179, !1183, !1184, !1188, !1192, !1196, !1197, !1201, !1205, !1208, !1209, !1213, !1217, !1221, !1225, !1226, !1229, !1230, !1232, !1236}
!1091 = !DIGlobalVariable(name: "_collectionsmodule", scope: !0, file: !1, line: 1872, type: !1092, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_collectionsmodule)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1093, line: 47, size: 832, align: 64, elements: !1094)
!1093 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1094 = !{!1095, !1104, !1105, !1106, !1107, !1110, !1111, !1112, !1113}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1092, file: !1093, line: 48, baseType: !1096, size: 320, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1093, line: 38, baseType: !1097)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1093, line: 33, size: 320, align: 64, elements: !1098)
!1098 = !{!1099, !1100, !1102, !1103}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1097, file: !1093, line: 34, baseType: !6, size: 128, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1097, file: !1093, line: 35, baseType: !1101, size: 64, align: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1097, file: !1093, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1097, file: !1093, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1092, file: !1093, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1092, file: !1093, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1092, file: !1093, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1092, file: !1093, line: 52, baseType: !1108, size: 64, align: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1092, file: !1093, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1092, file: !1093, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1092, file: !1093, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1092, file: !1093, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!1114 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 1861, type: !1115, isLocal: true, isDefinition: true, variable: [160 x i8]* @module_doc)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1280, align: 8, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 160)
!1118 = !DIGlobalVariable(name: "module_functions", scope: !0, file: !1, line: 1867, type: !1119, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @module_functions)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 512, align: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 2)
!1122 = !DIGlobalVariable(name: "PyId_get", scope: !416, file: !1, line: 1768, type: !1123, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_count_elements.PyId_get)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !1124)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !1125)
!1125 = !{!1126, !1128, !1129}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1124, file: !7, line: 141, baseType: !1127, size: 64, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64, align: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1124, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1124, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!1130 = !DIGlobalVariable(name: "PyId___setitem__", scope: !416, file: !1, line: 1769, type: !1123, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_count_elements.PyId___setitem__)
!1131 = !DIGlobalVariable(name: "_count_elements_doc", scope: !0, file: !1, line: 1760, type: !1132, isLocal: true, isDefinition: true, variable: [98 x i8]* @_count_elements_doc)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 784, align: 8, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 98)
!1135 = !DIGlobalVariable(name: "deque_type", scope: !0, file: !1, line: 1150, type: !877, isLocal: true, isDefinition: true, variable: %struct._typeobject* @deque_type)
!1136 = !DIGlobalVariable(name: "numfreeblocks", scope: !0, file: !1, line: 83, type: !11, isLocal: true, isDefinition: true, variable: i64* @numfreeblocks)
!1137 = !DIGlobalVariable(name: "freeblocks", scope: !0, file: !1, line: 84, type: !1138, isLocal: true, isDefinition: true, variable: [10 x %struct.BLOCK*]* @freeblocks)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 640, align: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 10)
!1141 = !DIGlobalVariable(name: "deque_as_sequence", scope: !0, file: !1, line: 1090, type: !172, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @deque_as_sequence)
!1142 = !DIGlobalVariable(name: "deque_doc", scope: !0, file: !1, line: 1145, type: !1143, isLocal: true, isDefinition: true, variable: [116 x i8]* @deque_doc)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 928, align: 8, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 116)
!1146 = !DIGlobalVariable(name: "deque_methods", scope: !0, file: !1, line: 1111, type: !1147, isLocal: true, isDefinition: true, variable: [16 x %struct.PyMethodDef]* @deque_methods)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 4096, align: 64, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 16)
!1150 = !DIGlobalVariable(name: "append_doc", scope: !0, file: !1, line: 278, type: !1151, isLocal: true, isDefinition: true, variable: [47 x i8]* @append_doc)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, align: 8, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 47)
!1154 = !DIGlobalVariable(name: "appendleft_doc", scope: !0, file: !1, line: 303, type: !1155, isLocal: true, isDefinition: true, variable: [46 x i8]* @appendleft_doc)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 368, align: 8, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 46)
!1158 = !DIGlobalVariable(name: "clear_doc", scope: !0, file: !1, line: 838, type: !1159, isLocal: true, isDefinition: true, variable: [36 x i8]* @clear_doc)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 288, align: 8, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 36)
!1162 = !DIGlobalVariable(name: "copy_doc", scope: !0, file: !1, line: 888, type: !1163, isLocal: true, isDefinition: true, variable: [34 x i8]* @copy_doc)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 272, align: 8, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 34)
!1166 = !DIGlobalVariable(name: "count_doc", scope: !0, file: !1, line: 675, type: !1167, isLocal: true, isDefinition: true, variable: [67 x i8]* @count_doc)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 536, align: 8, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 67)
!1170 = !DIGlobalVariable(name: "extend_doc", scope: !0, file: !1, line: 380, type: !1167, isLocal: true, isDefinition: true, variable: [67 x i8]* @extend_doc)
!1171 = !DIGlobalVariable(name: "extendleft_doc", scope: !0, file: !1, line: 441, type: !1172, isLocal: true, isDefinition: true, variable: [66 x i8]* @extendleft_doc)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 528, align: 8, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 66)
!1175 = !DIGlobalVariable(name: "pop_doc", scope: !0, file: !1, line: 215, type: !1176, isLocal: true, isDefinition: true, variable: [41 x i8]* @pop_doc)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 328, align: 8, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 41)
!1179 = !DIGlobalVariable(name: "popleft_doc", scope: !0, file: !1, line: 253, type: !1180, isLocal: true, isDefinition: true, variable: [40 x i8]* @popleft_doc)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 320, align: 8, elements: !1181)
!1181 = !{!1182}
!1182 = !DISubrange(count: 40)
!1183 = !DIGlobalVariable(name: "PyId___dict__", scope: !787, file: !1, line: 894, type: !1123, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @deque_reduce.PyId___dict__)
!1184 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 920, type: !1185, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 312, align: 8, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 39)
!1188 = !DIGlobalVariable(name: "remove_doc", scope: !0, file: !1, line: 716, type: !1189, isLocal: true, isDefinition: true, variable: [53 x i8]* @remove_doc)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 424, align: 8, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 53)
!1192 = !DIGlobalVariable(name: "reversed_doc", scope: !0, file: !1, line: 1108, type: !1193, isLocal: true, isDefinition: true, variable: [61 x i8]* @reversed_doc)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 488, align: 8, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 61)
!1196 = !DIGlobalVariable(name: "reverse_doc", scope: !0, file: !1, line: 635, type: !1163, isLocal: true, isDefinition: true, variable: [34 x i8]* @reverse_doc)
!1197 = !DIGlobalVariable(name: "rotate_doc", scope: !0, file: !1, line: 593, type: !1198, isLocal: true, isDefinition: true, variable: [86 x i8]* @rotate_doc)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 688, align: 8, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 86)
!1201 = !DIGlobalVariable(name: "sizeof_doc", scope: !0, file: !1, line: 1073, type: !1202, isLocal: true, isDefinition: true, variable: [48 x i8]* @sizeof_doc)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, align: 8, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 48)
!1205 = !DIGlobalVariable(name: "deque_getset", scope: !0, file: !1, line: 1084, type: !1206, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @deque_getset)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 640, align: 64, elements: !1120)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!1208 = !DIGlobalVariable(name: "defdict_type", scope: !0, file: !1, line: 1714, type: !877, isLocal: true, isDefinition: true, variable: %struct._typeobject* @defdict_type)
!1209 = !DIGlobalVariable(name: "defdict_doc", scope: !0, file: !1, line: 1701, type: !1210, isLocal: true, isDefinition: true, variable: [369 x i8]* @defdict_doc)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2952, align: 8, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 369)
!1213 = !DIGlobalVariable(name: "defdict_methods", scope: !0, file: !1, line: 1593, type: !1214, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @defdict_methods)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 1280, align: 64, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 5)
!1217 = !DIGlobalVariable(name: "defdict_missing_doc", scope: !0, file: !1, line: 1490, type: !1218, isLocal: true, isDefinition: true, variable: [190 x i8]* @defdict_missing_doc)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1520, align: 8, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 190)
!1221 = !DIGlobalVariable(name: "defdict_copy_doc", scope: !0, file: !1, line: 1521, type: !1222, isLocal: true, isDefinition: true, variable: [33 x i8]* @defdict_copy_doc)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 264, align: 8, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 33)
!1225 = !DIGlobalVariable(name: "PyId_items", scope: !964, file: !1, line: 1566, type: !1123, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @defdict_reduce.PyId_items)
!1226 = !DIGlobalVariable(name: "defdict_members", scope: !0, file: !1, line: 1605, type: !1227, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @defdict_members)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 640, align: 64, elements: !1120)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!1229 = !DIGlobalVariable(name: "dequeiter_type", scope: !0, file: !1, line: 1316, type: !877, isLocal: true, isDefinition: true, variable: %struct._typeobject* @dequeiter_type)
!1230 = !DIGlobalVariable(name: "dequeiter_methods", scope: !0, file: !1, line: 1310, type: !1231, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @dequeiter_methods)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 768, align: 64, elements: !866)
!1232 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !1, line: 1302, type: !1233, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 440, align: 8, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 55)
!1236 = !DIGlobalVariable(name: "dequereviter_type", scope: !0, file: !1, line: 1438, type: !877, isLocal: true, isDefinition: true, variable: %struct._typeobject* @dequereviter_type)
!1237 = !{i32 2, !"Dwarf Version", i32 4}
!1238 = !{i32 2, !"Debug Info Version", i32 3}
!1239 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1240 = !DILocation(line: 1889, column: 9, scope: !411)
!1241 = !DIExpression()
!1242 = !DILocation(line: 1887, column: 15, scope: !411)
!1243 = !DILocation(line: 1890, column: 11, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1890, column: 9)
!1245 = !DILocation(line: 1890, column: 9, scope: !411)
!1246 = !DILocation(line: 1893, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1893, column: 9)
!1248 = !DILocation(line: 1893, column: 35, scope: !1247)
!1249 = !DILocation(line: 1893, column: 9, scope: !411)
!1250 = !DILocation(line: 1895, column: 5, scope: !411)
!1251 = !{!1252, !1253, i64 0}
!1252 = !{!"_object", !1253, i64 0, !1256, i64 8}
!1253 = !{!"long", !1254, i64 0}
!1254 = !{!"omnipotent char", !1255, i64 0}
!1255 = !{!"Simple C/C++ TBAA"}
!1256 = !{!"any pointer", !1254, i64 0}
!1257 = !DILocation(line: 1896, column: 5, scope: !411)
!1258 = !DILocation(line: 1898, column: 26, scope: !411)
!1259 = !{!1260, !1256, i64 256}
!1260 = !{!"_typeobject", !1261, i64 0, !1256, i64 24, !1253, i64 32, !1253, i64 40, !1256, i64 48, !1256, i64 56, !1256, i64 64, !1256, i64 72, !1256, i64 80, !1256, i64 88, !1256, i64 96, !1256, i64 104, !1256, i64 112, !1256, i64 120, !1256, i64 128, !1256, i64 136, !1256, i64 144, !1256, i64 152, !1256, i64 160, !1253, i64 168, !1256, i64 176, !1256, i64 184, !1256, i64 192, !1256, i64 200, !1253, i64 208, !1256, i64 216, !1256, i64 224, !1256, i64 232, !1256, i64 240, !1256, i64 248, !1256, i64 256, !1256, i64 264, !1256, i64 272, !1256, i64 280, !1253, i64 288, !1256, i64 296, !1256, i64 304, !1256, i64 312, !1256, i64 320, !1256, i64 328, !1256, i64 336, !1256, i64 344, !1256, i64 352, !1256, i64 360, !1256, i64 368, !1256, i64 376, !1262, i64 384, !1256, i64 392}
!1261 = !{!"", !1252, i64 0, !1253, i64 16}
!1262 = !{!"int", !1254, i64 0}
!1263 = !DILocation(line: 1899, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1899, column: 9)
!1265 = !DILocation(line: 1899, column: 37, scope: !1264)
!1266 = !DILocation(line: 1899, column: 9, scope: !411)
!1267 = !DILocation(line: 1901, column: 5, scope: !411)
!1268 = !DILocation(line: 1902, column: 5, scope: !411)
!1269 = !DILocation(line: 1904, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1904, column: 9)
!1271 = !DILocation(line: 1904, column: 39, scope: !1270)
!1272 = !DILocation(line: 1904, column: 9, scope: !411)
!1273 = !DILocation(line: 1906, column: 5, scope: !411)
!1274 = !DILocation(line: 1907, column: 5, scope: !411)
!1275 = !DILocation(line: 1909, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1909, column: 9)
!1277 = !DILocation(line: 1909, column: 42, scope: !1276)
!1278 = !DILocation(line: 1909, column: 9, scope: !411)
!1279 = !DILocation(line: 1911, column: 5, scope: !411)
!1280 = !DILocation(line: 1912, column: 5, scope: !411)
!1281 = !DILocation(line: 1914, column: 5, scope: !411)
!1282 = !DILocation(line: 1915, column: 1, scope: !411)
!1283 = !DILocation(line: 1766, column: 27, scope: !416)
!1284 = !DILocation(line: 1766, column: 43, scope: !416)
!1285 = !DILocation(line: 1770, column: 5, scope: !416)
!1286 = !DILocation(line: 1771, column: 15, scope: !416)
!1287 = !DILocation(line: 1772, column: 15, scope: !416)
!1288 = !DILocation(line: 1773, column: 15, scope: !416)
!1289 = !DILocation(line: 1774, column: 15, scope: !416)
!1290 = !DILocation(line: 1775, column: 15, scope: !416)
!1291 = !DILocation(line: 1770, column: 20, scope: !416)
!1292 = !DILocation(line: 1770, column: 31, scope: !416)
!1293 = !DILocation(line: 1781, column: 10, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1781, column: 9)
!1295 = !DILocation(line: 1781, column: 9, scope: !416)
!1296 = !DILocation(line: 1784, column: 27, scope: !416)
!1297 = !{!1256, !1256, i64 0}
!1298 = !DILocation(line: 1784, column: 10, scope: !416)
!1299 = !DILocation(line: 1770, column: 15, scope: !416)
!1300 = !DILocation(line: 1785, column: 12, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1785, column: 9)
!1302 = !DILocation(line: 1785, column: 9, scope: !416)
!1303 = !DILocation(line: 1788, column: 11, scope: !416)
!1304 = !DILocation(line: 1789, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1789, column: 9)
!1306 = !DILocation(line: 1789, column: 9, scope: !416)
!1307 = !DILocation(line: 1795, column: 36, scope: !416)
!1308 = !{!1252, !1256, i64 8}
!1309 = !DILocation(line: 1795, column: 19, scope: !416)
!1310 = !DILocation(line: 1776, column: 15, scope: !416)
!1311 = !DILocation(line: 1796, column: 16, scope: !416)
!1312 = !DILocation(line: 1777, column: 15, scope: !416)
!1313 = !DILocation(line: 1797, column: 40, scope: !416)
!1314 = !DILocation(line: 1797, column: 23, scope: !416)
!1315 = !DILocation(line: 1778, column: 15, scope: !416)
!1316 = !DILocation(line: 1798, column: 20, scope: !416)
!1317 = !DILocation(line: 1779, column: 15, scope: !416)
!1318 = !DILocation(line: 1800, column: 21, scope: !439)
!1319 = !DILocation(line: 1800, column: 29, scope: !439)
!1320 = !DILocation(line: 1800, column: 44, scope: !439)
!1321 = !DILocation(line: 1801, column: 25, scope: !439)
!1322 = !DILocation(line: 1800, column: 56, scope: !439)
!1323 = !DILocation(line: 1801, column: 52, scope: !439)
!1324 = !DILocation(line: 1803, column: 19, scope: !437)
!1325 = !DILocation(line: 1804, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1804, column: 17)
!1327 = !DILocation(line: 1804, column: 17, scope: !437)
!1328 = !DILocation(line: 1806, column: 37, scope: !437)
!1329 = !DILocation(line: 1806, column: 22, scope: !437)
!1330 = !DILocation(line: 1770, column: 41, scope: !416)
!1331 = !DILocation(line: 1807, column: 24, scope: !436)
!1332 = !DILocation(line: 1807, column: 17, scope: !437)
!1333 = !DILocation(line: 1808, column: 36, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 1808, column: 21)
!1335 = distinct !DILexicalBlock(scope: !436, file: !1, line: 1807, column: 33)
!1336 = !DILocation(line: 1808, column: 21, scope: !1334)
!1337 = !DILocation(line: 1808, column: 55, scope: !1334)
!1338 = !DILocation(line: 1808, column: 21, scope: !1335)
!1339 = !DILocation(line: 1811, column: 26, scope: !435)
!1340 = !DILocation(line: 1812, column: 28, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1812, column: 21)
!1342 = !DILocation(line: 1812, column: 21, scope: !435)
!1343 = !DILocation(line: 1814, column: 36, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1814, column: 21)
!1345 = !DILocation(line: 1814, column: 21, scope: !1344)
!1346 = !DILocation(line: 1814, column: 58, scope: !1344)
!1347 = !DILocation(line: 1814, column: 21, scope: !435)
!1348 = !DILocation(line: 1816, column: 17, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 1)
!1350 = !DILocation(line: 1816, column: 17, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!1352 = !DILocation(line: 1816, column: 17, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !441, file: !1, line: 1816, column: 17)
!1354 = !DILocation(line: 1816, column: 17, scope: !441)
!1355 = !DILocation(line: 1816, column: 17, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1353, file: !1, discriminator: 6)
!1357 = !{!1260, !1256, i64 48}
!1358 = !DILocation(line: 1818, column: 13, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 1)
!1360 = !DILocation(line: 1818, column: 13, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !445, file: !1, line: 1818, column: 13)
!1362 = !DILocation(line: 1818, column: 13, scope: !445)
!1363 = !DILocation(line: 1818, column: 13, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1361, file: !1, discriminator: 3)
!1365 = !DILocation(line: 1821, column: 41, scope: !449)
!1366 = !DILocation(line: 1821, column: 21, scope: !449)
!1367 = !DILocation(line: 1822, column: 23, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1822, column: 13)
!1369 = !DILocation(line: 1822, column: 13, scope: !449)
!1370 = !DILocation(line: 1825, column: 16, scope: !449)
!1371 = !DILocation(line: 1826, column: 18, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1826, column: 13)
!1373 = !DILocation(line: 1826, column: 13, scope: !449)
!1374 = !DILocation(line: 1830, column: 19, scope: !448)
!1375 = !DILocation(line: 1831, column: 21, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1831, column: 17)
!1377 = !DILocation(line: 1831, column: 17, scope: !448)
!1378 = !DILocation(line: 1833, column: 22, scope: !448)
!1379 = !DILocation(line: 1834, column: 24, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1834, column: 17)
!1381 = !DILocation(line: 1834, column: 17, scope: !448)
!1382 = !DILocation(line: 1836, column: 22, scope: !448)
!1383 = !DILocation(line: 1837, column: 13, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!1385 = !DILocation(line: 1837, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !447, file: !1, line: 1837, column: 13)
!1387 = !DILocation(line: 1837, column: 13, scope: !447)
!1388 = !DILocation(line: 1837, column: 13, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1386, file: !1, discriminator: 3)
!1390 = !DILocation(line: 1838, column: 24, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1838, column: 17)
!1392 = !DILocation(line: 1838, column: 17, scope: !448)
!1393 = !DILocation(line: 1840, column: 34, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1840, column: 17)
!1395 = !DILocation(line: 1840, column: 17, scope: !1394)
!1396 = !DILocation(line: 1840, column: 56, scope: !1394)
!1397 = !DILocation(line: 1840, column: 17, scope: !448)
!1398 = !DILocation(line: 1842, column: 13, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 1)
!1400 = !DILocation(line: 1842, column: 13, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 4)
!1402 = !DILocation(line: 1842, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1842, column: 13)
!1404 = !DILocation(line: 1842, column: 13, scope: !453)
!1405 = !DILocation(line: 1842, column: 13, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1403, file: !1, discriminator: 6)
!1407 = !DILocation(line: 1843, column: 13, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 1)
!1409 = !DILocation(line: 1843, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !457, file: !1, line: 1843, column: 13)
!1411 = !DILocation(line: 1843, column: 13, scope: !457)
!1412 = !DILocation(line: 1843, column: 13, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1410, file: !1, discriminator: 3)
!1414 = !DILocation(line: 1848, column: 5, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!1416 = !DILocation(line: 1848, column: 5, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !459, file: !1, line: 1848, column: 5)
!1418 = !DILocation(line: 1848, column: 5, scope: !459)
!1419 = !DILocation(line: 1848, column: 5, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1417, file: !1, discriminator: 3)
!1421 = !DILocation(line: 1849, column: 5, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 1)
!1423 = !DILocation(line: 1849, column: 5, scope: !464)
!1424 = !DILocation(line: 1849, column: 5, scope: !461)
!1425 = !DILocation(line: 1849, column: 5, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!1427 = !DILocation(line: 1849, column: 5, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !463, file: !1, line: 1849, column: 5)
!1429 = !DILocation(line: 1849, column: 5, scope: !463)
!1430 = !DILocation(line: 1849, column: 5, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 6)
!1432 = !DILocation(line: 1850, column: 5, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 1)
!1434 = !DILocation(line: 1850, column: 5, scope: !469)
!1435 = !DILocation(line: 1850, column: 5, scope: !466)
!1436 = !DILocation(line: 1850, column: 5, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 4)
!1438 = !DILocation(line: 1850, column: 5, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !468, file: !1, line: 1850, column: 5)
!1440 = !DILocation(line: 1850, column: 5, scope: !468)
!1441 = !DILocation(line: 1850, column: 5, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1439, file: !1, discriminator: 6)
!1443 = !DILocation(line: 1851, column: 5, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!1445 = !DILocation(line: 1851, column: 5, scope: !474)
!1446 = !DILocation(line: 1851, column: 5, scope: !471)
!1447 = !DILocation(line: 1851, column: 5, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 4)
!1449 = !DILocation(line: 1851, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !473, file: !1, line: 1851, column: 5)
!1451 = !DILocation(line: 1851, column: 5, scope: !473)
!1452 = !DILocation(line: 1851, column: 5, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1450, file: !1, discriminator: 6)
!1454 = !DILocation(line: 1852, column: 5, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!1456 = !DILocation(line: 1852, column: 5, scope: !479)
!1457 = !DILocation(line: 1852, column: 5, scope: !476)
!1458 = !DILocation(line: 1852, column: 5, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 4)
!1460 = !DILocation(line: 1852, column: 5, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !478, file: !1, line: 1852, column: 5)
!1462 = !DILocation(line: 1852, column: 5, scope: !478)
!1463 = !DILocation(line: 1852, column: 5, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1461, file: !1, discriminator: 6)
!1465 = !DILocation(line: 1853, column: 5, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!1467 = !DILocation(line: 1853, column: 5, scope: !481)
!1468 = !DILocation(line: 1853, column: 5, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 4)
!1470 = !DILocation(line: 1853, column: 5, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1853, column: 5)
!1472 = !DILocation(line: 1853, column: 5, scope: !483)
!1473 = !DILocation(line: 1853, column: 5, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1471, file: !1, discriminator: 6)
!1475 = !DILocation(line: 1854, column: 9, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1854, column: 9)
!1477 = !DILocation(line: 1854, column: 9, scope: !416)
!1478 = !DILocation(line: 1856, column: 5, scope: !416)
!1479 = !DILocation(line: 1857, column: 1, scope: !416)
!1480 = !DILocation(line: 841, column: 28, scope: !485)
!1481 = !DILocation(line: 843, column: 25, scope: !485)
!1482 = !DILocation(line: 843, column: 5, scope: !485)
!1483 = !DILocation(line: 844, column: 16, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 844, column: 9)
!1485 = !{!1486, !1256, i64 72}
!1486 = !{!"", !1261, i64 0, !1256, i64 24, !1256, i64 32, !1253, i64 40, !1253, i64 48, !1253, i64 56, !1253, i64 64, !1256, i64 72}
!1487 = !DILocation(line: 844, column: 28, scope: !1484)
!1488 = !DILocation(line: 844, column: 9, scope: !485)
!1489 = !DILocation(line: 845, column: 32, scope: !1484)
!1490 = !DILocation(line: 845, column: 9, scope: !1484)
!1491 = !DILocation(line: 846, column: 16, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !485, file: !1, line: 846, column: 9)
!1493 = !{!1486, !1256, i64 24}
!1494 = !DILocation(line: 846, column: 26, scope: !1492)
!1495 = !DILocation(line: 846, column: 9, scope: !485)
!1496 = !DILocation(line: 720, column: 26, scope: !651, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 847, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 846, column: 35)
!1499 = !DILocation(line: 724, column: 12, scope: !1500, inlinedAt: !1497)
!1500 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 2)
!1501 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 1)
!1502 = !{!1261, !1253, i64 16}
!1503 = !DILocation(line: 724, column: 5, scope: !651, inlinedAt: !1497)
!1504 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !1497)
!1506 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !1505)
!1507 = !DILocation(line: 200, column: 20, scope: !1508, inlinedAt: !1505)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 196, column: 34)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 196, column: 13)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 195, column: 34)
!1511 = distinct !DILexicalBlock(scope: !658, file: !1, line: 195, column: 9)
!1512 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !1505)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 202, column: 16)
!1514 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !1505)
!1515 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !1505)
!1516 = !DILocation(line: 847, column: 9, scope: !1498)
!1517 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !1505)
!1518 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !1505)
!1519 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !1505)
!1520 = !{!1486, !1256, i64 32}
!1521 = !{!1253, !1253, i64 0}
!1522 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !1505)
!1523 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !1505)
!1524 = !DILocation(line: 196, column: 13, scope: !1509, inlinedAt: !1505)
!1525 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !1505)
!1526 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !1505)
!1527 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !1505)
!1528 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !1505)
!1529 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !1505)
!1530 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !1505)
!1531 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !1505)
!1532 = !{!1533, !1256, i64 0}
!1533 = !{!"BLOCK", !1256, i64 0, !1254, i64 8, !1256, i64 504}
!1534 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1505)
!1536 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !1535)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 111, column: 40)
!1538 = distinct !DILexicalBlock(scope: !490, file: !1, line: 111, column: 9)
!1539 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !1535)
!1540 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !1535)
!1541 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !1535)
!1542 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !1535)
!1543 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !1535)
!1544 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !1535)
!1545 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 114, column: 12)
!1546 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !1535)
!1547 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1505)
!1548 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !1505)
!1549 = !{!1486, !1253, i64 48}
!1550 = !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !1497)
!1551 = !DILocation(line: 722, column: 15, scope: !651, inlinedAt: !1497)
!1552 = !DILocation(line: 727, column: 9, scope: !1553, inlinedAt: !1497)
!1553 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 1)
!1554 = !DILocation(line: 727, column: 9, scope: !1555, inlinedAt: !1497)
!1555 = distinct !DILexicalBlock(scope: !656, file: !1, line: 727, column: 9)
!1556 = !DILocation(line: 727, column: 9, scope: !656, inlinedAt: !1497)
!1557 = !DILocation(line: 727, column: 9, scope: !1558, inlinedAt: !1497)
!1558 = !DILexicalBlockFile(scope: !1555, file: !1, discriminator: 3)
!1559 = !DILocation(line: 849, column: 26, scope: !1498)
!1560 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 849, column: 9, scope: !1498)
!1562 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !1561)
!1563 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !1561)
!1564 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !1561)
!1565 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !1561)
!1566 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !1561)
!1567 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !1561)
!1568 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !1561)
!1569 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !1561)
!1570 = !DILocation(line: 849, column: 9, scope: !1498)
!1571 = !DILocation(line: 853, column: 5, scope: !485)
!1572 = !DILocation(line: 852, column: 23, scope: !485)
!1573 = !DILocation(line: 853, column: 21, scope: !485)
!1574 = !{!1260, !1256, i64 320}
!1575 = !DILocation(line: 854, column: 1, scope: !485)
!1576 = !DILocation(line: 923, column: 22, scope: !495)
!1577 = !DILocation(line: 928, column: 9, scope: !495)
!1578 = !DILocation(line: 926, column: 9, scope: !495)
!1579 = !DILocation(line: 929, column: 11, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !495, file: !1, line: 929, column: 9)
!1581 = !DILocation(line: 929, column: 9, scope: !495)
!1582 = !DILocation(line: 930, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 930, column: 13)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 929, column: 17)
!1585 = !DILocation(line: 930, column: 13, scope: !1584)
!1586 = !DILocation(line: 932, column: 16, scope: !1584)
!1587 = !DILocation(line: 932, column: 9, scope: !1584)
!1588 = !DILocation(line: 935, column: 14, scope: !495)
!1589 = !DILocation(line: 925, column: 15, scope: !495)
!1590 = !DILocation(line: 936, column: 16, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !495, file: !1, line: 936, column: 9)
!1592 = !DILocation(line: 936, column: 9, scope: !495)
!1593 = !DILocation(line: 937, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 936, column: 25)
!1595 = !DILocation(line: 938, column: 9, scope: !1594)
!1596 = !DILocation(line: 940, column: 33, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !495, file: !1, line: 940, column: 9)
!1598 = !{!1486, !1253, i64 64}
!1599 = !DILocation(line: 940, column: 40, scope: !1597)
!1600 = !DILocation(line: 940, column: 9, scope: !495)
!1601 = !DILocation(line: 942, column: 18, scope: !1597)
!1602 = !DILocation(line: 925, column: 24, scope: !495)
!1603 = !DILocation(line: 942, column: 9, scope: !1597)
!1604 = !DILocation(line: 945, column: 18, scope: !1597)
!1605 = !DILocation(line: 946, column: 5, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!1607 = !DILocation(line: 946, column: 5, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !502, file: !1, line: 946, column: 5)
!1609 = !DILocation(line: 946, column: 5, scope: !502)
!1610 = !DILocation(line: 946, column: 5, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1608, file: !1, discriminator: 3)
!1612 = !DILocation(line: 947, column: 5, scope: !495)
!1613 = !DILocation(line: 948, column: 5, scope: !495)
!1614 = !DILocation(line: 949, column: 1, scope: !495)
!1615 = !DILocation(line: 857, column: 29, scope: !623)
!1616 = !DILocation(line: 857, column: 46, scope: !623)
!1617 = !DILocation(line: 857, column: 59, scope: !623)
!1618 = !DILocation(line: 862, column: 33, scope: !623)
!1619 = !{!1486, !1253, i64 40}
!1620 = !DILocation(line: 862, column: 16, scope: !623)
!1621 = !DILocation(line: 864, column: 21, scope: !643)
!1622 = !DILocation(line: 864, column: 44, scope: !642)
!1623 = !DILocation(line: 864, column: 34, scope: !642)
!1624 = !DILocation(line: 861, column: 16, scope: !623)
!1625 = !DILocation(line: 864, column: 5, scope: !643)
!1626 = !DILocation(line: 865, column: 37, scope: !639)
!1627 = !DILocation(line: 865, column: 9, scope: !640)
!1628 = !DILocation(line: 866, column: 20, scope: !638)
!1629 = !DILocation(line: 871, column: 43, scope: !649)
!1630 = !DILocation(line: 871, column: 33, scope: !649)
!1631 = !DILocation(line: 871, column: 5, scope: !650)
!1632 = !DILocation(line: 872, column: 16, scope: !648)
!1633 = !DILocation(line: 860, column: 15, scope: !623)
!1634 = !DILocation(line: 867, column: 13, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 1)
!1636 = !DILocation(line: 867, column: 13, scope: !637)
!1637 = !DILocation(line: 867, column: 13, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 2)
!1639 = !DILocation(line: 867, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !635, file: !1, line: 867, column: 13)
!1641 = !DILocation(line: 865, column: 55, scope: !639)
!1642 = !DILocation(line: 864, column: 63, scope: !642)
!1643 = !DILocation(line: 873, column: 9, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 1)
!1645 = !DILocation(line: 873, column: 9, scope: !647)
!1646 = !DILocation(line: 873, column: 9, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 2)
!1648 = !DILocation(line: 873, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !645, file: !1, line: 873, column: 9)
!1650 = !DILocation(line: 871, column: 60, scope: !649)
!1651 = !DILocation(line: 876, column: 1, scope: !623)
!1652 = !DILocation(line: 720, column: 26, scope: !651)
!1653 = !DILocation(line: 724, column: 12, scope: !1500)
!1654 = !DILocation(line: 724, column: 5, scope: !651)
!1655 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 725, column: 16, scope: !657)
!1657 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !1656)
!1658 = !DILocation(line: 200, column: 20, scope: !1508, inlinedAt: !1656)
!1659 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !1656)
!1660 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !1656)
!1661 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !1656)
!1662 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !1656)
!1663 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !1656)
!1664 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !1656)
!1665 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !1656)
!1666 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !1656)
!1667 = !DILocation(line: 196, column: 13, scope: !1509, inlinedAt: !1656)
!1668 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !1656)
!1669 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !1656)
!1670 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !1656)
!1671 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !1656)
!1672 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !1656)
!1673 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !1656)
!1674 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !1656)
!1675 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1656)
!1677 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !1676)
!1678 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !1676)
!1679 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !1676)
!1680 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !1676)
!1681 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !1676)
!1682 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !1676)
!1683 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !1676)
!1684 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !1676)
!1685 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1656)
!1686 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !1656)
!1687 = !DILocation(line: 725, column: 16, scope: !657)
!1688 = !DILocation(line: 722, column: 15, scope: !651)
!1689 = !DILocation(line: 727, column: 9, scope: !1553)
!1690 = !DILocation(line: 727, column: 9, scope: !1555)
!1691 = !DILocation(line: 727, column: 9, scope: !656)
!1692 = !DILocation(line: 727, column: 9, scope: !1558)
!1693 = !DILocation(line: 732, column: 1, scope: !651)
!1694 = !DILocation(line: 952, column: 29, scope: !664)
!1695 = !DILocation(line: 952, column: 42, scope: !664)
!1696 = !DILocation(line: 952, column: 49, scope: !664)
!1697 = !DILocation(line: 954, column: 15, scope: !664)
!1698 = !DILocation(line: 954, column: 26, scope: !664)
!1699 = !DILocation(line: 956, column: 12, scope: !664)
!1700 = !DILocation(line: 958, column: 10, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !664, file: !1, line: 958, column: 9)
!1702 = !DILocation(line: 958, column: 10, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1701, file: !1, discriminator: 1)
!1704 = !DILocation(line: 958, column: 45, scope: !1701)
!1705 = !DILocation(line: 959, column: 10, scope: !1701)
!1706 = !DILocation(line: 959, column: 10, scope: !1703)
!1707 = !DILocation(line: 958, column: 9, scope: !664)
!1708 = !DILocation(line: 960, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 959, column: 46)
!1710 = !DILocation(line: 964, column: 10, scope: !664)
!1711 = !DILocation(line: 955, column: 16, scope: !664)
!1712 = !DILocation(line: 965, column: 10, scope: !664)
!1713 = !DILocation(line: 955, column: 20, scope: !664)
!1714 = !DILocation(line: 966, column: 9, scope: !664)
!1715 = !DILocation(line: 967, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 967, column: 13)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 966, column: 22)
!1718 = distinct !DILexicalBlock(scope: !664, file: !1, line: 966, column: 9)
!1719 = !DILocation(line: 967, column: 13, scope: !1717)
!1720 = !DILocation(line: 968, column: 13, scope: !1716)
!1721 = !DILocation(line: 969, column: 16, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 969, column: 13)
!1723 = !DILocation(line: 969, column: 13, scope: !1717)
!1724 = !DILocation(line: 970, column: 13, scope: !1722)
!1725 = !DILocation(line: 973, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 973, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 972, column: 22)
!1728 = distinct !DILexicalBlock(scope: !664, file: !1, line: 972, column: 9)
!1729 = !DILocation(line: 973, column: 13, scope: !1727)
!1730 = !DILocation(line: 974, column: 13, scope: !1726)
!1731 = !DILocation(line: 975, column: 16, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 975, column: 13)
!1733 = !DILocation(line: 975, column: 13, scope: !1727)
!1734 = !DILocation(line: 976, column: 13, scope: !1732)
!1735 = !DILocation(line: 980, column: 11, scope: !664)
!1736 = !DILocation(line: 981, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !664, file: !1, line: 981, column: 9)
!1738 = !DILocation(line: 981, column: 9, scope: !664)
!1739 = !DILocation(line: 983, column: 11, scope: !664)
!1740 = !DILocation(line: 984, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !664, file: !1, line: 984, column: 9)
!1742 = !DILocation(line: 984, column: 9, scope: !664)
!1743 = !DILocation(line: 987, column: 13, scope: !681)
!1744 = !DILocation(line: 954, column: 37, scope: !664)
!1745 = !DILocation(line: 988, column: 15, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !681, file: !1, line: 988, column: 13)
!1747 = !DILocation(line: 988, column: 23, scope: !1746)
!1748 = !DILocation(line: 988, column: 26, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1746, file: !1, discriminator: 1)
!1750 = !DILocation(line: 988, column: 13, scope: !681)
!1751 = !DILocation(line: 990, column: 13, scope: !681)
!1752 = !DILocation(line: 954, column: 41, scope: !664)
!1753 = !DILocation(line: 991, column: 28, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !681, file: !1, line: 991, column: 13)
!1755 = !DILocation(line: 991, column: 23, scope: !1754)
!1756 = !DILocation(line: 993, column: 13, scope: !681)
!1757 = !DILocation(line: 956, column: 9, scope: !664)
!1758 = !DILocation(line: 994, column: 15, scope: !680)
!1759 = !DILocation(line: 994, column: 13, scope: !681)
!1760 = !DILocation(line: 995, column: 19, scope: !679)
!1761 = !DILocation(line: 996, column: 13, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 1)
!1763 = !DILocation(line: 996, column: 13, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !678, file: !1, line: 996, column: 13)
!1765 = !DILocation(line: 996, column: 13, scope: !678)
!1766 = !DILocation(line: 996, column: 13, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1764, file: !1, discriminator: 3)
!1768 = !DILocation(line: 997, column: 13, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!1770 = !DILocation(line: 997, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !685, file: !1, line: 997, column: 13)
!1772 = !DILocation(line: 997, column: 13, scope: !685)
!1773 = !DILocation(line: 997, column: 13, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1771, file: !1, discriminator: 3)
!1775 = !DILocation(line: 1000, column: 9, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 1)
!1777 = !DILocation(line: 1000, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1000, column: 9)
!1779 = !DILocation(line: 1000, column: 9, scope: !687)
!1780 = !DILocation(line: 1000, column: 9, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 3)
!1782 = !DILocation(line: 1001, column: 9, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 1)
!1784 = !DILocation(line: 1001, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !689, file: !1, line: 1001, column: 9)
!1786 = !DILocation(line: 1001, column: 9, scope: !689)
!1787 = !DILocation(line: 1001, column: 9, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1785, file: !1, discriminator: 3)
!1789 = !DILocation(line: 1002, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !681, file: !1, line: 1002, column: 13)
!1791 = !DILocation(line: 1002, column: 13, scope: !681)
!1792 = !DILocation(line: 1006, column: 5, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!1794 = !DILocation(line: 1006, column: 5, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !693, file: !1, discriminator: 4)
!1796 = !DILocation(line: 1006, column: 5, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !693, file: !1, line: 1006, column: 5)
!1798 = !DILocation(line: 1006, column: 5, scope: !693)
!1799 = !DILocation(line: 1006, column: 5, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 6)
!1801 = !DILocation(line: 1007, column: 5, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!1803 = !DILocation(line: 1007, column: 5, scope: !699)
!1804 = !DILocation(line: 1007, column: 5, scope: !696)
!1805 = !DILocation(line: 1007, column: 5, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 4)
!1807 = !DILocation(line: 1007, column: 5, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !698, file: !1, line: 1007, column: 5)
!1809 = !DILocation(line: 1007, column: 5, scope: !698)
!1810 = !DILocation(line: 1007, column: 5, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 6)
!1812 = !DILocation(line: 1008, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1008, column: 9)
!1814 = !DILocation(line: 1008, column: 9, scope: !664)
!1815 = !DILocation(line: 1010, column: 5, scope: !664)
!1816 = !DILocation(line: 1011, column: 34, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1010, column: 17)
!1818 = !DILocation(line: 1012, column: 34, scope: !1817)
!1819 = !DILocation(line: 1013, column: 25, scope: !1817)
!1820 = !DILocation(line: 1013, column: 34, scope: !1817)
!1821 = !DILocation(line: 1014, column: 25, scope: !1817)
!1822 = !DILocation(line: 1014, column: 34, scope: !1817)
!1823 = !DILocation(line: 1015, column: 34, scope: !1817)
!1824 = !DILocation(line: 1016, column: 25, scope: !1817)
!1825 = !DILocation(line: 1016, column: 34, scope: !1817)
!1826 = !DILocation(line: 1020, column: 5, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 4)
!1828 = !DILocation(line: 1020, column: 5, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !703, file: !1, line: 1020, column: 5)
!1830 = !DILocation(line: 1020, column: 5, scope: !703)
!1831 = !DILocation(line: 1020, column: 5, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1829, file: !1, discriminator: 6)
!1833 = !DILocation(line: 1021, column: 5, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!1835 = !DILocation(line: 1021, column: 5, scope: !709)
!1836 = !DILocation(line: 1021, column: 5, scope: !706)
!1837 = !DILocation(line: 1021, column: 5, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 4)
!1839 = !DILocation(line: 1021, column: 5, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !708, file: !1, line: 1021, column: 5)
!1841 = !DILocation(line: 1021, column: 5, scope: !708)
!1842 = !DILocation(line: 1021, column: 5, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1840, file: !1, discriminator: 6)
!1844 = !DILocation(line: 1022, column: 9, scope: !664)
!1845 = !DILocation(line: 1023, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1022, column: 9)
!1847 = !DILocation(line: 1025, column: 9, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1024, column: 9)
!1849 = !DILocation(line: 1027, column: 1, scope: !664)
!1850 = !DILocation(line: 1208, column: 25, scope: !710)
!1851 = !DILocation(line: 1212, column: 10, scope: !710)
!1852 = !DILocation(line: 1213, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !710, file: !1, line: 1213, column: 9)
!1854 = !DILocation(line: 1213, column: 9, scope: !710)
!1855 = !DILocation(line: 1215, column: 20, scope: !710)
!1856 = !DILocation(line: 1215, column: 9, scope: !710)
!1857 = !DILocation(line: 1215, column: 11, scope: !710)
!1858 = !{!1859, !1256, i64 24}
!1859 = !{!"", !1252, i64 0, !1253, i64 16, !1256, i64 24, !1256, i64 32, !1253, i64 40, !1253, i64 48}
!1860 = !DILocation(line: 1216, column: 24, scope: !710)
!1861 = !DILocation(line: 1216, column: 9, scope: !710)
!1862 = !DILocation(line: 1216, column: 15, scope: !710)
!1863 = !{!1859, !1253, i64 16}
!1864 = !DILocation(line: 1217, column: 5, scope: !710)
!1865 = !DILocation(line: 1218, column: 9, scope: !710)
!1866 = !DILocation(line: 1218, column: 15, scope: !710)
!1867 = !{!1859, !1256, i64 32}
!1868 = !DILocation(line: 1219, column: 24, scope: !710)
!1869 = !{!1486, !1253, i64 56}
!1870 = !DILocation(line: 1219, column: 9, scope: !710)
!1871 = !DILocation(line: 1219, column: 15, scope: !710)
!1872 = !{!1859, !1253, i64 40}
!1873 = !DILocation(line: 1220, column: 19, scope: !710)
!1874 = !DILocation(line: 1220, column: 9, scope: !710)
!1875 = !DILocation(line: 1220, column: 17, scope: !710)
!1876 = !{!1859, !1253, i64 48}
!1877 = !DILocation(line: 1221, column: 23, scope: !710)
!1878 = !DILocation(line: 1221, column: 5, scope: !710)
!1879 = !DILocation(line: 1222, column: 5, scope: !710)
!1880 = !DILocation(line: 1223, column: 1, scope: !710)
!1881 = !DILocation(line: 1030, column: 25, scope: !854)
!1882 = !DILocation(line: 1030, column: 42, scope: !854)
!1883 = !DILocation(line: 1030, column: 58, scope: !854)
!1884 = !DILocation(line: 1032, column: 5, scope: !854)
!1885 = !DILocation(line: 1032, column: 15, scope: !854)
!1886 = !DILocation(line: 1033, column: 5, scope: !854)
!1887 = !DILocation(line: 1033, column: 15, scope: !854)
!1888 = !DILocation(line: 1034, column: 16, scope: !854)
!1889 = !DILocation(line: 1035, column: 5, scope: !854)
!1890 = !DILocation(line: 1035, column: 11, scope: !854)
!1891 = !DILocation(line: 1037, column: 66, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !854, file: !1, line: 1037, column: 9)
!1893 = !DILocation(line: 1037, column: 10, scope: !1892)
!1894 = !DILocation(line: 1037, column: 9, scope: !854)
!1895 = !DILocation(line: 1039, column: 9, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !854, file: !1, line: 1039, column: 9)
!1897 = !DILocation(line: 1039, column: 19, scope: !1896)
!1898 = !DILocation(line: 1039, column: 40, scope: !1896)
!1899 = !DILocation(line: 1039, column: 27, scope: !1896)
!1900 = !DILocation(line: 1040, column: 18, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 1039, column: 52)
!1902 = !DILocation(line: 1041, column: 20, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 1041, column: 13)
!1904 = !DILocation(line: 1041, column: 26, scope: !1903)
!1905 = !DILocation(line: 1041, column: 29, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1903, file: !1, discriminator: 1)
!1907 = !DILocation(line: 1041, column: 13, scope: !1901)
!1908 = !DILocation(line: 1043, column: 20, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 1043, column: 13)
!1910 = !DILocation(line: 1043, column: 13, scope: !1901)
!1911 = !DILocation(line: 1044, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 1043, column: 25)
!1913 = !DILocation(line: 1044, column: 13, scope: !1912)
!1914 = !DILocation(line: 1045, column: 13, scope: !1912)
!1915 = !DILocation(line: 1048, column: 12, scope: !854)
!1916 = !DILocation(line: 1048, column: 19, scope: !854)
!1917 = !DILocation(line: 720, column: 26, scope: !651, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 1049, column: 5, scope: !854)
!1919 = !DILocation(line: 724, column: 12, scope: !1500, inlinedAt: !1918)
!1920 = !DILocation(line: 724, column: 5, scope: !651, inlinedAt: !1918)
!1921 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !1918)
!1923 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !1922)
!1924 = !DILocation(line: 200, column: 20, scope: !1508, inlinedAt: !1922)
!1925 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !1922)
!1926 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !1922)
!1927 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !1922)
!1928 = !DILocation(line: 1049, column: 5, scope: !854)
!1929 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !1922)
!1930 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !1922)
!1931 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !1922)
!1932 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !1922)
!1933 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !1922)
!1934 = !DILocation(line: 196, column: 13, scope: !1509, inlinedAt: !1922)
!1935 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !1922)
!1936 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !1922)
!1937 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !1922)
!1938 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !1922)
!1939 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !1922)
!1940 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !1922)
!1941 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !1922)
!1942 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1922)
!1944 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !1943)
!1945 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !1943)
!1946 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !1943)
!1947 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !1943)
!1948 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !1943)
!1949 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !1943)
!1950 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !1943)
!1951 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !1943)
!1952 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !1922)
!1953 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !1922)
!1954 = !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !1918)
!1955 = !DILocation(line: 722, column: 15, scope: !651, inlinedAt: !1918)
!1956 = !DILocation(line: 727, column: 9, scope: !1553, inlinedAt: !1918)
!1957 = !DILocation(line: 727, column: 9, scope: !1555, inlinedAt: !1918)
!1958 = !DILocation(line: 727, column: 9, scope: !656, inlinedAt: !1918)
!1959 = !DILocation(line: 727, column: 9, scope: !1558, inlinedAt: !1918)
!1960 = !DILocation(line: 1050, column: 9, scope: !870)
!1961 = !DILocation(line: 1050, column: 18, scope: !870)
!1962 = !DILocation(line: 1050, column: 9, scope: !854)
!1963 = !DILocation(line: 1051, column: 24, scope: !869)
!1964 = !DILocation(line: 1051, column: 19, scope: !869)
!1965 = !DILocation(line: 1052, column: 16, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1052, column: 13)
!1967 = !DILocation(line: 1052, column: 13, scope: !869)
!1968 = !DILocation(line: 1054, column: 9, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 1)
!1970 = !DILocation(line: 1054, column: 9, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !872, file: !1, line: 1054, column: 9)
!1972 = !DILocation(line: 1054, column: 9, scope: !872)
!1973 = !DILocation(line: 1054, column: 9, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1971, file: !1, discriminator: 3)
!1975 = !DILocation(line: 1057, column: 1, scope: !854)
!1976 = !DILocation(line: 149, column: 25, scope: !873)
!1977 = !DILocation(line: 149, column: 41, scope: !873)
!1978 = !DILocation(line: 149, column: 57, scope: !873)
!1979 = !DILocation(line: 155, column: 34, scope: !873)
!1980 = !{!1260, !1256, i64 304}
!1981 = !DILocation(line: 155, column: 28, scope: !873)
!1982 = !DILocation(line: 156, column: 15, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !873, file: !1, line: 156, column: 9)
!1984 = !DILocation(line: 156, column: 9, scope: !873)
!1985 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 159, column: 9, scope: !873)
!1987 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !1986)
!1988 = distinct !DILexicalBlock(scope: !564, file: !1, line: 96, column: 9)
!1989 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !1986)
!1990 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !1986)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !1, line: 96, column: 24)
!1992 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !1986)
!1993 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !1986)
!1994 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !1986)
!1995 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !1986)
!1996 = distinct !DILexicalBlock(scope: !564, file: !1, line: 101, column: 9)
!1997 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !1986)
!1998 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !1986)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !1, line: 101, column: 20)
!2000 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !1986)
!2001 = !DILocation(line: 152, column: 12, scope: !873)
!2002 = !DILocation(line: 160, column: 9, scope: !873)
!2003 = !DILocation(line: 159, column: 9, scope: !873)
!2004 = !DILocation(line: 160, column: 11, scope: !887)
!2005 = !DILocation(line: 161, column: 9, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 1)
!2007 = !DILocation(line: 161, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !885, file: !1, line: 161, column: 9)
!2009 = !DILocation(line: 161, column: 9, scope: !885)
!2010 = !DILocation(line: 161, column: 9, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2008, file: !1, discriminator: 3)
!2012 = !DILocation(line: 168, column: 12, scope: !873)
!2013 = !DILocation(line: 168, column: 22, scope: !873)
!2014 = !DILocation(line: 169, column: 12, scope: !873)
!2015 = !DILocation(line: 169, column: 23, scope: !873)
!2016 = !DILocation(line: 170, column: 12, scope: !873)
!2017 = !DILocation(line: 170, column: 22, scope: !873)
!2018 = !DILocation(line: 172, column: 5, scope: !873)
!2019 = !DILocation(line: 172, column: 20, scope: !873)
!2020 = !DILocation(line: 173, column: 12, scope: !873)
!2021 = !DILocation(line: 174, column: 12, scope: !873)
!2022 = !DILocation(line: 174, column: 24, scope: !873)
!2023 = !DILocation(line: 173, column: 18, scope: !873)
!2024 = !DILocation(line: 177, column: 5, scope: !873)
!2025 = !DILocation(line: 178, column: 1, scope: !873)
!2026 = !DILocation(line: 679, column: 24, scope: !503)
!2027 = !DILocation(line: 681, column: 12, scope: !503)
!2028 = !DILocation(line: 681, column: 5, scope: !503)
!2029 = !DILocation(line: 735, column: 25, scope: !508)
!2030 = !DILocation(line: 735, column: 43, scope: !508)
!2031 = !DILocation(line: 739, column: 19, scope: !508)
!2032 = !DILocation(line: 741, column: 11, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !508, file: !1, line: 741, column: 9)
!2034 = !DILocation(line: 741, column: 15, scope: !2033)
!2035 = !DILocation(line: 741, column: 23, scope: !2033)
!2036 = !DILocation(line: 741, column: 20, scope: !2033)
!2037 = !DILocation(line: 741, column: 9, scope: !508)
!2038 = !DILocation(line: 742, column: 25, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 741, column: 39)
!2040 = !DILocation(line: 742, column: 9, scope: !2039)
!2041 = !DILocation(line: 744, column: 9, scope: !2039)
!2042 = !DILocation(line: 747, column: 11, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !508, file: !1, line: 747, column: 9)
!2044 = !DILocation(line: 747, column: 9, scope: !508)
!2045 = !DILocation(line: 748, column: 20, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 747, column: 17)
!2047 = !DILocation(line: 749, column: 20, scope: !2046)
!2048 = !DILocation(line: 737, column: 12, scope: !508)
!2049 = !DILocation(line: 750, column: 5, scope: !2046)
!2050 = !DILocation(line: 750, column: 36, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 750, column: 16)
!2052 = !DILocation(line: 750, column: 18, scope: !2051)
!2053 = !DILocation(line: 750, column: 16, scope: !2043)
!2054 = !DILocation(line: 751, column: 20, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 750, column: 41)
!2056 = !DILocation(line: 752, column: 20, scope: !2055)
!2057 = !DILocation(line: 753, column: 5, scope: !2055)
!2058 = !DILocation(line: 754, column: 21, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 753, column: 12)
!2060 = !DILocation(line: 754, column: 11, scope: !2059)
!2061 = !DILocation(line: 755, column: 15, scope: !2059)
!2062 = !DILocation(line: 739, column: 16, scope: !508)
!2063 = !DILocation(line: 756, column: 11, scope: !2059)
!2064 = !DILocation(line: 757, column: 37, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2059, file: !1, line: 757, column: 13)
!2066 = !DILocation(line: 757, column: 19, scope: !2065)
!2067 = !DILocation(line: 757, column: 13, scope: !2059)
!2068 = !DILocation(line: 758, column: 24, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 757, column: 44)
!2070 = !DILocation(line: 759, column: 13, scope: !2069)
!2071 = !DILocation(line: 759, column: 21, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2073, file: !1, discriminator: 2)
!2073 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 1)
!2074 = !DILocation(line: 760, column: 24, scope: !2069)
!2075 = distinct !{!2075, !2076}
!2076 = !{!"llvm.loop.unroll.disable"}
!2077 = !DILocation(line: 762, column: 52, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 761, column: 16)
!2079 = !DILocation(line: 762, column: 57, scope: !2078)
!2080 = !DILocation(line: 763, column: 24, scope: !2078)
!2081 = !DILocation(line: 764, column: 13, scope: !2078)
!2082 = !DILocation(line: 762, column: 68, scope: !2078)
!2083 = !DILocation(line: 764, column: 21, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2085, file: !1, discriminator: 2)
!2085 = !DILexicalBlockFile(scope: !2078, file: !1, discriminator: 1)
!2086 = !DILocation(line: 765, column: 24, scope: !2078)
!2087 = distinct !{!2087, !2076}
!2088 = !DILocation(line: 768, column: 12, scope: !508)
!2089 = !DILocation(line: 738, column: 15, scope: !508)
!2090 = !DILocation(line: 769, column: 5, scope: !508)
!2091 = !DILocation(line: 770, column: 5, scope: !508)
!2092 = !DILocation(line: 771, column: 1, scope: !508)
!2093 = !DILocation(line: 797, column: 29, scope: !518)
!2094 = !DILocation(line: 797, column: 47, scope: !518)
!2095 = !DILocation(line: 797, column: 60, scope: !518)
!2096 = !DILocation(line: 801, column: 23, scope: !518)
!2097 = !DILocation(line: 801, column: 19, scope: !518)
!2098 = !DILocation(line: 801, column: 51, scope: !518)
!2099 = !DILocation(line: 801, column: 54, scope: !518)
!2100 = !DILocation(line: 801, column: 39, scope: !518)
!2101 = !DILocation(line: 801, column: 59, scope: !518)
!2102 = !DILocation(line: 803, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !518, file: !1, line: 803, column: 9)
!2104 = !DILocation(line: 803, column: 20, scope: !2103)
!2105 = !DILocation(line: 803, column: 15, scope: !2103)
!2106 = !DILocation(line: 804, column: 25, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 803, column: 28)
!2108 = !DILocation(line: 804, column: 9, scope: !2107)
!2109 = !DILocation(line: 806, column: 9, scope: !2107)
!2110 = !DILocation(line: 808, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !518, file: !1, line: 808, column: 9)
!2112 = !DILocation(line: 808, column: 9, scope: !518)
!2113 = !DILocation(line: 781, column: 29, scope: !533, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 809, column: 16, scope: !2111)
!2115 = !DILocation(line: 781, column: 47, scope: !533, inlinedAt: !2114)
!2116 = !DILocation(line: 786, column: 30, scope: !2117, inlinedAt: !2114)
!2117 = distinct !DILexicalBlock(scope: !533, file: !1, line: 786, column: 9)
!2118 = !DILocation(line: 786, column: 9, scope: !2117, inlinedAt: !2114)
!2119 = !DILocation(line: 786, column: 34, scope: !2117, inlinedAt: !2114)
!2120 = !DILocation(line: 786, column: 9, scope: !533, inlinedAt: !2114)
!2121 = !DILocation(line: 218, column: 28, scope: !570, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 789, column: 12, scope: !533, inlinedAt: !2114)
!2123 = !DILocation(line: 218, column: 45, scope: !570, inlinedAt: !2122)
!2124 = !DILocation(line: 230, column: 19, scope: !570, inlinedAt: !2122)
!2125 = !DILocation(line: 223, column: 24, scope: !2126, inlinedAt: !2122)
!2126 = distinct !DILexicalBlock(scope: !570, file: !1, line: 223, column: 9)
!2127 = !DILocation(line: 223, column: 9, scope: !570, inlinedAt: !2122)
!2128 = !DILocation(line: 224, column: 25, scope: !2129, inlinedAt: !2122)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 223, column: 30)
!2130 = !DILocation(line: 224, column: 9, scope: !2129, inlinedAt: !2122)
!2131 = !DILocation(line: 225, column: 9, scope: !2129, inlinedAt: !2122)
!2132 = !DILocation(line: 228, column: 42, scope: !570, inlinedAt: !2122)
!2133 = !DILocation(line: 228, column: 19, scope: !570, inlinedAt: !2122)
!2134 = !DILocation(line: 242, column: 32, scope: !2135, inlinedAt: !2122)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 240, column: 16)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 234, column: 13)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !1, line: 233, column: 39)
!2138 = distinct !DILexicalBlock(scope: !570, file: !1, line: 233, column: 9)
!2139 = !DILocation(line: 228, column: 12, scope: !570, inlinedAt: !2122)
!2140 = !DILocation(line: 220, column: 15, scope: !570, inlinedAt: !2122)
!2141 = !DILocation(line: 229, column: 21, scope: !570, inlinedAt: !2122)
!2142 = !DILocation(line: 234, column: 13, scope: !2136, inlinedAt: !2122)
!2143 = !DILocation(line: 231, column: 12, scope: !570, inlinedAt: !2122)
!2144 = !DILocation(line: 231, column: 17, scope: !570, inlinedAt: !2122)
!2145 = !DILocation(line: 233, column: 26, scope: !2138, inlinedAt: !2122)
!2146 = !DILocation(line: 233, column: 9, scope: !570, inlinedAt: !2122)
!2147 = !DILocation(line: 234, column: 28, scope: !2136, inlinedAt: !2122)
!2148 = !DILocation(line: 234, column: 13, scope: !2137, inlinedAt: !2122)
!2149 = !DILocation(line: 238, column: 30, scope: !2150, inlinedAt: !2122)
!2150 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 234, column: 34)
!2151 = !DILocation(line: 240, column: 9, scope: !2150, inlinedAt: !2122)
!2152 = !DILocation(line: 242, column: 43, scope: !2135, inlinedAt: !2122)
!2153 = !{!1533, !1256, i64 504}
!2154 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2122)
!2156 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2155)
!2157 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2155)
!2158 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2155)
!2159 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2155)
!2160 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2155)
!2161 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2155)
!2162 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2155)
!2163 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2155)
!2164 = !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2122)
!2165 = !DILocation(line: 246, column: 30, scope: !2135, inlinedAt: !2122)
!2166 = !DILocation(line: 247, column: 30, scope: !2135, inlinedAt: !2122)
!2167 = !DILocation(line: 789, column: 12, scope: !533, inlinedAt: !2114)
!2168 = !DILocation(line: 783, column: 15, scope: !533, inlinedAt: !2114)
!2169 = !DILocation(line: 791, column: 5, scope: !2170, inlinedAt: !2114)
!2170 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 1)
!2171 = !DILocation(line: 791, column: 5, scope: !2172, inlinedAt: !2114)
!2172 = distinct !DILexicalBlock(scope: !541, file: !1, line: 791, column: 5)
!2173 = !DILocation(line: 791, column: 5, scope: !541, inlinedAt: !2114)
!2174 = !DILocation(line: 791, column: 5, scope: !2175, inlinedAt: !2114)
!2175 = !DILexicalBlockFile(scope: !2172, file: !1, discriminator: 3)
!2176 = !DILocation(line: 809, column: 16, scope: !2111)
!2177 = !DILocation(line: 793, column: 12, scope: !533, inlinedAt: !2114)
!2178 = !DILocation(line: 793, column: 5, scope: !533, inlinedAt: !2114)
!2179 = !DILocation(line: 811, column: 17, scope: !518)
!2180 = !DILocation(line: 811, column: 7, scope: !518)
!2181 = !DILocation(line: 812, column: 11, scope: !518)
!2182 = !DILocation(line: 801, column: 16, scope: !518)
!2183 = !DILocation(line: 813, column: 7, scope: !518)
!2184 = !DILocation(line: 814, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !518, file: !1, line: 814, column: 9)
!2186 = !DILocation(line: 814, column: 9, scope: !518)
!2187 = !DILocation(line: 815, column: 20, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 814, column: 27)
!2189 = !DILocation(line: 816, column: 9, scope: !2188)
!2190 = !DILocation(line: 816, column: 17, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 2)
!2192 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 1)
!2193 = !DILocation(line: 817, column: 20, scope: !2188)
!2194 = distinct !{!2194, !2076}
!2195 = !DILocation(line: 819, column: 31, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 818, column: 12)
!2197 = !DILocation(line: 819, column: 37, scope: !2196)
!2198 = !DILocation(line: 819, column: 42, scope: !2196)
!2199 = !DILocation(line: 820, column: 20, scope: !2196)
!2200 = !DILocation(line: 821, column: 9, scope: !2196)
!2201 = !DILocation(line: 819, column: 53, scope: !2196)
!2202 = !DILocation(line: 821, column: 17, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !1, discriminator: 2)
!2204 = !DILexicalBlockFile(scope: !2196, file: !1, discriminator: 1)
!2205 = !DILocation(line: 822, column: 20, scope: !2196)
!2206 = distinct !{!2206, !2076}
!2207 = !DILocation(line: 824, column: 5, scope: !518)
!2208 = !DILocation(line: 825, column: 17, scope: !518)
!2209 = !DILocation(line: 799, column: 15, scope: !518)
!2210 = !DILocation(line: 826, column: 16, scope: !518)
!2211 = !DILocation(line: 827, column: 5, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !532, file: !1, discriminator: 1)
!2213 = !DILocation(line: 827, column: 5, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !532, file: !1, line: 827, column: 5)
!2215 = !DILocation(line: 827, column: 5, scope: !532)
!2216 = !DILocation(line: 827, column: 5, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2214, file: !1, discriminator: 3)
!2218 = !DILocation(line: 829, column: 1, scope: !518)
!2219 = !DILocation(line: 445, column: 35, scope: !578)
!2220 = !DILocation(line: 445, column: 52, scope: !578)
!2221 = !DILocation(line: 449, column: 14, scope: !578)
!2222 = !DILocation(line: 447, column: 15, scope: !578)
!2223 = !DILocation(line: 450, column: 16, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !578, file: !1, line: 450, column: 9)
!2225 = !DILocation(line: 450, column: 9, scope: !578)
!2226 = !DILocation(line: 452, column: 5, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!2228 = !DILocation(line: 452, column: 5, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !584, file: !1, line: 452, column: 5)
!2230 = !DILocation(line: 452, column: 5, scope: !584)
!2231 = !DILocation(line: 452, column: 5, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2229, file: !1, discriminator: 3)
!2233 = !DILocation(line: 453, column: 5, scope: !578)
!2234 = !DILocation(line: 454, column: 5, scope: !578)
!2235 = !DILocation(line: 455, column: 1, scope: !578)
!2236 = !DILocation(line: 458, column: 28, scope: !542)
!2237 = !DILocation(line: 458, column: 46, scope: !542)
!2238 = !DILocation(line: 460, column: 12, scope: !542)
!2239 = !DILocation(line: 461, column: 31, scope: !542)
!2240 = !DILocation(line: 461, column: 12, scope: !542)
!2241 = !DILocation(line: 462, column: 32, scope: !542)
!2242 = !DILocation(line: 462, column: 12, scope: !542)
!2243 = !DILocation(line: 463, column: 35, scope: !542)
!2244 = !DILocation(line: 463, column: 16, scope: !542)
!2245 = !DILocation(line: 464, column: 36, scope: !542)
!2246 = !DILocation(line: 464, column: 16, scope: !542)
!2247 = !DILocation(line: 465, column: 20, scope: !542)
!2248 = !DILocation(line: 465, column: 16, scope: !542)
!2249 = !DILocation(line: 465, column: 47, scope: !542)
!2250 = !DILocation(line: 465, column: 36, scope: !542)
!2251 = !DILocation(line: 466, column: 9, scope: !542)
!2252 = !DILocation(line: 468, column: 13, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !542, file: !1, line: 468, column: 9)
!2254 = !DILocation(line: 468, column: 9, scope: !542)
!2255 = !DILocation(line: 470, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !542, file: !1, line: 470, column: 9)
!2257 = !DILocation(line: 470, column: 26, scope: !2256)
!2258 = !DILocation(line: 470, column: 21, scope: !2256)
!2259 = !DILocation(line: 471, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 470, column: 38)
!2261 = !DILocation(line: 472, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2260, file: !1, line: 472, column: 13)
!2263 = !DILocation(line: 472, column: 13, scope: !2260)
!2264 = !DILocation(line: 473, column: 15, scope: !2262)
!2265 = !DILocation(line: 473, column: 13, scope: !2262)
!2266 = !DILocation(line: 474, column: 20, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 474, column: 18)
!2268 = !DILocation(line: 474, column: 18, scope: !2262)
!2269 = !DILocation(line: 480, column: 12, scope: !542)
!2270 = !DILocation(line: 480, column: 17, scope: !542)
!2271 = !DILocation(line: 91, column: 13, scope: !2272, inlinedAt: !2273)
!2272 = distinct !DILexicalBlock(scope: !564, file: !1, line: 91, column: 9)
!2273 = distinct !DILocation(line: 484, column: 21, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 483, column: 28)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 483, column: 17)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 482, column: 29)
!2277 = distinct !DILexicalBlock(scope: !556, file: !1, line: 482, column: 13)
!2278 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !2273)
!2279 = !DILocation(line: 481, column: 14, scope: !542)
!2280 = !DILocation(line: 520, column: 38, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !1, line: 515, column: 31)
!2282 = distinct !DILexicalBlock(scope: !556, file: !1, line: 515, column: 13)
!2283 = !DILocation(line: 523, column: 9, scope: !2281)
!2284 = !DILocation(line: 481, column: 5, scope: !542)
!2285 = !DILocation(line: 482, column: 23, scope: !2277)
!2286 = !DILocation(line: 482, column: 13, scope: !556)
!2287 = !DILocation(line: 483, column: 19, scope: !2275)
!2288 = !DILocation(line: 483, column: 17, scope: !2276)
!2289 = !DILocation(line: 488, column: 16, scope: !2276)
!2290 = !DILocation(line: 488, column: 26, scope: !2276)
!2291 = !DILocation(line: 490, column: 24, scope: !2276)
!2292 = !DILocation(line: 490, column: 33, scope: !2276)
!2293 = !DILocation(line: 495, column: 9, scope: !2276)
!2294 = !DILocation(line: 499, column: 24, scope: !555)
!2295 = !DILocation(line: 501, column: 32, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !555, file: !1, line: 501, column: 17)
!2297 = !DILocation(line: 501, column: 19, scope: !2296)
!2298 = !DILocation(line: 501, column: 17, scope: !555)
!2299 = !DILocation(line: 503, column: 19, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !555, file: !1, line: 503, column: 17)
!2301 = !DILocation(line: 503, column: 17, scope: !555)
!2302 = !DILocation(line: 506, column: 20, scope: !555)
!2303 = !DILocation(line: 498, column: 24, scope: !555)
!2304 = !DILocation(line: 507, column: 47, scope: !555)
!2305 = !DILocation(line: 507, column: 21, scope: !555)
!2306 = !DILocation(line: 498, column: 31, scope: !555)
!2307 = !DILocation(line: 509, column: 23, scope: !555)
!2308 = !DILocation(line: 511, column: 13, scope: !555)
!2309 = !DILocation(line: 508, column: 24, scope: !555)
!2310 = !DILocation(line: 510, column: 15, scope: !555)
!2311 = !DILocation(line: 515, column: 24, scope: !2282)
!2312 = !DILocation(line: 515, column: 13, scope: !556)
!2313 = !DILocation(line: 512, column: 34, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !555, file: !1, line: 511, column: 16)
!2315 = !DILocation(line: 512, column: 29, scope: !2314)
!2316 = !DILocation(line: 512, column: 23, scope: !2314)
!2317 = !DILocation(line: 512, column: 27, scope: !2314)
!2318 = !DILocation(line: 513, column: 22, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!2320 = !DILocation(line: 513, column: 13, scope: !2314)
!2321 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 528, column: 21, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 527, column: 28)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 527, column: 17)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !1, line: 526, column: 41)
!2326 = distinct !DILexicalBlock(scope: !561, file: !1, line: 526, column: 13)
!2327 = !DILocation(line: 525, column: 14, scope: !542)
!2328 = !DILocation(line: 564, column: 36, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 559, column: 36)
!2330 = distinct !DILexicalBlock(scope: !561, file: !1, line: 559, column: 13)
!2331 = !DILocation(line: 567, column: 9, scope: !2329)
!2332 = !DILocation(line: 525, column: 5, scope: !542)
!2333 = !DILocation(line: 526, column: 24, scope: !2326)
!2334 = !DILocation(line: 526, column: 13, scope: !561)
!2335 = !DILocation(line: 527, column: 19, scope: !2324)
!2336 = !DILocation(line: 527, column: 17, scope: !2325)
!2337 = !DILocation(line: 532, column: 16, scope: !2325)
!2338 = !DILocation(line: 532, column: 25, scope: !2325)
!2339 = !DILocation(line: 534, column: 25, scope: !2325)
!2340 = !DILocation(line: 534, column: 35, scope: !2325)
!2341 = !DILocation(line: 539, column: 9, scope: !2325)
!2342 = !DILocation(line: 543, column: 28, scope: !560)
!2343 = !DILocation(line: 543, column: 24, scope: !560)
!2344 = !DILocation(line: 545, column: 30, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !560, file: !1, line: 545, column: 17)
!2346 = !DILocation(line: 545, column: 19, scope: !2345)
!2347 = !DILocation(line: 545, column: 17, scope: !560)
!2348 = !DILocation(line: 547, column: 34, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !560, file: !1, line: 547, column: 17)
!2350 = !DILocation(line: 547, column: 19, scope: !2349)
!2351 = !DILocation(line: 547, column: 17, scope: !560)
!2352 = !DILocation(line: 550, column: 20, scope: !560)
!2353 = !DILocation(line: 542, column: 24, scope: !560)
!2354 = !DILocation(line: 551, column: 49, scope: !560)
!2355 = !DILocation(line: 551, column: 21, scope: !560)
!2356 = !DILocation(line: 542, column: 31, scope: !560)
!2357 = !DILocation(line: 553, column: 24, scope: !560)
!2358 = !DILocation(line: 555, column: 13, scope: !560)
!2359 = !DILocation(line: 552, column: 23, scope: !560)
!2360 = !DILocation(line: 554, column: 15, scope: !560)
!2361 = !DILocation(line: 559, column: 23, scope: !2330)
!2362 = !DILocation(line: 559, column: 13, scope: !561)
!2363 = !DILocation(line: 556, column: 34, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !560, file: !1, line: 555, column: 16)
!2365 = !DILocation(line: 556, column: 29, scope: !2364)
!2366 = !DILocation(line: 556, column: 23, scope: !2364)
!2367 = !DILocation(line: 556, column: 27, scope: !2364)
!2368 = !DILocation(line: 557, column: 22, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !560, file: !1, discriminator: 1)
!2370 = !DILocation(line: 557, column: 13, scope: !2364)
!2371 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !2273)
!2372 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !2273)
!2373 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 91, column: 45)
!2374 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !2273)
!2375 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !2273)
!2376 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !2273)
!2377 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !2273)
!2378 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !2273)
!2379 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !2273)
!2380 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !2273)
!2381 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !2273)
!2382 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !2273)
!2383 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !2273)
!2384 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !2273)
!2385 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !2273)
!2386 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !2273)
!2387 = !DILocation(line: 484, column: 21, scope: !2274)
!2388 = !DILocation(line: 485, column: 23, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 485, column: 21)
!2390 = !DILocation(line: 485, column: 21, scope: !2274)
!2391 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !2322)
!2392 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !2322)
!2393 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !2322)
!2394 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !2322)
!2395 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !2322)
!2396 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !2322)
!2397 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !2322)
!2398 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !2322)
!2399 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !2322)
!2400 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !2322)
!2401 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !2322)
!2402 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !2322)
!2403 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !2322)
!2404 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !2322)
!2405 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !2322)
!2406 = !DILocation(line: 528, column: 21, scope: !2323)
!2407 = !DILocation(line: 529, column: 23, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 529, column: 21)
!2409 = !DILocation(line: 529, column: 21, scope: !2323)
!2410 = !DILocation(line: 571, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !542, file: !1, line: 571, column: 9)
!2412 = !DILocation(line: 571, column: 9, scope: !542)
!2413 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 572, column: 9, scope: !2411)
!2415 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2414)
!2416 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2414)
!2417 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2414)
!2418 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2414)
!2419 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2414)
!2420 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2414)
!2421 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2414)
!2422 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2414)
!2423 = !DILocation(line: 572, column: 9, scope: !2411)
!2424 = !DILocation(line: 573, column: 22, scope: !542)
!2425 = !DILocation(line: 574, column: 23, scope: !542)
!2426 = !DILocation(line: 575, column: 22, scope: !542)
!2427 = !DILocation(line: 576, column: 23, scope: !542)
!2428 = !DILocation(line: 578, column: 5, scope: !542)
!2429 = !DILocation(line: 579, column: 1, scope: !542)
!2430 = !DILocation(line: 218, column: 28, scope: !570)
!2431 = !DILocation(line: 218, column: 45, scope: !570)
!2432 = !DILocation(line: 223, column: 9, scope: !2126)
!2433 = !DILocation(line: 230, column: 19, scope: !570)
!2434 = !DILocation(line: 223, column: 24, scope: !2126)
!2435 = !DILocation(line: 223, column: 9, scope: !570)
!2436 = !DILocation(line: 224, column: 25, scope: !2129)
!2437 = !DILocation(line: 224, column: 9, scope: !2129)
!2438 = !DILocation(line: 225, column: 9, scope: !2129)
!2439 = !DILocation(line: 228, column: 42, scope: !570)
!2440 = !DILocation(line: 228, column: 19, scope: !570)
!2441 = !DILocation(line: 242, column: 32, scope: !2135)
!2442 = !DILocation(line: 228, column: 12, scope: !570)
!2443 = !DILocation(line: 220, column: 15, scope: !570)
!2444 = !DILocation(line: 229, column: 21, scope: !570)
!2445 = !DILocation(line: 234, column: 13, scope: !2136)
!2446 = !DILocation(line: 231, column: 12, scope: !570)
!2447 = !DILocation(line: 231, column: 17, scope: !570)
!2448 = !DILocation(line: 233, column: 26, scope: !2138)
!2449 = !DILocation(line: 233, column: 9, scope: !570)
!2450 = !DILocation(line: 234, column: 28, scope: !2136)
!2451 = !DILocation(line: 234, column: 13, scope: !2137)
!2452 = !DILocation(line: 238, column: 30, scope: !2150)
!2453 = !DILocation(line: 240, column: 9, scope: !2150)
!2454 = !DILocation(line: 242, column: 43, scope: !2135)
!2455 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 243, column: 13, scope: !2135)
!2457 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2456)
!2458 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2456)
!2459 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2456)
!2460 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2456)
!2461 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2456)
!2462 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2456)
!2463 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2456)
!2464 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2456)
!2465 = !DILocation(line: 243, column: 13, scope: !2135)
!2466 = !DILocation(line: 246, column: 30, scope: !2135)
!2467 = !DILocation(line: 247, column: 30, scope: !2135)
!2468 = !DILocation(line: 251, column: 1, scope: !570)
!2469 = !DILocation(line: 323, column: 27, scope: !585)
!2470 = !DILocation(line: 323, column: 44, scope: !585)
!2471 = !DILocation(line: 328, column: 9, scope: !593)
!2472 = !DILocation(line: 328, column: 27, scope: !593)
!2473 = !DILocation(line: 328, column: 9, scope: !585)
!2474 = !DILocation(line: 330, column: 23, scope: !592)
!2475 = !DILocation(line: 330, column: 19, scope: !592)
!2476 = !DILocation(line: 331, column: 15, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !592, file: !1, line: 331, column: 13)
!2478 = !DILocation(line: 331, column: 13, scope: !592)
!2479 = !DILocation(line: 333, column: 18, scope: !592)
!2480 = !DILocation(line: 329, column: 19, scope: !592)
!2481 = !DILocation(line: 334, column: 9, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!2483 = !DILocation(line: 334, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !596, file: !1, line: 334, column: 9)
!2485 = !DILocation(line: 334, column: 9, scope: !596)
!2486 = !DILocation(line: 334, column: 9, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2484, file: !1, discriminator: 3)
!2488 = !DILocation(line: 339, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !585, file: !1, line: 339, column: 9)
!2490 = !DILocation(line: 339, column: 24, scope: !2489)
!2491 = !DILocation(line: 339, column: 9, scope: !585)
!2492 = !DILocation(line: 342, column: 16, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 339, column: 30)
!2494 = !DILocation(line: 342, column: 26, scope: !2493)
!2495 = !DILocation(line: 344, column: 5, scope: !2493)
!2496 = !DILocation(line: 346, column: 10, scope: !585)
!2497 = !DILocation(line: 325, column: 15, scope: !585)
!2498 = !DILocation(line: 347, column: 12, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !585, file: !1, line: 347, column: 9)
!2500 = !DILocation(line: 347, column: 9, scope: !585)
!2501 = !DILocation(line: 350, column: 16, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !585, file: !1, line: 350, column: 9)
!2503 = !DILocation(line: 350, column: 23, scope: !2502)
!2504 = !DILocation(line: 313, column: 20, scope: !614, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 351, column: 16, scope: !2502)
!2506 = !DILocation(line: 313, column: 37, scope: !614, inlinedAt: !2505)
!2507 = !DILocation(line: 350, column: 9, scope: !585)
!2508 = !DILocation(line: 325, column: 20, scope: !585)
!2509 = !DILocation(line: 353, column: 5, scope: !585)
!2510 = !DILocation(line: 354, column: 16, scope: !600)
!2511 = !DILocation(line: 355, column: 20, scope: !599)
!2512 = !DILocation(line: 362, column: 34, scope: !598)
!2513 = !DILocation(line: 228, column: 42, scope: !570, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 372, column: 9, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 2)
!2516 = !DILocation(line: 228, column: 19, scope: !570, inlinedAt: !2514)
!2517 = !DILocation(line: 246, column: 30, scope: !2135, inlinedAt: !2514)
!2518 = !DILocation(line: 238, column: 30, scope: !2150, inlinedAt: !2514)
!2519 = !DILocation(line: 309, column: 28, scope: !614, inlinedAt: !2505)
!2520 = !DILocation(line: 311, column: 15, scope: !614, inlinedAt: !2505)
!2521 = !DILocation(line: 313, column: 5, scope: !614, inlinedAt: !2505)
!2522 = !DILocation(line: 314, column: 9, scope: !2523, inlinedAt: !2505)
!2523 = distinct !DILexicalBlock(scope: !619, file: !1, line: 314, column: 9)
!2524 = !DILocation(line: 351, column: 16, scope: !2502)
!2525 = !DILocation(line: 314, column: 9, scope: !619, inlinedAt: !2505)
!2526 = !DILocation(line: 314, column: 9, scope: !2527, inlinedAt: !2505)
!2527 = !DILexicalBlockFile(scope: !2523, file: !1, discriminator: 3)
!2528 = !DILocation(line: 316, column: 5, scope: !2529, inlinedAt: !2505)
!2529 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 1)
!2530 = !DILocation(line: 316, column: 5, scope: !2531, inlinedAt: !2505)
!2531 = distinct !DILexicalBlock(scope: !622, file: !1, line: 316, column: 5)
!2532 = !DILocation(line: 316, column: 5, scope: !622, inlinedAt: !2505)
!2533 = !DILocation(line: 316, column: 5, scope: !2534, inlinedAt: !2505)
!2534 = !DILexicalBlockFile(scope: !2531, file: !1, discriminator: 3)
!2535 = !DILocation(line: 317, column: 9, scope: !2536, inlinedAt: !2505)
!2536 = distinct !DILexicalBlock(scope: !614, file: !1, line: 317, column: 9)
!2537 = !DILocation(line: 317, column: 9, scope: !614, inlinedAt: !2505)
!2538 = !DILocation(line: 319, column: 5, scope: !614, inlinedAt: !2505)
!2539 = !DILocation(line: 354, column: 21, scope: !600)
!2540 = !DILocation(line: 355, column: 31, scope: !599)
!2541 = !DILocation(line: 355, column: 13, scope: !600)
!2542 = !DILocation(line: 371, column: 16, scope: !600)
!2543 = !DILocation(line: 356, column: 33, scope: !598)
!2544 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 356, column: 24, scope: !598)
!2546 = !DILocation(line: 91, column: 13, scope: !2272, inlinedAt: !2545)
!2547 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !2545)
!2548 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !2545)
!2549 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !2545)
!2550 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !2545)
!2551 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !2545)
!2552 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !2545)
!2553 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !2545)
!2554 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !2545)
!2555 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !2545)
!2556 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !2545)
!2557 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !2545)
!2558 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !2545)
!2559 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !2545)
!2560 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !2545)
!2561 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !2545)
!2562 = !DILocation(line: 356, column: 24, scope: !598)
!2563 = !DILocation(line: 356, column: 20, scope: !598)
!2564 = !DILocation(line: 357, column: 19, scope: !604)
!2565 = !DILocation(line: 357, column: 17, scope: !598)
!2566 = !DILocation(line: 358, column: 17, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 1)
!2568 = !DILocation(line: 358, column: 17, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !602, file: !1, line: 358, column: 17)
!2570 = !DILocation(line: 358, column: 17, scope: !602)
!2571 = !DILocation(line: 358, column: 17, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2569, file: !1, discriminator: 3)
!2573 = !DILocation(line: 359, column: 17, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 1)
!2575 = !DILocation(line: 359, column: 17, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !606, file: !1, line: 359, column: 17)
!2577 = !DILocation(line: 359, column: 17, scope: !606)
!2578 = !DILocation(line: 359, column: 17, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2576, file: !1, discriminator: 3)
!2580 = !DILocation(line: 362, column: 25, scope: !598)
!2581 = !DILocation(line: 364, column: 20, scope: !598)
!2582 = !DILocation(line: 364, column: 32, scope: !598)
!2583 = !DILocation(line: 364, column: 42, scope: !598)
!2584 = !DILocation(line: 365, column: 31, scope: !598)
!2585 = !DILocation(line: 367, column: 31, scope: !598)
!2586 = !DILocation(line: 370, column: 26, scope: !600)
!2587 = !DILocation(line: 369, column: 23, scope: !600)
!2588 = !DILocation(line: 372, column: 9, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!2590 = !DILocation(line: 371, column: 9, scope: !600)
!2591 = !DILocation(line: 371, column: 52, scope: !600)
!2592 = !DILocation(line: 372, column: 9, scope: !609)
!2593 = !DILocation(line: 353, column: 20, scope: !585)
!2594 = !DILocation(line: 353, column: 37, scope: !585)
!2595 = !DILocation(line: 218, column: 28, scope: !570, inlinedAt: !2514)
!2596 = !DILocation(line: 218, column: 45, scope: !570, inlinedAt: !2514)
!2597 = !DILocation(line: 223, column: 24, scope: !2126, inlinedAt: !2514)
!2598 = !DILocation(line: 223, column: 9, scope: !570, inlinedAt: !2514)
!2599 = !DILocation(line: 224, column: 25, scope: !2129, inlinedAt: !2514)
!2600 = !DILocation(line: 224, column: 9, scope: !2129, inlinedAt: !2514)
!2601 = !DILocation(line: 225, column: 9, scope: !2129, inlinedAt: !2514)
!2602 = !DILocation(line: 242, column: 32, scope: !2135, inlinedAt: !2514)
!2603 = !DILocation(line: 228, column: 12, scope: !570, inlinedAt: !2514)
!2604 = !DILocation(line: 220, column: 15, scope: !570, inlinedAt: !2514)
!2605 = !DILocation(line: 229, column: 21, scope: !570, inlinedAt: !2514)
!2606 = !DILocation(line: 230, column: 19, scope: !570, inlinedAt: !2514)
!2607 = !DILocation(line: 231, column: 17, scope: !570, inlinedAt: !2514)
!2608 = !DILocation(line: 233, column: 26, scope: !2138, inlinedAt: !2514)
!2609 = !DILocation(line: 233, column: 9, scope: !570, inlinedAt: !2514)
!2610 = !DILocation(line: 234, column: 28, scope: !2136, inlinedAt: !2514)
!2611 = !DILocation(line: 234, column: 13, scope: !2137, inlinedAt: !2514)
!2612 = !DILocation(line: 240, column: 9, scope: !2150, inlinedAt: !2514)
!2613 = !DILocation(line: 242, column: 43, scope: !2135, inlinedAt: !2514)
!2614 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2514)
!2616 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2615)
!2617 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2615)
!2618 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2615)
!2619 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2615)
!2620 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2615)
!2621 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2615)
!2622 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2615)
!2623 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2615)
!2624 = !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2514)
!2625 = !DILocation(line: 247, column: 30, scope: !2135, inlinedAt: !2514)
!2626 = !DILocation(line: 372, column: 9, scope: !2515)
!2627 = !DILocation(line: 372, column: 9, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 3)
!2629 = !DILocation(line: 372, column: 9, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !611, file: !1, line: 372, column: 9)
!2631 = !DILocation(line: 372, column: 9, scope: !611)
!2632 = !DILocation(line: 372, column: 9, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2630, file: !1, discriminator: 5)
!2634 = !DILocation(line: 374, column: 5, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!2636 = !DILocation(line: 374, column: 5, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !613, file: !1, line: 374, column: 5)
!2638 = !DILocation(line: 374, column: 5, scope: !613)
!2639 = !DILocation(line: 374, column: 5, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2637, file: !1, discriminator: 3)
!2641 = !DILocation(line: 375, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !585, file: !1, line: 375, column: 9)
!2643 = !DILocation(line: 375, column: 9, scope: !585)
!2644 = !DILocation(line: 377, column: 5, scope: !585)
!2645 = !DILocation(line: 378, column: 1, scope: !585)
!2646 = !DILocation(line: 181, column: 24, scope: !658)
!2647 = !DILocation(line: 181, column: 41, scope: !658)
!2648 = !DILocation(line: 186, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !658, file: !1, line: 186, column: 9)
!2650 = !DILocation(line: 192, column: 19, scope: !658)
!2651 = !DILocation(line: 186, column: 24, scope: !2649)
!2652 = !DILocation(line: 186, column: 9, scope: !658)
!2653 = !DILocation(line: 187, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !1, line: 186, column: 30)
!2655 = !DILocation(line: 187, column: 9, scope: !2654)
!2656 = !DILocation(line: 188, column: 9, scope: !2654)
!2657 = !DILocation(line: 190, column: 43, scope: !658)
!2658 = !DILocation(line: 190, column: 19, scope: !658)
!2659 = !DILocation(line: 203, column: 32, scope: !1513)
!2660 = !DILocation(line: 190, column: 12, scope: !658)
!2661 = !DILocation(line: 183, column: 15, scope: !658)
!2662 = !DILocation(line: 196, column: 13, scope: !1509)
!2663 = !DILocation(line: 191, column: 22, scope: !658)
!2664 = !DILocation(line: 195, column: 27, scope: !1511)
!2665 = !DILocation(line: 195, column: 9, scope: !658)
!2666 = !DILocation(line: 196, column: 28, scope: !1509)
!2667 = !DILocation(line: 196, column: 13, scope: !1510)
!2668 = !DILocation(line: 200, column: 20, scope: !1508)
!2669 = !DILocation(line: 200, column: 30, scope: !1508)
!2670 = !DILocation(line: 202, column: 9, scope: !1508)
!2671 = !DILocation(line: 203, column: 44, scope: !1513)
!2672 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 205, column: 13, scope: !1513)
!2674 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2673)
!2675 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2673)
!2676 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2673)
!2677 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2673)
!2678 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2673)
!2679 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2673)
!2680 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2673)
!2681 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2673)
!2682 = !DILocation(line: 205, column: 13, scope: !1513)
!2683 = !DILocation(line: 208, column: 31, scope: !1513)
!2684 = !DILocation(line: 209, column: 31, scope: !1513)
!2685 = !DILocation(line: 213, column: 1, scope: !658)
!2686 = !DILocation(line: 256, column: 27, scope: !716)
!2687 = !DILocation(line: 256, column: 44, scope: !716)
!2688 = !DILocation(line: 258, column: 12, scope: !716)
!2689 = !DILocation(line: 258, column: 17, scope: !716)
!2690 = !DILocation(line: 259, column: 16, scope: !722)
!2691 = !DILocation(line: 259, column: 27, scope: !722)
!2692 = !DILocation(line: 259, column: 9, scope: !716)
!2693 = !DILocation(line: 273, column: 12, scope: !716)
!2694 = !DILocation(line: 271, column: 5, scope: !716)
!2695 = !DILocation(line: 260, column: 29, scope: !721)
!2696 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 260, column: 20, scope: !721)
!2698 = !DILocation(line: 91, column: 13, scope: !2272, inlinedAt: !2697)
!2699 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !2697)
!2700 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !2697)
!2701 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !2697)
!2702 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !2697)
!2703 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !2697)
!2704 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !2697)
!2705 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !2697)
!2706 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !2697)
!2707 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !2697)
!2708 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !2697)
!2709 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !2697)
!2710 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !2697)
!2711 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !2697)
!2712 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !2697)
!2713 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !2697)
!2714 = !DILocation(line: 260, column: 20, scope: !721)
!2715 = !DILocation(line: 260, column: 16, scope: !721)
!2716 = !DILocation(line: 261, column: 15, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !721, file: !1, line: 261, column: 13)
!2718 = !DILocation(line: 261, column: 13, scope: !721)
!2719 = !DILocation(line: 263, column: 30, scope: !721)
!2720 = !DILocation(line: 263, column: 21, scope: !721)
!2721 = !DILocation(line: 265, column: 16, scope: !721)
!2722 = !DILocation(line: 265, column: 28, scope: !721)
!2723 = !DILocation(line: 265, column: 38, scope: !721)
!2724 = !DILocation(line: 266, column: 27, scope: !721)
!2725 = !DILocation(line: 268, column: 27, scope: !721)
!2726 = !DILocation(line: 270, column: 5, scope: !716)
!2727 = !DILocation(line: 271, column: 19, scope: !716)
!2728 = !DILocation(line: 274, column: 5, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !725, file: !1, discriminator: 1)
!2730 = !DILocation(line: 272, column: 22, scope: !716)
!2731 = !DILocation(line: 273, column: 5, scope: !716)
!2732 = !DILocation(line: 273, column: 48, scope: !716)
!2733 = !DILocation(line: 274, column: 5, scope: !725)
!2734 = !DILocation(line: 218, column: 28, scope: !570, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 274, column: 5, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 2)
!2737 = !DILocation(line: 218, column: 45, scope: !570, inlinedAt: !2735)
!2738 = !DILocation(line: 223, column: 24, scope: !2126, inlinedAt: !2735)
!2739 = !DILocation(line: 223, column: 9, scope: !570, inlinedAt: !2735)
!2740 = !DILocation(line: 224, column: 25, scope: !2129, inlinedAt: !2735)
!2741 = !DILocation(line: 224, column: 9, scope: !2129, inlinedAt: !2735)
!2742 = !DILocation(line: 225, column: 9, scope: !2129, inlinedAt: !2735)
!2743 = !DILocation(line: 228, column: 42, scope: !570, inlinedAt: !2735)
!2744 = !DILocation(line: 228, column: 19, scope: !570, inlinedAt: !2735)
!2745 = !DILocation(line: 242, column: 32, scope: !2135, inlinedAt: !2735)
!2746 = !DILocation(line: 228, column: 12, scope: !570, inlinedAt: !2735)
!2747 = !DILocation(line: 220, column: 15, scope: !570, inlinedAt: !2735)
!2748 = !DILocation(line: 229, column: 21, scope: !570, inlinedAt: !2735)
!2749 = !DILocation(line: 230, column: 19, scope: !570, inlinedAt: !2735)
!2750 = !DILocation(line: 231, column: 17, scope: !570, inlinedAt: !2735)
!2751 = !DILocation(line: 233, column: 26, scope: !2138, inlinedAt: !2735)
!2752 = !DILocation(line: 233, column: 9, scope: !570, inlinedAt: !2735)
!2753 = !DILocation(line: 234, column: 28, scope: !2136, inlinedAt: !2735)
!2754 = !DILocation(line: 234, column: 13, scope: !2137, inlinedAt: !2735)
!2755 = !DILocation(line: 238, column: 30, scope: !2150, inlinedAt: !2735)
!2756 = !DILocation(line: 240, column: 9, scope: !2150, inlinedAt: !2735)
!2757 = !DILocation(line: 242, column: 43, scope: !2135, inlinedAt: !2735)
!2758 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2735)
!2760 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2759)
!2761 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2759)
!2762 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2759)
!2763 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2759)
!2764 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2759)
!2765 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2759)
!2766 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2759)
!2767 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2759)
!2768 = !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !2735)
!2769 = !DILocation(line: 246, column: 30, scope: !2135, inlinedAt: !2735)
!2770 = !DILocation(line: 247, column: 30, scope: !2135, inlinedAt: !2735)
!2771 = !DILocation(line: 274, column: 5, scope: !2736)
!2772 = !DILocation(line: 274, column: 5, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !727, file: !1, discriminator: 3)
!2774 = !DILocation(line: 274, column: 5, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !727, file: !1, line: 274, column: 5)
!2776 = !DILocation(line: 274, column: 5, scope: !727)
!2777 = !DILocation(line: 274, column: 5, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2775, file: !1, discriminator: 5)
!2779 = !DILocation(line: 275, column: 5, scope: !716)
!2780 = !DILocation(line: 276, column: 1, scope: !716)
!2781 = !DILocation(line: 281, column: 31, scope: !728)
!2782 = !DILocation(line: 281, column: 48, scope: !728)
!2783 = !DILocation(line: 283, column: 12, scope: !728)
!2784 = !DILocation(line: 283, column: 17, scope: !728)
!2785 = !DILocation(line: 284, column: 16, scope: !734)
!2786 = !DILocation(line: 284, column: 26, scope: !734)
!2787 = !DILocation(line: 284, column: 9, scope: !728)
!2788 = !DILocation(line: 298, column: 12, scope: !728)
!2789 = !DILocation(line: 296, column: 5, scope: !728)
!2790 = !DILocation(line: 285, column: 29, scope: !733)
!2791 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 285, column: 20, scope: !733)
!2793 = !DILocation(line: 91, column: 13, scope: !2272, inlinedAt: !2792)
!2794 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !2792)
!2795 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !2792)
!2796 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !2792)
!2797 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !2792)
!2798 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !2792)
!2799 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !2792)
!2800 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !2792)
!2801 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !2792)
!2802 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !2792)
!2803 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !2792)
!2804 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !2792)
!2805 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !2792)
!2806 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !2792)
!2807 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !2792)
!2808 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !2792)
!2809 = !DILocation(line: 285, column: 20, scope: !733)
!2810 = !DILocation(line: 285, column: 16, scope: !733)
!2811 = !DILocation(line: 286, column: 15, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !733, file: !1, line: 286, column: 13)
!2813 = !DILocation(line: 286, column: 13, scope: !733)
!2814 = !DILocation(line: 288, column: 31, scope: !733)
!2815 = !DILocation(line: 288, column: 12, scope: !733)
!2816 = !DILocation(line: 288, column: 22, scope: !733)
!2817 = !DILocation(line: 290, column: 16, scope: !733)
!2818 = !DILocation(line: 290, column: 27, scope: !733)
!2819 = !DILocation(line: 290, column: 36, scope: !733)
!2820 = !DILocation(line: 291, column: 26, scope: !733)
!2821 = !DILocation(line: 293, column: 26, scope: !733)
!2822 = !DILocation(line: 295, column: 5, scope: !728)
!2823 = !DILocation(line: 296, column: 19, scope: !728)
!2824 = !DILocation(line: 299, column: 5, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !737, file: !1, discriminator: 1)
!2826 = !DILocation(line: 297, column: 21, scope: !728)
!2827 = !DILocation(line: 298, column: 5, scope: !728)
!2828 = !DILocation(line: 298, column: 46, scope: !728)
!2829 = !DILocation(line: 299, column: 5, scope: !737)
!2830 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 299, column: 5, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 2)
!2833 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !2831)
!2834 = !DILocation(line: 186, column: 24, scope: !2649, inlinedAt: !2831)
!2835 = !DILocation(line: 186, column: 9, scope: !658, inlinedAt: !2831)
!2836 = !DILocation(line: 187, column: 25, scope: !2654, inlinedAt: !2831)
!2837 = !DILocation(line: 187, column: 9, scope: !2654, inlinedAt: !2831)
!2838 = !DILocation(line: 188, column: 9, scope: !2654, inlinedAt: !2831)
!2839 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !2831)
!2840 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !2831)
!2841 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !2831)
!2842 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !2831)
!2843 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !2831)
!2844 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !2831)
!2845 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !2831)
!2846 = !DILocation(line: 193, column: 17, scope: !658, inlinedAt: !2831)
!2847 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !2831)
!2848 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !2831)
!2849 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !2831)
!2850 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !2831)
!2851 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !2831)
!2852 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !2831)
!2853 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !2831)
!2854 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !2831)
!2856 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2855)
!2857 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2855)
!2858 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2855)
!2859 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2855)
!2860 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2855)
!2861 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2855)
!2862 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2855)
!2863 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2855)
!2864 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !2831)
!2865 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !2831)
!2866 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !2831)
!2867 = !DILocation(line: 299, column: 5, scope: !2832)
!2868 = !DILocation(line: 299, column: 5, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 3)
!2870 = !DILocation(line: 299, column: 5, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !739, file: !1, line: 299, column: 5)
!2872 = !DILocation(line: 299, column: 5, scope: !739)
!2873 = !DILocation(line: 299, column: 5, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2871, file: !1, discriminator: 5)
!2875 = !DILocation(line: 300, column: 5, scope: !728)
!2876 = !DILocation(line: 301, column: 1, scope: !728)
!2877 = !DILocation(line: 832, column: 32, scope: !740)
!2878 = !DILocation(line: 720, column: 26, scope: !651, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 834, column: 5, scope: !740)
!2880 = !DILocation(line: 724, column: 12, scope: !1500, inlinedAt: !2879)
!2881 = !DILocation(line: 724, column: 5, scope: !651, inlinedAt: !2879)
!2882 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !2879)
!2884 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !2883)
!2885 = !DILocation(line: 200, column: 20, scope: !1508, inlinedAt: !2883)
!2886 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !2883)
!2887 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !2883)
!2888 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !2883)
!2889 = !DILocation(line: 834, column: 5, scope: !740)
!2890 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !2883)
!2891 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !2883)
!2892 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !2883)
!2893 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !2883)
!2894 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !2883)
!2895 = !DILocation(line: 196, column: 13, scope: !1509, inlinedAt: !2883)
!2896 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !2883)
!2897 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !2883)
!2898 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !2883)
!2899 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !2883)
!2900 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !2883)
!2901 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !2883)
!2902 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !2883)
!2903 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !2883)
!2905 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !2904)
!2906 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !2904)
!2907 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !2904)
!2908 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !2904)
!2909 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !2904)
!2910 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !2904)
!2911 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !2904)
!2912 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !2904)
!2913 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !2883)
!2914 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !2883)
!2915 = !DILocation(line: 725, column: 16, scope: !657, inlinedAt: !2879)
!2916 = !DILocation(line: 722, column: 15, scope: !651, inlinedAt: !2879)
!2917 = !DILocation(line: 727, column: 9, scope: !1553, inlinedAt: !2879)
!2918 = !DILocation(line: 727, column: 9, scope: !1555, inlinedAt: !2879)
!2919 = !DILocation(line: 727, column: 9, scope: !656, inlinedAt: !2879)
!2920 = !DILocation(line: 727, column: 9, scope: !1558, inlinedAt: !2879)
!2921 = !DILocation(line: 835, column: 5, scope: !740)
!2922 = !DILocation(line: 879, column: 22, scope: !743)
!2923 = !DILocation(line: 881, column: 33, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !743, file: !1, line: 881, column: 9)
!2925 = !DILocation(line: 881, column: 40, scope: !2924)
!2926 = !DILocation(line: 882, column: 51, scope: !2924)
!2927 = !DILocation(line: 881, column: 9, scope: !743)
!2928 = !DILocation(line: 882, column: 16, scope: !2924)
!2929 = !DILocation(line: 882, column: 9, scope: !2924)
!2930 = !DILocation(line: 884, column: 16, scope: !2924)
!2931 = !DILocation(line: 884, column: 9, scope: !2924)
!2932 = !DILocation(line: 886, column: 1, scope: !743)
!2933 = !DILocation(line: 639, column: 26, scope: !746)
!2934 = !DILocation(line: 639, column: 43, scope: !746)
!2935 = !DILocation(line: 641, column: 12, scope: !746)
!2936 = !DILocation(line: 642, column: 16, scope: !746)
!2937 = !DILocation(line: 643, column: 20, scope: !746)
!2938 = !DILocation(line: 643, column: 16, scope: !746)
!2939 = !DILocation(line: 645, column: 16, scope: !746)
!2940 = !DILocation(line: 647, column: 31, scope: !746)
!2941 = !DILocation(line: 647, column: 10, scope: !746)
!2942 = !DILocation(line: 644, column: 16, scope: !746)
!2943 = !DILocation(line: 650, column: 17, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !1, line: 650, column: 5)
!2945 = distinct !DILexicalBlock(scope: !746, file: !1, line: 650, column: 5)
!2946 = !DILocation(line: 650, column: 5, scope: !2945)
!2947 = !DILocation(line: 642, column: 31, scope: !746)
!2948 = !DILocation(line: 641, column: 23, scope: !746)
!2949 = !DILocation(line: 652, column: 16, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !1, line: 650, column: 27)
!2951 = !DILocation(line: 646, column: 15, scope: !746)
!2952 = !DILocation(line: 653, column: 15, scope: !2950)
!2953 = !DILocation(line: 648, column: 9, scope: !746)
!2954 = !DILocation(line: 654, column: 17, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 654, column: 13)
!2956 = !DILocation(line: 654, column: 13, scope: !2950)
!2957 = !DILocation(line: 655, column: 18, scope: !2955)
!2958 = !DILocation(line: 655, column: 13, scope: !2955)
!2959 = !DILocation(line: 656, column: 22, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !1, line: 656, column: 18)
!2961 = !DILocation(line: 656, column: 18, scope: !2955)
!2962 = !DILocation(line: 659, column: 35, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 659, column: 13)
!2964 = !DILocation(line: 659, column: 25, scope: !2963)
!2965 = !DILocation(line: 659, column: 13, scope: !2950)
!2966 = !DILocation(line: 660, column: 29, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !1, line: 659, column: 42)
!2968 = !DILocation(line: 660, column: 13, scope: !2967)
!2969 = !DILocation(line: 662, column: 13, scope: !2967)
!2970 = !DILocation(line: 666, column: 14, scope: !2950)
!2971 = !DILocation(line: 667, column: 19, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 667, column: 13)
!2973 = !DILocation(line: 667, column: 13, scope: !2950)
!2974 = !DILocation(line: 668, column: 20, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !1, line: 667, column: 32)
!2976 = !DILocation(line: 670, column: 9, scope: !2975)
!2977 = !DILocation(line: 650, column: 23, scope: !2944)
!2978 = !DILocation(line: 672, column: 12, scope: !746)
!2979 = !DILocation(line: 672, column: 5, scope: !746)
!2980 = !DILocation(line: 673, column: 1, scope: !746)
!2981 = !DILocation(line: 384, column: 31, scope: !758)
!2982 = !DILocation(line: 384, column: 48, scope: !758)
!2983 = !DILocation(line: 389, column: 9, scope: !766)
!2984 = !DILocation(line: 389, column: 27, scope: !766)
!2985 = !DILocation(line: 389, column: 9, scope: !758)
!2986 = !DILocation(line: 391, column: 23, scope: !765)
!2987 = !DILocation(line: 391, column: 19, scope: !765)
!2988 = !DILocation(line: 392, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !765, file: !1, line: 392, column: 13)
!2990 = !DILocation(line: 392, column: 13, scope: !765)
!2991 = !DILocation(line: 394, column: 18, scope: !765)
!2992 = !DILocation(line: 390, column: 19, scope: !765)
!2993 = !DILocation(line: 395, column: 9, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !769, file: !1, discriminator: 1)
!2995 = !DILocation(line: 395, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !769, file: !1, line: 395, column: 9)
!2997 = !DILocation(line: 395, column: 9, scope: !769)
!2998 = !DILocation(line: 395, column: 9, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2996, file: !1, discriminator: 3)
!3000 = !DILocation(line: 400, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !758, file: !1, line: 400, column: 9)
!3002 = !DILocation(line: 400, column: 24, scope: !3001)
!3003 = !DILocation(line: 400, column: 9, scope: !758)
!3004 = !DILocation(line: 403, column: 16, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 400, column: 30)
!3006 = !DILocation(line: 403, column: 26, scope: !3005)
!3007 = !DILocation(line: 405, column: 5, scope: !3005)
!3008 = !DILocation(line: 407, column: 10, scope: !758)
!3009 = !DILocation(line: 386, column: 15, scope: !758)
!3010 = !DILocation(line: 408, column: 12, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !758, file: !1, line: 408, column: 9)
!3012 = !DILocation(line: 408, column: 9, scope: !758)
!3013 = !DILocation(line: 411, column: 16, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !758, file: !1, line: 411, column: 9)
!3015 = !DILocation(line: 411, column: 23, scope: !3014)
!3016 = !DILocation(line: 313, column: 20, scope: !614, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 412, column: 16, scope: !3014)
!3018 = !DILocation(line: 313, column: 37, scope: !614, inlinedAt: !3017)
!3019 = !DILocation(line: 411, column: 9, scope: !758)
!3020 = !DILocation(line: 386, column: 20, scope: !758)
!3021 = !DILocation(line: 414, column: 5, scope: !758)
!3022 = !DILocation(line: 415, column: 16, scope: !773)
!3023 = !DILocation(line: 416, column: 20, scope: !772)
!3024 = !DILocation(line: 423, column: 35, scope: !771)
!3025 = !DILocation(line: 190, column: 43, scope: !658, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 433, column: 9, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !781, file: !1, discriminator: 2)
!3028 = !DILocation(line: 190, column: 19, scope: !658, inlinedAt: !3026)
!3029 = !DILocation(line: 208, column: 31, scope: !1513, inlinedAt: !3026)
!3030 = !DILocation(line: 191, column: 22, scope: !658, inlinedAt: !3026)
!3031 = !DILocation(line: 200, column: 30, scope: !1508, inlinedAt: !3026)
!3032 = !DILocation(line: 309, column: 28, scope: !614, inlinedAt: !3017)
!3033 = !DILocation(line: 311, column: 15, scope: !614, inlinedAt: !3017)
!3034 = !DILocation(line: 313, column: 5, scope: !614, inlinedAt: !3017)
!3035 = !DILocation(line: 314, column: 9, scope: !2523, inlinedAt: !3017)
!3036 = !DILocation(line: 412, column: 16, scope: !3014)
!3037 = !DILocation(line: 314, column: 9, scope: !619, inlinedAt: !3017)
!3038 = !DILocation(line: 314, column: 9, scope: !2527, inlinedAt: !3017)
!3039 = !DILocation(line: 316, column: 5, scope: !2529, inlinedAt: !3017)
!3040 = !DILocation(line: 316, column: 5, scope: !2531, inlinedAt: !3017)
!3041 = !DILocation(line: 316, column: 5, scope: !622, inlinedAt: !3017)
!3042 = !DILocation(line: 316, column: 5, scope: !2534, inlinedAt: !3017)
!3043 = !DILocation(line: 317, column: 9, scope: !2536, inlinedAt: !3017)
!3044 = !DILocation(line: 317, column: 9, scope: !614, inlinedAt: !3017)
!3045 = !DILocation(line: 319, column: 5, scope: !614, inlinedAt: !3017)
!3046 = !DILocation(line: 415, column: 21, scope: !773)
!3047 = !DILocation(line: 416, column: 30, scope: !772)
!3048 = !DILocation(line: 416, column: 13, scope: !773)
!3049 = !DILocation(line: 432, column: 16, scope: !773)
!3050 = !DILocation(line: 417, column: 33, scope: !771)
!3051 = !DILocation(line: 87, column: 21, scope: !564, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 417, column: 24, scope: !771)
!3053 = !DILocation(line: 91, column: 13, scope: !2272, inlinedAt: !3052)
!3054 = !DILocation(line: 91, column: 9, scope: !564, inlinedAt: !3052)
!3055 = !DILocation(line: 92, column: 25, scope: !2373, inlinedAt: !3052)
!3056 = !DILocation(line: 92, column: 9, scope: !2373, inlinedAt: !3052)
!3057 = !DILocation(line: 94, column: 9, scope: !2373, inlinedAt: !3052)
!3058 = !DILocation(line: 96, column: 9, scope: !1988, inlinedAt: !3052)
!3059 = !DILocation(line: 96, column: 9, scope: !564, inlinedAt: !3052)
!3060 = !DILocation(line: 97, column: 22, scope: !1991, inlinedAt: !3052)
!3061 = !DILocation(line: 98, column: 16, scope: !1991, inlinedAt: !3052)
!3062 = !DILocation(line: 98, column: 9, scope: !1991, inlinedAt: !3052)
!3063 = !DILocation(line: 100, column: 9, scope: !564, inlinedAt: !3052)
!3064 = !DILocation(line: 101, column: 11, scope: !1996, inlinedAt: !3052)
!3065 = !DILocation(line: 101, column: 9, scope: !564, inlinedAt: !3052)
!3066 = !DILocation(line: 102, column: 9, scope: !1999, inlinedAt: !3052)
!3067 = !DILocation(line: 104, column: 5, scope: !564, inlinedAt: !3052)
!3068 = !DILocation(line: 105, column: 5, scope: !564, inlinedAt: !3052)
!3069 = !DILocation(line: 417, column: 24, scope: !771)
!3070 = !DILocation(line: 417, column: 20, scope: !771)
!3071 = !DILocation(line: 418, column: 19, scope: !777)
!3072 = !DILocation(line: 418, column: 17, scope: !771)
!3073 = !DILocation(line: 419, column: 17, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !775, file: !1, discriminator: 1)
!3075 = !DILocation(line: 419, column: 17, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !775, file: !1, line: 419, column: 17)
!3077 = !DILocation(line: 419, column: 17, scope: !775)
!3078 = !DILocation(line: 419, column: 17, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3076, file: !1, discriminator: 3)
!3080 = !DILocation(line: 420, column: 17, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 1)
!3082 = !DILocation(line: 420, column: 17, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !779, file: !1, line: 420, column: 17)
!3084 = !DILocation(line: 420, column: 17, scope: !779)
!3085 = !DILocation(line: 420, column: 17, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3083, file: !1, discriminator: 3)
!3087 = !DILocation(line: 423, column: 16, scope: !771)
!3088 = !DILocation(line: 423, column: 26, scope: !771)
!3089 = !DILocation(line: 425, column: 20, scope: !771)
!3090 = !DILocation(line: 425, column: 31, scope: !771)
!3091 = !DILocation(line: 425, column: 40, scope: !771)
!3092 = !DILocation(line: 426, column: 30, scope: !771)
!3093 = !DILocation(line: 428, column: 30, scope: !771)
!3094 = !DILocation(line: 431, column: 25, scope: !773)
!3095 = !DILocation(line: 430, column: 23, scope: !773)
!3096 = !DILocation(line: 433, column: 9, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 1)
!3098 = !DILocation(line: 432, column: 9, scope: !773)
!3099 = !DILocation(line: 432, column: 50, scope: !773)
!3100 = !DILocation(line: 433, column: 9, scope: !782)
!3101 = !DILocation(line: 414, column: 20, scope: !758)
!3102 = !DILocation(line: 414, column: 37, scope: !758)
!3103 = !DILocation(line: 181, column: 24, scope: !658, inlinedAt: !3026)
!3104 = !DILocation(line: 181, column: 41, scope: !658, inlinedAt: !3026)
!3105 = !DILocation(line: 186, column: 24, scope: !2649, inlinedAt: !3026)
!3106 = !DILocation(line: 186, column: 9, scope: !658, inlinedAt: !3026)
!3107 = !DILocation(line: 187, column: 25, scope: !2654, inlinedAt: !3026)
!3108 = !DILocation(line: 187, column: 9, scope: !2654, inlinedAt: !3026)
!3109 = !DILocation(line: 188, column: 9, scope: !2654, inlinedAt: !3026)
!3110 = !DILocation(line: 203, column: 32, scope: !1513, inlinedAt: !3026)
!3111 = !DILocation(line: 190, column: 12, scope: !658, inlinedAt: !3026)
!3112 = !DILocation(line: 183, column: 15, scope: !658, inlinedAt: !3026)
!3113 = !DILocation(line: 192, column: 19, scope: !658, inlinedAt: !3026)
!3114 = !DILocation(line: 195, column: 27, scope: !1511, inlinedAt: !3026)
!3115 = !DILocation(line: 195, column: 9, scope: !658, inlinedAt: !3026)
!3116 = !DILocation(line: 196, column: 28, scope: !1509, inlinedAt: !3026)
!3117 = !DILocation(line: 196, column: 13, scope: !1510, inlinedAt: !3026)
!3118 = !DILocation(line: 202, column: 9, scope: !1508, inlinedAt: !3026)
!3119 = !DILocation(line: 203, column: 44, scope: !1513, inlinedAt: !3026)
!3120 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !3026)
!3122 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !3121)
!3123 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !3121)
!3124 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !3121)
!3125 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !3121)
!3126 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !3121)
!3127 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !3121)
!3128 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !3121)
!3129 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !3121)
!3130 = !DILocation(line: 205, column: 13, scope: !1513, inlinedAt: !3026)
!3131 = !DILocation(line: 209, column: 31, scope: !1513, inlinedAt: !3026)
!3132 = !DILocation(line: 433, column: 9, scope: !3027)
!3133 = !DILocation(line: 433, column: 9, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 3)
!3135 = !DILocation(line: 433, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !784, file: !1, line: 433, column: 9)
!3137 = !DILocation(line: 433, column: 9, scope: !784)
!3138 = !DILocation(line: 433, column: 9, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3136, file: !1, discriminator: 5)
!3140 = !DILocation(line: 435, column: 5, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 1)
!3142 = !DILocation(line: 435, column: 5, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !786, file: !1, line: 435, column: 5)
!3144 = !DILocation(line: 435, column: 5, scope: !786)
!3145 = !DILocation(line: 435, column: 5, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3143, file: !1, discriminator: 3)
!3147 = !DILocation(line: 436, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !758, file: !1, line: 436, column: 9)
!3149 = !DILocation(line: 436, column: 9, scope: !758)
!3150 = !DILocation(line: 438, column: 5, scope: !758)
!3151 = !DILocation(line: 439, column: 1, scope: !758)
!3152 = !DILocation(line: 891, column: 27, scope: !787)
!3153 = !DILocation(line: 896, column: 32, scope: !787)
!3154 = !DILocation(line: 896, column: 12, scope: !787)
!3155 = !DILocation(line: 893, column: 15, scope: !787)
!3156 = !DILocation(line: 897, column: 14, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !787, file: !1, line: 897, column: 9)
!3158 = !DILocation(line: 897, column: 9, scope: !787)
!3159 = !DILocation(line: 898, column: 9, scope: !3157)
!3160 = !DILocation(line: 899, column: 14, scope: !787)
!3161 = !DILocation(line: 893, column: 31, scope: !787)
!3162 = !DILocation(line: 900, column: 16, scope: !796)
!3163 = !DILocation(line: 900, column: 9, scope: !787)
!3164 = !DILocation(line: 901, column: 9, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 1)
!3166 = !DILocation(line: 901, column: 9, scope: !794)
!3167 = !DILocation(line: 901, column: 9, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 4)
!3169 = !DILocation(line: 901, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !798, file: !1, line: 901, column: 9)
!3171 = !DILocation(line: 901, column: 9, scope: !798)
!3172 = !DILocation(line: 901, column: 9, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3170, file: !1, discriminator: 6)
!3174 = !DILocation(line: 905, column: 20, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !1, line: 905, column: 13)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !1, line: 904, column: 23)
!3177 = distinct !DILexicalBlock(scope: !787, file: !1, line: 904, column: 9)
!3178 = !DILocation(line: 905, column: 27, scope: !3175)
!3179 = !DILocation(line: 906, column: 44, scope: !3175)
!3180 = !DILocation(line: 904, column: 9, scope: !787)
!3181 = !DILocation(line: 905, column: 13, scope: !3176)
!3182 = !DILocation(line: 906, column: 22, scope: !3175)
!3183 = !DILocation(line: 893, column: 22, scope: !787)
!3184 = !DILocation(line: 906, column: 13, scope: !3175)
!3185 = !DILocation(line: 908, column: 22, scope: !3175)
!3186 = !DILocation(line: 910, column: 13, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3177, file: !1, line: 909, column: 12)
!3188 = !DILocation(line: 911, column: 22, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 910, column: 13)
!3190 = !DILocation(line: 911, column: 13, scope: !3189)
!3191 = !DILocation(line: 913, column: 22, scope: !3189)
!3192 = !DILocation(line: 915, column: 5, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !801, file: !1, discriminator: 1)
!3194 = !DILocation(line: 915, column: 5, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !803, file: !1, discriminator: 4)
!3196 = !DILocation(line: 915, column: 5, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !803, file: !1, line: 915, column: 5)
!3198 = !DILocation(line: 915, column: 5, scope: !803)
!3199 = !DILocation(line: 915, column: 5, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3197, file: !1, discriminator: 6)
!3201 = !DILocation(line: 916, column: 5, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !806, file: !1, discriminator: 1)
!3203 = !DILocation(line: 916, column: 5, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !806, file: !1, line: 916, column: 5)
!3205 = !DILocation(line: 916, column: 5, scope: !806)
!3206 = !DILocation(line: 916, column: 5, scope: !3207)
!3207 = !DILexicalBlockFile(scope: !3204, file: !1, discriminator: 3)
!3208 = !DILocation(line: 918, column: 1, scope: !787)
!3209 = !DILocation(line: 685, column: 27, scope: !807)
!3210 = !DILocation(line: 685, column: 44, scope: !807)
!3211 = !DILocation(line: 687, column: 21, scope: !807)
!3212 = !DILocation(line: 687, column: 19, scope: !807)
!3213 = !DILocation(line: 687, column: 16, scope: !807)
!3214 = !DILocation(line: 689, column: 17, scope: !815)
!3215 = !DILocation(line: 689, column: 5, scope: !816)
!3216 = !DILocation(line: 690, column: 56, scope: !814)
!3217 = !DILocation(line: 690, column: 33, scope: !814)
!3218 = !DILocation(line: 690, column: 26, scope: !814)
!3219 = !DILocation(line: 690, column: 19, scope: !814)
!3220 = !DILocation(line: 691, column: 19, scope: !814)
!3221 = !DILocation(line: 691, column: 13, scope: !814)
!3222 = !DILocation(line: 693, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !814, file: !1, line: 693, column: 13)
!3224 = !DILocation(line: 693, column: 28, scope: !3223)
!3225 = !DILocation(line: 693, column: 13, scope: !814)
!3226 = !DILocation(line: 694, column: 29, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 693, column: 34)
!3228 = !DILocation(line: 694, column: 13, scope: !3227)
!3229 = !DILocation(line: 696, column: 13, scope: !3227)
!3230 = !DILocation(line: 698, column: 17, scope: !820)
!3231 = !DILocation(line: 698, column: 13, scope: !814)
!3232 = !DILocation(line: 218, column: 28, scope: !570, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 699, column: 29, scope: !819)
!3234 = !DILocation(line: 218, column: 45, scope: !570, inlinedAt: !3233)
!3235 = !DILocation(line: 223, column: 24, scope: !2126, inlinedAt: !3233)
!3236 = !DILocation(line: 223, column: 9, scope: !570, inlinedAt: !3233)
!3237 = !DILocation(line: 224, column: 25, scope: !2129, inlinedAt: !3233)
!3238 = !DILocation(line: 224, column: 9, scope: !2129, inlinedAt: !3233)
!3239 = !DILocation(line: 225, column: 9, scope: !2129, inlinedAt: !3233)
!3240 = !DILocation(line: 228, column: 42, scope: !570, inlinedAt: !3233)
!3241 = !DILocation(line: 242, column: 32, scope: !2135, inlinedAt: !3233)
!3242 = !DILocation(line: 228, column: 12, scope: !570, inlinedAt: !3233)
!3243 = !DILocation(line: 220, column: 15, scope: !570, inlinedAt: !3233)
!3244 = !DILocation(line: 229, column: 21, scope: !570, inlinedAt: !3233)
!3245 = !DILocation(line: 234, column: 13, scope: !2136, inlinedAt: !3233)
!3246 = !DILocation(line: 230, column: 19, scope: !570, inlinedAt: !3233)
!3247 = !DILocation(line: 231, column: 12, scope: !570, inlinedAt: !3233)
!3248 = !DILocation(line: 231, column: 17, scope: !570, inlinedAt: !3233)
!3249 = !DILocation(line: 233, column: 26, scope: !2138, inlinedAt: !3233)
!3250 = !DILocation(line: 233, column: 9, scope: !570, inlinedAt: !3233)
!3251 = !DILocation(line: 234, column: 28, scope: !2136, inlinedAt: !3233)
!3252 = !DILocation(line: 234, column: 13, scope: !2137, inlinedAt: !3233)
!3253 = !DILocation(line: 238, column: 30, scope: !2150, inlinedAt: !3233)
!3254 = !DILocation(line: 240, column: 9, scope: !2150, inlinedAt: !3233)
!3255 = !DILocation(line: 242, column: 43, scope: !2135, inlinedAt: !3233)
!3256 = !DILocation(line: 109, column: 18, scope: !490, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !3233)
!3258 = !DILocation(line: 113, column: 22, scope: !1537, inlinedAt: !3257)
!3259 = !DILocation(line: 111, column: 23, scope: !1538, inlinedAt: !3257)
!3260 = !DILocation(line: 111, column: 9, scope: !490, inlinedAt: !3257)
!3261 = !DILocation(line: 112, column: 9, scope: !1537, inlinedAt: !3257)
!3262 = !DILocation(line: 112, column: 35, scope: !1537, inlinedAt: !3257)
!3263 = !DILocation(line: 114, column: 5, scope: !1537, inlinedAt: !3257)
!3264 = !DILocation(line: 115, column: 20, scope: !1545, inlinedAt: !3257)
!3265 = !DILocation(line: 115, column: 9, scope: !1545, inlinedAt: !3257)
!3266 = !DILocation(line: 243, column: 13, scope: !2135, inlinedAt: !3233)
!3267 = !DILocation(line: 246, column: 30, scope: !2135, inlinedAt: !3233)
!3268 = !DILocation(line: 247, column: 30, scope: !2135, inlinedAt: !3233)
!3269 = !DILocation(line: 699, column: 29, scope: !819)
!3270 = !DILocation(line: 699, column: 23, scope: !819)
!3271 = !DILocation(line: 701, column: 13, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 1)
!3273 = !DILocation(line: 701, column: 13, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !822, file: !1, line: 701, column: 13)
!3275 = !DILocation(line: 701, column: 13, scope: !822)
!3276 = !DILocation(line: 701, column: 13, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3274, file: !1, discriminator: 3)
!3278 = !DILocation(line: 702, column: 17, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !819, file: !1, line: 702, column: 17)
!3280 = !DILocation(line: 702, column: 41, scope: !3279)
!3281 = !DILocation(line: 702, column: 17, scope: !819)
!3282 = !DILocation(line: 704, column: 13, scope: !819)
!3283 = !DILocation(line: 706, column: 22, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !820, file: !1, line: 706, column: 18)
!3285 = !DILocation(line: 706, column: 18, scope: !820)
!3286 = !DILocation(line: 707, column: 13, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 706, column: 27)
!3288 = !DILocation(line: 708, column: 13, scope: !3287)
!3289 = !DILocation(line: 710, column: 9, scope: !814)
!3290 = !DILocation(line: 689, column: 23, scope: !815)
!3291 = !DILocation(line: 712, column: 21, scope: !807)
!3292 = !DILocation(line: 712, column: 5, scope: !807)
!3293 = !DILocation(line: 713, column: 5, scope: !807)
!3294 = !DILocation(line: 714, column: 1, scope: !807)
!3295 = !DILocation(line: 1364, column: 28, scope: !823)
!3296 = !DILocation(line: 1368, column: 10, scope: !823)
!3297 = !DILocation(line: 1369, column: 12, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !823, file: !1, line: 1369, column: 9)
!3299 = !DILocation(line: 1369, column: 9, scope: !823)
!3300 = !DILocation(line: 1371, column: 20, scope: !823)
!3301 = !DILocation(line: 1371, column: 9, scope: !823)
!3302 = !DILocation(line: 1371, column: 11, scope: !823)
!3303 = !DILocation(line: 1372, column: 24, scope: !823)
!3304 = !DILocation(line: 1372, column: 9, scope: !823)
!3305 = !DILocation(line: 1372, column: 15, scope: !823)
!3306 = !DILocation(line: 1373, column: 5, scope: !823)
!3307 = !DILocation(line: 1374, column: 9, scope: !823)
!3308 = !DILocation(line: 1374, column: 15, scope: !823)
!3309 = !DILocation(line: 1375, column: 24, scope: !823)
!3310 = !DILocation(line: 1375, column: 9, scope: !823)
!3311 = !DILocation(line: 1375, column: 15, scope: !823)
!3312 = !DILocation(line: 1376, column: 19, scope: !823)
!3313 = !DILocation(line: 1376, column: 9, scope: !823)
!3314 = !DILocation(line: 1376, column: 17, scope: !823)
!3315 = !DILocation(line: 1377, column: 23, scope: !823)
!3316 = !DILocation(line: 1377, column: 5, scope: !823)
!3317 = !DILocation(line: 1378, column: 5, scope: !823)
!3318 = !DILocation(line: 1379, column: 1, scope: !823)
!3319 = !DILocation(line: 597, column: 28, scope: !827)
!3320 = !DILocation(line: 597, column: 45, scope: !827)
!3321 = !DILocation(line: 599, column: 12, scope: !827)
!3322 = !DILocation(line: 600, column: 12, scope: !827)
!3323 = !DILocation(line: 601, column: 16, scope: !827)
!3324 = !DILocation(line: 602, column: 16, scope: !827)
!3325 = !DILocation(line: 603, column: 21, scope: !827)
!3326 = !DILocation(line: 603, column: 36, scope: !827)
!3327 = !DILocation(line: 603, column: 16, scope: !827)
!3328 = !DILocation(line: 604, column: 16, scope: !827)
!3329 = !DILocation(line: 607, column: 17, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !1, line: 607, column: 5)
!3331 = distinct !DILexicalBlock(scope: !827, file: !1, line: 607, column: 5)
!3332 = !DILocation(line: 607, column: 5, scope: !3331)
!3333 = !DILocation(line: 602, column: 36, scope: !827)
!3334 = !DILocation(line: 601, column: 35, scope: !827)
!3335 = !DILocation(line: 600, column: 32, scope: !827)
!3336 = !DILocation(line: 599, column: 31, scope: !827)
!3337 = !DILocation(line: 614, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !1, line: 607, column: 27)
!3339 = !DILocation(line: 615, column: 38, scope: !3338)
!3340 = !DILocation(line: 615, column: 36, scope: !3338)
!3341 = !DILocation(line: 616, column: 38, scope: !3338)
!3342 = !DILocation(line: 619, column: 18, scope: !3338)
!3343 = !DILocation(line: 620, column: 23, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 620, column: 13)
!3345 = !DILocation(line: 620, column: 13, scope: !3338)
!3346 = !DILocation(line: 621, column: 36, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 620, column: 36)
!3348 = !DILocation(line: 623, column: 9, scope: !3347)
!3349 = !DILocation(line: 626, column: 19, scope: !3338)
!3350 = !DILocation(line: 627, column: 24, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 627, column: 13)
!3352 = !DILocation(line: 627, column: 13, scope: !3338)
!3353 = !DILocation(line: 628, column: 38, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 627, column: 31)
!3355 = !DILocation(line: 630, column: 9, scope: !3354)
!3356 = !DILocation(line: 607, column: 23, scope: !3330)
!3357 = !DILocation(line: 632, column: 5, scope: !827)
!3358 = !DILocation(line: 582, column: 27, scope: !838)
!3359 = !DILocation(line: 582, column: 44, scope: !838)
!3360 = !DILocation(line: 584, column: 5, scope: !838)
!3361 = !DILocation(line: 584, column: 16, scope: !838)
!3362 = !DILocation(line: 586, column: 10, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !838, file: !1, line: 586, column: 9)
!3364 = !DILocation(line: 586, column: 9, scope: !838)
!3365 = !DILocation(line: 588, column: 30, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !838, file: !1, line: 588, column: 9)
!3367 = !DILocation(line: 588, column: 9, scope: !3366)
!3368 = !DILocation(line: 588, column: 33, scope: !3366)
!3369 = !DILocation(line: 588, column: 9, scope: !838)
!3370 = !DILocation(line: 589, column: 9, scope: !3366)
!3371 = !DILocation(line: 591, column: 1, scope: !838)
!3372 = !DILocation(line: 1060, column: 27, scope: !843)
!3373 = !DILocation(line: 1060, column: 40, scope: !843)
!3374 = !DILocation(line: 1062, column: 16, scope: !843)
!3375 = !DILocation(line: 1066, column: 22, scope: !843)
!3376 = !DILocation(line: 1066, column: 34, scope: !843)
!3377 = !DILocation(line: 1066, column: 32, scope: !843)
!3378 = !DILocation(line: 1066, column: 60, scope: !843)
!3379 = !DILocation(line: 1066, column: 65, scope: !843)
!3380 = !DILocation(line: 1063, column: 16, scope: !843)
!3381 = !DILocation(line: 1069, column: 19, scope: !843)
!3382 = !DILocation(line: 1069, column: 9, scope: !843)
!3383 = !DILocation(line: 1070, column: 12, scope: !843)
!3384 = !DILocation(line: 1070, column: 5, scope: !843)
!3385 = !DILocation(line: 1077, column: 31, scope: !851)
!3386 = !DILocation(line: 1079, column: 16, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !851, file: !1, line: 1079, column: 9)
!3388 = !DILocation(line: 1079, column: 23, scope: !3387)
!3389 = !DILocation(line: 1079, column: 9, scope: !851)
!3390 = !DILocation(line: 1080, column: 9, scope: !3387)
!3391 = !DILocation(line: 1081, column: 12, scope: !851)
!3392 = !DILocation(line: 1081, column: 5, scope: !851)
!3393 = !DILocation(line: 1082, column: 1, scope: !851)
!3394 = !DILocation(line: 1613, column: 32, scope: !888)
!3395 = !DILocation(line: 1615, column: 5, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !894, file: !1, discriminator: 1)
!3397 = !{!3398, !1256, i64 40}
!3398 = !{!"", !3399, i64 0, !1256, i64 40}
!3399 = !{!"", !1252, i64 0, !1253, i64 16, !1256, i64 24, !1256, i64 32}
!3400 = !DILocation(line: 1615, column: 5, scope: !898)
!3401 = !DILocation(line: 1615, column: 5, scope: !894)
!3402 = !DILocation(line: 1615, column: 5, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 2)
!3404 = !DILocation(line: 1615, column: 5, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 4)
!3406 = !DILocation(line: 1615, column: 5, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !896, file: !1, line: 1615, column: 5)
!3408 = !DILocation(line: 1615, column: 5, scope: !896)
!3409 = !DILocation(line: 1615, column: 5, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 6)
!3411 = !DILocation(line: 1616, column: 17, scope: !888)
!3412 = !DILocation(line: 1616, column: 28, scope: !888)
!3413 = !DILocation(line: 1616, column: 5, scope: !888)
!3414 = !DILocation(line: 1617, column: 1, scope: !888)
!3415 = !DILocation(line: 1620, column: 29, scope: !899)
!3416 = !DILocation(line: 1625, column: 28, scope: !899)
!3417 = !{!1260, !1256, i64 88}
!3418 = !DILocation(line: 1625, column: 36, scope: !899)
!3419 = !DILocation(line: 1625, column: 16, scope: !899)
!3420 = !DILocation(line: 1622, column: 15, scope: !899)
!3421 = !DILocation(line: 1626, column: 18, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1626, column: 9)
!3423 = !DILocation(line: 1626, column: 9, scope: !899)
!3424 = !DILocation(line: 1628, column: 13, scope: !909)
!3425 = !DILocation(line: 1628, column: 29, scope: !909)
!3426 = !DILocation(line: 1628, column: 9, scope: !899)
!3427 = !DILocation(line: 1629, column: 19, scope: !909)
!3428 = !DILocation(line: 1623, column: 15, scope: !899)
!3429 = !DILocation(line: 1629, column: 9, scope: !909)
!3430 = !DILocation(line: 1632, column: 22, scope: !908)
!3431 = !DILocation(line: 1632, column: 13, scope: !908)
!3432 = !DILocation(line: 1633, column: 20, scope: !915)
!3433 = !DILocation(line: 1633, column: 13, scope: !908)
!3434 = !DILocation(line: 1634, column: 24, scope: !913)
!3435 = !DILocation(line: 1634, column: 17, scope: !914)
!3436 = !DILocation(line: 1635, column: 17, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !911, file: !1, discriminator: 1)
!3438 = !DILocation(line: 1635, column: 17, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !911, file: !1, line: 1635, column: 17)
!3440 = !DILocation(line: 1635, column: 17, scope: !911)
!3441 = !DILocation(line: 1635, column: 17, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3439, file: !1, discriminator: 3)
!3443 = !DILocation(line: 1638, column: 23, scope: !914)
!3444 = !DILocation(line: 1639, column: 9, scope: !914)
!3445 = !DILocation(line: 1641, column: 41, scope: !915)
!3446 = !DILocation(line: 1641, column: 23, scope: !915)
!3447 = !DILocation(line: 1642, column: 26, scope: !908)
!3448 = !DILocation(line: 1642, column: 9, scope: !908)
!3449 = !DILocation(line: 1644, column: 17, scope: !919)
!3450 = !DILocation(line: 1644, column: 9, scope: !899)
!3451 = !DILocation(line: 1645, column: 9, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 1)
!3453 = !DILocation(line: 1645, column: 9, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !917, file: !1, line: 1645, column: 9)
!3455 = !DILocation(line: 1645, column: 9, scope: !917)
!3456 = !DILocation(line: 1645, column: 9, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3454, file: !1, discriminator: 3)
!3458 = !DILocation(line: 1648, column: 14, scope: !899)
!3459 = !DILocation(line: 1624, column: 15, scope: !899)
!3460 = !DILocation(line: 1650, column: 5, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !921, file: !1, discriminator: 1)
!3462 = !DILocation(line: 1650, column: 5, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !921, file: !1, line: 1650, column: 5)
!3464 = !DILocation(line: 1650, column: 5, scope: !921)
!3465 = !DILocation(line: 1650, column: 5, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3463, file: !1, discriminator: 3)
!3467 = !DILocation(line: 1651, column: 5, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !923, file: !1, discriminator: 1)
!3469 = !DILocation(line: 1651, column: 5, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !923, file: !1, line: 1651, column: 5)
!3471 = !DILocation(line: 1651, column: 5, scope: !923)
!3472 = !DILocation(line: 1651, column: 5, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !3470, file: !1, discriminator: 3)
!3474 = !DILocation(line: 1653, column: 1, scope: !899)
!3475 = !DILocation(line: 1656, column: 28, scope: !924)
!3476 = !DILocation(line: 1656, column: 44, scope: !924)
!3477 = !DILocation(line: 1656, column: 57, scope: !924)
!3478 = !DILocation(line: 1658, column: 5, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !931, file: !1, discriminator: 1)
!3480 = !DILocation(line: 1658, column: 5, scope: !932)
!3481 = !DILocation(line: 1658, column: 5, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !930, file: !1, discriminator: 2)
!3483 = !DILocation(line: 1658, column: 5, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !930, file: !1, line: 1658, column: 5)
!3485 = !DILocation(line: 1659, column: 24, scope: !924)
!3486 = !{!1260, !1256, i64 184}
!3487 = !DILocation(line: 1659, column: 12, scope: !924)
!3488 = !DILocation(line: 1659, column: 5, scope: !924)
!3489 = !DILocation(line: 1660, column: 1, scope: !924)
!3490 = !DILocation(line: 1663, column: 33, scope: !933)
!3491 = !DILocation(line: 1665, column: 5, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 1)
!3493 = !DILocation(line: 1665, column: 5, scope: !943)
!3494 = !DILocation(line: 1665, column: 5, scope: !939)
!3495 = !DILocation(line: 1665, column: 5, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 2)
!3497 = !DILocation(line: 1665, column: 5, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !941, file: !1, discriminator: 4)
!3499 = !DILocation(line: 1665, column: 5, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !941, file: !1, line: 1665, column: 5)
!3501 = !DILocation(line: 1665, column: 5, scope: !941)
!3502 = !DILocation(line: 1665, column: 5, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3500, file: !1, discriminator: 6)
!3504 = !DILocation(line: 1666, column: 24, scope: !933)
!3505 = !{!1260, !1256, i64 192}
!3506 = !DILocation(line: 1666, column: 33, scope: !933)
!3507 = !DILocation(line: 1666, column: 12, scope: !933)
!3508 = !DILocation(line: 1666, column: 5, scope: !933)
!3509 = !DILocation(line: 1670, column: 24, scope: !987)
!3510 = !DILocation(line: 1670, column: 40, scope: !987)
!3511 = !DILocation(line: 1670, column: 56, scope: !987)
!3512 = !DILocation(line: 1673, column: 32, scope: !987)
!3513 = !DILocation(line: 1673, column: 15, scope: !987)
!3514 = !DILocation(line: 1674, column: 15, scope: !987)
!3515 = !DILocation(line: 1677, column: 14, scope: !999)
!3516 = !DILocation(line: 1677, column: 22, scope: !999)
!3517 = !DILocation(line: 1677, column: 26, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !999, file: !1, discriminator: 1)
!3519 = !{!1260, !1253, i64 168}
!3520 = !DILocation(line: 1677, column: 9, scope: !987)
!3521 = !DILocation(line: 1678, column: 19, scope: !999)
!3522 = !DILocation(line: 1675, column: 15, scope: !987)
!3523 = !DILocation(line: 1678, column: 9, scope: !999)
!3524 = !DILocation(line: 1680, column: 24, scope: !998)
!3525 = !DILocation(line: 1680, column: 20, scope: !998)
!3526 = !DILocation(line: 1681, column: 15, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1681, column: 13)
!3528 = !DILocation(line: 1681, column: 13, scope: !998)
!3529 = !DILocation(line: 1682, column: 26, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !1, line: 1681, column: 20)
!3531 = !DILocation(line: 1683, column: 18, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1683, column: 17)
!3533 = !DILocation(line: 1683, column: 61, scope: !3532)
!3534 = !DILocation(line: 1683, column: 47, scope: !3532)
!3535 = !DILocation(line: 1689, column: 19, scope: !998)
!3536 = !DILocation(line: 1684, column: 33, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 1683, column: 73)
!3538 = !DILocation(line: 1684, column: 17, scope: !3537)
!3539 = !DILocation(line: 1691, column: 17, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1691, column: 9)
!3541 = !DILocation(line: 1691, column: 9, scope: !987)
!3542 = !DILocation(line: 1693, column: 5, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !1001, file: !1, discriminator: 1)
!3544 = !DILocation(line: 1693, column: 5, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 1693, column: 5)
!3546 = !DILocation(line: 1693, column: 5, scope: !1001)
!3547 = !DILocation(line: 1693, column: 5, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3545, file: !1, discriminator: 2)
!3549 = !DILocation(line: 1694, column: 25, scope: !987)
!3550 = !DILocation(line: 1695, column: 26, scope: !987)
!3551 = !{!1260, !1256, i64 296}
!3552 = !DILocation(line: 1695, column: 14, scope: !987)
!3553 = !DILocation(line: 1676, column: 9, scope: !987)
!3554 = !DILocation(line: 1696, column: 5, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !1003, file: !1, discriminator: 1)
!3556 = !DILocation(line: 1696, column: 5, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 1696, column: 5)
!3558 = !DILocation(line: 1696, column: 5, scope: !1003)
!3559 = !DILocation(line: 1696, column: 5, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3557, file: !1, discriminator: 3)
!3561 = !DILocation(line: 1697, column: 5, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!3563 = !DILocation(line: 1697, column: 5, scope: !1008)
!3564 = !DILocation(line: 1697, column: 5, scope: !1005)
!3565 = !DILocation(line: 1697, column: 5, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 4)
!3567 = !DILocation(line: 1697, column: 5, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 1697, column: 5)
!3569 = !DILocation(line: 1697, column: 5, scope: !1007)
!3570 = !DILocation(line: 1697, column: 5, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3568, file: !1, discriminator: 6)
!3572 = !DILocation(line: 1699, column: 1, scope: !987)
!3573 = !DILocation(line: 1498, column: 32, scope: !944)
!3574 = !DILocation(line: 1498, column: 46, scope: !944)
!3575 = !DILocation(line: 1500, column: 29, scope: !944)
!3576 = !DILocation(line: 1500, column: 15, scope: !944)
!3577 = !DILocation(line: 1502, column: 17, scope: !954)
!3578 = !DILocation(line: 1502, column: 36, scope: !954)
!3579 = !DILocation(line: 1502, column: 25, scope: !954)
!3580 = !DILocation(line: 1505, column: 15, scope: !953)
!3581 = !DILocation(line: 1504, column: 19, scope: !953)
!3582 = !DILocation(line: 1506, column: 14, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1506, column: 13)
!3584 = !DILocation(line: 1506, column: 13, scope: !953)
!3585 = !DILocation(line: 1507, column: 25, scope: !953)
!3586 = !DILocation(line: 1507, column: 9, scope: !953)
!3587 = !DILocation(line: 1508, column: 9, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !956, file: !1, discriminator: 1)
!3589 = !DILocation(line: 1508, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !956, file: !1, line: 1508, column: 9)
!3591 = !DILocation(line: 1508, column: 9, scope: !956)
!3592 = !DILocation(line: 1508, column: 9, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3590, file: !1, discriminator: 3)
!3594 = !DILocation(line: 1511, column: 13, scope: !944)
!3595 = !DILocation(line: 1501, column: 15, scope: !944)
!3596 = !DILocation(line: 1512, column: 15, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1512, column: 9)
!3598 = !DILocation(line: 1512, column: 9, scope: !944)
!3599 = !DILocation(line: 1514, column: 26, scope: !960)
!3600 = !DILocation(line: 1514, column: 9, scope: !960)
!3601 = !DILocation(line: 1514, column: 54, scope: !960)
!3602 = !DILocation(line: 1514, column: 9, scope: !944)
!3603 = !DILocation(line: 1515, column: 9, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !958, file: !1, discriminator: 1)
!3605 = !DILocation(line: 1515, column: 9, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !958, file: !1, line: 1515, column: 9)
!3607 = !DILocation(line: 1515, column: 9, scope: !958)
!3608 = !DILocation(line: 1515, column: 9, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3606, file: !1, discriminator: 3)
!3610 = !DILocation(line: 1519, column: 1, scope: !944)
!3611 = !DILocation(line: 1524, column: 29, scope: !961)
!3612 = !DILocation(line: 1531, column: 13, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !961, file: !1, line: 1531, column: 9)
!3614 = !DILocation(line: 1531, column: 29, scope: !3613)
!3615 = !DILocation(line: 1532, column: 56, scope: !3613)
!3616 = !DILocation(line: 1531, column: 9, scope: !961)
!3617 = !DILocation(line: 1532, column: 16, scope: !3613)
!3618 = !DILocation(line: 1532, column: 9, scope: !3613)
!3619 = !DILocation(line: 1533, column: 12, scope: !961)
!3620 = !DILocation(line: 1533, column: 5, scope: !961)
!3621 = !DILocation(line: 1535, column: 1, scope: !961)
!3622 = !DILocation(line: 1538, column: 31, scope: !964)
!3623 = !DILocation(line: 1568, column: 13, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1568, column: 9)
!3625 = !DILocation(line: 1568, column: 29, scope: !3624)
!3626 = !DILocation(line: 1568, column: 60, scope: !3624)
!3627 = !DILocation(line: 1568, column: 37, scope: !3624)
!3628 = !DILocation(line: 1569, column: 16, scope: !3624)
!3629 = !DILocation(line: 1562, column: 15, scope: !964)
!3630 = !DILocation(line: 1569, column: 9, scope: !3624)
!3631 = !DILocation(line: 1571, column: 16, scope: !3624)
!3632 = !DILocation(line: 1572, column: 14, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1572, column: 9)
!3634 = !DILocation(line: 1572, column: 9, scope: !964)
!3635 = !DILocation(line: 1574, column: 36, scope: !964)
!3636 = !DILocation(line: 1574, column: 13, scope: !964)
!3637 = !DILocation(line: 1563, column: 15, scope: !964)
!3638 = !DILocation(line: 1575, column: 15, scope: !974)
!3639 = !DILocation(line: 1575, column: 9, scope: !964)
!3640 = !DILocation(line: 1576, column: 9, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !972, file: !1, discriminator: 1)
!3642 = !DILocation(line: 1576, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !972, file: !1, line: 1576, column: 9)
!3644 = !DILocation(line: 1576, column: 9, scope: !972)
!3645 = !DILocation(line: 1576, column: 9, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3643, file: !1, discriminator: 3)
!3647 = !DILocation(line: 1579, column: 12, scope: !964)
!3648 = !DILocation(line: 1564, column: 15, scope: !964)
!3649 = !DILocation(line: 1580, column: 14, scope: !978)
!3650 = !DILocation(line: 1580, column: 9, scope: !964)
!3651 = !DILocation(line: 1581, column: 9, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 1)
!3653 = !DILocation(line: 1581, column: 9, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1581, column: 9)
!3655 = !DILocation(line: 1581, column: 9, scope: !976)
!3656 = !DILocation(line: 1581, column: 9, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3654, file: !1, discriminator: 3)
!3658 = !DILocation(line: 1582, column: 9, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !980, file: !1, discriminator: 1)
!3660 = !DILocation(line: 1582, column: 9, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !980, file: !1, line: 1582, column: 9)
!3662 = !DILocation(line: 1582, column: 9, scope: !980)
!3663 = !DILocation(line: 1582, column: 9, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3661, file: !1, discriminator: 3)
!3665 = !DILocation(line: 1585, column: 30, scope: !964)
!3666 = !DILocation(line: 1585, column: 14, scope: !964)
!3667 = !DILocation(line: 1565, column: 15, scope: !964)
!3668 = !DILocation(line: 1587, column: 5, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !982, file: !1, discriminator: 1)
!3670 = !DILocation(line: 1587, column: 5, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !982, file: !1, line: 1587, column: 5)
!3672 = !DILocation(line: 1587, column: 5, scope: !982)
!3673 = !DILocation(line: 1587, column: 5, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3671, file: !1, discriminator: 3)
!3675 = !DILocation(line: 1588, column: 5, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 1)
!3677 = !DILocation(line: 1588, column: 5, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1588, column: 5)
!3679 = !DILocation(line: 1588, column: 5, scope: !984)
!3680 = !DILocation(line: 1588, column: 5, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3678, file: !1, discriminator: 3)
!3682 = !DILocation(line: 1589, column: 5, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !986, file: !1, discriminator: 1)
!3684 = !DILocation(line: 1589, column: 5, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !986, file: !1, line: 1589, column: 5)
!3686 = !DILocation(line: 1589, column: 5, scope: !986)
!3687 = !DILocation(line: 1589, column: 5, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3685, file: !1, discriminator: 3)
!3689 = !DILocation(line: 1591, column: 1, scope: !964)
!3690 = !DILocation(line: 1233, column: 36, scope: !1009)
!3691 = !DILocation(line: 1235, column: 5, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 1)
!3693 = !DILocation(line: 1235, column: 5, scope: !1018)
!3694 = !DILocation(line: 1235, column: 5, scope: !1015)
!3695 = !DILocation(line: 1235, column: 5, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!3697 = !DILocation(line: 1235, column: 5, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 1235, column: 5)
!3699 = !DILocation(line: 1235, column: 5, scope: !1017)
!3700 = !DILocation(line: 1235, column: 5, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3698, file: !1, discriminator: 6)
!3702 = !DILocation(line: 1236, column: 21, scope: !1009)
!3703 = !DILocation(line: 1236, column: 5, scope: !1009)
!3704 = !DILocation(line: 1237, column: 1, scope: !1009)
!3705 = !DILocation(line: 1226, column: 37, scope: !1019)
!3706 = !DILocation(line: 1226, column: 52, scope: !1019)
!3707 = !DILocation(line: 1226, column: 65, scope: !1019)
!3708 = !DILocation(line: 1228, column: 5, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !1028, file: !1, discriminator: 1)
!3710 = !DILocation(line: 1228, column: 5, scope: !1029)
!3711 = !DILocation(line: 1228, column: 5, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !1027, file: !1, discriminator: 2)
!3713 = !DILocation(line: 1228, column: 5, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 1228, column: 5)
!3715 = !DILocation(line: 1229, column: 5, scope: !1019)
!3716 = !DILocation(line: 1230, column: 1, scope: !1019)
!3717 = !DILocation(line: 1240, column: 33, scope: !1030)
!3718 = !DILocation(line: 1244, column: 13, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1244, column: 9)
!3720 = !DILocation(line: 1244, column: 20, scope: !3719)
!3721 = !DILocation(line: 1244, column: 33, scope: !3719)
!3722 = !DILocation(line: 1244, column: 26, scope: !3719)
!3723 = !DILocation(line: 1245, column: 13, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !1, line: 1244, column: 40)
!3725 = !DILocation(line: 1244, column: 9, scope: !1030)
!3726 = !DILocation(line: 1245, column: 21, scope: !3724)
!3727 = !DILocation(line: 1246, column: 25, scope: !3724)
!3728 = !DILocation(line: 1246, column: 9, scope: !3724)
!3729 = !DILocation(line: 1248, column: 9, scope: !3724)
!3730 = !DILocation(line: 1257, column: 16, scope: !1030)
!3731 = !DILocation(line: 1250, column: 21, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1250, column: 9)
!3733 = !DILocation(line: 1250, column: 9, scope: !1030)
!3734 = !DILocation(line: 1255, column: 28, scope: !1030)
!3735 = !DILocation(line: 1255, column: 16, scope: !1030)
!3736 = !DILocation(line: 1260, column: 21, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !1, line: 1258, column: 51)
!3738 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1258, column: 9)
!3739 = !DILocation(line: 1255, column: 12, scope: !1030)
!3740 = !DILocation(line: 1242, column: 15, scope: !1030)
!3741 = !DILocation(line: 1256, column: 14, scope: !1030)
!3742 = !DILocation(line: 1258, column: 19, scope: !3738)
!3743 = !DILocation(line: 1258, column: 46, scope: !3738)
!3744 = !DILocation(line: 1258, column: 31, scope: !3738)
!3745 = !DILocation(line: 1260, column: 24, scope: !3737)
!3746 = !DILocation(line: 1260, column: 15, scope: !3737)
!3747 = !DILocation(line: 1261, column: 19, scope: !3737)
!3748 = !DILocation(line: 1262, column: 5, scope: !3737)
!3749 = !DILocation(line: 1263, column: 5, scope: !1030)
!3750 = !DILocation(line: 1264, column: 5, scope: !1030)
!3751 = !DILocation(line: 1265, column: 1, scope: !1030)
!3752 = !DILocation(line: 1268, column: 29, scope: !1042)
!3753 = !DILocation(line: 1268, column: 45, scope: !1042)
!3754 = !DILocation(line: 1268, column: 61, scope: !1042)
!3755 = !DILocation(line: 1270, column: 5, scope: !1042)
!3756 = !DILocation(line: 1270, column: 19, scope: !1042)
!3757 = !DILocation(line: 1271, column: 5, scope: !1042)
!3758 = !DILocation(line: 1271, column: 15, scope: !1042)
!3759 = !DILocation(line: 1273, column: 10, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 1273, column: 9)
!3761 = !DILocation(line: 1273, column: 9, scope: !1042)
!3762 = !DILocation(line: 1277, column: 54, scope: !1042)
!3763 = !DILocation(line: 1208, column: 25, scope: !710, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 1277, column: 28, scope: !1042)
!3765 = !DILocation(line: 1212, column: 10, scope: !710, inlinedAt: !3764)
!3766 = !DILocation(line: 1213, column: 12, scope: !1853, inlinedAt: !3764)
!3767 = !DILocation(line: 1213, column: 9, scope: !710, inlinedAt: !3764)
!3768 = !DILocation(line: 1215, column: 20, scope: !710, inlinedAt: !3764)
!3769 = !DILocation(line: 1215, column: 9, scope: !710, inlinedAt: !3764)
!3770 = !DILocation(line: 1215, column: 11, scope: !710, inlinedAt: !3764)
!3771 = !DILocation(line: 1216, column: 24, scope: !710, inlinedAt: !3764)
!3772 = !DILocation(line: 1216, column: 9, scope: !710, inlinedAt: !3764)
!3773 = !DILocation(line: 1216, column: 15, scope: !710, inlinedAt: !3764)
!3774 = !DILocation(line: 1217, column: 5, scope: !710, inlinedAt: !3764)
!3775 = !DILocation(line: 1218, column: 9, scope: !710, inlinedAt: !3764)
!3776 = !DILocation(line: 1218, column: 15, scope: !710, inlinedAt: !3764)
!3777 = !DILocation(line: 1219, column: 24, scope: !710, inlinedAt: !3764)
!3778 = !DILocation(line: 1219, column: 9, scope: !710, inlinedAt: !3764)
!3779 = !DILocation(line: 1219, column: 15, scope: !710, inlinedAt: !3764)
!3780 = !DILocation(line: 1220, column: 19, scope: !710, inlinedAt: !3764)
!3781 = !DILocation(line: 1220, column: 9, scope: !710, inlinedAt: !3764)
!3782 = !DILocation(line: 1220, column: 17, scope: !710, inlinedAt: !3764)
!3783 = !DILocation(line: 1221, column: 23, scope: !710, inlinedAt: !3764)
!3784 = !DILocation(line: 1221, column: 5, scope: !710, inlinedAt: !3764)
!3785 = !DILocation(line: 1281, column: 16, scope: !1053)
!3786 = !DILocation(line: 1281, column: 15, scope: !1053)
!3787 = !DILocation(line: 1281, column: 5, scope: !1054)
!3788 = !DILocation(line: 1255, column: 16, scope: !1030, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 1282, column: 26, scope: !1052)
!3790 = !DILocation(line: 1244, column: 13, scope: !3719, inlinedAt: !3789)
!3791 = !DILocation(line: 1244, column: 20, scope: !3719, inlinedAt: !3789)
!3792 = !DILocation(line: 1244, column: 33, scope: !3719, inlinedAt: !3789)
!3793 = !DILocation(line: 1244, column: 26, scope: !3719, inlinedAt: !3789)
!3794 = !DILocation(line: 1244, column: 9, scope: !1030, inlinedAt: !3789)
!3795 = !DILocation(line: 1245, column: 21, scope: !3724, inlinedAt: !3789)
!3796 = !DILocation(line: 1246, column: 25, scope: !3724, inlinedAt: !3789)
!3797 = !DILocation(line: 1246, column: 9, scope: !3724, inlinedAt: !3789)
!3798 = !DILocation(line: 1286, column: 21, scope: !1062)
!3799 = !DILocation(line: 1248, column: 9, scope: !3724, inlinedAt: !3789)
!3800 = !DILocation(line: 1257, column: 16, scope: !1030, inlinedAt: !3789)
!3801 = !DILocation(line: 1250, column: 21, scope: !3732, inlinedAt: !3789)
!3802 = !DILocation(line: 1250, column: 9, scope: !1030, inlinedAt: !3789)
!3803 = !DILocation(line: 1255, column: 28, scope: !1030, inlinedAt: !3789)
!3804 = !DILocation(line: 1260, column: 21, scope: !3737, inlinedAt: !3789)
!3805 = !DILocation(line: 1255, column: 12, scope: !1030, inlinedAt: !3789)
!3806 = !DILocation(line: 1242, column: 15, scope: !1030, inlinedAt: !3789)
!3807 = !DILocation(line: 1256, column: 14, scope: !1030, inlinedAt: !3789)
!3808 = !DILocation(line: 1258, column: 19, scope: !3738, inlinedAt: !3789)
!3809 = !DILocation(line: 1258, column: 46, scope: !3738, inlinedAt: !3789)
!3810 = !DILocation(line: 1258, column: 31, scope: !3738, inlinedAt: !3789)
!3811 = !DILocation(line: 1260, column: 24, scope: !3737, inlinedAt: !3789)
!3812 = !DILocation(line: 1260, column: 15, scope: !3737, inlinedAt: !3789)
!3813 = !DILocation(line: 1261, column: 19, scope: !3737, inlinedAt: !3789)
!3814 = !DILocation(line: 1262, column: 5, scope: !3737, inlinedAt: !3789)
!3815 = !DILocation(line: 1263, column: 5, scope: !1030, inlinedAt: !3789)
!3816 = !DILocation(line: 1284, column: 13, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1284, column: 13)
!3818 = !DILocation(line: 1282, column: 19, scope: !1052)
!3819 = !DILocation(line: 1283, column: 13, scope: !1058)
!3820 = !DILocation(line: 1283, column: 13, scope: !1052)
!3821 = !DILocation(line: 1284, column: 13, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !1056, file: !1, discriminator: 1)
!3823 = !DILocation(line: 1284, column: 13, scope: !1056)
!3824 = !DILocation(line: 1284, column: 13, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3817, file: !1, discriminator: 3)
!3826 = !DILocation(line: 1286, column: 17, scope: !1062)
!3827 = !DILocation(line: 1286, column: 17, scope: !1063)
!3828 = !DILocation(line: 1287, column: 17, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !1060, file: !1, discriminator: 1)
!3830 = !DILocation(line: 1287, column: 17, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 1287, column: 17)
!3832 = !DILocation(line: 1287, column: 17, scope: !1060)
!3833 = !DILocation(line: 1287, column: 17, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3831, file: !1, discriminator: 3)
!3835 = !DILocation(line: 1281, column: 24, scope: !1053)
!3836 = !DILocation(line: 1270, column: 16, scope: !1042)
!3837 = !DILocation(line: 1294, column: 1, scope: !1042)
!3838 = !DILocation(line: 1297, column: 32, scope: !1036)
!3839 = !DILocation(line: 1299, column: 35, scope: !1036)
!3840 = !DILocation(line: 1299, column: 12, scope: !1036)
!3841 = !DILocation(line: 1299, column: 5, scope: !1036)
!3842 = !DILocation(line: 1305, column: 35, scope: !1039)
!3843 = !DILocation(line: 1307, column: 35, scope: !1039)
!3844 = !DILocation(line: 1307, column: 52, scope: !1039)
!3845 = !DILocation(line: 1307, column: 59, scope: !1039)
!3846 = !DILocation(line: 1307, column: 84, scope: !1039)
!3847 = !DILocation(line: 1307, column: 78, scope: !1039)
!3848 = !DILocation(line: 1307, column: 12, scope: !1039)
!3849 = !DILocation(line: 1307, column: 5, scope: !1039)
!3850 = !DILocation(line: 1382, column: 36, scope: !1064)
!3851 = !DILocation(line: 1385, column: 13, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1385, column: 9)
!3853 = !DILocation(line: 1399, column: 16, scope: !1064)
!3854 = !DILocation(line: 1385, column: 21, scope: !3852)
!3855 = !DILocation(line: 1385, column: 9, scope: !1064)
!3856 = !DILocation(line: 1388, column: 13, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1388, column: 9)
!3858 = !DILocation(line: 1388, column: 20, scope: !3857)
!3859 = !DILocation(line: 1388, column: 33, scope: !3857)
!3860 = !DILocation(line: 1388, column: 26, scope: !3857)
!3861 = !DILocation(line: 1388, column: 9, scope: !1064)
!3862 = !DILocation(line: 1389, column: 21, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !1, line: 1388, column: 40)
!3864 = !DILocation(line: 1390, column: 25, scope: !3863)
!3865 = !DILocation(line: 1390, column: 9, scope: !3863)
!3866 = !DILocation(line: 1392, column: 9, scope: !3863)
!3867 = !DILocation(line: 1397, column: 28, scope: !1064)
!3868 = !DILocation(line: 1397, column: 16, scope: !1064)
!3869 = !DILocation(line: 1397, column: 12, scope: !1064)
!3870 = !DILocation(line: 1384, column: 15, scope: !1064)
!3871 = !DILocation(line: 1398, column: 14, scope: !1064)
!3872 = !DILocation(line: 1400, column: 19, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1400, column: 9)
!3874 = !DILocation(line: 1400, column: 40, scope: !3873)
!3875 = !DILocation(line: 1400, column: 25, scope: !3873)
!3876 = !DILocation(line: 1402, column: 21, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 1400, column: 45)
!3878 = !DILocation(line: 1402, column: 24, scope: !3877)
!3879 = !DILocation(line: 1402, column: 15, scope: !3877)
!3880 = !DILocation(line: 1403, column: 19, scope: !3877)
!3881 = !DILocation(line: 1404, column: 5, scope: !3877)
!3882 = !DILocation(line: 1405, column: 5, scope: !1064)
!3883 = !DILocation(line: 1406, column: 5, scope: !1064)
!3884 = !DILocation(line: 1407, column: 1, scope: !1064)
!3885 = !DILocation(line: 1410, column: 32, scope: !1068)
!3886 = !DILocation(line: 1410, column: 48, scope: !1068)
!3887 = !DILocation(line: 1410, column: 64, scope: !1068)
!3888 = !DILocation(line: 1412, column: 5, scope: !1068)
!3889 = !DILocation(line: 1412, column: 19, scope: !1068)
!3890 = !DILocation(line: 1413, column: 5, scope: !1068)
!3891 = !DILocation(line: 1413, column: 15, scope: !1068)
!3892 = !DILocation(line: 1415, column: 10, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 1415, column: 9)
!3894 = !DILocation(line: 1415, column: 9, scope: !1068)
!3895 = !DILocation(line: 1419, column: 57, scope: !1068)
!3896 = !DILocation(line: 1364, column: 28, scope: !823, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 1419, column: 28, scope: !1068)
!3898 = !DILocation(line: 1368, column: 10, scope: !823, inlinedAt: !3897)
!3899 = !DILocation(line: 1369, column: 12, scope: !3298, inlinedAt: !3897)
!3900 = !DILocation(line: 1369, column: 9, scope: !823, inlinedAt: !3897)
!3901 = !DILocation(line: 1371, column: 20, scope: !823, inlinedAt: !3897)
!3902 = !DILocation(line: 1371, column: 9, scope: !823, inlinedAt: !3897)
!3903 = !DILocation(line: 1371, column: 11, scope: !823, inlinedAt: !3897)
!3904 = !DILocation(line: 1372, column: 24, scope: !823, inlinedAt: !3897)
!3905 = !DILocation(line: 1372, column: 9, scope: !823, inlinedAt: !3897)
!3906 = !DILocation(line: 1372, column: 15, scope: !823, inlinedAt: !3897)
!3907 = !DILocation(line: 1373, column: 5, scope: !823, inlinedAt: !3897)
!3908 = !DILocation(line: 1374, column: 9, scope: !823, inlinedAt: !3897)
!3909 = !DILocation(line: 1374, column: 15, scope: !823, inlinedAt: !3897)
!3910 = !DILocation(line: 1375, column: 24, scope: !823, inlinedAt: !3897)
!3911 = !DILocation(line: 1375, column: 9, scope: !823, inlinedAt: !3897)
!3912 = !DILocation(line: 1375, column: 15, scope: !823, inlinedAt: !3897)
!3913 = !DILocation(line: 1376, column: 19, scope: !823, inlinedAt: !3897)
!3914 = !DILocation(line: 1376, column: 9, scope: !823, inlinedAt: !3897)
!3915 = !DILocation(line: 1376, column: 17, scope: !823, inlinedAt: !3897)
!3916 = !DILocation(line: 1377, column: 23, scope: !823, inlinedAt: !3897)
!3917 = !DILocation(line: 1377, column: 5, scope: !823, inlinedAt: !3897)
!3918 = !DILocation(line: 1423, column: 16, scope: !1079)
!3919 = !DILocation(line: 1423, column: 15, scope: !1079)
!3920 = !DILocation(line: 1423, column: 5, scope: !1080)
!3921 = !DILocation(line: 1397, column: 16, scope: !1064, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1424, column: 26, scope: !1078)
!3923 = !DILocation(line: 1399, column: 16, scope: !1064, inlinedAt: !3922)
!3924 = !DILocation(line: 1385, column: 21, scope: !3852, inlinedAt: !3922)
!3925 = !DILocation(line: 1385, column: 9, scope: !1064, inlinedAt: !3922)
!3926 = !DILocation(line: 1388, column: 13, scope: !3857, inlinedAt: !3922)
!3927 = !DILocation(line: 1388, column: 20, scope: !3857, inlinedAt: !3922)
!3928 = !DILocation(line: 1388, column: 33, scope: !3857, inlinedAt: !3922)
!3929 = !DILocation(line: 1388, column: 26, scope: !3857, inlinedAt: !3922)
!3930 = !DILocation(line: 1388, column: 9, scope: !1064, inlinedAt: !3922)
!3931 = !DILocation(line: 1389, column: 21, scope: !3863, inlinedAt: !3922)
!3932 = !DILocation(line: 1390, column: 25, scope: !3863, inlinedAt: !3922)
!3933 = !DILocation(line: 1390, column: 9, scope: !3863, inlinedAt: !3922)
!3934 = !DILocation(line: 1428, column: 21, scope: !1088)
!3935 = !DILocation(line: 1392, column: 9, scope: !3863, inlinedAt: !3922)
!3936 = !DILocation(line: 1397, column: 28, scope: !1064, inlinedAt: !3922)
!3937 = !DILocation(line: 1397, column: 12, scope: !1064, inlinedAt: !3922)
!3938 = !DILocation(line: 1384, column: 15, scope: !1064, inlinedAt: !3922)
!3939 = !DILocation(line: 1398, column: 14, scope: !1064, inlinedAt: !3922)
!3940 = !DILocation(line: 1400, column: 19, scope: !3873, inlinedAt: !3922)
!3941 = !DILocation(line: 1400, column: 40, scope: !3873, inlinedAt: !3922)
!3942 = !DILocation(line: 1400, column: 25, scope: !3873, inlinedAt: !3922)
!3943 = !DILocation(line: 1402, column: 21, scope: !3877, inlinedAt: !3922)
!3944 = !DILocation(line: 1402, column: 24, scope: !3877, inlinedAt: !3922)
!3945 = !DILocation(line: 1402, column: 15, scope: !3877, inlinedAt: !3922)
!3946 = !DILocation(line: 1403, column: 19, scope: !3877, inlinedAt: !3922)
!3947 = !DILocation(line: 1404, column: 5, scope: !3877, inlinedAt: !3922)
!3948 = !DILocation(line: 1405, column: 5, scope: !1064, inlinedAt: !3922)
!3949 = !DILocation(line: 1426, column: 13, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 1426, column: 13)
!3951 = !DILocation(line: 1424, column: 19, scope: !1078)
!3952 = !DILocation(line: 1425, column: 13, scope: !1084)
!3953 = !DILocation(line: 1425, column: 13, scope: !1078)
!3954 = !DILocation(line: 1426, column: 13, scope: !3955)
!3955 = !DILexicalBlockFile(scope: !1082, file: !1, discriminator: 1)
!3956 = !DILocation(line: 1426, column: 13, scope: !1082)
!3957 = !DILocation(line: 1426, column: 13, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3950, file: !1, discriminator: 3)
!3959 = !DILocation(line: 1428, column: 17, scope: !1088)
!3960 = !DILocation(line: 1428, column: 17, scope: !1089)
!3961 = !DILocation(line: 1429, column: 17, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !1086, file: !1, discriminator: 1)
!3963 = !DILocation(line: 1429, column: 17, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 1429, column: 17)
!3965 = !DILocation(line: 1429, column: 17, scope: !1086)
!3966 = !DILocation(line: 1429, column: 17, scope: !3967)
!3967 = !DILexicalBlockFile(scope: !3964, file: !1, discriminator: 3)
!3968 = !DILocation(line: 1423, column: 24, scope: !1079)
!3969 = !DILocation(line: 1412, column: 16, scope: !1068)
!3970 = !DILocation(line: 1436, column: 1, scope: !1068)
