; ModuleID = './_collectionsmodule.bc'
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
%struct.dequeiterobject = type { %struct._object, i64, %struct.BLOCK*, %struct.dequeobject*, i64, i64 }
%struct.defdictobject = type { %struct.PyDictObject, %struct._object* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

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
@numfreeblocks = internal global i64 0, align 8
@freeblocks = internal global [10 x %struct.BLOCK*] zeroinitializer, align 16
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
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_collectionsmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @deque_type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @deque_type, i32 0, i32 0, i32 0))
  store %struct._typeobject* @PyDict_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i32 0, i32 30), align 8
  %call6 = call i32 @PyType_Ready(%struct._typeobject* @defdict_type)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc10 = add i64 %3, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @defdict_type, i32 0, i32 0, i32 0))
  %call12 = call i32 @PyType_Ready(%struct._typeobject* @dequeiter_type)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %5 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc16 = add i64 %5, 1
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequeiter_type, i32 0, i32 0, i32 0))
  %call18 = call i32 @PyType_Ready(%struct._typeobject* @dequereviter_type)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.15
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc22 = add i64 %7, 1
  store i64 %inc22, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @dequereviter_type, i32 0, i32 0, i32 0))
  %9 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.14, %if.then.8, %if.then.3, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_count_elements(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %mapping = alloca %struct._object*, align 8
  %oldval = alloca %struct._object*, align 8
  %newval = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %bound_get = alloca %struct._object*, align 8
  %mapping_get = alloca %struct._object*, align 8
  %dict_get = alloca %struct._object*, align 8
  %mapping_setitem = alloca %struct._object*, align 8
  %dict_setitem = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp129 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_xdecref_tmp156 = alloca %struct._object*, align 8
  %_py_decref_tmp160 = alloca %struct._object*, align 8
  %_py_xdecref_tmp173 = alloca %struct._object*, align 8
  %_py_decref_tmp177 = alloca %struct._object*, align 8
  %_py_xdecref_tmp190 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_xdecref_tmp207 = alloca %struct._object*, align 8
  %_py_decref_tmp211 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %newval, align 8
  store %struct._object* null, %struct._object** %key, align 8
  store %struct._object* null, %struct._object** %zero, align 8
  store %struct._object* null, %struct._object** %one, align 8
  store %struct._object* null, %struct._object** %bound_get, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i64 2, i64 2, %struct._object** %mapping, %struct._object** %iterable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call4, %struct._object** %one, align 8
  %3 = load %struct._object*, %struct._object** %one, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %done

if.end.7:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %mapping, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call8 = call %struct._object* @_PyType_LookupId(%struct._typeobject* %5, %struct._Py_Identifier* @_count_elements.PyId_get)
  store %struct._object* %call8, %struct._object** %mapping_get, align 8
  %call9 = call %struct._object* @_PyType_LookupId(%struct._typeobject* @PyDict_Type, %struct._Py_Identifier* @_count_elements.PyId_get)
  store %struct._object* %call9, %struct._object** %dict_get, align 8
  %6 = load %struct._object*, %struct._object** %mapping, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %call11 = call %struct._object* @_PyType_LookupId(%struct._typeobject* %7, %struct._Py_Identifier* @_count_elements.PyId___setitem__)
  store %struct._object* %call11, %struct._object** %mapping_setitem, align 8
  %call12 = call %struct._object* @_PyType_LookupId(%struct._typeobject* @PyDict_Type, %struct._Py_Identifier* @_count_elements.PyId___setitem__)
  store %struct._object* %call12, %struct._object** %dict_setitem, align 8
  %8 = load %struct._object*, %struct._object** %mapping_get, align 8
  %cmp13 = icmp ne %struct._object* %8, null
  br i1 %cmp13, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %mapping_get, align 8
  %10 = load %struct._object*, %struct._object** %dict_get, align 8
  %cmp14 = icmp eq %struct._object* %9, %10
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.61

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** %mapping_setitem, align 8
  %cmp16 = icmp ne %struct._object* %11, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.61

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %12 = load %struct._object*, %struct._object** %mapping_setitem, align 8
  %13 = load %struct._object*, %struct._object** %dict_setitem, align 8
  %cmp18 = icmp eq %struct._object* %12, %13
  br i1 %cmp18, label %if.then.19, label %if.else.61

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %while.body

while.body:                                       ; preds = %if.then.19, %do.end.60
  %14 = load %struct._object*, %struct._object** %it, align 8
  %call20 = call %struct._object* @PyIter_Next(%struct._object* %14)
  store %struct._object* %call20, %struct._object** %key, align 8
  %15 = load %struct._object*, %struct._object** %key, align 8
  %cmp21 = icmp eq %struct._object* %15, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  br label %while.end

if.end.23:                                        ; preds = %while.body
  %16 = load %struct._object*, %struct._object** %mapping, align 8
  %17 = load %struct._object*, %struct._object** %key, align 8
  %call24 = call %struct._object* @PyDict_GetItem(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call24, %struct._object** %oldval, align 8
  %18 = load %struct._object*, %struct._object** %oldval, align 8
  %cmp25 = icmp eq %struct._object* %18, null
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.23
  %19 = load %struct._object*, %struct._object** %mapping, align 8
  %20 = load %struct._object*, %struct._object** %key, align 8
  %21 = load %struct._object*, %struct._object** %one, align 8
  %call27 = call i32 @PyDict_SetItem(%struct._object* %19, %struct._object* %20, %struct._object* %21)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  br label %while.end

if.end.30:                                        ; preds = %if.then.26
  br label %if.end.49

if.else:                                          ; preds = %if.end.23
  %22 = load %struct._object*, %struct._object** %oldval, align 8
  %23 = load %struct._object*, %struct._object** %one, align 8
  %call31 = call %struct._object* @PyNumber_Add(%struct._object* %22, %struct._object* %23)
  store %struct._object* %call31, %struct._object** %newval, align 8
  %24 = load %struct._object*, %struct._object** %newval, align 8
  %cmp32 = icmp eq %struct._object* %24, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else
  br label %while.end

if.end.34:                                        ; preds = %if.else
  %25 = load %struct._object*, %struct._object** %mapping, align 8
  %26 = load %struct._object*, %struct._object** %key, align 8
  %27 = load %struct._object*, %struct._object** %newval, align 8
  %call35 = call i32 @PyDict_SetItem(%struct._object* %25, %struct._object* %26, %struct._object* %27)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %while.end

if.end.38:                                        ; preds = %if.end.34
  br label %do.body

do.body:                                          ; preds = %if.end.38
  %28 = load %struct._object*, %struct._object** %newval, align 8
  store %struct._object* %28, %struct._object** %_py_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp39 = icmp ne %struct._object* %29, null
  br i1 %cmp39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %newval, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %30 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.44:                                       ; preds = %do.body.41
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end

do.end:                                           ; preds = %if.end.46
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %do.body
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %if.end.30
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %37 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp51, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %39, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %42(%struct._object* %43)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %while.body

while.end:                                        ; preds = %if.then.37, %if.then.33, %if.then.29, %if.then.22
  br label %if.end.127

if.else.61:                                       ; preds = %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %if.end.7
  %44 = load %struct._object*, %struct._object** %mapping, align 8
  %call62 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %44, %struct._Py_Identifier* @_count_elements.PyId_get)
  store %struct._object* %call62, %struct._object** %bound_get, align 8
  %45 = load %struct._object*, %struct._object** %bound_get, align 8
  %cmp63 = icmp eq %struct._object* %45, null
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.61
  br label %done

if.end.65:                                        ; preds = %if.else.61
  %call66 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call66, %struct._object** %zero, align 8
  %46 = load %struct._object*, %struct._object** %zero, align 8
  %cmp67 = icmp eq %struct._object* %46, null
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  br label %done

if.end.69:                                        ; preds = %if.end.65
  br label %while.body.70

while.body.70:                                    ; preds = %if.end.69, %do.end.125
  %47 = load %struct._object*, %struct._object** %it, align 8
  %call71 = call %struct._object* @PyIter_Next(%struct._object* %47)
  store %struct._object* %call71, %struct._object** %key, align 8
  %48 = load %struct._object*, %struct._object** %key, align 8
  %cmp72 = icmp eq %struct._object* %48, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %while.body.70
  br label %while.end.126

if.end.74:                                        ; preds = %while.body.70
  %49 = load %struct._object*, %struct._object** %bound_get, align 8
  %50 = load %struct._object*, %struct._object** %key, align 8
  %51 = load %struct._object*, %struct._object** %zero, align 8
  %call75 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %49, %struct._object* %50, %struct._object* %51, i8* null)
  store %struct._object* %call75, %struct._object** %oldval, align 8
  %52 = load %struct._object*, %struct._object** %oldval, align 8
  %cmp76 = icmp eq %struct._object* %52, null
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  br label %while.end.126

if.end.78:                                        ; preds = %if.end.74
  %53 = load %struct._object*, %struct._object** %oldval, align 8
  %54 = load %struct._object*, %struct._object** %one, align 8
  %call79 = call %struct._object* @PyNumber_Add(%struct._object* %53, %struct._object* %54)
  store %struct._object* %call79, %struct._object** %newval, align 8
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.78
  %55 = load %struct._object*, %struct._object** %oldval, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp81, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %57, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %60(%struct._object* %61)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %62 = load %struct._object*, %struct._object** %newval, align 8
  %cmp91 = icmp eq %struct._object* %62, null
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.90
  br label %while.end.126

if.end.93:                                        ; preds = %do.end.90
  %63 = load %struct._object*, %struct._object** %mapping, align 8
  %64 = load %struct._object*, %struct._object** %key, align 8
  %65 = load %struct._object*, %struct._object** %newval, align 8
  %call94 = call i32 @PyObject_SetItem(%struct._object* %63, %struct._object* %64, %struct._object* %65)
  %cmp95 = icmp eq i32 %call94, -1
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %while.end.126

if.end.97:                                        ; preds = %if.end.93
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %66 = load %struct._object*, %struct._object** %newval, align 8
  store %struct._object* %66, %struct._object** %_py_tmp99, align 8
  %67 = load %struct._object*, %struct._object** %_py_tmp99, align 8
  %cmp100 = icmp ne %struct._object* %67, null
  br i1 %cmp100, label %if.then.101, label %if.end.113

if.then.101:                                      ; preds = %do.body.98
  store %struct._object* null, %struct._object** %newval, align 8
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  %68 = load %struct._object*, %struct._object** %_py_tmp99, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp103, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %70, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %73(%struct._object* %74)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.98
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %75 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp116, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %77, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %80(%struct._object* %81)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %while.body.70

while.end.126:                                    ; preds = %if.then.96, %if.then.92, %if.then.77, %if.then.73
  br label %if.end.127

if.end.127:                                       ; preds = %while.end.126, %while.end
  br label %done

done:                                             ; preds = %if.end.127, %if.then.68, %if.then.64, %if.then.6
  br label %do.body.128

do.body.128:                                      ; preds = %done
  %82 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp129, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt130, align 8
  %dec131 = add i64 %84, -1
  store i64 %dec131, i64* %ob_refcnt130, align 8
  %cmp132 = icmp ne i64 %dec131, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %do.body.128
  br label %if.end.137

if.else.134:                                      ; preds = %do.body.128
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  call void %87(%struct._object* %88)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  %89 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp, align 8
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp140 = icmp ne %struct._object* %90, null
  br i1 %cmp140, label %if.then.141, label %if.end.153

if.then.141:                                      ; preds = %do.body.139
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp143, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %93, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.142
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %96(%struct._object* %97)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %do.body.139
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  br label %do.body.155

do.body.155:                                      ; preds = %do.end.154
  %98 = load %struct._object*, %struct._object** %newval, align 8
  store %struct._object* %98, %struct._object** %_py_xdecref_tmp156, align 8
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp156, align 8
  %cmp157 = icmp ne %struct._object* %99, null
  br i1 %cmp157, label %if.then.158, label %if.end.170

if.then.158:                                      ; preds = %do.body.155
  br label %do.body.159

do.body.159:                                      ; preds = %if.then.158
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp156, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp160, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt161, align 8
  %dec162 = add i64 %102, -1
  store i64 %dec162, i64* %ob_refcnt161, align 8
  %cmp163 = icmp ne i64 %dec162, 0
  br i1 %cmp163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.159
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.159
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  call void %105(%struct._object* %106)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %if.end.170

if.end.170:                                       ; preds = %do.end.169, %do.body.155
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  br label %do.body.172

do.body.172:                                      ; preds = %do.end.171
  %107 = load %struct._object*, %struct._object** %bound_get, align 8
  store %struct._object* %107, %struct._object** %_py_xdecref_tmp173, align 8
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp173, align 8
  %cmp174 = icmp ne %struct._object* %108, null
  br i1 %cmp174, label %if.then.175, label %if.end.187

if.then.175:                                      ; preds = %do.body.172
  br label %do.body.176

do.body.176:                                      ; preds = %if.then.175
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp173, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp177, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt178, align 8
  %dec179 = add i64 %111, -1
  store i64 %dec179, i64* %ob_refcnt178, align 8
  %cmp180 = icmp ne i64 %dec179, 0
  br i1 %cmp180, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.176
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.176
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  call void %114(%struct._object* %115)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.body.172
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.188
  %116 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %116, %struct._object** %_py_xdecref_tmp190, align 8
  %117 = load %struct._object*, %struct._object** %_py_xdecref_tmp190, align 8
  %cmp191 = icmp ne %struct._object* %117, null
  br i1 %cmp191, label %if.then.192, label %if.end.204

if.then.192:                                      ; preds = %do.body.189
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %118 = load %struct._object*, %struct._object** %_py_xdecref_tmp190, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp194, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt195, align 8
  %dec196 = add i64 %120, -1
  store i64 %dec196, i64* %ob_refcnt195, align 8
  %cmp197 = icmp ne i64 %dec196, 0
  br i1 %cmp197, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %do.body.193
  br label %if.end.202

if.else.199:                                      ; preds = %do.body.193
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  call void %123(%struct._object* %124)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.198
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  br label %if.end.204

if.end.204:                                       ; preds = %do.end.203, %do.body.189
  br label %do.end.205

do.end.205:                                       ; preds = %if.end.204
  br label %do.body.206

do.body.206:                                      ; preds = %do.end.205
  %125 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %125, %struct._object** %_py_xdecref_tmp207, align 8
  %126 = load %struct._object*, %struct._object** %_py_xdecref_tmp207, align 8
  %cmp208 = icmp ne %struct._object* %126, null
  br i1 %cmp208, label %if.then.209, label %if.end.221

if.then.209:                                      ; preds = %do.body.206
  br label %do.body.210

do.body.210:                                      ; preds = %if.then.209
  %127 = load %struct._object*, %struct._object** %_py_xdecref_tmp207, align 8
  store %struct._object* %127, %struct._object** %_py_decref_tmp211, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  %ob_refcnt212 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt212, align 8
  %dec213 = add i64 %129, -1
  store i64 %dec213, i64* %ob_refcnt212, align 8
  %cmp214 = icmp ne i64 %dec213, 0
  br i1 %cmp214, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %do.body.210
  br label %if.end.219

if.else.216:                                      ; preds = %do.body.210
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  %ob_type217 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type217, align 8
  %tp_dealloc218 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc218, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  call void %132(%struct._object* %133)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.215
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  br label %if.end.221

if.end.221:                                       ; preds = %do.end.220, %do.body.206
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  %call223 = call %struct._object* @PyErr_Occurred()
  %tobool224 = icmp ne %struct._object* %call223, null
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %do.end.222
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.226:                                       ; preds = %do.end.222
  %134 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %134, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.226, %if.then.225, %if.then.2, %if.then
  %135 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %135
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @_PyType_LookupId(%struct._typeobject*, %struct._Py_Identifier*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal void @deque_dealloc(%struct.dequeobject* %deque) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %weakreflist = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 7
  %3 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %5 = bitcast %struct.dequeobject* %4 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %6, i32 0, i32 1
  %7 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %cmp1 = icmp ne %struct.BLOCK* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  call void @deque_clear(%struct.dequeobject* %8)
  %9 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %9, i32 0, i32 1
  %10 = load %struct.BLOCK*, %struct.BLOCK** %leftblock3, align 8
  call void @freeblock(%struct.BLOCK* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock5 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %11, i32 0, i32 1
  store %struct.BLOCK* null, %struct.BLOCK** %leftblock5, align 8
  %12 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %12, i32 0, i32 2
  store %struct.BLOCK* null, %struct.BLOCK** %rightblock, align 8
  %13 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %14 = bitcast %struct.dequeobject* %13 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 38
  %16 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %17 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %18 = bitcast %struct.dequeobject* %17 to i8*
  call void %16(i8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_repr(%struct._object* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct._object*, align 8
  %aslist = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %deque, %struct._object** %deque.addr, align 8
  %0 = load %struct._object*, %struct._object** %deque.addr, align 8
  %call = call i32 @Py_ReprEnter(%struct._object* %0)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %3 = load %struct._object*, %struct._object** %deque.addr, align 8
  %call5 = call %struct._object* @PySequence_List(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %aslist, align 8
  %4 = load %struct._object*, %struct._object** %aslist, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %deque.addr, align 8
  call void @Py_ReprLeave(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %deque.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.dequeobject*
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %7, i32 0, i32 6
  %8 = load i64, i64* %maxlen, align 8
  %cmp9 = icmp ne i64 %8, -1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %aslist, align 8
  %10 = load %struct._object*, %struct._object** %deque.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.dequeobject*
  %maxlen11 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %11, i32 0, i32 6
  %12 = load i64, i64* %maxlen11, align 8
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), %struct._object* %9, i64 %12)
  store %struct._object* %call12, %struct._object** %result, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %aslist, align 8
  %call13 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct._object* %13)
  store %struct._object* %call13, %struct._object** %result, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %aslist, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else.17:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %deque.addr, align 8
  call void @Py_ReprLeave(%struct._object* %21)
  %22 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.end, %if.then.2
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @deque_traverse(%struct.dequeobject* %deque, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %deque.addr = alloca %struct.dequeobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %item = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %indexlo = alloca i64, align 8
  %vret = alloca i32, align 4
  %vret17 = alloca i32, align 4
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 3
  %1 = load i64, i64* %leftindex, align 8
  store i64 %1, i64* %indexlo, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 1
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  store %struct.BLOCK* %3, %struct.BLOCK** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %4 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %5, i32 0, i32 2
  %6 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %cmp = icmp ne %struct.BLOCK* %4, %6
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %indexlo, align 8
  store i64 %7, i64* %index, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i64, i64* %index, align 8
  %cmp2 = icmp slt i64 %8, 62
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i64, i64* %index, align 8
  %10 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %10, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %9
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %11, %struct._object** %item, align 8
  br label %do.body

do.body:                                          ; preds = %for.body.3
  %12 = load %struct._object*, %struct._object** %item, align 8
  %tobool = icmp ne %struct._object* %12, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %13(%struct._object* %14, i8* %15)
  store i32 %call, i32* %vret, align 4
  %16 = load i32, i32* %vret, align 4
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %17 = load i32, i32* %vret, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i64, i64* %index, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %index, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i64 0, i64* %indexlo, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %19 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %19, i32 0, i32 2
  %20 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %20, %struct.BLOCK** %b, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %21 = load i64, i64* %indexlo, align 8
  store i64 %21, i64* %index, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.24, %for.end.8
  %22 = load i64, i64* %index, align 8
  %23 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %23, i32 0, i32 4
  %24 = load i64, i64* %rightindex, align 8
  %cmp10 = icmp sle i64 %22, %24
  br i1 %cmp10, label %for.body.11, label %for.end.26

for.body.11:                                      ; preds = %for.cond.9
  %25 = load i64, i64* %index, align 8
  %26 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data12 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %26, i32 0, i32 1
  %arrayidx13 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data12, i32 0, i64 %25
  %27 = load %struct._object*, %struct._object** %arrayidx13, align 8
  store %struct._object* %27, %struct._object** %item, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %for.body.11
  %28 = load %struct._object*, %struct._object** %item, align 8
  %tobool15 = icmp ne %struct._object* %28, null
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %do.body.14
  %29 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %30 = load %struct._object*, %struct._object** %item, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call18 = call i32 %29(%struct._object* %30, i8* %31)
  store i32 %call18, i32* %vret17, align 4
  %32 = load i32, i32* %vret17, align 4
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %33 = load i32, i32* %vret17, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %do.body.14
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %for.inc.24

for.inc.24:                                       ; preds = %do.end.23
  %34 = load i64, i64* %index, align 8
  %inc25 = add i64 %34, 1
  store i64 %inc25, i64* %index, align 8
  br label %for.cond.9

for.end.26:                                       ; preds = %for.cond.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.20, %if.then.5
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @deque_clear(%struct.dequeobject* %deque) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call = call %struct._object* @deque_pop(%struct.dequeobject* %3, %struct._object* null)
  store %struct._object* %call, %struct._object** %item, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %4 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %it1 = alloca %struct._object*, align 8
  %it2 = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %y = alloca %struct._object*, align 8
  %vs = alloca i64, align 8
  %ws = alloca i64, align 8
  %b = alloca i32, align 4
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_xdecref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %_py_xdecref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp157 = alloca %struct._object*, align 8
  %_py_xdecref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct._object* null, %struct._object** %it1, align 8
  store %struct._object* null, %struct._object** %it2, align 8
  store i32 -1, i32* %cmp, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %1, @deque_type
  br i1 %cmp1, label %lor.lhs.false.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @deque_type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, @deque_type
  br i1 %cmp5, label %if.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @deque_type)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6, %lor.lhs.false.3
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.dequeobject*
  %11 = bitcast %struct.dequeobject* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  store i64 %12, i64* %vs, align 8
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.dequeobject*
  %15 = bitcast %struct.dequeobject* %14 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size10, align 8
  store i64 %16, i64* %ws, align 8
  %17 = load i32, i32* %op.addr, align 4
  %cmp11 = icmp eq i32 %17, 2
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %v.addr, align 8
  %19 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp13 = icmp eq %struct._object* %18, %19
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %20 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc15 = add i64 %20, 1
  store i64 %inc15, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %21 = load i64, i64* %vs, align 8
  %22 = load i64, i64* %ws, align 8
  %cmp17 = icmp ne i64 %21, %22
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %23 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc19 = add i64 %23, 1
  store i64 %inc19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %24 = load i32, i32* %op.addr, align 4
  %cmp22 = icmp eq i32 %24, 3
  br i1 %cmp22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.21
  %25 = load %struct._object*, %struct._object** %v.addr, align 8
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp24 = icmp eq %struct._object* %25, %26
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %27 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc26 = add i64 %27, 1
  store i64 %inc26, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.23
  %28 = load i64, i64* %vs, align 8
  %29 = load i64, i64* %ws, align 8
  %cmp28 = icmp ne i64 %28, %29
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %30 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc30 = add i64 %30, 1
  store i64 %inc30, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.21
  %31 = load %struct._object*, %struct._object** %v.addr, align 8
  %call33 = call %struct._object* @PyObject_GetIter(%struct._object* %31)
  store %struct._object* %call33, %struct._object** %it1, align 8
  %32 = load %struct._object*, %struct._object** %it1, align 8
  %cmp34 = icmp eq %struct._object* %32, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  br label %done

if.end.36:                                        ; preds = %if.end.32
  %33 = load %struct._object*, %struct._object** %w.addr, align 8
  %call37 = call %struct._object* @PyObject_GetIter(%struct._object* %33)
  store %struct._object* %call37, %struct._object** %it2, align 8
  %34 = load %struct._object*, %struct._object** %it2, align 8
  %cmp38 = icmp eq %struct._object* %34, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  br label %done

if.end.40:                                        ; preds = %if.end.36
  br label %for.cond

for.cond:                                         ; preds = %if.end.97, %if.end.40
  %35 = load %struct._object*, %struct._object** %it1, align 8
  %call41 = call %struct._object* @PyIter_Next(%struct._object* %35)
  store %struct._object* %call41, %struct._object** %x, align 8
  %36 = load %struct._object*, %struct._object** %x, align 8
  %cmp42 = icmp eq %struct._object* %36, null
  br i1 %cmp42, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.cond
  %call43 = call %struct._object* @PyErr_Occurred()
  %tobool44 = icmp ne %struct._object* %call43, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true
  br label %done

if.end.46:                                        ; preds = %land.lhs.true, %for.cond
  %37 = load %struct._object*, %struct._object** %it2, align 8
  %call47 = call %struct._object* @PyIter_Next(%struct._object* %37)
  store %struct._object* %call47, %struct._object** %y, align 8
  %38 = load %struct._object*, %struct._object** %x, align 8
  %cmp48 = icmp eq %struct._object* %38, null
  br i1 %cmp48, label %if.then.51, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.46
  %39 = load %struct._object*, %struct._object** %y, align 8
  %cmp50 = icmp eq %struct._object* %39, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false.49, %if.end.46
  br label %for.end

if.end.52:                                        ; preds = %lor.lhs.false.49
  %40 = load %struct._object*, %struct._object** %x, align 8
  %41 = load %struct._object*, %struct._object** %y, align 8
  %call53 = call i32 @PyObject_RichCompareBool(%struct._object* %40, %struct._object* %41, i32 2)
  store i32 %call53, i32* %b, align 4
  %42 = load i32, i32* %b, align 4
  %cmp54 = icmp eq i32 %42, 0
  br i1 %cmp54, label %if.then.55, label %if.end.72

if.then.55:                                       ; preds = %if.end.52
  %43 = load %struct._object*, %struct._object** %x, align 8
  %44 = load %struct._object*, %struct._object** %y, align 8
  %45 = load i32, i32* %op.addr, align 4
  %call56 = call i32 @PyObject_RichCompareBool(%struct._object* %43, %struct._object* %44, i32 %45)
  store i32 %call56, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.55
  %46 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %48, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp57 = icmp ne i64 %dec, 0
  br i1 %cmp57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %do.body
  br label %if.end.60

if.else:                                          ; preds = %do.body
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %51(%struct._object* %52)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.58
  br label %do.end

do.end:                                           ; preds = %if.end.60
  br label %do.body.61

do.body.61:                                       ; preds = %do.end
  %53 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp62, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %55, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %58(%struct._object* %59)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %done

if.end.72:                                        ; preds = %if.end.52
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  %60 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp74, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %62, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %65(%struct._object* %66)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %67 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp85, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %69, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %72(%struct._object* %73)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %74 = load i32, i32* %b, align 4
  %cmp95 = icmp eq i32 %74, -1
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.end.94
  br label %done

if.end.97:                                        ; preds = %do.end.94
  br label %for.cond

for.end:                                          ; preds = %if.then.51
  br label %do.body.98

do.body.98:                                       ; preds = %for.end
  %75 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp99 = icmp ne %struct._object* %76, null
  br i1 %cmp99, label %if.then.100, label %if.end.112

if.then.100:                                      ; preds = %do.body.98
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp102, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %79, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %82(%struct._object* %83)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.body.98
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %84 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %84, %struct._object** %_py_xdecref_tmp115, align 8
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp115, align 8
  %cmp116 = icmp ne %struct._object* %85, null
  br i1 %cmp116, label %if.then.117, label %if.end.129

if.then.117:                                      ; preds = %do.body.114
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp115, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp119, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %88, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.118
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.118
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %91(%struct._object* %92)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %do.body.114
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  %call131 = call %struct._object* @PyErr_Occurred()
  %tobool132 = icmp ne %struct._object* %call131, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %do.end.130
  br label %done

if.end.134:                                       ; preds = %do.end.130
  %93 = load i32, i32* %op.addr, align 4
  switch i32 %93, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.136
    i32 2, label %sw.bb.139
    i32 3, label %sw.bb.142
    i32 4, label %sw.bb.145
    i32 5, label %sw.bb.148
  ]

sw.bb:                                            ; preds = %if.end.134
  %94 = load %struct._object*, %struct._object** %y, align 8
  %cmp135 = icmp ne %struct._object* %94, null
  %conv = zext i1 %cmp135 to i32
  store i32 %conv, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.136:                                        ; preds = %if.end.134
  %95 = load %struct._object*, %struct._object** %x, align 8
  %cmp137 = icmp eq %struct._object* %95, null
  %conv138 = zext i1 %cmp137 to i32
  store i32 %conv138, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end.134
  %96 = load %struct._object*, %struct._object** %x, align 8
  %97 = load %struct._object*, %struct._object** %y, align 8
  %cmp140 = icmp eq %struct._object* %96, %97
  %conv141 = zext i1 %cmp140 to i32
  store i32 %conv141, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.142:                                        ; preds = %if.end.134
  %98 = load %struct._object*, %struct._object** %x, align 8
  %99 = load %struct._object*, %struct._object** %y, align 8
  %cmp143 = icmp ne %struct._object* %98, %99
  %conv144 = zext i1 %cmp143 to i32
  store i32 %conv144, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.end.134
  %100 = load %struct._object*, %struct._object** %x, align 8
  %cmp146 = icmp ne %struct._object* %100, null
  %conv147 = zext i1 %cmp146 to i32
  store i32 %conv147, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.end.134
  %101 = load %struct._object*, %struct._object** %y, align 8
  %cmp149 = icmp eq %struct._object* %101, null
  %conv150 = zext i1 %cmp149 to i32
  store i32 %conv150, i32* %cmp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.134, %sw.bb.148, %sw.bb.145, %sw.bb.142, %sw.bb.139, %sw.bb.136, %sw.bb
  br label %done

done:                                             ; preds = %sw.epilog, %if.then.133, %if.then.96, %do.end.71, %if.then.45, %if.then.39, %if.then.35
  br label %do.body.151

do.body.151:                                      ; preds = %done
  %102 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %102, %struct._object** %_py_xdecref_tmp152, align 8
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp152, align 8
  %cmp153 = icmp ne %struct._object* %103, null
  br i1 %cmp153, label %if.then.155, label %if.end.168

if.then.155:                                      ; preds = %do.body.151
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.155
  %104 = load %struct._object*, %struct._object** %_py_xdecref_tmp152, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp157, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_refcnt158 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt158, align 8
  %dec159 = add i64 %106, -1
  store i64 %dec159, i64* %ob_refcnt158, align 8
  %cmp160 = icmp ne i64 %dec159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.156
  br label %if.end.166

if.else.163:                                      ; preds = %do.body.156
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_type164 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type164, align 8
  %tp_dealloc165 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc165, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  call void %109(%struct._object* %110)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %if.end.168

if.end.168:                                       ; preds = %do.end.167, %do.body.151
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.169
  %111 = load %struct._object*, %struct._object** %it2, align 8
  store %struct._object* %111, %struct._object** %_py_xdecref_tmp171, align 8
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp171, align 8
  %cmp172 = icmp ne %struct._object* %112, null
  br i1 %cmp172, label %if.then.174, label %if.end.187

if.then.174:                                      ; preds = %do.body.170
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp171, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp176, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %115, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %118(%struct._object* %119)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.body.170
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  %120 = load i32, i32* %cmp, align 4
  %cmp189 = icmp eq i32 %120, 1
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %do.end.188
  %121 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc192 = add i64 %121, 1
  store i64 %inc192, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.193:                                       ; preds = %do.end.188
  %122 = load i32, i32* %cmp, align 4
  %cmp194 = icmp eq i32 %122, 0
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %if.end.193
  %123 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc197 = add i64 %123, 1
  store i64 %inc197, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.198:                                       ; preds = %if.end.193
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.198, %if.then.196, %if.then.191, %if.then.29, %if.then.25, %if.then.18, %if.then.14, %if.then
  %124 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %124
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_iter(%struct.dequeobject* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %it = alloca %struct.dequeiterobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @dequeiter_type)
  %0 = bitcast %struct._object* %call to %struct.dequeiterobject*
  store %struct.dequeiterobject* %0, %struct.dequeiterobject** %it, align 8
  %1 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %cmp = icmp eq %struct.dequeiterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 1
  %3 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %4 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %4, i32 0, i32 2
  store %struct.BLOCK* %3, %struct.BLOCK** %b, align 8
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %5, i32 0, i32 3
  %6 = load i64, i64* %leftindex, align 8
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %7, i32 0, i32 1
  store i64 %6, i64* %index, align 8
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %9 = bitcast %struct.dequeobject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %12 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %deque1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %12, i32 0, i32 3
  store %struct.dequeobject* %11, %struct.dequeobject** %deque1, align 8
  %13 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %13, i32 0, i32 5
  %14 = load i64, i64* %state, align 8
  %15 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %state2 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %15, i32 0, i32 4
  store i64 %14, i64* %state2, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %17 = bitcast %struct.dequeobject* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  %19 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %19, i32 0, i32 5
  store i64 %18, i64* %counter, align 8
  %20 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %21 = bitcast %struct.dequeiterobject* %20 to i8*
  call void @PyObject_GC_Track(i8* %21)
  %22 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %23 = bitcast %struct.dequeiterobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal i32 @deque_init(%struct.dequeobject* %deque, %struct._object* %args, %struct._object* %kwdargs) #0 {
entry:
  %retval = alloca i32, align 4
  %deque.addr = alloca %struct.dequeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdargs.addr = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %maxlenobj = alloca %struct._object*, align 8
  %maxlen = alloca i64, align 8
  %kwlist = alloca [3 x i8*], align 16
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdargs, %struct._object** %kwdargs.addr, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  store %struct._object* null, %struct._object** %maxlenobj, align 8
  store i64 -1, i64* %maxlen, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @deque_init.kwlist to i8*), i64 24, i32 16, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwdargs.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8** %arraydecay, %struct._object** %iterable, %struct._object** %maxlenobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %maxlenobj, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %maxlenobj, align 8
  %cmp1 = icmp ne %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** %maxlenobj, align 8
  %call3 = call i64 @PyLong_AsSsize_t(%struct._object* %5)
  store i64 %call3, i64* %maxlen, align 8
  %6 = load i64, i64* %maxlen, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.9

land.lhs.true.5:                                  ; preds = %if.then.2
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool7 = icmp ne %struct._object* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.5, %if.then.2
  %7 = load i64, i64* %maxlen, align 8
  %cmp10 = icmp slt i64 %7, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %if.end
  %9 = load i64, i64* %maxlen, align 8
  %10 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen14 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %10, i32 0, i32 6
  store i64 %9, i64* %maxlen14, align 8
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  call void @deque_clear(%struct.dequeobject* %11)
  %12 = load %struct._object*, %struct._object** %iterable, align 8
  %cmp15 = icmp ne %struct._object* %12, null
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.13
  %13 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %14 = load %struct._object*, %struct._object** %iterable, align 8
  %call17 = call %struct._object* @deque_extend(%struct.dequeobject* %13, %struct._object* %14)
  store %struct._object* %call17, %struct._object** %rv, align 8
  %15 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %15, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.16
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %16 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.19, %if.then.11, %if.then.8, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %deque = alloca %struct.dequeobject*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.dequeobject*
  store %struct.dequeobject* %3, %struct.dequeobject** %deque, align 8
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %cmp = icmp eq %struct.dequeobject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.BLOCK* @newblock(i64 0)
  store %struct.BLOCK* %call1, %struct.BLOCK** %b, align 8
  %5 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp2 = icmp eq %struct.BLOCK* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %7 = bitcast %struct.dequeobject* %6 to %struct._object*
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %15 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %15, i32 0, i32 1
  store %struct.BLOCK* %14, %struct.BLOCK** %leftblock, align 8
  %16 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %17 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %17, i32 0, i32 2
  store %struct.BLOCK* %16, %struct.BLOCK** %rightblock, align 8
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %18, i32 0, i32 3
  store i64 31, i64* %leftindex, align 8
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %19, i32 0, i32 4
  store i64 30, i64* %rightindex, align 8
  %20 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %21 = bitcast %struct.dequeobject* %20 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  store i64 0, i64* %ob_size, align 8
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 5
  store i64 0, i64* %state, align 8
  %23 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %weakreflist = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %23, i32 0, i32 7
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %24 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %24, i32 0, i32 6
  store i64 -1, i64* %maxlen, align 8
  %25 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %26 = bitcast %struct.dequeobject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare void @PyObject_GC_Del(i8*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @freeblock(%struct.BLOCK* %b) #0 {
entry:
  %b.addr = alloca %struct.BLOCK*, align 8
  store %struct.BLOCK* %b, %struct.BLOCK** %b.addr, align 8
  %0 = load i64, i64* @numfreeblocks, align 8
  %cmp = icmp slt i64 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.BLOCK*, %struct.BLOCK** %b.addr, align 8
  %2 = load i64, i64* @numfreeblocks, align 8
  %arrayidx = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i32 0, i64 %2
  store %struct.BLOCK* %1, %struct.BLOCK** %arrayidx, align 8
  %3 = load i64, i64* @numfreeblocks, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* @numfreeblocks, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.BLOCK*, %struct.BLOCK** %b.addr, align 8
  %5 = bitcast %struct.BLOCK* %4 to i8*
  call void @PyMem_Free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @PyMem_Free(i8*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PySequence_List(%struct._object*) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @deque_len(%struct.dequeobject* %deque) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_item(%struct.dequeobject* %deque, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %i.addr = alloca i64, align 8
  %b = alloca %struct.BLOCK*, align 8
  %item = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %index = alloca i64, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  store i64 %0, i64* %index, align 8
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %i.addr, align 8
  %3 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %4 = bitcast %struct.dequeobject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %2, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %i.addr, align 8
  %cmp2 = icmp eq i64 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %8, i32 0, i32 3
  %9 = load i64, i64* %leftindex, align 8
  store i64 %9, i64* %i.addr, align 8
  %10 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %10, i32 0, i32 1
  %11 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  store %struct.BLOCK* %11, %struct.BLOCK** %b, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %12 = load i64, i64* %i.addr, align 8
  %13 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %14 = bitcast %struct.dequeobject* %13 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size4, align 8
  %sub = sub i64 %15, 1
  %cmp5 = icmp eq i64 %12, %sub
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 4
  %17 = load i64, i64* %rightindex, align 8
  store i64 %17, i64* %i.addr, align 8
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %18, i32 0, i32 2
  %19 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  store %struct.BLOCK* %19, %struct.BLOCK** %b, align 8
  br label %if.end.27

if.else.7:                                        ; preds = %if.else
  %20 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex8 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %20, i32 0, i32 3
  %21 = load i64, i64* %leftindex8, align 8
  %22 = load i64, i64* %i.addr, align 8
  %add = add i64 %22, %21
  store i64 %add, i64* %i.addr, align 8
  %23 = load i64, i64* %i.addr, align 8
  %div = sdiv i64 %23, 62
  store i64 %div, i64* %n, align 8
  %24 = load i64, i64* %i.addr, align 8
  %rem = srem i64 %24, 62
  store i64 %rem, i64* %i.addr, align 8
  %25 = load i64, i64* %index, align 8
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %27 = bitcast %struct.dequeobject* %26 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size9, align 8
  %shr = ashr i64 %28, 1
  %cmp10 = icmp slt i64 %25, %shr
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.7
  %29 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %29, i32 0, i32 1
  %30 = load %struct.BLOCK*, %struct.BLOCK** %leftblock12, align 8
  store %struct.BLOCK* %30, %struct.BLOCK** %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.11
  %31 = load i64, i64* %n, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %n, align 8
  %tobool = icmp ne i64 %31, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %32, i32 0, i32 2
  %33 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %33, %struct.BLOCK** %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.26

if.else.13:                                       ; preds = %if.else.7
  %34 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex14 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %34, i32 0, i32 3
  %35 = load i64, i64* %leftindex14, align 8
  %36 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %37 = bitcast %struct.dequeobject* %36 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size15, align 8
  %add16 = add i64 %35, %38
  %sub17 = sub i64 %add16, 1
  %div18 = sdiv i64 %sub17, 62
  %39 = load i64, i64* %n, align 8
  %sub19 = sub i64 %div18, %39
  store i64 %sub19, i64* %n, align 8
  %40 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock20 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %40, i32 0, i32 2
  %41 = load %struct.BLOCK*, %struct.BLOCK** %rightblock20, align 8
  store %struct.BLOCK* %41, %struct.BLOCK** %b, align 8
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.24, %if.else.13
  %42 = load i64, i64* %n, align 8
  %dec22 = add i64 %42, -1
  store i64 %dec22, i64* %n, align 8
  %tobool23 = icmp ne i64 %42, 0
  br i1 %tobool23, label %while.body.24, label %while.end.25

while.body.24:                                    ; preds = %while.cond.21
  %43 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %43, i32 0, i32 0
  %44 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8
  store %struct.BLOCK* %44, %struct.BLOCK** %b, align 8
  br label %while.cond.21

while.end.25:                                     ; preds = %while.cond.21
  br label %if.end.26

if.end.26:                                        ; preds = %while.end.25, %while.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.6
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.3
  %45 = load i64, i64* %i.addr, align 8
  %46 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %46, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %45
  %47 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %47, %struct._object** %item, align 8
  %48 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %50 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %50, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

; Function Attrs: nounwind uwtable
define internal i32 @deque_ass_item(%struct.dequeobject* %deque, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %deque.addr = alloca %struct.dequeobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %old_value = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %n = alloca i64, align 8
  %len = alloca i64, align 8
  %halflen = alloca i64, align 8
  %index = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1
  %shr = ashr i64 %add, 1
  store i64 %shr, i64* %halflen, align 8
  %4 = load i64, i64* %i.addr, align 8
  store i64 %4, i64* %index, align 8
  %5 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %i.addr, align 8
  %7 = load i64, i64* %len, align 8
  %cmp1 = icmp sge i64 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp2 = icmp eq %struct._object* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %11 = load i64, i64* %i.addr, align 8
  %call = call i32 @deque_del_item(%struct.dequeobject* %10, i64 %11)
  store i32 %call, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %12, i32 0, i32 3
  %13 = load i64, i64* %leftindex, align 8
  %14 = load i64, i64* %i.addr, align 8
  %add5 = add i64 %14, %13
  store i64 %add5, i64* %i.addr, align 8
  %15 = load i64, i64* %i.addr, align 8
  %div = sdiv i64 %15, 62
  store i64 %div, i64* %n, align 8
  %16 = load i64, i64* %i.addr, align 8
  %rem = srem i64 %16, 62
  store i64 %rem, i64* %i.addr, align 8
  %17 = load i64, i64* %index, align 8
  %18 = load i64, i64* %halflen, align 8
  %cmp6 = icmp sle i64 %17, %18
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %19, i32 0, i32 1
  %20 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  store %struct.BLOCK* %20, %struct.BLOCK** %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %21 = load i64, i64* %n, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %n, align 8
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %22, i32 0, i32 2
  %23 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %23, %struct.BLOCK** %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %24 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex8 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %24, i32 0, i32 3
  %25 = load i64, i64* %leftindex8, align 8
  %26 = load i64, i64* %len, align 8
  %add9 = add i64 %25, %26
  %sub = sub i64 %add9, 1
  %div10 = sdiv i64 %sub, 62
  %27 = load i64, i64* %n, align 8
  %sub11 = sub i64 %div10, %27
  store i64 %sub11, i64* %n, align 8
  %28 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %28, i32 0, i32 2
  %29 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  store %struct.BLOCK* %29, %struct.BLOCK** %b, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.15, %if.else
  %30 = load i64, i64* %n, align 8
  %dec13 = add i64 %30, -1
  store i64 %dec13, i64* %n, align 8
  %tobool14 = icmp ne i64 %30, 0
  br i1 %tobool14, label %while.body.15, label %while.end.16

while.body.15:                                    ; preds = %while.cond.12
  %31 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %31, i32 0, i32 0
  %32 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8
  store %struct.BLOCK* %32, %struct.BLOCK** %b, align 8
  br label %while.cond.12

while.end.16:                                     ; preds = %while.cond.12
  br label %if.end.17

if.end.17:                                        ; preds = %while.end.16, %while.end
  %33 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %35 = load i64, i64* %i.addr, align 8
  %36 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %36, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %35
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %37, %struct._object** %old_value, align 8
  %38 = load %struct._object*, %struct._object** %v.addr, align 8
  %39 = load i64, i64* %i.addr, align 8
  %40 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data18 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %40, i32 0, i32 1
  %arrayidx19 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data18, i32 0, i64 %39
  store %struct._object* %38, %struct._object** %arrayidx19, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %41 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %43, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else.24:                                       ; preds = %do.body
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_inplace_concat(%struct.dequeobject* %deque, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %call = call %struct._object* @deque_extend(%struct.dequeobject* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

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
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %12 = bitcast %struct.dequeobject* %11 to %struct._object*
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt4, align 8
  %14 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %15 = bitcast %struct.dequeobject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @deque_del_item(%struct.dequeobject* %deque, i64 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %deque.addr = alloca %struct.dequeobject*, align 8
  %i.addr = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  %sub = sub i64 0, %1
  %call = call i32 @_deque_rotate(%struct.dequeobject* %0, i64 %sub)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call1 = call %struct._object* @deque_popleft(%struct.dequeobject* %2, %struct._object* null)
  store %struct._object* %call1, %struct._object** %item, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %item, align 8
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
  %10 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %11 = load i64, i64* %i.addr, align 8
  %call5 = call i32 @_deque_rotate(%struct.dequeobject* %10, i64 %11)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @_deque_rotate(%struct.dequeobject* %deque, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %deque.addr = alloca %struct.dequeobject*, align 8
  %n.addr = alloca i64, align 8
  %b = alloca %struct.BLOCK*, align 8
  %leftblock = alloca %struct.BLOCK*, align 8
  %rightblock = alloca %struct.BLOCK*, align 8
  %leftindex = alloca i64, align 8
  %rightindex = alloca i64, align 8
  %len = alloca i64, align 8
  %halflen = alloca i64, align 8
  %rv = alloca i32, align 4
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %m = alloca i64, align 8
  %src61 = alloca %struct._object**, align 8
  %dest62 = alloca %struct._object**, align 8
  %m63 = alloca i64, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.BLOCK* null, %struct.BLOCK** %b, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 1
  %1 = load %struct.BLOCK*, %struct.BLOCK** %leftblock1, align 8
  store %struct.BLOCK* %1, %struct.BLOCK** %leftblock, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 2
  %3 = load %struct.BLOCK*, %struct.BLOCK** %rightblock2, align 8
  store %struct.BLOCK* %3, %struct.BLOCK** %rightblock, align 8
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %4, i32 0, i32 3
  %5 = load i64, i64* %leftindex3, align 8
  store i64 %5, i64* %leftindex, align 8
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %6, i32 0, i32 4
  %7 = load i64, i64* %rightindex4, align 8
  store i64 %7, i64* %rightindex, align 8
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %9 = bitcast %struct.dequeobject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  store i64 %10, i64* %len, align 8
  %11 = load i64, i64* %len, align 8
  %shr = ashr i64 %11, 1
  store i64 %shr, i64* %halflen, align 8
  store i32 -1, i32* %rv, align 4
  %12 = load i64, i64* %len, align 8
  %cmp = icmp sle i64 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %n.addr, align 8
  %14 = load i64, i64* %halflen, align 8
  %cmp5 = icmp sgt i64 %13, %14
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i64, i64* %n.addr, align 8
  %16 = load i64, i64* %halflen, align 8
  %sub = sub i64 0, %16
  %cmp6 = icmp slt i64 %15, %sub
  br i1 %cmp6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load i64, i64* %len, align 8
  %18 = load i64, i64* %n.addr, align 8
  %rem = srem i64 %18, %17
  store i64 %rem, i64* %n.addr, align 8
  %19 = load i64, i64* %n.addr, align 8
  %20 = load i64, i64* %halflen, align 8
  %cmp8 = icmp sgt i64 %19, %20
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %21 = load i64, i64* %len, align 8
  %22 = load i64, i64* %n.addr, align 8
  %sub10 = sub i64 %22, %21
  store i64 %sub10, i64* %n.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.7
  %23 = load i64, i64* %n.addr, align 8
  %24 = load i64, i64* %halflen, align 8
  %sub11 = sub i64 0, %24
  %cmp12 = icmp slt i64 %23, %sub11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %25 = load i64, i64* %len, align 8
  %26 = load i64, i64* %n.addr, align 8
  %add = add i64 %26, %25
  store i64 %add, i64* %n.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %lor.lhs.false
  %27 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %27, i32 0, i32 5
  %28 = load i64, i64* %state, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %state, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end.16
  %29 = load i64, i64* %n.addr, align 8
  %cmp17 = icmp sgt i64 %29, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i64, i64* %leftindex, align 8
  %cmp18 = icmp eq i64 %30, 0
  br i1 %cmp18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %while.body
  %31 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp20 = icmp eq %struct.BLOCK* %31, null
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.19
  %32 = load i64, i64* %len, align 8
  %call = call %struct.BLOCK* @newblock(i64 %32)
  store %struct.BLOCK* %call, %struct.BLOCK** %b, align 8
  %33 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp22 = icmp eq %struct.BLOCK* %33, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.21
  br label %done

if.end.24:                                        ; preds = %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.19
  %34 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %35 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %35, i32 0, i32 2
  store %struct.BLOCK* %34, %struct.BLOCK** %rightlink, align 8
  %36 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %37 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %37, i32 0, i32 0
  store %struct.BLOCK* %36, %struct.BLOCK** %leftlink, align 8
  %38 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  store %struct.BLOCK* %38, %struct.BLOCK** %leftblock, align 8
  store i64 62, i64* %leftindex, align 8
  store %struct.BLOCK* null, %struct.BLOCK** %b, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %while.body
  %39 = load i64, i64* %n.addr, align 8
  store i64 %39, i64* %m, align 8
  %40 = load i64, i64* %m, align 8
  %41 = load i64, i64* %rightindex, align 8
  %add27 = add i64 %41, 1
  %cmp28 = icmp sgt i64 %40, %add27
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %42 = load i64, i64* %rightindex, align 8
  %add30 = add i64 %42, 1
  store i64 %add30, i64* %m, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.26
  %43 = load i64, i64* %m, align 8
  %44 = load i64, i64* %leftindex, align 8
  %cmp32 = icmp sgt i64 %43, %44
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %45 = load i64, i64* %leftindex, align 8
  store i64 %45, i64* %m, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %46 = load i64, i64* %rightindex, align 8
  %47 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %47, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %46
  store %struct._object** %arrayidx, %struct._object*** %src, align 8
  %48 = load i64, i64* %leftindex, align 8
  %sub35 = sub i64 %48, 1
  %49 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data36 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %49, i32 0, i32 1
  %arrayidx37 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data36, i32 0, i64 %sub35
  store %struct._object** %arrayidx37, %struct._object*** %dest, align 8
  %50 = load i64, i64* %m, align 8
  %51 = load i64, i64* %rightindex, align 8
  %sub38 = sub i64 %51, %50
  store i64 %sub38, i64* %rightindex, align 8
  %52 = load i64, i64* %m, align 8
  %53 = load i64, i64* %leftindex, align 8
  %sub39 = sub i64 %53, %52
  store i64 %sub39, i64* %leftindex, align 8
  %54 = load i64, i64* %m, align 8
  %55 = load i64, i64* %n.addr, align 8
  %sub40 = sub i64 %55, %54
  store i64 %sub40, i64* %n.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.34
  %56 = load %struct._object**, %struct._object*** %src, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %56, i32 -1
  store %struct._object** %incdec.ptr, %struct._object*** %src, align 8
  %57 = load %struct._object*, %struct._object** %56, align 8
  %58 = load %struct._object**, %struct._object*** %dest, align 8
  %incdec.ptr41 = getelementptr %struct._object*, %struct._object** %58, i32 -1
  store %struct._object** %incdec.ptr41, %struct._object*** %dest, align 8
  store %struct._object* %57, %struct._object** %58, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %59 = load i64, i64* %m, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %m, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %60 = load i64, i64* %rightindex, align 8
  %cmp42 = icmp eq i64 %60, -1
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.end
  %61 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  store %struct.BLOCK* %61, %struct.BLOCK** %b, align 8
  %62 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %leftlink44 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %62, i32 0, i32 0
  %63 = load %struct.BLOCK*, %struct.BLOCK** %leftlink44, align 8
  store %struct.BLOCK* %63, %struct.BLOCK** %rightblock, align 8
  store i64 61, i64* %rightindex, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.93, %while.end
  %64 = load i64, i64* %n.addr, align 8
  %cmp47 = icmp slt i64 %64, 0
  br i1 %cmp47, label %while.body.48, label %while.end.94

while.body.48:                                    ; preds = %while.cond.46
  %65 = load i64, i64* %rightindex, align 8
  %cmp49 = icmp eq i64 %65, 61
  br i1 %cmp49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %while.body.48
  %66 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp51 = icmp eq %struct.BLOCK* %66, null
  br i1 %cmp51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.then.50
  %67 = load i64, i64* %len, align 8
  %call53 = call %struct.BLOCK* @newblock(i64 %67)
  store %struct.BLOCK* %call53, %struct.BLOCK** %b, align 8
  %68 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp54 = icmp eq %struct.BLOCK* %68, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  br label %done

if.end.56:                                        ; preds = %if.then.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.50
  %69 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %70 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %leftlink58 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %70, i32 0, i32 0
  store %struct.BLOCK* %69, %struct.BLOCK** %leftlink58, align 8
  %71 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %72 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %rightlink59 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %72, i32 0, i32 2
  store %struct.BLOCK* %71, %struct.BLOCK** %rightlink59, align 8
  %73 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  store %struct.BLOCK* %73, %struct.BLOCK** %rightblock, align 8
  store i64 -1, i64* %rightindex, align 8
  store %struct.BLOCK* null, %struct.BLOCK** %b, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.57, %while.body.48
  %74 = load i64, i64* %n.addr, align 8
  %sub64 = sub i64 0, %74
  store i64 %sub64, i64* %m63, align 8
  %75 = load i64, i64* %m63, align 8
  %76 = load i64, i64* %leftindex, align 8
  %sub65 = sub i64 62, %76
  %cmp66 = icmp sgt i64 %75, %sub65
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.60
  %77 = load i64, i64* %leftindex, align 8
  %sub68 = sub i64 62, %77
  store i64 %sub68, i64* %m63, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.60
  %78 = load i64, i64* %m63, align 8
  %79 = load i64, i64* %rightindex, align 8
  %sub70 = sub i64 61, %79
  %cmp71 = icmp sgt i64 %78, %sub70
  br i1 %cmp71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %80 = load i64, i64* %rightindex, align 8
  %sub73 = sub i64 61, %80
  store i64 %sub73, i64* %m63, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.69
  %81 = load i64, i64* %leftindex, align 8
  %82 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data75 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %82, i32 0, i32 1
  %arrayidx76 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data75, i32 0, i64 %81
  store %struct._object** %arrayidx76, %struct._object*** %src61, align 8
  %83 = load i64, i64* %rightindex, align 8
  %add77 = add i64 %83, 1
  %84 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %data78 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %84, i32 0, i32 1
  %arrayidx79 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data78, i32 0, i64 %add77
  store %struct._object** %arrayidx79, %struct._object*** %dest62, align 8
  %85 = load i64, i64* %m63, align 8
  %86 = load i64, i64* %leftindex, align 8
  %add80 = add i64 %86, %85
  store i64 %add80, i64* %leftindex, align 8
  %87 = load i64, i64* %m63, align 8
  %88 = load i64, i64* %rightindex, align 8
  %add81 = add i64 %88, %87
  store i64 %add81, i64* %rightindex, align 8
  %89 = load i64, i64* %m63, align 8
  %90 = load i64, i64* %n.addr, align 8
  %add82 = add i64 %90, %89
  store i64 %add82, i64* %n.addr, align 8
  br label %do.body.83

do.body.83:                                       ; preds = %do.cond.86, %if.end.74
  %91 = load %struct._object**, %struct._object*** %src61, align 8
  %incdec.ptr84 = getelementptr %struct._object*, %struct._object** %91, i32 1
  store %struct._object** %incdec.ptr84, %struct._object*** %src61, align 8
  %92 = load %struct._object*, %struct._object** %91, align 8
  %93 = load %struct._object**, %struct._object*** %dest62, align 8
  %incdec.ptr85 = getelementptr %struct._object*, %struct._object** %93, i32 1
  store %struct._object** %incdec.ptr85, %struct._object*** %dest62, align 8
  store %struct._object* %92, %struct._object** %93, align 8
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.83
  %94 = load i64, i64* %m63, align 8
  %dec87 = add i64 %94, -1
  store i64 %dec87, i64* %m63, align 8
  %tobool88 = icmp ne i64 %dec87, 0
  br i1 %tobool88, label %do.body.83, label %do.end.89

do.end.89:                                        ; preds = %do.cond.86
  %95 = load i64, i64* %leftindex, align 8
  %cmp90 = icmp eq i64 %95, 62
  br i1 %cmp90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %do.end.89
  %96 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  store %struct.BLOCK* %96, %struct.BLOCK** %b, align 8
  %97 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %rightlink92 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %97, i32 0, i32 2
  %98 = load %struct.BLOCK*, %struct.BLOCK** %rightlink92, align 8
  store %struct.BLOCK* %98, %struct.BLOCK** %leftblock, align 8
  store i64 0, i64* %leftindex, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %do.end.89
  br label %while.cond.46

while.end.94:                                     ; preds = %while.cond.46
  store i32 0, i32* %rv, align 4
  br label %done

done:                                             ; preds = %while.end.94, %if.then.55, %if.then.23
  %99 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp95 = icmp ne %struct.BLOCK* %99, null
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %done
  %100 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  call void @freeblock(%struct.BLOCK* %100)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %done
  %101 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %102 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock98 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %102, i32 0, i32 1
  store %struct.BLOCK* %101, %struct.BLOCK** %leftblock98, align 8
  %103 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %104 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock99 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %104, i32 0, i32 2
  store %struct.BLOCK* %103, %struct.BLOCK** %rightblock99, align 8
  %105 = load i64, i64* %leftindex, align 8
  %106 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex100 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %106, i32 0, i32 3
  store i64 %105, i64* %leftindex100, align 8
  %107 = load i64, i64* %rightindex, align 8
  %108 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex101 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %108, i32 0, i32 4
  store i64 %107, i64* %rightindex101, align 8
  %109 = load i32, i32* %rv, align 4
  store i32 %109, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_popleft(%struct.dequeobject* %deque, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %prevblock = alloca %struct.BLOCK*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %4, i32 0, i32 3
  %5 = load i64, i64* %leftindex, align 8
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %6, i32 0, i32 1
  %7 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %7, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %5
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %8, %struct._object** %item, align 8
  %9 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %9, i32 0, i32 3
  %10 = load i64, i64* %leftindex1, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %leftindex1, align 8
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %12 = bitcast %struct.dequeobject* %11 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size2, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_size2, align 8
  %14 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %14, i32 0, i32 5
  %15 = load i64, i64* %state, align 8
  %inc3 = add i64 %15, 1
  store i64 %inc3, i64* %state, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 3
  %17 = load i64, i64* %leftindex4, align 8
  %cmp5 = icmp eq i64 %17, 62
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %19 = bitcast %struct.dequeobject* %18 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size7, align 8
  %cmp8 = icmp eq i64 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %21 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex10 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %21, i32 0, i32 3
  store i64 31, i64* %leftindex10, align 8
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 4
  store i64 30, i64* %rightindex, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.6
  %23 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock11 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %23, i32 0, i32 1
  %24 = load %struct.BLOCK*, %struct.BLOCK** %leftblock11, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %24, i32 0, i32 2
  %25 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %25, %struct.BLOCK** %prevblock, align 8
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %26, i32 0, i32 1
  %27 = load %struct.BLOCK*, %struct.BLOCK** %leftblock12, align 8
  call void @freeblock(%struct.BLOCK* %27)
  %28 = load %struct.BLOCK*, %struct.BLOCK** %prevblock, align 8
  %29 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock13 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %29, i32 0, i32 1
  store %struct.BLOCK* %28, %struct.BLOCK** %leftblock13, align 8
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex14 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %30, i32 0, i32 3
  store i64 0, i64* %leftindex14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %31 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct.BLOCK* @newblock(i64 %len) #0 {
entry:
  %retval = alloca %struct.BLOCK*, align 8
  %len.addr = alloca i64, align 8
  %b = alloca %struct.BLOCK*, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp sge i64 %0, 9223372036854775683
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  store %struct.BLOCK* null, %struct.BLOCK** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* @numfreeblocks, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i64, i64* @numfreeblocks, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* @numfreeblocks, align 8
  %4 = load i64, i64* @numfreeblocks, align 8
  %arrayidx = getelementptr [10 x %struct.BLOCK*], [10 x %struct.BLOCK*]* @freeblocks, i32 0, i64 %4
  %5 = load %struct.BLOCK*, %struct.BLOCK** %arrayidx, align 8
  store %struct.BLOCK* %5, %struct.BLOCK** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %call = call i8* @PyMem_Malloc(i64 512)
  %6 = bitcast i8* %call to %struct.BLOCK*
  store %struct.BLOCK* %6, %struct.BLOCK** %b, align 8
  %7 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp3 = icmp ne %struct.BLOCK* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %8 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  store %struct.BLOCK* %8, %struct.BLOCK** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %call6 = call %struct._object* @PyErr_NoMemory()
  store %struct.BLOCK* null, %struct.BLOCK** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then.1, %if.then
  %9 = load %struct.BLOCK*, %struct.BLOCK** %retval
  ret %struct.BLOCK* %9
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_extend(%struct.dequeobject* %deque, %struct._object* %iterable) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @PySequence_List(%struct._object* %3)
  store %struct._object* %call, %struct._object** %s, align 8
  %4 = load %struct._object*, %struct._object** %s, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %6 = load %struct._object*, %struct._object** %s, align 8
  %call3 = call %struct._object* @deque_extend(%struct.dequeobject* %5, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %s, align 8
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
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %15 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %16 = bitcast %struct.dequeobject* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %18, i32 0, i32 3
  store i64 1, i64* %leftindex, align 8
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %19, i32 0, i32 4
  store i64 0, i64* %rightindex, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %20 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call11 = call %struct._object* @PyObject_GetIter(%struct._object* %20)
  store %struct._object* %call11, %struct._object** %it, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %cmp12 = icmp eq %struct._object* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 6
  %23 = load i64, i64* %maxlen, align 8
  %cmp15 = icmp eq i64 %23, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %24 = load %struct._object*, %struct._object** %it, align 8
  %call17 = call %struct._object* @consume_iterator(%struct._object* %24)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %if.end.18
  %25 = load %struct._object*, %struct._object** %it, align 8
  %call19 = call %struct._object* @PyIter_Next(%struct._object* %25)
  store %struct._object* %call19, %struct._object** %item, align 8
  %cmp20 = icmp ne %struct._object* %call19, null
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %26, i32 0, i32 5
  %27 = load i64, i64* %state, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %state, align 8
  %28 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex21 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %28, i32 0, i32 4
  %29 = load i64, i64* %rightindex21, align 8
  %cmp22 = icmp eq i64 %29, 61
  br i1 %cmp22, label %if.then.23, label %if.end.54

if.then.23:                                       ; preds = %while.body
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %31 = bitcast %struct.dequeobject* %30 to %struct.PyVarObject*
  %ob_size24 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size24, align 8
  %call25 = call %struct.BLOCK* @newblock(i64 %32)
  store %struct.BLOCK* %call25, %struct.BLOCK** %b, align 8
  %33 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp26 = icmp eq %struct.BLOCK* %33, null
  br i1 %cmp26, label %if.then.27, label %if.end.50

if.then.27:                                       ; preds = %if.then.23
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp29, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %36, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %39(%struct._object* %40)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %41 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp40, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %43, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %46(%struct._object* %47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.23
  %48 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %48, i32 0, i32 2
  %49 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %50 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %50, i32 0, i32 0
  store %struct.BLOCK* %49, %struct.BLOCK** %leftlink, align 8
  %51 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %52 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock51 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %52, i32 0, i32 2
  %53 = load %struct.BLOCK*, %struct.BLOCK** %rightblock51, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %53, i32 0, i32 2
  store %struct.BLOCK* %51, %struct.BLOCK** %rightlink, align 8
  %54 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %55 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock52 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %55, i32 0, i32 2
  store %struct.BLOCK* %54, %struct.BLOCK** %rightblock52, align 8
  %56 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex53 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %56, i32 0, i32 4
  store i64 -1, i64* %rightindex53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.50, %while.body
  %57 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %58 = bitcast %struct.dequeobject* %57 to %struct.PyVarObject*
  %ob_size55 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %58, i32 0, i32 1
  %59 = load i64, i64* %ob_size55, align 8
  %inc56 = add i64 %59, 1
  store i64 %inc56, i64* %ob_size55, align 8
  %60 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex57 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %60, i32 0, i32 4
  %61 = load i64, i64* %rightindex57, align 8
  %inc58 = add i64 %61, 1
  store i64 %inc58, i64* %rightindex57, align 8
  %62 = load %struct._object*, %struct._object** %item, align 8
  %63 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex59 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %63, i32 0, i32 4
  %64 = load i64, i64* %rightindex59, align 8
  %65 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock60 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %65, i32 0, i32 2
  %66 = load %struct.BLOCK*, %struct.BLOCK** %rightblock60, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %66, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %64
  store %struct._object* %62, %struct._object** %arrayidx, align 8
  %67 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen61 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %67, i32 0, i32 6
  %68 = load i64, i64* %maxlen61, align 8
  %cmp62 = icmp ne i64 %68, -1
  br i1 %cmp62, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.end.54
  %69 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %70 = bitcast %struct.dequeobject* %69 to %struct.PyVarObject*
  %ob_size63 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %70, i32 0, i32 1
  %71 = load i64, i64* %ob_size63, align 8
  %72 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen64 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %72, i32 0, i32 6
  %73 = load i64, i64* %maxlen64, align 8
  %cmp65 = icmp sgt i64 %71, %73
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %land.lhs.true
  %74 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call67 = call %struct._object* @deque_popleft(%struct.dequeobject* %74, %struct._object* null)
  store %struct._object* %call67, %struct._object** %rv, align 8
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.66
  %75 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp69, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %77, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %80(%struct._object* %81)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %land.lhs.true, %if.end.54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.80

do.body.80:                                       ; preds = %while.end
  %82 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp81, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %84, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %87(%struct._object* %88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %call91 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call91, null
  br i1 %tobool, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.93:                                        ; preds = %do.end.90
  %89 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc94 = add i64 %89, 1
  store i64 %inc94, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.92, %do.end.49, %if.then.16, %if.then.13, %do.end, %if.then.2
  %90 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %90
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @consume_iterator(%struct._object* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp3 = alloca %struct._object*, align 8
  store %struct._object* %it, %struct._object** %it.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct._object*, %struct._object** %it.addr, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %0)
  store %struct._object* %call, %struct._object** %item, align 8
  %cmp = icmp ne %struct._object* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then, label %if.else

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
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.2

do.body.2:                                        ; preds = %while.end
  %8 = load %struct._object*, %struct._object** %it.addr, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp3, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp3, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt4, align 8
  %dec5 = add i64 %10, -1
  store i64 %dec5, i64* %ob_refcnt4, align 8
  %cmp6 = icmp ne i64 %dec5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body.2
  br label %if.end.11

if.else.8:                                        ; preds = %do.body.2
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp3, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp3, align 8
  call void %13(%struct._object* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.then.7
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call13, null
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %do.end.12
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_pop(%struct.dequeobject* %deque, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %prevblock = alloca %struct.BLOCK*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %4, i32 0, i32 4
  %5 = load i64, i64* %rightindex, align 8
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %6, i32 0, i32 2
  %7 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %7, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %5
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %8, %struct._object** %item, align 8
  %9 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %9, i32 0, i32 4
  %10 = load i64, i64* %rightindex1, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %rightindex1, align 8
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %12 = bitcast %struct.dequeobject* %11 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size2, align 8
  %dec3 = add i64 %13, -1
  store i64 %dec3, i64* %ob_size2, align 8
  %14 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %14, i32 0, i32 5
  %15 = load i64, i64* %state, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %state, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 4
  %17 = load i64, i64* %rightindex4, align 8
  %cmp5 = icmp eq i64 %17, -1
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %19 = bitcast %struct.dequeobject* %18 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size7, align 8
  %cmp8 = icmp eq i64 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %21 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %21, i32 0, i32 3
  store i64 31, i64* %leftindex, align 8
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex10 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 4
  store i64 30, i64* %rightindex10, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.6
  %23 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock11 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %23, i32 0, i32 2
  %24 = load %struct.BLOCK*, %struct.BLOCK** %rightblock11, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %24, i32 0, i32 0
  %25 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8
  store %struct.BLOCK* %25, %struct.BLOCK** %prevblock, align 8
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %26, i32 0, i32 2
  %27 = load %struct.BLOCK*, %struct.BLOCK** %rightblock12, align 8
  call void @freeblock(%struct.BLOCK* %27)
  %28 = load %struct.BLOCK*, %struct.BLOCK** %prevblock, align 8
  %29 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock13 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %29, i32 0, i32 2
  store %struct.BLOCK* %28, %struct.BLOCK** %rightblock13, align 8
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex14 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %30, i32 0, i32 4
  store i64 61, i64* %rightindex14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %31 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare void @PyObject_GC_Track(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_append(%struct.dequeobject* %deque, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 5
  %1 = load i64, i64* %state, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %state, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 4
  %3 = load i64, i64* %rightindex, align 8
  %cmp = icmp eq i64 %3, 61
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %5 = bitcast %struct.dequeobject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %call = call %struct.BLOCK* @newblock(i64 %6)
  store %struct.BLOCK* %call, %struct.BLOCK** %b, align 8
  %7 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp1 = icmp eq %struct.BLOCK* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %8, i32 0, i32 2
  %9 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %10 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %10, i32 0, i32 0
  store %struct.BLOCK* %9, %struct.BLOCK** %leftlink, align 8
  %11 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %12 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %12, i32 0, i32 2
  %13 = load %struct.BLOCK*, %struct.BLOCK** %rightblock3, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %13, i32 0, i32 2
  store %struct.BLOCK* %11, %struct.BLOCK** %rightlink, align 8
  %14 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %15 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %15, i32 0, i32 2
  store %struct.BLOCK* %14, %struct.BLOCK** %rightblock4, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex5 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 4
  store i64 -1, i64* %rightindex5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %17 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc7 = add i64 %18, 1
  store i64 %inc7, i64* %ob_refcnt, align 8
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %20 = bitcast %struct.dequeobject* %19 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size8, align 8
  %inc9 = add i64 %21, 1
  store i64 %inc9, i64* %ob_size8, align 8
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex10 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 4
  %23 = load i64, i64* %rightindex10, align 8
  %inc11 = add i64 %23, 1
  store i64 %inc11, i64* %rightindex10, align 8
  %24 = load %struct._object*, %struct._object** %item.addr, align 8
  %25 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %25, i32 0, i32 4
  %26 = load i64, i64* %rightindex12, align 8
  %27 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock13 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %27, i32 0, i32 2
  %28 = load %struct.BLOCK*, %struct.BLOCK** %rightblock13, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %28, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %26
  store %struct._object* %24, %struct._object** %arrayidx, align 8
  %29 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %29, i32 0, i32 6
  %30 = load i64, i64* %maxlen, align 8
  %cmp14 = icmp ne i64 %30, -1
  br i1 %cmp14, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.6
  %31 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %32 = bitcast %struct.dequeobject* %31 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size15, align 8
  %34 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen16 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %34, i32 0, i32 6
  %35 = load i64, i64* %maxlen16, align 8
  %cmp17 = icmp sgt i64 %33, %35
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %land.lhs.true
  %36 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call19 = call %struct._object* @deque_popleft(%struct.dequeobject* %36, %struct._object* null)
  store %struct._object* %call19, %struct._object** %rv, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %37 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt20, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt20, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %land.lhs.true, %if.end.6
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %44, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.2
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_appendleft(%struct.dequeobject* %deque, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 5
  %1 = load i64, i64* %state, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %state, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 3
  %3 = load i64, i64* %leftindex, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %5 = bitcast %struct.dequeobject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %call = call %struct.BLOCK* @newblock(i64 %6)
  store %struct.BLOCK* %call, %struct.BLOCK** %b, align 8
  %7 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp1 = icmp eq %struct.BLOCK* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %8, i32 0, i32 1
  %9 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %10 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %10, i32 0, i32 2
  store %struct.BLOCK* %9, %struct.BLOCK** %rightlink, align 8
  %11 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %12 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %12, i32 0, i32 1
  %13 = load %struct.BLOCK*, %struct.BLOCK** %leftblock3, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %13, i32 0, i32 0
  store %struct.BLOCK* %11, %struct.BLOCK** %leftlink, align 8
  %14 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %15 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %15, i32 0, i32 1
  store %struct.BLOCK* %14, %struct.BLOCK** %leftblock4, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex5 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 3
  store i64 62, i64* %leftindex5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %17 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc7 = add i64 %18, 1
  store i64 %inc7, i64* %ob_refcnt, align 8
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %20 = bitcast %struct.dequeobject* %19 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size8, align 8
  %inc9 = add i64 %21, 1
  store i64 %inc9, i64* %ob_size8, align 8
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex10 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 3
  %23 = load i64, i64* %leftindex10, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %leftindex10, align 8
  %24 = load %struct._object*, %struct._object** %item.addr, align 8
  %25 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex11 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %25, i32 0, i32 3
  %26 = load i64, i64* %leftindex11, align 8
  %27 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock12 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %27, i32 0, i32 1
  %28 = load %struct.BLOCK*, %struct.BLOCK** %leftblock12, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %28, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %26
  store %struct._object* %24, %struct._object** %arrayidx, align 8
  %29 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %29, i32 0, i32 6
  %30 = load i64, i64* %maxlen, align 8
  %cmp13 = icmp ne i64 %30, -1
  br i1 %cmp13, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.6
  %31 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %32 = bitcast %struct.dequeobject* %31 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size14, align 8
  %34 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen15 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %34, i32 0, i32 6
  %35 = load i64, i64* %maxlen15, align 8
  %cmp16 = icmp sgt i64 %33, %35
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %land.lhs.true
  %36 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call18 = call %struct._object* @deque_pop(%struct.dequeobject* %36, %struct._object* null)
  store %struct._object* %call18, %struct._object** %rv, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %37 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %39, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %land.lhs.true, %if.end.6
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %44, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.2
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_clearmethod(%struct.dequeobject* %deque) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  call void @deque_clear(%struct.dequeobject* %0)
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_copy(%struct._object* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct._object*, align 8
  store %struct._object* %deque, %struct._object** %deque.addr, align 8
  %0 = load %struct._object*, %struct._object** %deque.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.dequeobject*
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %1, i32 0, i32 6
  %2 = load i64, i64* %maxlen, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %deque.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = bitcast %struct._typeobject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %deque.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), %struct._object* %6, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %deque.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %9 = bitcast %struct._typeobject* %8 to %struct._object*
  %10 = load %struct._object*, %struct._object** %deque.addr, align 8
  %11 = load %struct._object*, %struct._object** %deque.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.dequeobject*
  %maxlen2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %12, i32 0, i32 6
  %13 = load i64, i64* %maxlen2, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), %struct._object* %10, i64 %13, i8* null)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_count(%struct.dequeobject* %deque, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %index = alloca i64, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %start_state = alloca i64, align 8
  %cmp = alloca i32, align 4
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 1
  %1 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  store %struct.BLOCK* %1, %struct.BLOCK** %b, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 3
  %3 = load i64, i64* %leftindex, align 8
  store i64 %3, i64* %index, align 8
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %5 = bitcast %struct.dequeobject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  store i64 0, i64* %count, align 8
  %7 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %7, i32 0, i32 5
  %8 = load i64, i64* %state, align 8
  store i64 %8, i64* %start_state, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n, align 8
  %cmp1 = icmp slt i64 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %index, align 8
  %12 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %12, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %11
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %item, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %14, %struct._object* %15, i32 2)
  store i32 %call, i32* %cmp, align 4
  %16 = load i32, i32* %cmp, align 4
  %cmp2 = icmp sgt i32 %16, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load i64, i64* %count, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %count, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %cmp, align 4
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %19 = load i64, i64* %start_state, align 8
  %20 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state6 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %20, i32 0, i32 5
  %21 = load i64, i64* %state6, align 8
  %cmp7 = icmp ne i64 %19, %21
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %22 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %23 = load i64, i64* %index, align 8
  %inc10 = add i64 %23, 1
  store i64 %inc10, i64* %index, align 8
  %24 = load i64, i64* %index, align 8
  %cmp11 = icmp eq i64 %24, 62
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %25 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %25, i32 0, i32 2
  %26 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %26, %struct.BLOCK** %b, align 8
  store i64 0, i64* %index, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %27 = load i64, i64* %i, align 8
  %inc14 = add i64 %27, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %count, align 8
  %call15 = call %struct._object* @PyLong_FromSsize_t(i64 %28)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then.4
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_extendleft(%struct.dequeobject* %deque, %struct._object* %iterable) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %b = alloca %struct.BLOCK*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @PySequence_List(%struct._object* %3)
  store %struct._object* %call, %struct._object** %s, align 8
  %4 = load %struct._object*, %struct._object** %s, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %6 = load %struct._object*, %struct._object** %s, align 8
  %call3 = call %struct._object* @deque_extendleft(%struct.dequeobject* %5, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %s, align 8
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
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %15 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %16 = bitcast %struct.dequeobject* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %18, i32 0, i32 3
  store i64 61, i64* %leftindex, align 8
  %19 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %19, i32 0, i32 4
  store i64 60, i64* %rightindex, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %20 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call11 = call %struct._object* @PyObject_GetIter(%struct._object* %20)
  store %struct._object* %call11, %struct._object** %it, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %cmp12 = icmp eq %struct._object* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %22, i32 0, i32 6
  %23 = load i64, i64* %maxlen, align 8
  %cmp15 = icmp eq i64 %23, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %24 = load %struct._object*, %struct._object** %it, align 8
  %call17 = call %struct._object* @consume_iterator(%struct._object* %24)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %if.end.18
  %25 = load %struct._object*, %struct._object** %it, align 8
  %call19 = call %struct._object* @PyIter_Next(%struct._object* %25)
  store %struct._object* %call19, %struct._object** %item, align 8
  %cmp20 = icmp ne %struct._object* %call19, null
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %26, i32 0, i32 5
  %27 = load i64, i64* %state, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %state, align 8
  %28 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex21 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %28, i32 0, i32 3
  %29 = load i64, i64* %leftindex21, align 8
  %cmp22 = icmp eq i64 %29, 0
  br i1 %cmp22, label %if.then.23, label %if.end.54

if.then.23:                                       ; preds = %while.body
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %31 = bitcast %struct.dequeobject* %30 to %struct.PyVarObject*
  %ob_size24 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size24, align 8
  %call25 = call %struct.BLOCK* @newblock(i64 %32)
  store %struct.BLOCK* %call25, %struct.BLOCK** %b, align 8
  %33 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %cmp26 = icmp eq %struct.BLOCK* %33, null
  br i1 %cmp26, label %if.then.27, label %if.end.50

if.then.27:                                       ; preds = %if.then.23
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp29, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %36, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %39(%struct._object* %40)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %41 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp40, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %43, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %46(%struct._object* %47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.23
  %48 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %48, i32 0, i32 1
  %49 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %50 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %50, i32 0, i32 2
  store %struct.BLOCK* %49, %struct.BLOCK** %rightlink, align 8
  %51 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %52 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock51 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %52, i32 0, i32 1
  %53 = load %struct.BLOCK*, %struct.BLOCK** %leftblock51, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %53, i32 0, i32 0
  store %struct.BLOCK* %51, %struct.BLOCK** %leftlink, align 8
  %54 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %55 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock52 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %55, i32 0, i32 1
  store %struct.BLOCK* %54, %struct.BLOCK** %leftblock52, align 8
  %56 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex53 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %56, i32 0, i32 3
  store i64 62, i64* %leftindex53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.50, %while.body
  %57 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %58 = bitcast %struct.dequeobject* %57 to %struct.PyVarObject*
  %ob_size55 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %58, i32 0, i32 1
  %59 = load i64, i64* %ob_size55, align 8
  %inc56 = add i64 %59, 1
  store i64 %inc56, i64* %ob_size55, align 8
  %60 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex57 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %60, i32 0, i32 3
  %61 = load i64, i64* %leftindex57, align 8
  %dec58 = add i64 %61, -1
  store i64 %dec58, i64* %leftindex57, align 8
  %62 = load %struct._object*, %struct._object** %item, align 8
  %63 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex59 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %63, i32 0, i32 3
  %64 = load i64, i64* %leftindex59, align 8
  %65 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock60 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %65, i32 0, i32 1
  %66 = load %struct.BLOCK*, %struct.BLOCK** %leftblock60, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %66, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %64
  store %struct._object* %62, %struct._object** %arrayidx, align 8
  %67 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen61 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %67, i32 0, i32 6
  %68 = load i64, i64* %maxlen61, align 8
  %cmp62 = icmp ne i64 %68, -1
  br i1 %cmp62, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.end.54
  %69 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %70 = bitcast %struct.dequeobject* %69 to %struct.PyVarObject*
  %ob_size63 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %70, i32 0, i32 1
  %71 = load i64, i64* %ob_size63, align 8
  %72 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen64 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %72, i32 0, i32 6
  %73 = load i64, i64* %maxlen64, align 8
  %cmp65 = icmp sgt i64 %71, %73
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %land.lhs.true
  %74 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call67 = call %struct._object* @deque_pop(%struct.dequeobject* %74, %struct._object* null)
  store %struct._object* %call67, %struct._object** %rv, align 8
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.66
  %75 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp69, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %77, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %80(%struct._object* %81)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %land.lhs.true, %if.end.54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.80

do.body.80:                                       ; preds = %while.end
  %82 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp81, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %84, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %87(%struct._object* %88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %call91 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call91, null
  br i1 %tobool, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.93:                                        ; preds = %do.end.90
  %89 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc94 = add i64 %89, 1
  store i64 %inc94, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.92, %do.end.49, %if.then.16, %if.then.13, %do.end, %if.then.2
  %90 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %90
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reduce(%struct.dequeobject* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %dict = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %aslist = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct._object*
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @deque_reduce.PyId___dict__)
  store %struct._object* %call, %struct._object** %dict, align 8
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %4 = bitcast %struct.dequeobject* %3 to %struct._object*
  %call1 = call %struct._object* @PySequence_List(%struct._object* %4)
  store %struct._object* %call1, %struct._object** %aslist, align 8
  %5 = load %struct._object*, %struct._object** %aslist, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %cmp13 = icmp eq %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %16, i32 0, i32 6
  %17 = load i64, i64* %maxlen, align 8
  %cmp15 = icmp eq i64 %17, -1
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.then.14
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %19 = bitcast %struct.dequeobject* %18 to %struct._object*
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %21 = load %struct._object*, %struct._object** %aslist, align 8
  %call18 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct._typeobject* %20, %struct._object* %21)
  store %struct._object* %call18, %struct._object** %result, align 8
  br label %if.end.23

if.else.19:                                       ; preds = %if.then.14
  %22 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %23 = bitcast %struct.dequeobject* %22 to %struct._object*
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %25 = load %struct._object*, %struct._object** %aslist, align 8
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen21 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %26, i32 0, i32 6
  %27 = load i64, i64* %maxlen21, align 8
  %call22 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), %struct._typeobject* %24, %struct._object* %25, i64 %27)
  store %struct._object* %call22, %struct._object** %result, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.19, %if.then.16
  br label %if.end.35

if.else.24:                                       ; preds = %if.end.12
  %28 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen25 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %28, i32 0, i32 6
  %29 = load i64, i64* %maxlen25, align 8
  %cmp26 = icmp eq i64 %29, -1
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else.24
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %31 = bitcast %struct.dequeobject* %30 to %struct._object*
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %33 = load %struct._object*, %struct._object** %aslist, align 8
  %34 = load %struct._object*, %struct._object** %dict, align 8
  %call29 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._typeobject* %32, %struct._object* %33, %struct._object* @_Py_NoneStruct, %struct._object* %34)
  store %struct._object* %call29, %struct._object** %result, align 8
  br label %if.end.34

if.else.30:                                       ; preds = %if.else.24
  %35 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %36 = bitcast %struct.dequeobject* %35 to %struct._object*
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %38 = load %struct._object*, %struct._object** %aslist, align 8
  %39 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen32 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %39, i32 0, i32 6
  %40 = load i64, i64* %maxlen32, align 8
  %41 = load %struct._object*, %struct._object** %dict, align 8
  %call33 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._typeobject* %37, %struct._object* %38, i64 %40, %struct._object* %41)
  store %struct._object* %call33, %struct._object** %result, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.30, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.23
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.35
  %42 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp37, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8
  %cmp38 = icmp ne %struct._object* %43, null
  br i1 %cmp38, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp41, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %46, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %49(%struct._object* %50)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %51 = load %struct._object*, %struct._object** %aslist, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp54, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %53, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %56(%struct._object* %57)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %58 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.63, %do.end.11
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_remove(%struct.dequeobject* %deque, %struct._object* %value) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %cmp1 = alloca i32, align 4
  %tgt = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %1 = bitcast %struct.dequeobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %5, i32 0, i32 3
  %6 = load i64, i64* %leftindex, align 8
  %7 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %7, i32 0, i32 1
  %8 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %8, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %6
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %9, %struct._object** %item, align 8
  %10 = load %struct._object*, %struct._object** %item, align 8
  %11 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %10, %struct._object* %11, i32 2)
  store i32 %call, i32* %cmp1, align 4
  %12 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %13 = bitcast %struct.dequeobject* %12 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size2, align 8
  %15 = load i64, i64* %n, align 8
  %cmp3 = icmp ne i64 %14, %15
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %cmp1, align 4
  %cmp4 = icmp sgt i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.end
  %18 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call6 = call %struct._object* @deque_popleft(%struct.dequeobject* %18, %struct._object* null)
  store %struct._object* %call6, %struct._object** %tgt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %19 = load %struct._object*, %struct._object** %tgt, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %26 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %27 = load i64, i64* %i, align 8
  %call10 = call i32 @_deque_rotate(%struct.dequeobject* %26, i64 %27)
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.14:                                       ; preds = %if.end
  %29 = load i32, i32* %cmp1, align 4
  %cmp15 = icmp slt i32 %29, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.else.14
  %30 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %31 = load i64, i64* %i, align 8
  %call17 = call i32 @_deque_rotate(%struct.dequeobject* %30, i64 %31)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %32 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %call20 = call i32 @_deque_rotate(%struct.dequeobject* %32, i64 -1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %33 = load i64, i64* %i, align 8
  %inc21 = add i64 %33, 1
  store i64 %inc21, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.end.13, %if.then.12, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reviter(%struct.dequeobject* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %it = alloca %struct.dequeiterobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @dequereviter_type)
  %0 = bitcast %struct._object* %call to %struct.dequeiterobject*
  store %struct.dequeiterobject* %0, %struct.dequeiterobject** %it, align 8
  %1 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %cmp = icmp eq %struct.dequeiterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 2
  %3 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %4 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %4, i32 0, i32 2
  store %struct.BLOCK* %3, %struct.BLOCK** %b, align 8
  %5 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %5, i32 0, i32 4
  %6 = load i64, i64* %rightindex, align 8
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %7, i32 0, i32 1
  store i64 %6, i64* %index, align 8
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %9 = bitcast %struct.dequeobject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %12 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %deque1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %12, i32 0, i32 3
  store %struct.dequeobject* %11, %struct.dequeobject** %deque1, align 8
  %13 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %13, i32 0, i32 5
  %14 = load i64, i64* %state, align 8
  %15 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %state2 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %15, i32 0, i32 4
  store i64 %14, i64* %state2, align 8
  %16 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %17 = bitcast %struct.dequeobject* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  %19 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %19, i32 0, i32 5
  store i64 %18, i64* %counter, align 8
  %20 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %21 = bitcast %struct.dequeiterobject* %20 to i8*
  call void @PyObject_GC_Track(i8* %21)
  %22 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %23 = bitcast %struct.dequeiterobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_reverse(%struct.dequeobject* %deque, %struct._object* %unused) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %leftblock = alloca %struct.BLOCK*, align 8
  %rightblock = alloca %struct.BLOCK*, align 8
  %leftindex = alloca i64, align 8
  %rightindex = alloca i64, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftblock1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 1
  %1 = load %struct.BLOCK*, %struct.BLOCK** %leftblock1, align 8
  store %struct.BLOCK* %1, %struct.BLOCK** %leftblock, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightblock2 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %2, i32 0, i32 2
  %3 = load %struct.BLOCK*, %struct.BLOCK** %rightblock2, align 8
  store %struct.BLOCK* %3, %struct.BLOCK** %rightblock, align 8
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex3 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %4, i32 0, i32 3
  %5 = load i64, i64* %leftindex3, align 8
  store i64 %5, i64* %leftindex, align 8
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %rightindex4 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %6, i32 0, i32 4
  %7 = load i64, i64* %rightindex4, align 8
  store i64 %7, i64* %rightindex, align 8
  %8 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %9 = bitcast %struct.dequeobject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  %div = sdiv i64 %10, 2
  store i64 %div, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %leftindex, align 8
  %14 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %14, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %13
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %15, %struct._object** %tmp, align 8
  %16 = load i64, i64* %rightindex, align 8
  %17 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %data5 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %17, i32 0, i32 1
  %arrayidx6 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data5, i32 0, i64 %16
  %18 = load %struct._object*, %struct._object** %arrayidx6, align 8
  %19 = load i64, i64* %leftindex, align 8
  %20 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %data7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %20, i32 0, i32 1
  %arrayidx8 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data7, i32 0, i64 %19
  store %struct._object* %18, %struct._object** %arrayidx8, align 8
  %21 = load %struct._object*, %struct._object** %tmp, align 8
  %22 = load i64, i64* %rightindex, align 8
  %23 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %data9 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %23, i32 0, i32 1
  %arrayidx10 = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data9, i32 0, i64 %22
  store %struct._object* %21, %struct._object** %arrayidx10, align 8
  %24 = load i64, i64* %leftindex, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %leftindex, align 8
  %25 = load i64, i64* %leftindex, align 8
  %cmp11 = icmp eq i64 %25, 62
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %26 = load %struct.BLOCK*, %struct.BLOCK** %leftblock, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %26, i32 0, i32 2
  %27 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  store %struct.BLOCK* %27, %struct.BLOCK** %leftblock, align 8
  store i64 0, i64* %leftindex, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i64, i64* %rightindex, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %rightindex, align 8
  %29 = load i64, i64* %rightindex, align 8
  %cmp12 = icmp eq i64 %29, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %30 = load %struct.BLOCK*, %struct.BLOCK** %rightblock, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %30, i32 0, i32 0
  %31 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8
  store %struct.BLOCK* %31, %struct.BLOCK** %rightblock, align 8
  store i64 61, i64* %rightindex, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %32 = load i64, i64* %i, align 8
  %inc15 = add i64 %32, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc16 = add i64 %33, 1
  store i64 %inc16, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_rotate(%struct.dequeobject* %deque, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 1, i64* %n, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i64* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %2 = load i64, i64* %n, align 8
  %call1 = call i32 @_deque_rotate(%struct.dequeobject* %1, i64 %2)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_sizeof(%struct.dequeobject* %deque, i8* %unused) #0 {
entry:
  %deque.addr = alloca %struct.dequeobject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  %blocks = alloca i64, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 80, i64* %res, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %leftindex = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 3
  %1 = load i64, i64* %leftindex, align 8
  %2 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %3 = bitcast %struct.dequeobject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %add = add i64 %1, %4
  %add1 = add i64 %add, 62
  %sub = sub i64 %add1, 1
  %div = sdiv i64 %sub, 62
  store i64 %div, i64* %blocks, align 8
  %5 = load i64, i64* %blocks, align 8
  %mul = mul i64 %5, 512
  %6 = load i64, i64* %res, align 8
  %add2 = add i64 %6, %mul
  store i64 %add2, i64* %res, align 8
  %7 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare void @PyErr_Clear() #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @deque_get_maxlen(%struct.dequeobject* %deque) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %deque.addr = alloca %struct.dequeobject*, align 8
  store %struct.dequeobject* %deque, %struct.dequeobject** %deque.addr, align 8
  %0 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %0, i32 0, i32 6
  %1 = load i64, i64* %maxlen, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dequeobject*, %struct.dequeobject** %deque.addr, align 8
  %maxlen1 = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i32 0, i32 6
  %4 = load i64, i64* %maxlen1, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @defdict_dealloc(%struct.defdictobject* %dd) #0 {
entry:
  %dd.addr = alloca %struct.defdictobject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %default_factory, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %default_factory1, align 8
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
  %11 = load void (%struct._object*)*, void (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 4), align 8
  %12 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %13 = bitcast %struct.defdictobject* %12 to %struct._object*
  call void %11(%struct._object* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_repr(%struct.defdictobject* %dd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dd.addr = alloca %struct.defdictobject*, align 8
  %baserepr = alloca %struct._object*, align 8
  %defrepr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  %0 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 9), align 8
  %1 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %2 = bitcast %struct.defdictobject* %1 to %struct._object*
  %call = call %struct._object* %0(%struct._object* %2)
  store %struct._object* %call, %struct._object** %baserepr, align 8
  %3 = load %struct._object*, %struct._object** %baserepr, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %default_factory, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %defrepr, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %6 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory4 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %default_factory4, align 8
  %call5 = call i32 @Py_ReprEnter(%struct._object* %7)
  store i32 %call5, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.else.16

if.then.7:                                        ; preds = %if.else
  %9 = load i32, i32* %status, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.then.7
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %10 = load %struct._object*, %struct._object** %baserepr, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.7
  %call15 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %defrepr, align 8
  br label %if.end.19

if.else.16:                                       ; preds = %if.else
  %17 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory17 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %default_factory17, align 8
  %call18 = call %struct._object* @PyObject_Repr(%struct._object* %18)
  store %struct._object* %call18, %struct._object** %defrepr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.end.14
  %19 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory20 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %default_factory20, align 8
  call void @Py_ReprLeave(%struct._object* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.then.2
  %21 = load %struct._object*, %struct._object** %defrepr, align 8
  %cmp22 = icmp eq %struct._object* %21, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %if.end.21
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %22 = load %struct._object*, %struct._object** %baserepr, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp25, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %24, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %27(%struct._object* %28)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.21
  %29 = load %struct._object*, %struct._object** %defrepr, align 8
  %30 = load %struct._object*, %struct._object** %baserepr, align 8
  %call36 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), %struct._object* %29, %struct._object* %30)
  store %struct._object* %call36, %struct._object** %result, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.35
  %31 = load %struct._object*, %struct._object** %defrepr, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %33, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %36(%struct._object* %37)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %38 = load %struct._object*, %struct._object** %baserepr, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp49, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %40, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %43(%struct._object* %44)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %45 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.58, %do.end.34, %do.end, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.defdictobject*
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %default_factory, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.defdictobject*
  %default_factory1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %default_factory1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %3(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 21), align 8
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call5 = call i32 %10(%struct._object* %11, i32 (%struct._object*, i8*)* %12, i8* %13)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_tp_clear(%struct.defdictobject* %dd) #0 {
entry:
  %dd.addr = alloca %struct.defdictobject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %default_factory, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %default_factory1, align 8
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
  %11 = load i32 (%struct._object*)*, i32 (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 22), align 8
  %12 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %13 = bitcast %struct.defdictobject* %12 to %struct._object*
  %call = call i32 %11(%struct._object* %13)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @defdict_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %dd = alloca %struct.defdictobject*, align 8
  %olddefault = alloca %struct._object*, align 8
  %newdefault = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %n = alloca i64, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.defdictobject*
  store %struct.defdictobject* %1, %struct.defdictobject** %dd, align 8
  %2 = load %struct.defdictobject*, %struct.defdictobject** %dd, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %default_factory, align 8
  store %struct._object* %3, %struct._object** %olddefault, align 8
  store %struct._object* null, %struct._object** %newdefault, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 67108864
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %newargs, align 8
  br label %if.end.9

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  store i64 %10, i64* %n, align 8
  %11 = load i64, i64* %n, align 8
  %cmp2 = icmp sgt i64 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %args.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %14, %struct._object** %newdefault, align 8
  %15 = load %struct._object*, %struct._object** %newdefault, align 8
  %call4 = call i32 @PyCallable_Check(%struct._object* %15)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.3
  %16 = load %struct._object*, %struct._object** %newdefault, align 8
  %cmp5 = icmp ne %struct._object* %16, @_Py_NoneStruct
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.else
  %18 = load %struct._object*, %struct._object** %args.addr, align 8
  %19 = load i64, i64* %n, align 8
  %call8 = call %struct._object* @PySequence_GetSlice(%struct._object* %18, i64 1, i64 %19)
  store %struct._object* %call8, %struct._object** %newargs, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.7, %if.then
  %20 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp10 = icmp eq %struct._object* %20, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %21 = load %struct._object*, %struct._object** %newdefault, align 8
  store %struct._object* %21, %struct._object** %_py_xincref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %22, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %25 = load %struct._object*, %struct._object** %newdefault, align 8
  %26 = load %struct.defdictobject*, %struct.defdictobject** %dd, align 8
  %default_factory16 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %26, i32 0, i32 1
  store %struct._object* %25, %struct._object** %default_factory16, align 8
  %27 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 35), align 8
  %28 = load %struct._object*, %struct._object** %self.addr, align 8
  %29 = load %struct._object*, %struct._object** %newargs, align 8
  %30 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call17 = call i32 %27(%struct._object* %28, %struct._object* %29, %struct._object* %30)
  store i32 %call17, i32* %result, align 4
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %31 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt19, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt19, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.24

if.else.22:                                       ; preds = %do.body.18
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %38 = load %struct._object*, %struct._object** %olddefault, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp27 = icmp ne %struct._object* %39, null
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %do.body.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp30, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %42, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %45(%struct._object* %46)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.body.26
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %47 = load i32, i32* %result, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %do.end.41, %if.then.11, %if.then.6
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare %struct._object* @PyObject_Repr(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_missing(%struct.defdictobject* %dd, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dd.addr = alloca %struct.defdictobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %default_factory, align 8
  store %struct._object* %1, %struct._object** %factory, align 8
  %2 = load %struct._object*, %struct._object** %factory, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %factory, align 8
  %cmp1 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %4)
  store %struct._object* %call, %struct._object** %tup, align 8
  %5 = load %struct._object*, %struct._object** %tup, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %7 = load %struct._object*, %struct._object** %tup, align 8
  call void @PyErr_SetObject(%struct._object* %6, %struct._object* %7)
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %tup, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %factory, align 8
  %call7 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %15, %struct._object* null, %struct._object* null)
  store %struct._object* %call7, %struct._object** %value, align 8
  %16 = load %struct._object*, %struct._object** %value, align 8
  %cmp8 = icmp eq %struct._object* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %17 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %19 = bitcast %struct.defdictobject* %18 to %struct._object*
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %21 = load %struct._object*, %struct._object** %value, align 8
  %call11 = call i32 @PyObject_SetItem(%struct._object* %19, %struct._object* %20, %struct._object* %21)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.end.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %22 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp15, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %24, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %27(%struct._object* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.10
  %29 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %do.end.24, %if.then.9, %do.end, %if.then.2
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_copy(%struct.defdictobject* %dd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dd.addr = alloca %struct.defdictobject*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  %0 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %default_factory, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %3 = bitcast %struct.defdictobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = bitcast %struct._typeobject* %4 to %struct._object*
  %6 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %5, %struct._object* @_Py_NoneStruct, %struct.defdictobject* %6, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %8 = bitcast %struct.defdictobject* %7 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %10 = bitcast %struct._typeobject* %9 to %struct._object*
  %11 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory2 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %default_factory2, align 8
  %13 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %call3 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %10, %struct._object* %12, %struct.defdictobject* %13, i8* null)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @defdict_reduce(%struct.defdictobject* %dd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dd.addr = alloca %struct.defdictobject*, align 8
  %args = alloca %struct._object*, align 8
  %items = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store %struct.defdictobject* %dd, %struct.defdictobject** %dd.addr, align 8
  %0 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %default_factory, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory1 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %default_factory1, align 8
  %cmp2 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %args, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %default_factory3 = getelementptr inbounds %struct.defdictobject, %struct.defdictobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %default_factory3, align 8
  %call4 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %5)
  store %struct._object* %call4, %struct._object** %args, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %args, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %8 = bitcast %struct.defdictobject* %7 to %struct._object*
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %8, %struct._Py_Identifier* @defdict_reduce.PyId_items, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %items, align 8
  %9 = load %struct._object*, %struct._object** %items, align 8
  %cmp9 = icmp eq %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %10 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else.13:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %items, align 8
  %call16 = call %struct._object* @PyObject_GetIter(%struct._object* %17)
  store %struct._object* %call16, %struct._object** %iter, align 8
  %18 = load %struct._object*, %struct._object** %iter, align 8
  %cmp17 = icmp eq %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %if.end.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** %items, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %21, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %24(%struct._object* %25)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %26 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.15
  %33 = load %struct.defdictobject*, %struct.defdictobject** %dd.addr, align 8
  %34 = bitcast %struct.defdictobject* %33 to %struct._object*
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %36 = load %struct._object*, %struct._object** %args, align 8
  %37 = load %struct._object*, %struct._object** %iter, align 8
  %call43 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 5, %struct._typeobject* %35, %struct._object* %36, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, %struct._object* %37)
  store %struct._object* %call43, %struct._object** %result, align 8
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.41
  %38 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp45, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %40, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %43(%struct._object* %44)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %45 = load %struct._object*, %struct._object** %items, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp56, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %47, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %50(%struct._object* %51)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %52 = load %struct._object*, %struct._object** %args, align 8
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
  %59 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.76, %do.end.40, %do.end, %if.then.6
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare %struct._object* @PySequence_GetSlice(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @dequeiter_dealloc(%struct.dequeiterobject* %dio) #0 {
entry:
  %dio.addr = alloca %struct.dequeiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dequeiterobject* %dio, %struct.dequeiterobject** %dio.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %dio.addr, align 8
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %0, i32 0, i32 3
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %2 = bitcast %struct.dequeobject* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %11 = load %struct.dequeiterobject*, %struct.dequeiterobject** %dio.addr, align 8
  %12 = bitcast %struct.dequeiterobject* %11 to i8*
  call void @PyObject_GC_Del(i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dequeiter_traverse(%struct.dequeiterobject* %dio, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %dio.addr = alloca %struct.dequeiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.dequeiterobject* %dio, %struct.dequeiterobject** %dio.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %dio.addr, align 8
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %0, i32 0, i32 3
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %tobool = icmp ne %struct.dequeobject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.dequeiterobject*, %struct.dequeiterobject** %dio.addr, align 8
  %deque1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %3, i32 0, i32 3
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque1, align 8
  %5 = bitcast %struct.dequeobject* %4 to %struct._object*
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
define internal %struct._object* @dequeiter_next(%struct.dequeiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.dequeiterobject*, align 8
  %item = alloca %struct._object*, align 8
  store %struct.dequeiterobject* %it, %struct.dequeiterobject** %it.addr, align 8
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %0, i32 0, i32 3
  %1 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %1, i32 0, i32 5
  %2 = load i64, i64* %state, align 8
  %3 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %state1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %3, i32 0, i32 4
  %4 = load i64, i64* %state1, align 8
  %cmp = icmp ne i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %5, i32 0, i32 5
  store i64 0, i64* %counter, align 8
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter2 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %7, i32 0, i32 5
  %8 = load i64, i64* %counter2, align 8
  %cmp3 = icmp eq i64 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %9, i32 0, i32 1
  %10 = load i64, i64* %index, align 8
  %11 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %11, i32 0, i32 2
  %12 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %12, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %10
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %item, align 8
  %14 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index6 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %14, i32 0, i32 1
  %15 = load i64, i64* %index6, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %index6, align 8
  %16 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter7 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %16, i32 0, i32 5
  %17 = load i64, i64* %counter7, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %counter7, align 8
  %18 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index8 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %18, i32 0, i32 1
  %19 = load i64, i64* %index8, align 8
  %cmp9 = icmp eq i64 %19, 62
  br i1 %cmp9, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.5
  %20 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter10 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %20, i32 0, i32 5
  %21 = load i64, i64* %counter10, align 8
  %cmp11 = icmp sgt i64 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true
  %22 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b13 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %22, i32 0, i32 2
  %23 = load %struct.BLOCK*, %struct.BLOCK** %b13, align 8
  %rightlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %23, i32 0, i32 2
  %24 = load %struct.BLOCK*, %struct.BLOCK** %rightlink, align 8
  %25 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b14 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %25, i32 0, i32 2
  store %struct.BLOCK* %24, %struct.BLOCK** %b14, align 8
  %26 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index15 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %26, i32 0, i32 1
  store i64 0, i64* %index15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.5
  %27 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc17 = add i64 %28, 1
  store i64 %inc17, i64* %ob_refcnt, align 8
  %29 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.4, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %index = alloca i64, align 8
  %deque = alloca %struct._object*, align 8
  %it = alloca %struct.dequeiterobject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 0, i64* %index, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._typeobject* @deque_type, %struct._object** %deque, i64* %index)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %deque, align 8
  %2 = bitcast %struct._object* %1 to %struct.dequeobject*
  %call1 = call %struct._object* @deque_iter(%struct.dequeobject* %2)
  %3 = bitcast %struct._object* %call1 to %struct.dequeiterobject*
  store %struct.dequeiterobject* %3, %struct.dequeiterobject** %it, align 8
  %4 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %tobool2 = icmp ne %struct.dequeiterobject* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %call5 = call %struct._object* @dequeiter_next(%struct.dequeiterobject* %7)
  store %struct._object* %call5, %struct._object** %item, align 8
  %8 = load %struct._object*, %struct._object** %item, align 8
  %tobool6 = icmp ne %struct._object* %8, null
  br i1 %tobool6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.26

if.else.11:                                       ; preds = %for.body
  %16 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %16, i32 0, i32 5
  %17 = load i64, i64* %counter, align 8
  %tobool12 = icmp ne i64 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else.11
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %18 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %19 = bitcast %struct.dequeiterobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.25:                                       ; preds = %if.else.11
  br label %for.end

if.end.26:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.25, %for.cond
  %27 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %28 = bitcast %struct.dequeiterobject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.24, %if.then.3, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_len(%struct.dequeiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.dequeiterobject*, align 8
  store %struct.dequeiterobject* %it, %struct.dequeiterobject** %it.addr, align 8
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %0, i32 0, i32 5
  %1 = load i64, i64* %counter, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequeiter_reduce(%struct.dequeiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.dequeiterobject*, align 8
  store %struct.dequeiterobject* %it, %struct.dequeiterobject** %it.addr, align 8
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %1 = bitcast %struct.dequeiterobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %3, i32 0, i32 3
  %4 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %5 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %deque1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %5, i32 0, i32 3
  %6 = load %struct.dequeobject*, %struct.dequeobject** %deque1, align 8
  %7 = bitcast %struct.dequeobject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %9 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %9, i32 0, i32 5
  %10 = load i64, i64* %counter, align 8
  %sub = sub i64 %8, %10
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), %struct._typeobject* %2, %struct.dequeobject* %4, i64 %sub)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequereviter_next(%struct.dequeiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.dequeiterobject*, align 8
  %item = alloca %struct._object*, align 8
  store %struct.dequeiterobject* %it, %struct.dequeiterobject** %it.addr, align 8
  %0 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %0, i32 0, i32 5
  %1 = load i64, i64* %counter, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %deque = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %2, i32 0, i32 3
  %3 = load %struct.dequeobject*, %struct.dequeobject** %deque, align 8
  %state = getelementptr inbounds %struct.dequeobject, %struct.dequeobject* %3, i32 0, i32 5
  %4 = load i64, i64* %state, align 8
  %5 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %state1 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %5, i32 0, i32 4
  %6 = load i64, i64* %state1, align 8
  %cmp2 = icmp ne i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter4 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %7, i32 0, i32 5
  store i64 0, i64* %counter4, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %9, i32 0, i32 1
  %10 = load i64, i64* %index, align 8
  %11 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %11, i32 0, i32 2
  %12 = load %struct.BLOCK*, %struct.BLOCK** %b, align 8
  %data = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %12, i32 0, i32 1
  %arrayidx = getelementptr [62 x %struct._object*], [62 x %struct._object*]* %data, i32 0, i64 %10
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %item, align 8
  %14 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index6 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %14, i32 0, i32 1
  %15 = load i64, i64* %index6, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %index6, align 8
  %16 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter7 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %16, i32 0, i32 5
  %17 = load i64, i64* %counter7, align 8
  %dec8 = add i64 %17, -1
  store i64 %dec8, i64* %counter7, align 8
  %18 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index9 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %18, i32 0, i32 1
  %19 = load i64, i64* %index9, align 8
  %cmp10 = icmp eq i64 %19, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.5
  %20 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %counter11 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %20, i32 0, i32 5
  %21 = load i64, i64* %counter11, align 8
  %cmp12 = icmp sgt i64 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %22 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b14 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %22, i32 0, i32 2
  %23 = load %struct.BLOCK*, %struct.BLOCK** %b14, align 8
  %leftlink = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %23, i32 0, i32 0
  %24 = load %struct.BLOCK*, %struct.BLOCK** %leftlink, align 8
  %25 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %b15 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %25, i32 0, i32 2
  store %struct.BLOCK* %24, %struct.BLOCK** %b15, align 8
  %26 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it.addr, align 8
  %index16 = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %26, i32 0, i32 1
  store i64 61, i64* %index16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true, %if.end.5
  %27 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %29 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.3, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dequereviter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %index = alloca i64, align 8
  %deque = alloca %struct._object*, align 8
  %it = alloca %struct.dequeiterobject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 0, i64* %index, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._typeobject* @deque_type, %struct._object** %deque, i64* %index)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %deque, align 8
  %2 = bitcast %struct._object* %1 to %struct.dequeobject*
  %call1 = call %struct._object* @deque_reviter(%struct.dequeobject* %2)
  %3 = bitcast %struct._object* %call1 to %struct.dequeiterobject*
  store %struct.dequeiterobject* %3, %struct.dequeiterobject** %it, align 8
  %4 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %tobool2 = icmp ne %struct.dequeiterobject* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %call5 = call %struct._object* @dequereviter_next(%struct.dequeiterobject* %7)
  store %struct._object* %call5, %struct._object** %item, align 8
  %8 = load %struct._object*, %struct._object** %item, align 8
  %tobool6 = icmp ne %struct._object* %8, null
  br i1 %tobool6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.26

if.else.11:                                       ; preds = %for.body
  %16 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %counter = getelementptr inbounds %struct.dequeiterobject, %struct.dequeiterobject* %16, i32 0, i32 5
  %17 = load i64, i64* %counter, align 8
  %tobool12 = icmp ne i64 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else.11
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %18 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %19 = bitcast %struct.dequeiterobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.25:                                       ; preds = %if.else.11
  br label %for.end

if.end.26:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.25, %for.cond
  %27 = load %struct.dequeiterobject*, %struct.dequeiterobject** %it, align 8
  %28 = bitcast %struct.dequeiterobject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.24, %if.then.3, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
