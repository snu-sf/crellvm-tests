; ModuleID = './dictobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._dictkeysobject = type { i64, i64, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, i64, [1 x %struct.PyDictKeyEntry] }
%struct.PyDictKeyEntry = type { i64, %struct._object*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.0, i32* }
%struct.anon.0 = type { i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.dictiterobject = type { %struct._object, %struct.PyDictObject*, i64, i64, %struct._object*, i64 }
%struct.dictviewobject = type { %struct._object, %struct.PyDictObject* }
%struct._heaptypeobject = type { %struct._typeobject, %struct.PyNumberMethods, %struct.PyMappingMethods, %struct.PySequenceMethods, %struct.PyBufferProcs, %struct._object*, %struct._object*, %struct._object*, %struct._dictkeysobject* }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%union.anon = type { i8* }
%struct._setobject = type { %struct._object, i64, i64, i64, %struct.setentry*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, i64, [8 x %struct.setentry], %struct._object* }
%struct.setentry = type { %struct._object*, i64 }

@numfree = internal global i32 0, align 4
@free_list = internal global [80 x %struct.PyDictObject*] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"free PyDictObject\00", align 1
@PyDict_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDictObject*)* @dict_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @dict_as_sequence, %struct.PyMappingMethods* @dict_as_mapping, i64 (%struct._object*)* @PyObject_HashNotImplemented, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 537150464, i8* getelementptr inbounds ([371 x i8], [371 x i8]* @dictionary_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @dict_traverse, i32 (%struct._object*)* @dict_tp_clear, %struct._object* (%struct._object*, %struct._object*, i32)* @dict_richcompare, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([15 x %struct.PyMethodDef], [15 x %struct.PyMethodDef]* @mapp_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @dict_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dict_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Objects/dictobject.c\00", align 1
@_dummy_struct = internal global %struct._object { i64 2, %struct._typeobject* @PyDictDummy_Type }, align 8
@empty_values = internal global [1 x %struct._object*] zeroinitializer, align 8
@empty_keys_struct = internal global %struct._dictkeysobject { i64 2, i64 1, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_split, i64 0, [1 x %struct.PyDictKeyEntry] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"cannot convert dictionary update sequence element #%zd to a sequence\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [70 x i8] c"dictionary update sequence element #%zd has length %zd; 2 is required\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@dict_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* @PyDict_Contains, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@dict_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyDictObject*)* @dict_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyDictObject*, %struct._object*, %struct._object*)* @dict_ass_sub to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@dictionary_doc = internal global [371 x i8] c"dict() -> new empty dictionary\0Adict(mapping) -> new dictionary initialized from a mapping object's\0A    (key, value) pairs\0Adict(iterable) -> new dictionary initialized as if via:\0A    d = {}\0A    for k, v in iterable:\0A        d[k] = v\0Adict(**kwargs) -> new dictionary initialized with the name=value pairs\0A    in the keyword argument list.  For example:  dict(one=1, two=2)\00", align 16
@mapp_methods = internal global [15 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict___contains__ to %struct._object* (%struct._object*, %struct._object*)*), i32 72, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @dict___contains____doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @getitem__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict_get to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @get__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict_setdefault to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @setdefault_doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*, %struct._object*)* @dict_pop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @pop__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_popitem to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @popitem__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @dictkeys_new to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @keys__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @dictitems_new to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @items__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @dictvalues_new to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @values__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @dict_update to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @update__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._typeobject*, %struct._object*)* @dict_fromkeys to %struct._object* (%struct._object*, %struct._object*)*), i32 17, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @dict_fromkeys__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_clear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @clear__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDictObject*)* @dict_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"dict_keyiterator\00", align 1
@dictiter_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dictiterobject*)* @dictiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dictiterobject*)* @dictiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyDictIterKey_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.dictiterobject*)* @dictiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dictiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictiterobject*)* @dictiter_iternextkey to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dictiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"dict_valueiterator\00", align 1
@PyDictIterValue_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.dictiterobject*)* @dictiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dictiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictiterobject*)* @dictiter_iternextvalue to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dictiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"dict_itemiterator\00", align 1
@PyDictIterItem_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.dictiterobject*)* @dictiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictiterobject*, i32 (%struct._object*, i8*)*, i8*)* @dictiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictiterobject*)* @dictiter_iternextitem to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dictiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"dict_keys\00", align 1
@dictviews_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @dictviews_sub, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @dictviews_and, %struct._object* (%struct._object*, %struct._object*)* @dictviews_xor, %struct._object* (%struct._object*, %struct._object*)* @dictviews_or, %struct._object* (%struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@dictkeys_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.dictviewobject*)* @dictview_len to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.dictviewobject*, %struct._object*)* @dictkeys_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@dictkeys_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @dictviews_isdisjoint, i32 8, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @isdisjoint_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyDictKeys_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.dictviewobject*)* @dictview_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictview_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @dictviews_as_number, %struct.PySequenceMethods* @dictkeys_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictviewobject*, i32 (%struct._object*, i8*)*, i8*)* @dictview_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @dictview_richcompare, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictkeys_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @dictkeys_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"dict_items\00", align 1
@dictitems_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.dictviewobject*)* @dictview_len to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.dictviewobject*, %struct._object*)* @dictitems_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@dictitems_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @dictviews_isdisjoint, i32 8, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @isdisjoint_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyDictItems_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.dictviewobject*)* @dictview_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictview_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @dictviews_as_number, %struct.PySequenceMethods* @dictitems_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictviewobject*, i32 (%struct._object*, i8*)*, i8*)* @dictview_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @dictview_richcompare, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictitems_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @dictitems_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"dict_values\00", align 1
@dictvalues_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.dictviewobject*)* @dictview_len to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@dictvalues_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@PyDictValues_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.dictviewobject*)* @dictview_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictview_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @dictvalues_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dictviewobject*, i32 (%struct._object*, i8*)*, i8*)* @dictview_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dictviewobject*)* @dictvalues_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([1 x %struct.PyMethodDef], [1 x %struct.PyMethodDef]* @dictvalues_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"This object has no __dict__\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@dict_subscript.PyId___missing__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct._object* null }, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"__missing__\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"__contains__\00", align 1
@dict___contains____doc__ = internal global [67 x i8] c"__contains__($self, key, /)\0A--\0A\0ATrue if D has a key k, else False.\00", align 16
@.str.20 = private unnamed_addr constant [12 x i8] c"__getitem__\00", align 1
@getitem__doc__ = internal global [27 x i8] c"x.__getitem__(y) <==> x[y]\00", align 16
@.str.21 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof__doc__ = internal global [48 x i8] c"D.__sizeof__() -> size of D in memory, in bytes\00", align 16
@.str.22 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@get__doc__ = internal global [61 x i8] c"D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.\00", align 16
@.str.23 = private unnamed_addr constant [11 x i8] c"setdefault\00", align 1
@setdefault_doc__ = internal global [65 x i8] c"D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D\00", align 16
@.str.24 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop__doc__ = internal global [150 x i8] c"D.pop(k[,d]) -> v, remove specified key and return the corresponding value.\0AIf key is not found, d is returned if given, otherwise KeyError is raised\00", align 16
@.str.25 = private unnamed_addr constant [8 x i8] c"popitem\00", align 1
@popitem__doc__ = internal global [112 x i8] c"D.popitem() -> (k, v), remove and return some (key, value) pair as a\0A2-tuple; but raise KeyError if D is empty.\00", align 16
@.str.26 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@keys__doc__ = internal global [59 x i8] c"D.keys() -> a set-like object providing a view on D's keys\00", align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@items__doc__ = internal global [61 x i8] c"D.items() -> a set-like object providing a view on D's items\00", align 16
@.str.28 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@values__doc__ = internal global [55 x i8] c"D.values() -> an object providing a view on D's values\00", align 16
@.str.29 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@update__doc__ = internal global [286 x i8] c"D.update([E, ]**F) -> None.  Update D from dict/iterable E and F.\0AIf E is present and has a .keys() method, then does:  for k in E: D[k] = E[k]\0AIf E is present and lacks a .keys() method, then does:  for k, v in E: D[k] = v\0AIn either case, this is followed by: for k in F:  D[k] = F[k]\00", align 16
@.str.30 = private unnamed_addr constant [9 x i8] c"fromkeys\00", align 1
@dict_fromkeys__doc__ = internal global [115 x i8] c"fromkeys($type, iterable, value=None, /)\0A--\0A\0AReturns a new dict with keys from iterable and values equal to value.\00", align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear__doc__ = internal global [45 x i8] c"D.clear() -> None.  Remove all items from D.\00", align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@copy__doc__ = internal global [32 x i8] c"D.copy() -> a shallow copy of D\00", align 16
@PyExc_KeyError = external global %struct._object*, align 8
@.str.33 = private unnamed_addr constant [31 x i8] c"popitem(): dictionary is empty\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s() requires a dict argument, not '%s'\00", align 1
@dict_update_common.PyId_keys = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@PySet_Type = external global %struct._typeobject, align 8
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.35 = private unnamed_addr constant [41 x i8] c"dictionary changed size during iteration\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.37 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s(%R)\00", align 1
@dictviews_sub.PyId_difference_update = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* null }, align 8
@.str.41 = private unnamed_addr constant [18 x i8] c"difference_update\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@dictviews_and.PyId_intersection_update = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), %struct._object* null }, align 8
@.str.43 = private unnamed_addr constant [20 x i8] c"intersection_update\00", align 1
@dictviews_xor.PyId_symmetric_difference_update = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), %struct._object* null }, align 8
@.str.44 = private unnamed_addr constant [28 x i8] c"symmetric_difference_update\00", align 1
@dictviews_or.PyId_update = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* null }, align 8
@.str.45 = private unnamed_addr constant [11 x i8] c"isdisjoint\00", align 1
@isdisjoint_doc = internal global [73 x i8] c"Return True if the view and the given iterable have a null intersection.\00", align 16
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.46 = private unnamed_addr constant [47 x i8] c"Not enough memory to allocate new values array\00", align 1
@PyDictDummy_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* @dummy_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @dummy_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"<dummy key> type\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"deallocating <dummy key>\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"<dummy key>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyDict_ClearFreeList() #0 {
entry:
  %op = alloca %struct.PyDictObject*, align 8
  %ret = alloca i32, align 4
  %0 = load i32, i32* @numfree, align 4
  store i32 %0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* @numfree, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @numfree, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* @numfree, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr [80 x %struct.PyDictObject*], [80 x %struct.PyDictObject*]* @free_list, i32 0, i64 %idxprom
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %arrayidx, align 8
  store %struct.PyDictObject* %3, %struct.PyDictObject** %op, align 8
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %op, align 8
  %5 = bitcast %struct.PyDictObject* %4 to i8*
  call void @PyObject_GC_Del(i8* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @_PyDict_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load i32, i32* @numfree, align 4
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %1, i64 40)
  ret void
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @PyDict_Fini() #0 {
entry:
  %call = call i32 @PyDict_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_New() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %keys = alloca %struct._dictkeysobject*, align 8
  %call = call %struct._dictkeysobject* @new_keys_object(i64 8)
  store %struct._dictkeysobject* %call, %struct._dictkeysobject** %keys, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %cmp = icmp eq %struct._dictkeysobject* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %call1 = call %struct._object* @new_dict(%struct._dictkeysobject* %1, %struct._object** null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._dictkeysobject* @new_keys_object(i64 %size) #0 {
entry:
  %retval = alloca %struct._dictkeysobject*, align 8
  %size.addr = alloca i64, align 8
  %dk = alloca %struct._dictkeysobject*, align 8
  %i = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %0, 1
  %mul = mul i64 24, %sub
  %add = add i64 56, %mul
  %call = call i8* @PyMem_Malloc(i64 %add)
  %1 = bitcast i8* %call to %struct._dictkeysobject*
  store %struct._dictkeysobject* %1, %struct._dictkeysobject** %dk, align 8
  %2 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %cmp = icmp eq %struct._dictkeysobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %3, i32 0, i32 0
  store i64 1, i64* %dk_refcnt, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %5, i32 0, i32 1
  store i64 %4, i64* %dk_size, align 8
  %6 = load i64, i64* %size.addr, align 8
  %shl = shl i64 %6, 1
  %add2 = add i64 %shl, 1
  %div = sdiv i64 %add2, 3
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %dk_usable = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %7, i32 0, i32 3
  store i64 %div, i64* %dk_usable, align 8
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %9 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %9, i32 0, i32 0
  store i64 0, i64* %me_hash, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %size.addr, align 8
  %cmp3 = icmp slt i64 %10, %11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx4 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %13, i64 %12
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx4, i32 0, i32 1
  store %struct._object* null, %struct._object** %me_key, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx5 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %15, i64 %14
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx5, i32 0, i32 2
  store %struct._object* null, %struct._object** %me_value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %17, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_unicode_nodummy, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %18 = load %struct._dictkeysobject*, %struct._dictkeysobject** %dk, align 8
  store %struct._dictkeysobject* %18, %struct._dictkeysobject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct._dictkeysobject*, %struct._dictkeysobject** %retval
  ret %struct._dictkeysobject* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @new_dict(%struct._dictkeysobject* %keys, %struct._object** %values) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %keys.addr = alloca %struct._dictkeysobject*, align 8
  %values.addr = alloca %struct._object**, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  store %struct._dictkeysobject* %keys, %struct._dictkeysobject** %keys.addr, align 8
  store %struct._object** %values, %struct._object*** %values.addr, align 8
  %0 = load i32, i32* @numfree, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @numfree, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* @numfree, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr [80 x %struct.PyDictObject*], [80 x %struct.PyDictObject*]* @free_list, i32 0, i64 %idxprom
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %arrayidx, align 8
  store %struct.PyDictObject* %2, %struct.PyDictObject** %mp, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %4 = bitcast %struct.PyDictObject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDict_Type)
  %5 = bitcast %struct._object* %call to %struct.PyDictObject*
  store %struct.PyDictObject* %5, %struct.PyDictObject** %mp, align 8
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %cmp = icmp eq %struct.PyDictObject* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.else
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %7, i32 0, i32 0
  %8 = load i64, i64* %dk_refcnt, align 8
  %dec2 = add i64 %8, -1
  store i64 %dec2, i64* %dk_refcnt, align 8
  %cmp3 = icmp eq i64 %dec2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.1
  %9 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  call void @free_keys_object(%struct._dictkeysobject* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.1
  %10 = load %struct._object**, %struct._object*** %values.addr, align 8
  %11 = bitcast %struct._object** %10 to i8*
  call void @PyMem_Free(i8* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %13 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %13, i32 0, i32 2
  store %struct._dictkeysobject* %12, %struct._dictkeysobject** %ma_keys, align 8
  %14 = load %struct._object**, %struct._object*** %values.addr, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %15, i32 0, i32 3
  store %struct._object** %14, %struct._object*** %ma_values, align 8
  %16 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %16, i32 0, i32 1
  store i64 0, i64* %ma_used, align 8
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %18 = bitcast %struct.PyDictObject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define i32 @_PyDict_HasOnlyStringKeys(%struct._object* %dict) #0 {
entry:
  %retval = alloca i32, align 4
  %dict.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %1, i32 0, i32 2
  %2 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %2, i32 0, i32 2
  %3 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %cmp = icmp ne %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %3, @lookdict
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.3, %if.end
  %4 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call = call i32 @PyDict_Next(%struct._object* %4, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct.PyDictKeyEntry* @lookdict(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object*** %value_addr) #0 {
entry:
  %retval = alloca %struct.PyDictKeyEntry*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value_addr.addr = alloca %struct._object***, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %freeslot = alloca %struct.PyDictKeyEntry*, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %cmp = alloca i32, align 4
  %startkey = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object*** %value_addr, %struct._object**** %value_addr.addr, align 8
  br label %top

top:                                              ; preds = %if.else.88, %if.else.30, %entry
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %2, 1
  store i64 %sub, i64* %mask, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load i64, i64* %hash.addr, align 8
  %6 = load i64, i64* %mask, align 8
  %and = and i64 %5, %6
  store i64 %and, i64* %i, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx2 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %8, i64 %7
  store %struct.PyDictKeyEntry* %arrayidx2, %struct.PyDictKeyEntry** %ep, align 8
  %9 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp3 = icmp eq %struct._object* %10, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %top
  %11 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key4 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %me_key4, align 8
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp5 = icmp eq %struct._object* %12, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %top
  %14 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %14, i32 0, i32 2
  %15 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value, %struct._object*** %15, align 8
  %16 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %16, %struct.PyDictKeyEntry** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key6 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %me_key6, align 8
  %cmp7 = icmp eq %struct._object* %18, @_dummy_struct
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %19 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %19, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %20 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %20, i32 0, i32 0
  %21 = load i64, i64* %me_hash, align 8
  %22 = load i64, i64* %hash.addr, align 8
  %cmp9 = icmp eq i64 %21, %22
  br i1 %cmp9, label %if.then.10, label %if.end.32

if.then.10:                                       ; preds = %if.else
  %23 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key11 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %23, i32 0, i32 1
  %24 = load %struct._object*, %struct._object** %me_key11, align 8
  store %struct._object* %24, %struct._object** %startkey, align 8
  %25 = load %struct._object*, %struct._object** %startkey, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %27 = load %struct._object*, %struct._object** %startkey, align 8
  %28 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %27, %struct._object* %28, i32 2)
  store i32 %call, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %29 = load %struct._object*, %struct._object** %startkey, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %36 = load i32, i32* %cmp, align 4
  %cmp17 = icmp slt i32 %36, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  store %struct.PyDictKeyEntry* null, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  %37 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %38 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys20 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %38, i32 0, i32 2
  %39 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys20, align 8
  %dk_entries21 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %39, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries21, i32 0, i32 0
  %cmp22 = icmp eq %struct.PyDictKeyEntry* %37, %arraydecay
  br i1 %cmp22, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.end.19
  %40 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key23 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %40, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %me_key23, align 8
  %42 = load %struct._object*, %struct._object** %startkey, align 8
  %cmp24 = icmp eq %struct._object* %41, %42
  br i1 %cmp24, label %if.then.25, label %if.else.30

if.then.25:                                       ; preds = %land.lhs.true
  %43 = load i32, i32* %cmp, align 4
  %cmp26 = icmp sgt i32 %43, 0
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.25
  %44 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value28 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %44, i32 0, i32 2
  %45 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value28, %struct._object*** %45, align 8
  %46 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %46, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true, %if.end.19
  br label %top

if.end.31:                                        ; preds = %if.end.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  store %struct.PyDictKeyEntry* null, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.8
  %47 = load i64, i64* %hash.addr, align 8
  store i64 %47, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %48 = load i64, i64* %i, align 8
  %shl = shl i64 %48, 2
  %49 = load i64, i64* %i, align 8
  %add = add i64 %shl, %49
  %50 = load i64, i64* %perturb, align 8
  %add34 = add i64 %add, %50
  %add35 = add i64 %add34, 1
  store i64 %add35, i64* %i, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %mask, align 8
  %and36 = and i64 %51, %52
  %53 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx37 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %53, i64 %and36
  store %struct.PyDictKeyEntry* %arrayidx37, %struct.PyDictKeyEntry** %ep, align 8
  %54 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key38 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %54, i32 0, i32 1
  %55 = load %struct._object*, %struct._object** %me_key38, align 8
  %cmp39 = icmp eq %struct._object* %55, null
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %for.cond
  %56 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %cmp41 = icmp eq %struct.PyDictKeyEntry* %56, null
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.40
  %57 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value43 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %57, i32 0, i32 2
  %58 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value43, %struct._object*** %58, align 8
  %59 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %59, %struct.PyDictKeyEntry** %retval
  br label %return

if.else.44:                                       ; preds = %if.then.40
  %60 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %me_value45 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %60, i32 0, i32 2
  %61 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value45, %struct._object*** %61, align 8
  %62 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  store %struct.PyDictKeyEntry* %62, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.46:                                        ; preds = %for.cond
  %63 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key47 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %63, i32 0, i32 1
  %64 = load %struct._object*, %struct._object** %me_key47, align 8
  %65 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp48 = icmp eq %struct._object* %64, %65
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %66 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value50 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %66, i32 0, i32 2
  %67 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value50, %struct._object*** %67, align 8
  %68 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %68, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.46
  %69 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash52 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %69, i32 0, i32 0
  %70 = load i64, i64* %me_hash52, align 8
  %71 = load i64, i64* %hash.addr, align 8
  %cmp53 = icmp eq i64 %70, %71
  br i1 %cmp53, label %land.lhs.true.54, label %if.else.90

land.lhs.true.54:                                 ; preds = %if.end.51
  %72 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key55 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %72, i32 0, i32 1
  %73 = load %struct._object*, %struct._object** %me_key55, align 8
  %cmp56 = icmp ne %struct._object* %73, @_dummy_struct
  br i1 %cmp56, label %if.then.57, label %if.else.90

if.then.57:                                       ; preds = %land.lhs.true.54
  %74 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key58 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %74, i32 0, i32 1
  %75 = load %struct._object*, %struct._object** %me_key58, align 8
  store %struct._object* %75, %struct._object** %startkey, align 8
  %76 = load %struct._object*, %struct._object** %startkey, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %77, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %78 = load %struct._object*, %struct._object** %startkey, align 8
  %79 = load %struct._object*, %struct._object** %key.addr, align 8
  %call61 = call i32 @PyObject_RichCompareBool(%struct._object* %78, %struct._object* %79, i32 2)
  store i32 %call61, i32* %cmp, align 4
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.57
  %80 = load %struct._object*, %struct._object** %startkey, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp63, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %82, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %85(%struct._object* %86)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %87 = load i32, i32* %cmp, align 4
  %cmp73 = icmp slt i32 %87, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.end.72
  %88 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** null, %struct._object*** %88, align 8
  store %struct.PyDictKeyEntry* null, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.75:                                        ; preds = %do.end.72
  %89 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %90 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys76 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %90, i32 0, i32 2
  %91 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys76, align 8
  %dk_entries77 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %91, i32 0, i32 4
  %arraydecay78 = getelementptr inbounds [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries77, i32 0, i32 0
  %cmp79 = icmp eq %struct.PyDictKeyEntry* %89, %arraydecay78
  br i1 %cmp79, label %land.lhs.true.80, label %if.else.88

land.lhs.true.80:                                 ; preds = %if.end.75
  %92 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key81 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %92, i32 0, i32 1
  %93 = load %struct._object*, %struct._object** %me_key81, align 8
  %94 = load %struct._object*, %struct._object** %startkey, align 8
  %cmp82 = icmp eq %struct._object* %93, %94
  br i1 %cmp82, label %if.then.83, label %if.else.88

if.then.83:                                       ; preds = %land.lhs.true.80
  %95 = load i32, i32* %cmp, align 4
  %cmp84 = icmp sgt i32 %95, 0
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.83
  %96 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value86 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %96, i32 0, i32 2
  %97 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value86, %struct._object*** %97, align 8
  %98 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %98, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.87:                                        ; preds = %if.then.83
  br label %if.end.89

if.else.88:                                       ; preds = %land.lhs.true.80, %if.end.75
  br label %top

if.end.89:                                        ; preds = %if.end.87
  br label %if.end.97

if.else.90:                                       ; preds = %land.lhs.true.54, %if.end.51
  %99 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key91 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %99, i32 0, i32 1
  %100 = load %struct._object*, %struct._object** %me_key91, align 8
  %cmp92 = icmp eq %struct._object* %100, @_dummy_struct
  br i1 %cmp92, label %land.lhs.true.93, label %if.end.96

land.lhs.true.93:                                 ; preds = %if.else.90
  %101 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %cmp94 = icmp eq %struct.PyDictKeyEntry* %101, null
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true.93
  %102 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %102, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true.93, %if.else.90
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %103 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %103, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

return:                                           ; preds = %if.then.85, %if.then.74, %if.then.49, %if.else.44, %if.then.42, %if.then.27, %if.then.18, %if.then
  %104 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %retval
  ret %struct.PyDictKeyEntry* %104
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_Next(%struct._object* %op, i64* %ppos, %struct._object** %pkey, %struct._object** %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %ppos.addr = alloca i64*, align 8
  %pkey.addr = alloca %struct._object**, align 8
  %pvalue.addr = alloca %struct._object**, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64* %ppos, i64** %ppos.addr, align 8
  store %struct._object** %pkey, %struct._object*** %pkey.addr, align 8
  store %struct._object** %pvalue, %struct._object*** %pvalue.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = load i64*, i64** %ppos.addr, align 8
  %2 = load i64, i64* %1, align 8
  %3 = load %struct._object**, %struct._object*** %pvalue.addr, align 8
  %call = call i64 @dict_next(%struct._object* %0, i64 %2, %struct._object** %3)
  store i64 %call, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyDictObject*
  store %struct.PyDictObject* %6, %struct.PyDictObject** %mp, align 8
  %7 = load i64, i64* %i, align 8
  %add = add i64 %7, 1
  %8 = load i64*, i64** %ppos.addr, align 8
  store i64 %add, i64* %8, align 8
  %9 = load %struct._object**, %struct._object*** %pkey.addr, align 8
  %tobool = icmp ne %struct._object** %9, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %12, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %10
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %me_key, align 8
  %14 = load %struct._object**, %struct._object*** %pkey.addr, align 8
  store %struct._object* %13, %struct._object** %14, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @_PyDict_MaybeUntrack(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %value = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyDict_Type
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
  br label %do.end.117

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyDictObject*
  store %struct.PyDictObject* %6, %struct.PyDictObject** %mp, align 8
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 1
  %9 = load i64, i64* %dk_size, align 8
  store i64 %9, i64* %size, align 8
  %10 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %10, i32 0, i32 3
  %11 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp2 = icmp ne %struct._object** %11, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %size, align 8
  %cmp4 = icmp slt i64 %12, %13
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %15, i32 0, i32 3
  %16 = load %struct._object**, %struct._object*** %ma_values5, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %16, i64 %14
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %17, %struct._object** %value, align 8
  %cmp6 = icmp eq %struct._object* %17, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.inc

if.end.8:                                         ; preds = %for.body
  %18 = load %struct._object*, %struct._object** %value, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags, align 8
  %and = and i64 %20, 16384
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.8
  %21 = load %struct._object*, %struct._object** %value, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 39
  %23 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp12 = icmp eq i32 (%struct._object*)* %23, null
  br i1 %cmp12, label %land.lhs.true.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true
  %24 = load %struct._object*, %struct._object** %value, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_is_gc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 39
  %26 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc15, align 8
  %27 = load %struct._object*, %struct._object** %value, align 8
  %call = call i32 %26(%struct._object* %27)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %lor.lhs.false.13, %land.lhs.true
  %28 = load %struct._object*, %struct._object** %value, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %cmp18 = icmp eq %struct._typeobject* %29, @PyTuple_Type
  br i1 %cmp18, label %lor.lhs.false.19, label %if.then.25

lor.lhs.false.19:                                 ; preds = %land.lhs.true.16
  %30 = load %struct._object*, %struct._object** %value, align 8
  %31 = bitcast %struct._object* %30 to %union._gc_head*
  %add.ptr20 = getelementptr %union._gc_head, %union._gc_head* %31, i64 -1
  %gc21 = bitcast %union._gc_head* %add.ptr20 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  %32 = load i64, i64* %gc_refs22, align 8
  %shr23 = ashr i64 %32, 1
  %cmp24 = icmp ne i64 %shr23, -2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.19, %land.lhs.true.16
  br label %do.end.117

if.end.26:                                        ; preds = %lor.lhs.false.19, %lor.lhs.false.13, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.7
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.97

if.else:                                          ; preds = %if.end
  %34 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys27 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %34, i32 0, i32 2
  %35 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys27, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %35, i32 0, i32 4
  %arrayidx28 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx28, %struct.PyDictKeyEntry** %ep0, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.94, %if.else
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %size, align 8
  %cmp30 = icmp slt i64 %36, %37
  br i1 %cmp30, label %for.body.31, label %for.end.96

for.body.31:                                      ; preds = %for.cond.29
  %38 = load i64, i64* %i, align 8
  %39 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx32 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %39, i64 %38
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx32, i32 0, i32 2
  %40 = load %struct._object*, %struct._object** %me_value, align 8
  store %struct._object* %40, %struct._object** %value, align 8
  %cmp33 = icmp eq %struct._object* %40, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.31
  br label %for.inc.94

if.end.35:                                        ; preds = %for.body.31
  %41 = load %struct._object*, %struct._object** %value, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_flags37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 19
  %43 = load i64, i64* %tp_flags37, align 8
  %and38 = and i64 %43, 16384
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %land.lhs.true.40, label %lor.lhs.false.58

land.lhs.true.40:                                 ; preds = %if.end.35
  %44 = load %struct._object*, %struct._object** %value, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_is_gc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 39
  %46 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc42, align 8
  %cmp43 = icmp eq i32 (%struct._object*)* %46, null
  br i1 %cmp43, label %land.lhs.true.49, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %land.lhs.true.40
  %47 = load %struct._object*, %struct._object** %value, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_is_gc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 39
  %49 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc46, align 8
  %50 = load %struct._object*, %struct._object** %value, align 8
  %call47 = call i32 %49(%struct._object* %50)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.49, label %lor.lhs.false.58

land.lhs.true.49:                                 ; preds = %lor.lhs.false.44, %land.lhs.true.40
  %51 = load %struct._object*, %struct._object** %value, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %cmp51 = icmp eq %struct._typeobject* %52, @PyTuple_Type
  br i1 %cmp51, label %lor.lhs.false.52, label %if.then.92

lor.lhs.false.52:                                 ; preds = %land.lhs.true.49
  %53 = load %struct._object*, %struct._object** %value, align 8
  %54 = bitcast %struct._object* %53 to %union._gc_head*
  %add.ptr53 = getelementptr %union._gc_head, %union._gc_head* %54, i64 -1
  %gc54 = bitcast %union._gc_head* %add.ptr53 to %struct.anon*
  %gc_refs55 = getelementptr inbounds %struct.anon, %struct.anon* %gc54, i32 0, i32 2
  %55 = load i64, i64* %gc_refs55, align 8
  %shr56 = ashr i64 %55, 1
  %cmp57 = icmp ne i64 %shr56, -2
  br i1 %cmp57, label %if.then.92, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.52, %lor.lhs.false.44, %if.end.35
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx59 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %57, i64 %56
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx59, i32 0, i32 1
  %58 = load %struct._object*, %struct._object** %me_key, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_flags61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 19
  %60 = load i64, i64* %tp_flags61, align 8
  %and62 = and i64 %60, 16384
  %cmp63 = icmp ne i64 %and62, 0
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.93

land.lhs.true.64:                                 ; preds = %lor.lhs.false.58
  %61 = load i64, i64* %i, align 8
  %62 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx65 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %62, i64 %61
  %me_key66 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx65, i32 0, i32 1
  %63 = load %struct._object*, %struct._object** %me_key66, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_is_gc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 39
  %65 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc68, align 8
  %cmp69 = icmp eq i32 (%struct._object*)* %65, null
  br i1 %cmp69, label %land.lhs.true.79, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.64
  %66 = load i64, i64* %i, align 8
  %67 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx71 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %67, i64 %66
  %me_key72 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx71, i32 0, i32 1
  %68 = load %struct._object*, %struct._object** %me_key72, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_is_gc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 39
  %70 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc74, align 8
  %71 = load i64, i64* %i, align 8
  %72 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx75 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %72, i64 %71
  %me_key76 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx75, i32 0, i32 1
  %73 = load %struct._object*, %struct._object** %me_key76, align 8
  %call77 = call i32 %70(%struct._object* %73)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.93

land.lhs.true.79:                                 ; preds = %lor.lhs.false.70, %land.lhs.true.64
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx80 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %75, i64 %74
  %me_key81 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx80, i32 0, i32 1
  %76 = load %struct._object*, %struct._object** %me_key81, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %cmp83 = icmp eq %struct._typeobject* %77, @PyTuple_Type
  br i1 %cmp83, label %lor.lhs.false.84, label %if.then.92

lor.lhs.false.84:                                 ; preds = %land.lhs.true.79
  %78 = load i64, i64* %i, align 8
  %79 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx85 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %79, i64 %78
  %me_key86 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx85, i32 0, i32 1
  %80 = load %struct._object*, %struct._object** %me_key86, align 8
  %81 = bitcast %struct._object* %80 to %union._gc_head*
  %add.ptr87 = getelementptr %union._gc_head, %union._gc_head* %81, i64 -1
  %gc88 = bitcast %union._gc_head* %add.ptr87 to %struct.anon*
  %gc_refs89 = getelementptr inbounds %struct.anon, %struct.anon* %gc88, i32 0, i32 2
  %82 = load i64, i64* %gc_refs89, align 8
  %shr90 = ashr i64 %82, 1
  %cmp91 = icmp ne i64 %shr90, -2
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.84, %land.lhs.true.79, %lor.lhs.false.52, %land.lhs.true.49
  br label %do.end.117

if.end.93:                                        ; preds = %lor.lhs.false.84, %lor.lhs.false.70, %lor.lhs.false.58
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93, %if.then.34
  %83 = load i64, i64* %i, align 8
  %inc95 = add i64 %83, 1
  store i64 %inc95, i64* %i, align 8
  br label %for.cond.29

for.end.96:                                       ; preds = %for.cond.29
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end.97
  %84 = load %struct._object*, %struct._object** %op.addr, align 8
  %85 = bitcast %struct._object* %84 to %union._gc_head*
  %add.ptr98 = getelementptr %union._gc_head, %union._gc_head* %85, i64 -1
  store %union._gc_head* %add.ptr98, %union._gc_head** %g, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %do.body
  %86 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc100 = bitcast %union._gc_head* %86 to %struct.anon*
  %gc_refs101 = getelementptr inbounds %struct.anon, %struct.anon* %gc100, i32 0, i32 2
  %87 = load i64, i64* %gc_refs101, align 8
  %and102 = and i64 %87, 1
  %or = or i64 %and102, -4
  %88 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc103 = bitcast %union._gc_head* %88 to %struct.anon*
  %gc_refs104 = getelementptr inbounds %struct.anon, %struct.anon* %gc103, i32 0, i32 2
  store i64 %or, i64* %gc_refs104, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.99
  %89 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc105 = bitcast %union._gc_head* %89 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc105, i32 0, i32 0
  %90 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %91 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc106 = bitcast %union._gc_head* %91 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc106, i32 0, i32 1
  %92 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc107 = bitcast %union._gc_head* %92 to %struct.anon*
  %gc_next108 = getelementptr inbounds %struct.anon, %struct.anon* %gc107, i32 0, i32 0
  store %union._gc_head* %90, %union._gc_head** %gc_next108, align 8
  %93 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc109 = bitcast %union._gc_head* %93 to %struct.anon*
  %gc_prev110 = getelementptr inbounds %struct.anon, %struct.anon* %gc109, i32 0, i32 1
  %94 = load %union._gc_head*, %union._gc_head** %gc_prev110, align 8
  %95 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc111 = bitcast %union._gc_head* %95 to %struct.anon*
  %gc_next112 = getelementptr inbounds %struct.anon, %struct.anon* %gc111, i32 0, i32 0
  %96 = load %union._gc_head*, %union._gc_head** %gc_next112, align 8
  %gc113 = bitcast %union._gc_head* %96 to %struct.anon*
  %gc_prev114 = getelementptr inbounds %struct.anon, %struct.anon* %gc113, i32 0, i32 1
  store %union._gc_head* %94, %union._gc_head** %gc_prev114, align 8
  %97 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc115 = bitcast %union._gc_head* %97 to %struct.anon*
  %gc_next116 = getelementptr inbounds %struct.anon, %struct.anon* %gc115, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next116, align 8
  br label %do.end.117

do.end.117:                                       ; preds = %if.then, %if.then.25, %if.then.92, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyDict_NewPresized(i64 %minused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %minused.addr = alloca i64, align 8
  %newsize = alloca i64, align 8
  %new_keys = alloca %struct._dictkeysobject*, align 8
  store i64 %minused, i64* %minused.addr, align 8
  store i64 8, i64* %newsize, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %newsize, align 8
  %1 = load i64, i64* %minused.addr, align 8
  %cmp = icmp sle i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i64, i64* %newsize, align 8
  %cmp1 = icmp sgt i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %newsize, align 8
  %shl = shl i64 %4, 1
  store i64 %shl, i64* %newsize, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load i64, i64* %newsize, align 8
  %call = call %struct._dictkeysobject* @new_keys_object(i64 %5)
  store %struct._dictkeysobject* %call, %struct._dictkeysobject** %new_keys, align 8
  %6 = load %struct._dictkeysobject*, %struct._dictkeysobject** %new_keys, align 8
  %cmp2 = icmp eq %struct._dictkeysobject* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %new_keys, align 8
  %call3 = call %struct._object* @new_dict(%struct._dictkeysobject* %7, %struct._object** null)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_GetItem(%struct._object* %op, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %tstate = alloca %struct._ts*, align 8
  %value_addr = alloca %struct._object**, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %err_type = alloca %struct._object*, align 8
  %err_value = alloca %struct._object*, align 8
  %err_tb = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %hash3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 2
  %9 = load i64, i64* %hash3, align 8
  store i64 %9, i64* %hash, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call, i64* %hash, align 8
  %11 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %lor.lhs.false
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %12 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %12, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %13 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %14 = bitcast %struct._Py_atomic_address* %13 to i8*
  %15 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %14, i32 %15)
  %16 = load i32, i32* %order, align 4
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.9, %if.end.9, %if.end.9
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %17 = load i8**, i8*** %volatile_data, align 8
  %18 = load volatile i8*, i8** %17, align 8
  store i8* %18, i8** %result, align 8
  %19 = load i32, i32* %order, align 4
  switch i32 %19, label %sw.default.11 [
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.10
  ]

sw.bb.10:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.12

sw.default.11:                                    ; preds = %sw.epilog
  br label %sw.epilog.12

sw.epilog.12:                                     ; preds = %sw.default.11, %sw.bb.10
  %20 = load i8*, i8** %result, align 8
  store i8* %20, i8** %tmp
  %21 = load i8*, i8** %tmp
  %22 = bitcast i8* %21 to %struct._ts*
  store %struct._ts* %22, %struct._ts** %tstate, align 8
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp13 = icmp ne %struct._ts* %23, null
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog.12
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 13
  %25 = load %struct._object*, %struct._object** %curexc_type, align 8
  %cmp14 = icmp ne %struct._object* %25, null
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  call void @PyErr_Fetch(%struct._object** %err_type, %struct._object** %err_value, %struct._object** %err_tb)
  %26 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %26, i32 0, i32 2
  %27 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %27, i32 0, i32 2
  %28 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %29 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %30 = load %struct._object*, %struct._object** %key.addr, align 8
  %31 = load i64, i64* %hash, align 8
  %call19 = call %struct.PyDictKeyEntry* %28(%struct.PyDictObject* %29, %struct._object* %30, i64 %31, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call19, %struct.PyDictKeyEntry** %ep, align 8
  %32 = load %struct._object*, %struct._object** %err_type, align 8
  %33 = load %struct._object*, %struct._object** %err_value, align 8
  %34 = load %struct._object*, %struct._object** %err_tb, align 8
  call void @PyErr_Restore(%struct._object* %32, %struct._object* %33, %struct._object* %34)
  %35 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp20 = icmp eq %struct.PyDictKeyEntry* %35, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.15
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %sw.epilog.12
  %36 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys23 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %36, i32 0, i32 2
  %37 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys23, align 8
  %dk_lookup24 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %37, i32 0, i32 2
  %38 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup24, align 8
  %39 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %40 = load %struct._object*, %struct._object** %key.addr, align 8
  %41 = load i64, i64* %hash, align 8
  %call25 = call %struct.PyDictKeyEntry* %38(%struct.PyDictObject* %39, %struct._object* %40, i64 %41, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call25, %struct.PyDictKeyEntry** %ep, align 8
  %42 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp26 = icmp eq %struct.PyDictKeyEntry* %42, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %43 = load %struct._object**, %struct._object*** %value_addr, align 8
  %44 = load %struct._object*, %struct._object** %43, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %if.then.21, %if.then.7, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare i64 @PyObject_Hash(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #2 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_GetItemWithError(%struct._object* %op, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1117)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %hash3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 2
  %9 = load i64, i64* %hash3, align 8
  store i64 %9, i64* %hash, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call, i64* %hash, align 8
  %11 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %lor.lhs.false
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %13, i32 0, i32 2
  %14 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %17 = load i64, i64* %hash, align 8
  %call10 = call %struct.PyDictKeyEntry* %14(%struct.PyDictObject* %15, %struct._object* %16, i64 %17, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call10, %struct.PyDictKeyEntry** %ep, align 8
  %18 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp11 = icmp eq %struct.PyDictKeyEntry* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %19 = load %struct._object**, %struct._object*** %value_addr, align 8
  %20 = load %struct._object*, %struct._object** %19, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.7, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyDict_GetItemIdWithError(%struct._object* %dp, %struct._Py_Identifier* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dp.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %kv = alloca %struct._object*, align 8
  store %struct._object* %dp, %struct._object** %dp.addr, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %dp.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %call1 = call %struct._object* @PyDict_GetItemWithError(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyDict_LoadGlobal(%struct.PyDictObject* %globals, %struct.PyDictObject* %builtins, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %globals.addr = alloca %struct.PyDictObject*, align 8
  %builtins.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %value_addr = alloca %struct._object**, align 8
  %hash = alloca i64, align 8
  %e = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %globals, %struct.PyDictObject** %globals.addr, align 8
  store %struct.PyDictObject* %builtins, %struct.PyDictObject** %builtins.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyUnicode_Type
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %hash1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 2
  %4 = load i64, i64* %hash1, align 8
  store i64 %4, i64* %hash, align 8
  %5 = load i64, i64* %hash, align 8
  %cmp2 = icmp ne i64 %5, -1
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %globals.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 2
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %7, i32 0, i32 2
  %8 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %globals.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash, align 8
  %call = call %struct.PyDictKeyEntry* %8(%struct.PyDictObject* %9, %struct._object* %10, i64 %11, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call, %struct.PyDictKeyEntry** %e, align 8
  %12 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %e, align 8
  %cmp4 = icmp eq %struct.PyDictKeyEntry* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  %13 = load %struct._object**, %struct._object*** %value_addr, align 8
  %14 = load %struct._object*, %struct._object** %13, align 8
  store %struct._object* %14, %struct._object** %x, align 8
  %15 = load %struct._object*, %struct._object** %x, align 8
  %cmp6 = icmp ne %struct._object* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %builtins.addr, align 8
  %ma_keys9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %17, i32 0, i32 2
  %18 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys9, align 8
  %dk_lookup10 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %18, i32 0, i32 2
  %19 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup10, align 8
  %20 = load %struct.PyDictObject*, %struct.PyDictObject** %builtins.addr, align 8
  %21 = load %struct._object*, %struct._object** %key.addr, align 8
  %22 = load i64, i64* %hash, align 8
  %call11 = call %struct.PyDictKeyEntry* %19(%struct.PyDictObject* %20, %struct._object* %21, i64 %22, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call11, %struct.PyDictKeyEntry** %e, align 8
  %23 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %e, align 8
  %cmp12 = icmp eq %struct.PyDictKeyEntry* %23, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %24 = load %struct._object**, %struct._object*** %value_addr, align 8
  %25 = load %struct._object*, %struct._object** %24, align 8
  store %struct._object* %25, %struct._object** %x, align 8
  %26 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %27 = load %struct.PyDictObject*, %struct.PyDictObject** %globals.addr, align 8
  %28 = bitcast %struct.PyDictObject* %27 to %struct._object*
  %29 = load %struct._object*, %struct._object** %key.addr, align 8
  %call17 = call %struct._object* @PyDict_GetItemWithError(%struct._object* %28, %struct._object* %29)
  store %struct._object* %call17, %struct._object** %x, align 8
  %30 = load %struct._object*, %struct._object** %x, align 8
  %cmp18 = icmp ne %struct._object* %30, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %31 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %call21 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call21, null
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %32 = load %struct.PyDictObject*, %struct.PyDictObject** %builtins.addr, align 8
  %33 = bitcast %struct.PyDictObject* %32 to %struct._object*
  %34 = load %struct._object*, %struct._object** %key.addr, align 8
  %call24 = call %struct._object* @PyDict_GetItemWithError(%struct._object* %33, %struct._object* %34)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.19, %if.end.14, %if.then.13, %if.then.7, %if.then.5
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define i32 @PyDict_SetItem(%struct._object* %op, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %hash = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1192)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyDictObject*
  store %struct.PyDictObject* %4, %struct.PyDictObject** %mp, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %hash3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 2
  %9 = load i64, i64* %hash3, align 8
  store i64 %9, i64* %hash, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call, i64* %hash, align 8
  %11 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %lor.lhs.false
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %14 = load i64, i64* %hash, align 8
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %call10 = call i32 @insertdict(%struct.PyDictObject* %12, %struct._object* %13, i64 %14, %struct._object* %15)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @insertdict(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value.addr = alloca %struct._object*, align 8
  %old_value = alloca %struct._object*, align 8
  %value_addr = alloca %struct._object**, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp138 = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 3
  %1 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp = icmp ne %struct._object** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyUnicode_Type
  br i1 %cmp1, label %if.end.4, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %call = call i32 @insertion_resize(%struct.PyDictObject* %4)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 2
  %6 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %6, i32 0, i32 2
  %7 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %10 = load i64, i64* %hash.addr, align 8
  %call5 = call %struct.PyDictKeyEntry* %7(%struct.PyDictObject* %8, %struct._object* %9, i64 %10, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call5, %struct.PyDictKeyEntry** %ep, align 8
  %11 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp6 = icmp eq %struct.PyDictKeyEntry* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %15 = bitcast %struct.PyDictObject* %14 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %15, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %16 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %16, 1
  %cmp9 = icmp ne i64 %shr, -2
  br i1 %cmp9, label %if.end.78, label %if.then.10

if.then.10:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags, align 8
  %and = and i64 %19, 16384
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.28

land.lhs.true.13:                                 ; preds = %if.then.10
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 39
  %22 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp15 = icmp eq i32 (%struct._object*)* %22, null
  br i1 %cmp15, label %land.lhs.true.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13
  %23 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_is_gc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 39
  %25 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc17, align 8
  %26 = load %struct._object*, %struct._object** %key.addr, align 8
  %call18 = call i32 %25(%struct._object* %26)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %land.lhs.true.19, label %lor.lhs.false.28

land.lhs.true.19:                                 ; preds = %lor.lhs.false, %land.lhs.true.13
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %cmp21 = icmp eq %struct._typeobject* %28, @PyTuple_Type
  br i1 %cmp21, label %lor.lhs.false.22, label %if.then.51

lor.lhs.false.22:                                 ; preds = %land.lhs.true.19
  %29 = load %struct._object*, %struct._object** %key.addr, align 8
  %30 = bitcast %struct._object* %29 to %union._gc_head*
  %add.ptr23 = getelementptr %union._gc_head, %union._gc_head* %30, i64 -1
  %gc24 = bitcast %union._gc_head* %add.ptr23 to %struct.anon*
  %gc_refs25 = getelementptr inbounds %struct.anon, %struct.anon* %gc24, i32 0, i32 2
  %31 = load i64, i64* %gc_refs25, align 8
  %shr26 = ashr i64 %31, 1
  %cmp27 = icmp ne i64 %shr26, -2
  br i1 %cmp27, label %if.then.51, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.22, %lor.lhs.false, %if.then.10
  %32 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19
  %34 = load i64, i64* %tp_flags30, align 8
  %and31 = and i64 %34, 16384
  %cmp32 = icmp ne i64 %and31, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.77

land.lhs.true.33:                                 ; preds = %lor.lhs.false.28
  %35 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_is_gc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 39
  %37 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc35, align 8
  %cmp36 = icmp eq i32 (%struct._object*)* %37, null
  br i1 %cmp36, label %land.lhs.true.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33
  %38 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_is_gc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 39
  %40 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc39, align 8
  %41 = load %struct._object*, %struct._object** %value.addr, align 8
  %call40 = call i32 %40(%struct._object* %41)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.77

land.lhs.true.42:                                 ; preds = %lor.lhs.false.37, %land.lhs.true.33
  %42 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %cmp44 = icmp eq %struct._typeobject* %43, @PyTuple_Type
  br i1 %cmp44, label %lor.lhs.false.45, label %if.then.51

lor.lhs.false.45:                                 ; preds = %land.lhs.true.42
  %44 = load %struct._object*, %struct._object** %value.addr, align 8
  %45 = bitcast %struct._object* %44 to %union._gc_head*
  %add.ptr46 = getelementptr %union._gc_head, %union._gc_head* %45, i64 -1
  %gc47 = bitcast %union._gc_head* %add.ptr46 to %struct.anon*
  %gc_refs48 = getelementptr inbounds %struct.anon, %struct.anon* %gc47, i32 0, i32 2
  %46 = load i64, i64* %gc_refs48, align 8
  %shr49 = ashr i64 %46, 1
  %cmp50 = icmp ne i64 %shr49, -2
  br i1 %cmp50, label %if.then.51, label %if.end.77

if.then.51:                                       ; preds = %lor.lhs.false.45, %land.lhs.true.42, %lor.lhs.false.22, %land.lhs.true.19
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %47 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %48 = bitcast %struct.PyDictObject* %47 to %union._gc_head*
  %add.ptr53 = getelementptr %union._gc_head, %union._gc_head* %48, i64 -1
  store %union._gc_head* %add.ptr53, %union._gc_head** %g, align 8
  %49 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc54 = bitcast %union._gc_head* %49 to %struct.anon*
  %gc_refs55 = getelementptr inbounds %struct.anon, %struct.anon* %gc54, i32 0, i32 2
  %50 = load i64, i64* %gc_refs55, align 8
  %shr56 = ashr i64 %50, 1
  %cmp57 = icmp ne i64 %shr56, -2
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.body.52
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.59:                                        ; preds = %do.body.52
  br label %do.body.60

do.body.60:                                       ; preds = %if.end.59
  %51 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc61 = bitcast %union._gc_head* %51 to %struct.anon*
  %gc_refs62 = getelementptr inbounds %struct.anon, %struct.anon* %gc61, i32 0, i32 2
  %52 = load i64, i64* %gc_refs62, align 8
  %and63 = and i64 %52, 1
  %or = or i64 %and63, -6
  %53 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc64 = bitcast %union._gc_head* %53 to %struct.anon*
  %gc_refs65 = getelementptr inbounds %struct.anon, %struct.anon* %gc64, i32 0, i32 2
  store i64 %or, i64* %gc_refs65, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.60
  %54 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %55 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc66 = bitcast %union._gc_head* %55 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc66, i32 0, i32 0
  store %union._gc_head* %54, %union._gc_head** %gc_next, align 8
  %56 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc67 = bitcast %union._gc_head* %56 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc67, i32 0, i32 1
  %57 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %58 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc68 = bitcast %union._gc_head* %58 to %struct.anon*
  %gc_prev69 = getelementptr inbounds %struct.anon, %struct.anon* %gc68, i32 0, i32 1
  store %union._gc_head* %57, %union._gc_head** %gc_prev69, align 8
  %59 = load %union._gc_head*, %union._gc_head** %g, align 8
  %60 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc70 = bitcast %union._gc_head* %60 to %struct.anon*
  %gc_prev71 = getelementptr inbounds %struct.anon, %struct.anon* %gc70, i32 0, i32 1
  %61 = load %union._gc_head*, %union._gc_head** %gc_prev71, align 8
  %gc72 = bitcast %union._gc_head* %61 to %struct.anon*
  %gc_next73 = getelementptr inbounds %struct.anon, %struct.anon* %gc72, i32 0, i32 0
  store %union._gc_head* %59, %union._gc_head** %gc_next73, align 8
  %62 = load %union._gc_head*, %union._gc_head** %g, align 8
  %63 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc74 = bitcast %union._gc_head* %63 to %struct.anon*
  %gc_prev75 = getelementptr inbounds %struct.anon, %struct.anon* %gc74, i32 0, i32 1
  store %union._gc_head* %62, %union._gc_head** %gc_prev75, align 8
  br label %do.end.76

do.end.76:                                        ; preds = %do.end
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %lor.lhs.false.45, %lor.lhs.false.37, %lor.lhs.false.28
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %do.body
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %64 = load %struct._object**, %struct._object*** %value_addr, align 8
  %65 = load %struct._object*, %struct._object** %64, align 8
  store %struct._object* %65, %struct._object** %old_value, align 8
  %66 = load %struct._object*, %struct._object** %old_value, align 8
  %cmp80 = icmp ne %struct._object* %66, null
  br i1 %cmp80, label %if.then.81, label %if.else.89

if.then.81:                                       ; preds = %do.end.79
  %67 = load %struct._object*, %struct._object** %value.addr, align 8
  %68 = load %struct._object**, %struct._object*** %value_addr, align 8
  store %struct._object* %67, %struct._object** %68, align 8
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %69 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt83, align 8
  %dec = add i64 %71, -1
  store i64 %dec, i64* %ob_refcnt83, align 8
  %cmp84 = icmp ne i64 %dec, 0
  br i1 %cmp84, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %do.body.82
  br label %if.end.87

if.else:                                          ; preds = %do.body.82
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %74(%struct._object* %75)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.152

if.else.89:                                       ; preds = %do.end.79
  %76 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %76, i32 0, i32 1
  %77 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp90 = icmp eq %struct._object* %77, null
  br i1 %cmp90, label %if.then.91, label %if.else.129

if.then.91:                                       ; preds = %if.else.89
  %78 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt92, align 8
  %inc93 = add i64 %79, 1
  store i64 %inc93, i64* %ob_refcnt92, align 8
  %80 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys94 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %80, i32 0, i32 2
  %81 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys94, align 8
  %dk_usable = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %81, i32 0, i32 3
  %82 = load i64, i64* %dk_usable, align 8
  %cmp95 = icmp sle i64 %82, 0
  br i1 %cmp95, label %if.then.96, label %if.end.124

if.then.96:                                       ; preds = %if.then.91
  %83 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %call97 = call i32 @insertion_resize(%struct.PyDictObject* %83)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.99, label %if.end.122

if.then.99:                                       ; preds = %if.then.96
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %84 = load %struct._object*, %struct._object** %key.addr, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp101, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %86, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109

if.else.106:                                      ; preds = %do.body.100
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %89(%struct._object* %90)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %91 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp112, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt113, align 8
  %dec114 = add i64 %93, -1
  store i64 %dec114, i64* %ob_refcnt113, align 8
  %cmp115 = icmp ne i64 %dec114, 0
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.111
  br label %if.end.120

if.else.117:                                      ; preds = %do.body.111
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  call void %96(%struct._object* %97)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  store i32 -1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.then.96
  %98 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %99 = load %struct._object*, %struct._object** %key.addr, align 8
  %100 = load i64, i64* %hash.addr, align 8
  %call123 = call %struct.PyDictKeyEntry* @find_empty_slot(%struct.PyDictObject* %98, %struct._object* %99, i64 %100, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call123, %struct.PyDictKeyEntry** %ep, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.122, %if.then.91
  %101 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys125 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %101, i32 0, i32 2
  %102 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys125, align 8
  %dk_usable126 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %102, i32 0, i32 3
  %103 = load i64, i64* %dk_usable126, align 8
  %dec127 = add i64 %103, -1
  store i64 %dec127, i64* %dk_usable126, align 8
  %104 = load %struct._object*, %struct._object** %key.addr, align 8
  %105 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key128 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %105, i32 0, i32 1
  store %struct._object* %104, %struct._object** %me_key128, align 8
  %106 = load i64, i64* %hash.addr, align 8
  %107 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %107, i32 0, i32 0
  store i64 %106, i64* %me_hash, align 8
  br label %if.end.150

if.else.129:                                      ; preds = %if.else.89
  %108 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key130 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %108, i32 0, i32 1
  %109 = load %struct._object*, %struct._object** %me_key130, align 8
  %cmp131 = icmp eq %struct._object* %109, @_dummy_struct
  br i1 %cmp131, label %if.then.132, label %if.else.148

if.then.132:                                      ; preds = %if.else.129
  %110 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt133, align 8
  %inc134 = add i64 %111, 1
  store i64 %inc134, i64* %ob_refcnt133, align 8
  %112 = load %struct._object*, %struct._object** %key.addr, align 8
  %113 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key135 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %113, i32 0, i32 1
  store %struct._object* %112, %struct._object** %me_key135, align 8
  %114 = load i64, i64* %hash.addr, align 8
  %115 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash136 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %115, i32 0, i32 0
  store i64 %114, i64* %me_hash136, align 8
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.132
  store %struct._object* @_dummy_struct, %struct._object** %_py_decref_tmp138, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_refcnt139 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt139, align 8
  %dec140 = add i64 %117, -1
  store i64 %dec140, i64* %ob_refcnt139, align 8
  %cmp141 = icmp ne i64 %dec140, 0
  br i1 %cmp141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %do.body.137
  br label %if.end.146

if.else.143:                                      ; preds = %do.body.137
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_type144 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type144, align 8
  %tp_dealloc145 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc145, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  call void %120(%struct._object* %121)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.142
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %if.end.149

if.else.148:                                      ; preds = %if.else.129
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %do.end.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.124
  %122 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %122, i32 0, i32 1
  %123 = load i64, i64* %ma_used, align 8
  %inc151 = add i64 %123, 1
  store i64 %inc151, i64* %ma_used, align 8
  %124 = load %struct._object*, %struct._object** %value.addr, align 8
  %125 = load %struct._object**, %struct._object*** %value_addr, align 8
  store %struct._object* %124, %struct._object** %125, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.150, %do.end.88
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.152, %do.end.121, %if.then.7, %if.then.3
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_DelItem(%struct._object* %op, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %hash = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %old_key = alloca %struct._object*, align 8
  %old_value = alloca %struct._object*, align 8
  %value_addr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1220)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyUnicode_Type
  br i1 %cmp2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %hash3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 2
  %7 = load i64, i64* %hash3, align 8
  store i64 %7, i64* %hash, align 8
  %cmp4 = icmp eq i64 %7, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %8)
  store i64 %call, i64* %hash, align 8
  %9 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %9, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyDictObject*
  store %struct.PyDictObject* %11, %struct.PyDictObject** %mp, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %13, i32 0, i32 2
  %14 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %17 = load i64, i64* %hash, align 8
  %call10 = call %struct.PyDictKeyEntry* %14(%struct.PyDictObject* %15, %struct._object* %16, i64 %17, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call10, %struct.PyDictKeyEntry** %ep, align 8
  %18 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp11 = icmp eq %struct.PyDictKeyEntry* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %19 = load %struct._object**, %struct._object*** %value_addr, align 8
  %20 = load %struct._object*, %struct._object** %19, align 8
  %cmp14 = icmp eq %struct._object* %20, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** %key.addr, align 8
  call void @_PyErr_SetKeyError(%struct._object* %21)
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %22 = load %struct._object**, %struct._object*** %value_addr, align 8
  %23 = load %struct._object*, %struct._object** %22, align 8
  store %struct._object* %23, %struct._object** %old_value, align 8
  %24 = load %struct._object**, %struct._object*** %value_addr, align 8
  store %struct._object* null, %struct._object** %24, align 8
  %25 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ma_used, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ma_used, align 8
  %27 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %27, i32 0, i32 3
  %28 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp17 = icmp ne %struct._object** %28, null
  br i1 %cmp17, label %if.end.32, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %29 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys19 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %29, i32 0, i32 2
  %30 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys19, align 8
  %dk_lookup20 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %30, i32 0, i32 2
  %31 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup20, align 8
  %cmp21 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %31, @lookdict_unicode_nodummy
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.18
  %32 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys23 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %32, i32 0, i32 2
  %33 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys23, align 8
  %dk_lookup24 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %33, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_unicode, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.18
  %34 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %35, %struct._object** %old_key, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %37 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key26 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %37, i32 0, i32 1
  store %struct._object* @_dummy_struct, %struct._object** %me_key26, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %38 = load %struct._object*, %struct._object** %old_key, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %dec27 = add i64 %40, -1
  store i64 %dec27, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  br label %if.end.32

if.end.32:                                        ; preds = %do.end, %if.end.16
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  %45 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp34, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %47, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %50(%struct._object* %51)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.then.15, %if.then.12, %if.then.7, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare void @_PyErr_SetKeyError(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct.PyDictKeyEntry* @lookdict_unicode_nodummy(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object*** %value_addr) #0 {
entry:
  %retval = alloca %struct.PyDictKeyEntry*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value_addr.addr = alloca %struct._object***, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object*** %value_addr, %struct._object**** %value_addr.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %2, 1
  store i64 %sub, i64* %mask, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys2 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys2, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash.addr, align 8
  %12 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  %call = call %struct.PyDictKeyEntry* @lookdict(%struct.PyDictObject* %9, %struct._object* %10, i64 %11, %struct._object*** %12)
  store %struct.PyDictKeyEntry* %call, %struct.PyDictKeyEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %hash.addr, align 8
  %14 = load i64, i64* %mask, align 8
  %and = and i64 %13, %14
  store i64 %and, i64* %i, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx3 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %16, i64 %15
  store %struct.PyDictKeyEntry* %arrayidx3, %struct.PyDictKeyEntry** %ep, align 8
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp4 = icmp eq %struct._object* %18, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key5 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %me_key5, align 8
  %21 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp6 = icmp eq %struct._object* %20, %21
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %22 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %22, i32 0, i32 0
  %23 = load i64, i64* %me_hash, align 8
  %24 = load i64, i64* %hash.addr, align 8
  %cmp8 = icmp eq i64 %23, %24
  br i1 %cmp8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %25 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key9 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %25, i32 0, i32 1
  %26 = load %struct._object*, %struct._object** %me_key9, align 8
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %call10 = call i32 @unicode_eq(%struct._object* %26, %struct._object* %27)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %28 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %28, i32 0, i32 2
  %29 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value, %struct._object*** %29, align 8
  %30 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %30, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %lor.lhs.false.7
  %31 = load i64, i64* %hash.addr, align 8
  store i64 %31, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %32 = load i64, i64* %i, align 8
  %shl = shl i64 %32, 2
  %33 = load i64, i64* %i, align 8
  %add = add i64 %shl, %33
  %34 = load i64, i64* %perturb, align 8
  %add13 = add i64 %add, %34
  %add14 = add i64 %add13, 1
  store i64 %add14, i64* %i, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %mask, align 8
  %and15 = and i64 %35, %36
  %37 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx16 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %37, i64 %and15
  store %struct.PyDictKeyEntry* %arrayidx16, %struct.PyDictKeyEntry** %ep, align 8
  %38 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key17 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %me_key17, align 8
  %cmp18 = icmp eq %struct._object* %39, null
  br i1 %cmp18, label %if.then.29, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %for.cond
  %40 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key20 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %40, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %me_key20, align 8
  %42 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp21 = icmp eq %struct._object* %41, %42
  br i1 %cmp21, label %if.then.29, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %43 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash23 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %43, i32 0, i32 0
  %44 = load i64, i64* %me_hash23, align 8
  %45 = load i64, i64* %hash.addr, align 8
  %cmp24 = icmp eq i64 %44, %45
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %lor.lhs.false.22
  %46 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key26 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %46, i32 0, i32 1
  %47 = load %struct._object*, %struct._object** %me_key26, align 8
  %48 = load %struct._object*, %struct._object** %key.addr, align 8
  %call27 = call i32 @unicode_eq(%struct._object* %47, %struct._object* %48)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true.25, %lor.lhs.false.19, %for.cond
  %49 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value30 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %49, i32 0, i32 2
  %50 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value30, %struct._object*** %50, align 8
  %51 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %51, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.25, %lor.lhs.false.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %52 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %52, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

return:                                           ; preds = %if.then.29, %if.then.11, %if.then
  %53 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %retval
  ret %struct.PyDictKeyEntry* %53
}

; Function Attrs: nounwind uwtable
define internal %struct.PyDictKeyEntry* @lookdict_unicode(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object*** %value_addr) #0 {
entry:
  %retval = alloca %struct.PyDictKeyEntry*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value_addr.addr = alloca %struct._object***, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %freeslot = alloca %struct.PyDictKeyEntry*, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object*** %value_addr, %struct._object**** %value_addr.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %2, 1
  store i64 %sub, i64* %mask, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys2 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys2, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash.addr, align 8
  %12 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  %call = call %struct.PyDictKeyEntry* @lookdict(%struct.PyDictObject* %9, %struct._object* %10, i64 %11, %struct._object*** %12)
  store %struct.PyDictKeyEntry* %call, %struct.PyDictKeyEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %hash.addr, align 8
  %14 = load i64, i64* %mask, align 8
  %and = and i64 %13, %14
  store i64 %and, i64* %i, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx3 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %16, i64 %15
  store %struct.PyDictKeyEntry* %arrayidx3, %struct.PyDictKeyEntry** %ep, align 8
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp4 = icmp eq %struct._object* %18, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key5 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %me_key5, align 8
  %21 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp6 = icmp eq %struct._object* %20, %21
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %22 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %22, i32 0, i32 2
  %23 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value, %struct._object*** %23, align 8
  %24 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %24, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %25 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key9 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %25, i32 0, i32 1
  %26 = load %struct._object*, %struct._object** %me_key9, align 8
  %cmp10 = icmp eq %struct._object* %26, @_dummy_struct
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %27 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %27, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %28 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %28, i32 0, i32 0
  %29 = load i64, i64* %me_hash, align 8
  %30 = load i64, i64* %hash.addr, align 8
  %cmp12 = icmp eq i64 %29, %30
  br i1 %cmp12, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.else
  %31 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key13 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %31, i32 0, i32 1
  %32 = load %struct._object*, %struct._object** %me_key13, align 8
  %33 = load %struct._object*, %struct._object** %key.addr, align 8
  %call14 = call i32 @unicode_eq(%struct._object* %32, %struct._object* %33)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true
  %34 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value16 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %34, i32 0, i32 2
  %35 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value16, %struct._object*** %35, align 8
  %36 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %36, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.else
  store %struct.PyDictKeyEntry* null, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %37 = load i64, i64* %hash.addr, align 8
  store i64 %37, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %38 = load i64, i64* %i, align 8
  %shl = shl i64 %38, 2
  %39 = load i64, i64* %i, align 8
  %add = add i64 %shl, %39
  %40 = load i64, i64* %perturb, align 8
  %add19 = add i64 %add, %40
  %add20 = add i64 %add19, 1
  store i64 %add20, i64* %i, align 8
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %mask, align 8
  %and21 = and i64 %41, %42
  %43 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx22 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %43, i64 %and21
  store %struct.PyDictKeyEntry* %arrayidx22, %struct.PyDictKeyEntry** %ep, align 8
  %44 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key23 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %44, i32 0, i32 1
  %45 = load %struct._object*, %struct._object** %me_key23, align 8
  %cmp24 = icmp eq %struct._object* %45, null
  br i1 %cmp24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %for.cond
  %46 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %cmp26 = icmp eq %struct.PyDictKeyEntry* %46, null
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.then.25
  %47 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value28 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %47, i32 0, i32 2
  %48 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value28, %struct._object*** %48, align 8
  %49 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %49, %struct.PyDictKeyEntry** %retval
  br label %return

if.else.29:                                       ; preds = %if.then.25
  %50 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %me_value30 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %50, i32 0, i32 2
  %51 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value30, %struct._object*** %51, align 8
  %52 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  store %struct.PyDictKeyEntry* %52, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.31:                                        ; preds = %for.cond
  %53 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key32 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %me_key32, align 8
  %55 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp33 = icmp eq %struct._object* %54, %55
  br i1 %cmp33, label %if.then.44, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %56 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash35 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %56, i32 0, i32 0
  %57 = load i64, i64* %me_hash35, align 8
  %58 = load i64, i64* %hash.addr, align 8
  %cmp36 = icmp eq i64 %57, %58
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.46

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %59 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key38 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %59, i32 0, i32 1
  %60 = load %struct._object*, %struct._object** %me_key38, align 8
  %cmp39 = icmp ne %struct._object* %60, @_dummy_struct
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.46

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %61 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key41 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %61, i32 0, i32 1
  %62 = load %struct._object*, %struct._object** %me_key41, align 8
  %63 = load %struct._object*, %struct._object** %key.addr, align 8
  %call42 = call i32 @unicode_eq(%struct._object* %62, %struct._object* %63)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.40, %if.end.31
  %64 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value45 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %64, i32 0, i32 2
  %65 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value45, %struct._object*** %65, align 8
  %66 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %66, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.40, %land.lhs.true.37, %lor.lhs.false.34
  %67 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key47 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %67, i32 0, i32 1
  %68 = load %struct._object*, %struct._object** %me_key47, align 8
  %cmp48 = icmp eq %struct._object* %68, @_dummy_struct
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %if.end.46
  %69 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %freeslot, align 8
  %cmp50 = icmp eq %struct.PyDictKeyEntry* %69, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.49
  %70 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %70, %struct.PyDictKeyEntry** %freeslot, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.49, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %71 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %71, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

return:                                           ; preds = %if.then.44, %if.else.29, %if.then.27, %if.then.15, %if.then.7, %if.then
  %72 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %retval
  ret %struct.PyDictKeyEntry* %72
}

; Function Attrs: nounwind uwtable
define void @PyDict_Clear(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %oldkeys = alloca %struct._dictkeysobject*, align 8
  %oldvalues = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.30

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyDictObject*
  store %struct.PyDictObject* %4, %struct.PyDictObject** %mp, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 2
  %6 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  store %struct._dictkeysobject* %6, %struct._dictkeysobject** %oldkeys, align 8
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 3
  %8 = load %struct._object**, %struct._object*** %ma_values, align 8
  store %struct._object** %8, %struct._object*** %oldvalues, align 8
  %9 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %cmp1 = icmp eq %struct._object** %9, getelementptr inbounds ([1 x %struct._object*], [1 x %struct._object*]* @empty_values, i32 0, i32 0)
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.30

if.end.3:                                         ; preds = %if.end
  %10 = load i64, i64* getelementptr inbounds (%struct._dictkeysobject, %struct._dictkeysobject* @empty_keys_struct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._dictkeysobject, %struct._dictkeysobject* @empty_keys_struct, i32 0, i32 0), align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys4 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  store %struct._dictkeysobject* @empty_keys_struct, %struct._dictkeysobject** %ma_keys4, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 3
  store %struct._object** getelementptr inbounds ([1 x %struct._object*], [1 x %struct._object*]* @empty_values, i32 0, i32 0), %struct._object*** %ma_values5, align 8
  %13 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %13, i32 0, i32 1
  store i64 0, i64* %ma_used, align 8
  %14 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %cmp6 = icmp ne %struct._object** %14, null
  br i1 %cmp6, label %if.then.7, label %if.else.24

if.then.7:                                        ; preds = %if.end.3
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 1
  %16 = load i64, i64* %dk_size, align 8
  store i64 %16, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %n, align 8
  %cmp8 = icmp slt i64 %17, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %20 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %20, i64 %19
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %21, %struct._object** %_py_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp9 = icmp ne %struct._object* %22, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body
  %23 = load i64, i64* %i, align 8
  %24 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %arrayidx11 = getelementptr %struct._object*, %struct._object** %24, i64 %23
  store %struct._object* null, %struct._object** %arrayidx11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else:                                          ; preds = %do.body.12
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %do.end.18
  %32 = load i64, i64* %i, align 8
  %inc19 = add i64 %32, 1
  store i64 %inc19, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %34 = bitcast %struct._object** %33 to i8*
  call void @PyMem_Free(i8* %34)
  %35 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %35, i32 0, i32 0
  %36 = load i64, i64* %dk_refcnt, align 8
  %dec20 = add i64 %36, -1
  store i64 %dec20, i64* %dk_refcnt, align 8
  %cmp21 = icmp eq i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  %37 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %37)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end
  br label %if.end.30

if.else.24:                                       ; preds = %if.end.3
  %38 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_refcnt25 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %38, i32 0, i32 0
  %39 = load i64, i64* %dk_refcnt25, align 8
  %dec26 = add i64 %39, -1
  store i64 %dec26, i64* %dk_refcnt25, align 8
  %cmp27 = icmp eq i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  %40 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %40)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.then, %if.then.2, %if.end.29, %if.end.23
  ret void
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @free_keys_object(%struct._dictkeysobject* %keys) #0 {
entry:
  %keys.addr = alloca %struct._dictkeysobject*, align 8
  %entries = alloca %struct.PyDictKeyEntry*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._dictkeysobject* %keys, %struct._dictkeysobject** %keys.addr, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %0, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %entries, align 8
  store i64 0, i64* %i, align 8
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  store i64 %2, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entries, align 8
  %arrayidx1 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %6, i64 %5
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx1, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %8, null
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entries, align 8
  %arrayidx10 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i64 %16
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx10, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %me_value, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp9, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  %cmp11 = icmp ne %struct._object* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.body.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp14, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %22, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.8
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %do.end.25
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %29 = bitcast %struct._dictkeysobject* %28 to i8*
  call void @PyMem_Free(i8* %29)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @dict_next(%struct._object* %op, i64 %i, %struct._object** %pvalue) #2 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %pvalue.addr = alloca %struct._object**, align 8
  %mask = alloca i64, align 8
  %offset = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %value_ptr = alloca %struct._object**, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object** %pvalue, %struct._object*** %pvalue.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyDictObject*
  store %struct.PyDictObject* %4, %struct.PyDictObject** %mp, align 8
  %5 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 3
  %7 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %7, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %8 = load i64, i64* %i.addr, align 8
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %9, i32 0, i32 3
  %10 = load %struct._object**, %struct._object*** %ma_values5, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 %8
  store %struct._object** %arrayidx, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end.3
  %11 = load i64, i64* %i.addr, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %13, i32 0, i32 4
  %arrayidx6 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %11
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx6, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys8 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 2
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys8, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 1
  %16 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %16, 1
  store i64 %sub, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %17 = load i64, i64* %i.addr, align 8
  %18 = load i64, i64* %mask, align 8
  %cmp9 = icmp sle i64 %17, %18
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %20 = load %struct._object*, %struct._object** %19, align 8
  %cmp10 = icmp eq %struct._object* %20, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %23 = bitcast %struct._object** %22 to i8*
  %24 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %23, i64 %24
  %25 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %25, %struct._object*** %value_ptr, align 8
  %26 = load i64, i64* %i.addr, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i64, i64* %i.addr, align 8
  %28 = load i64, i64* %mask, align 8
  %cmp11 = icmp sgt i64 %27, %28
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end
  store i64 -1, i64* %retval
  br label %return

if.end.13:                                        ; preds = %while.end
  %29 = load %struct._object**, %struct._object*** %pvalue.addr, align 8
  %tobool14 = icmp ne %struct._object** %29, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %30 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %31 = load %struct._object*, %struct._object** %30, align 8
  %32 = load %struct._object**, %struct._object*** %pvalue.addr, align 8
  store %struct._object* %31, %struct._object** %32, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %33 = load i64, i64* %i.addr, align 8
  store i64 %33, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.then.2, %if.then
  %34 = load i64, i64* %retval
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define i32 @_PyDict_Next(%struct._object* %op, i64* %ppos, %struct._object** %pkey, %struct._object** %pvalue, i64* %phash) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %ppos.addr = alloca i64*, align 8
  %pkey.addr = alloca %struct._object**, align 8
  %pvalue.addr = alloca %struct._object**, align 8
  %phash.addr = alloca i64*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64* %ppos, i64** %ppos.addr, align 8
  store %struct._object** %pkey, %struct._object*** %pkey.addr, align 8
  store %struct._object** %pvalue, %struct._object*** %pvalue.addr, align 8
  store i64* %phash, i64** %phash.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = load i64*, i64** %ppos.addr, align 8
  %2 = load i64, i64* %1, align 8
  %3 = load %struct._object**, %struct._object*** %pvalue.addr, align 8
  %call = call i64 @dict_next(%struct._object* %0, i64 %2, %struct._object** %3)
  store i64 %call, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyDictObject*
  store %struct.PyDictObject* %6, %struct.PyDictObject** %mp, align 8
  %7 = load i64, i64* %i, align 8
  %add = add i64 %7, 1
  %8 = load i64*, i64** %ppos.addr, align 8
  store i64 %add, i64* %8, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %10, i32 0, i32 2
  %11 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %11, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %9
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx, i32 0, i32 0
  %12 = load i64, i64* %me_hash, align 8
  %13 = load i64*, i64** %phash.addr, align 8
  store i64 %12, i64* %13, align 8
  %14 = load %struct._object**, %struct._object*** %pkey.addr, align 8
  %tobool = icmp ne %struct._object** %14, null
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys2 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %16, i32 0, i32 2
  %17 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys2, align 8
  %dk_entries3 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %17, i32 0, i32 4
  %arrayidx4 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries3, i32 0, i64 %15
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx4, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %me_key, align 8
  %19 = load %struct._object**, %struct._object*** %pkey.addr, align 8
  store %struct._object* %18, %struct._object** %19, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.1, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_MergeFromSeq2(%struct._object* %d, %struct._object* %seq2, i32 %override) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct._object*, align 8
  %seq2.addr = alloca %struct._object*, align 8
  %override.addr = alloca i32, align 4
  %it = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %fast = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_xdecref_tmp86 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store %struct._object* %seq2, %struct._object** %seq2.addr, align 8
  store i32 %override, i32* %override.addr, align 4
  %0 = load %struct._object*, %struct._object** %seq2.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %it, align 8
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  store %struct._object* null, %struct._object** %fast, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %item, align 8
  %3 = load %struct._object*, %struct._object** %item, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.cond
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %Fail

if.end.6:                                         ; preds = %if.then.3
  br label %for.end

if.end.7:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call %struct._object* @PySequence_Fast(%struct._object* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %fast, align 8
  %5 = load %struct._object*, %struct._object** %fast, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call11 = call i32 @PyErr_ExceptionMatches(%struct._object* %6)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load i64, i64* %i, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i32 0, i32 0), i64 %8)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  br label %Fail

if.end.16:                                        ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %fast, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 33554432
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %12 = load %struct._object*, %struct._object** %fast, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %15 = load %struct._object*, %struct._object** %fast, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %18 = load i64, i64* %n, align 8
  %cmp19 = icmp ne i64 %18, 2
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %cond.end
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %n, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i64 %20, i64 %21)
  br label %Fail

if.end.22:                                        ; preds = %cond.end
  %22 = load %struct._object*, %struct._object** %fast, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags24, align 8
  %and25 = and i64 %24, 33554432
  %cmp26 = icmp ne i64 %and25, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.end.22
  %25 = load %struct._object*, %struct._object** %fast, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %27, i64 0
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.31

cond.false.28:                                    ; preds = %if.end.22
  %29 = load %struct._object*, %struct._object** %fast, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item29 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx30 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item29, i32 0, i64 0
  %31 = load %struct._object*, %struct._object** %arrayidx30, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.27
  %cond32 = phi %struct._object* [ %28, %cond.true.27 ], [ %31, %cond.false.28 ]
  store %struct._object* %cond32, %struct._object** %key, align 8
  %32 = load %struct._object*, %struct._object** %fast, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_flags34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19
  %34 = load i64, i64* %tp_flags34, align 8
  %and35 = and i64 %34, 33554432
  %cmp36 = icmp ne i64 %and35, 0
  br i1 %cmp36, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %cond.end.31
  %35 = load %struct._object*, %struct._object** %fast, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyListObject*
  %ob_item38 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %36, i32 0, i32 1
  %37 = load %struct._object**, %struct._object*** %ob_item38, align 8
  %arrayidx39 = getelementptr %struct._object*, %struct._object** %37, i64 1
  %38 = load %struct._object*, %struct._object** %arrayidx39, align 8
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.end.31
  %39 = load %struct._object*, %struct._object** %fast, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item41 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx42 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item41, i32 0, i64 1
  %41 = load %struct._object*, %struct._object** %arrayidx42, align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.37
  %cond44 = phi %struct._object* [ %38, %cond.true.37 ], [ %41, %cond.false.40 ]
  store %struct._object* %cond44, %struct._object** %value, align 8
  %42 = load i32, i32* %override.addr, align 4
  %tobool45 = icmp ne i32 %42, 0
  br i1 %tobool45, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.43
  %43 = load %struct._object*, %struct._object** %d.addr, align 8
  %44 = load %struct._object*, %struct._object** %key, align 8
  %call46 = call %struct._object* @PyDict_GetItem(%struct._object* %43, %struct._object* %44)
  %cmp47 = icmp eq %struct._object* %call46, null
  br i1 %cmp47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %lor.lhs.false, %cond.end.43
  %45 = load %struct._object*, %struct._object** %d.addr, align 8
  %46 = load %struct._object*, %struct._object** %key, align 8
  %47 = load %struct._object*, %struct._object** %value, align 8
  %call49 = call i32 @PyDict_SetItem(%struct._object* %45, %struct._object* %46, %struct._object* %47)
  store i32 %call49, i32* %status, align 4
  %48 = load i32, i32* %status, align 4
  %cmp50 = icmp slt i32 %48, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  br label %Fail

if.end.52:                                        ; preds = %if.then.48
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.53
  %49 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp54 = icmp ne i64 %dec, 0
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %do.body
  br label %if.end.57

if.else:                                          ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.55
  br label %do.end

do.end:                                           ; preds = %if.end.57
  br label %do.body.58

do.body.58:                                       ; preds = %do.end
  %56 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp59, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %58, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %61(%struct._object* %62)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %for.inc

for.inc:                                          ; preds = %do.end.68
  %63 = load i64, i64* %i, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.6
  store i64 0, i64* %i, align 8
  br label %Return

Fail:                                             ; preds = %if.then.51, %if.then.20, %if.end.15, %if.then.5
  br label %do.body.69

do.body.69:                                       ; preds = %Fail
  %64 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp70 = icmp ne %struct._object* %65, null
  br i1 %cmp70, label %if.then.71, label %if.end.83

if.then.71:                                       ; preds = %do.body.69
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp73, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %68, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %71(%struct._object* %72)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %do.body.69
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %73 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp86, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8
  %cmp87 = icmp ne %struct._object* %74, null
  br i1 %cmp87, label %if.then.88, label %if.end.100

if.then.88:                                       ; preds = %do.body.85
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp90, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %77, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.89
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %80(%struct._object* %81)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %do.body.85
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  store i64 -1, i64* %i, align 8
  br label %Return

Return:                                           ; preds = %do.end.101, %for.end
  br label %do.body.102

do.body.102:                                      ; preds = %Return
  %82 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp103, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %84, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %87(%struct._object* %88)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  %89 = load i64, i64* %i, align 8
  %conv = trunc i64 %89 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end.112, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @PyDict_Update(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %1 = load %struct._object*, %struct._object** %b.addr, align 8
  %call = call i32 @PyDict_Merge(%struct._object* %0, %struct._object* %1, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_Merge(%struct._object* %a, %struct._object* %b, i32 %override) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %override.addr = alloca i32, align 4
  %mp = alloca %struct.PyDictObject*, align 8
  %other = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %entry1 = alloca %struct.PyDictKeyEntry*, align 8
  %value = alloca %struct._object*, align 8
  %keys = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value51 = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  store i32 %override, i32* %override.addr, align 4
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %b.addr, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1953)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %5 = load %struct._object*, %struct._object** %a.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyDictObject*
  store %struct.PyDictObject* %6, %struct.PyDictObject** %mp, align 8
  %7 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %9, 536870912
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.49

if.then.9:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %b.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyDictObject*
  store %struct.PyDictObject* %11, %struct.PyDictObject** %other, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %13 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %cmp10 = icmp eq %struct.PyDictObject* %12, %13
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.then.9
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ma_used, align 8
  %cmp12 = icmp eq i64 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.11
  %16 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used15 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ma_used15, align 8
  %cmp16 = icmp eq i64 %17, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 1, i32* %override.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %18 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %18, i32 0, i32 2
  %19 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_usable = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %19, i32 0, i32 3
  %20 = load i64, i64* %dk_usable, align 8
  %mul = mul i64 %20, 3
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_used19 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ma_used19, align 8
  %mul20 = mul i64 %22, 2
  %cmp21 = icmp slt i64 %mul, %mul20
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.end.18
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %24 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used23 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ma_used23, align 8
  %26 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_used24 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ma_used24, align 8
  %add = add i64 %25, %27
  %mul25 = mul i64 %add, 2
  %call = call i32 @dictresize(%struct.PyDictObject* %23, i64 %mul25)
  %cmp26 = icmp ne i32 %call, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.22
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.18
  store i64 0, i64* %i, align 8
  %28 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_keys30 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %28, i32 0, i32 2
  %29 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys30, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %29, i32 0, i32 1
  %30 = load i64, i64* %dk_size, align 8
  store i64 %30, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %n, align 8
  %cmp31 = icmp slt i64 %31, %32
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_keys32 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %34, i32 0, i32 2
  %35 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys32, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %35, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %33
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %entry1, align 8
  %36 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %36, i32 0, i32 3
  %37 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %37, null
  br i1 %tobool, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %for.body
  %38 = load i64, i64* %i, align 8
  %39 = load %struct.PyDictObject*, %struct.PyDictObject** %other, align 8
  %ma_values34 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %39, i32 0, i32 3
  %40 = load %struct._object**, %struct._object*** %ma_values34, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %40, i64 %38
  %41 = load %struct._object*, %struct._object** %arrayidx35, align 8
  store %struct._object* %41, %struct._object** %value, align 8
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %42 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entry1, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %42, i32 0, i32 2
  %43 = load %struct._object*, %struct._object** %me_value, align 8
  store %struct._object* %43, %struct._object** %value, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.33
  %44 = load %struct._object*, %struct._object** %value, align 8
  %cmp37 = icmp ne %struct._object* %44, null
  br i1 %cmp37, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.36
  %45 = load i32, i32* %override.addr, align 4
  %tobool38 = icmp ne i32 %45, 0
  br i1 %tobool38, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true
  %46 = load %struct._object*, %struct._object** %a.addr, align 8
  %47 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entry1, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %47, i32 0, i32 1
  %48 = load %struct._object*, %struct._object** %me_key, align 8
  %call40 = call %struct._object* @PyDict_GetItem(%struct._object* %46, %struct._object* %48)
  %cmp41 = icmp eq %struct._object* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %lor.lhs.false.39, %land.lhs.true
  %49 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %50 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entry1, align 8
  %me_key43 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %50, i32 0, i32 1
  %51 = load %struct._object*, %struct._object** %me_key43, align 8
  %52 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %entry1, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %52, i32 0, i32 0
  %53 = load i64, i64* %me_hash, align 8
  %54 = load %struct._object*, %struct._object** %value, align 8
  %call44 = call i32 @insertdict(%struct.PyDictObject* %49, %struct._object* %51, i64 %53, %struct._object* %54)
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.42
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false.39, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %55 = load i64, i64* %i, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.166

if.else.49:                                       ; preds = %if.end
  %56 = load %struct._object*, %struct._object** %b.addr, align 8
  %call50 = call %struct._object* @PyMapping_Keys(%struct._object* %56)
  store %struct._object* %call50, %struct._object** %keys, align 8
  %57 = load %struct._object*, %struct._object** %keys, align 8
  %cmp52 = icmp eq %struct._object* %57, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.49
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.else.49
  %58 = load %struct._object*, %struct._object** %keys, align 8
  %call55 = call %struct._object* @PyObject_GetIter(%struct._object* %58)
  store %struct._object* %call55, %struct._object** %iter, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.54
  %59 = load %struct._object*, %struct._object** %keys, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %61, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp56 = icmp ne i64 %dec, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body
  br label %if.end.60

if.else.58:                                       ; preds = %do.body
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %64(%struct._object* %65)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end

do.end:                                           ; preds = %if.end.60
  %66 = load %struct._object*, %struct._object** %iter, align 8
  %cmp61 = icmp eq %struct._object* %66, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %do.end
  %67 = load %struct._object*, %struct._object** %iter, align 8
  %call64 = call %struct._object* @PyIter_Next(%struct._object* %67)
  store %struct._object* %call64, %struct._object** %key, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.148, %if.end.63
  %68 = load %struct._object*, %struct._object** %key, align 8
  %tobool66 = icmp ne %struct._object* %68, null
  br i1 %tobool66, label %for.body.67, label %for.end.150

for.body.67:                                      ; preds = %for.cond.65
  %69 = load i32, i32* %override.addr, align 4
  %tobool68 = icmp ne i32 %69, 0
  br i1 %tobool68, label %if.end.84, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %for.body.67
  %70 = load %struct._object*, %struct._object** %a.addr, align 8
  %71 = load %struct._object*, %struct._object** %key, align 8
  %call70 = call %struct._object* @PyDict_GetItem(%struct._object* %70, %struct._object* %71)
  %cmp71 = icmp ne %struct._object* %call70, null
  br i1 %cmp71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %land.lhs.true.69
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %72 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp74, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %74, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %77(%struct._object* %78)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %for.inc.148

if.end.84:                                        ; preds = %land.lhs.true.69, %for.body.67
  %79 = load %struct._object*, %struct._object** %b.addr, align 8
  %80 = load %struct._object*, %struct._object** %key, align 8
  %call85 = call %struct._object* @PyObject_GetItem(%struct._object* %79, %struct._object* %80)
  store %struct._object* %call85, %struct._object** %value51, align 8
  %81 = load %struct._object*, %struct._object** %value51, align 8
  %cmp86 = icmp eq %struct._object* %81, null
  br i1 %cmp86, label %if.then.87, label %if.end.110

if.then.87:                                       ; preds = %if.end.84
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %82 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp89, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %84, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %87(%struct._object* %88)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %do.body.99

do.body.99:                                       ; preds = %do.end.98
  %89 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp100, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %91, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %94(%struct._object* %95)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  store i32 -1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.end.84
  %96 = load %struct._object*, %struct._object** %a.addr, align 8
  %97 = load %struct._object*, %struct._object** %key, align 8
  %98 = load %struct._object*, %struct._object** %value51, align 8
  %call111 = call i32 @PyDict_SetItem(%struct._object* %96, %struct._object* %97, %struct._object* %98)
  store i32 %call111, i32* %status, align 4
  br label %do.body.112

do.body.112:                                      ; preds = %if.end.110
  %99 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp113, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %101, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.112
  br label %if.end.121

if.else.118:                                      ; preds = %do.body.112
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %104(%struct._object* %105)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %106 = load %struct._object*, %struct._object** %value51, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp124, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt125, align 8
  %dec126 = add i64 %108, -1
  store i64 %dec126, i64* %ob_refcnt125, align 8
  %cmp127 = icmp ne i64 %dec126, 0
  br i1 %cmp127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.123
  br label %if.end.132

if.else.129:                                      ; preds = %do.body.123
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %111(%struct._object* %112)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  %113 = load i32, i32* %status, align 4
  %cmp134 = icmp slt i32 %113, 0
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.end.133
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %114 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp137, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %116, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %119(%struct._object* %120)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  store i32 -1, i32* %retval
  br label %return

if.end.147:                                       ; preds = %do.end.133
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147, %do.end.83
  %121 = load %struct._object*, %struct._object** %iter, align 8
  %call149 = call %struct._object* @PyIter_Next(%struct._object* %121)
  store %struct._object* %call149, %struct._object** %key, align 8
  br label %for.cond.65

for.end.150:                                      ; preds = %for.cond.65
  br label %do.body.151

do.body.151:                                      ; preds = %for.end.150
  %122 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %122, %struct._object** %_py_decref_tmp152, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt153, align 8
  %dec154 = add i64 %124, -1
  store i64 %dec154, i64* %ob_refcnt153, align 8
  %cmp155 = icmp ne i64 %dec154, 0
  br i1 %cmp155, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %do.body.151
  br label %if.end.160

if.else.157:                                      ; preds = %do.body.151
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  call void %127(%struct._object* %128)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  %call162 = call %struct._object* @PyErr_Occurred()
  %tobool163 = icmp ne %struct._object* %call162, null
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %do.end.161
  store i32 -1, i32* %retval
  br label %return

if.end.165:                                       ; preds = %do.end.161
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.166, %if.then.164, %do.end.146, %do.end.109, %if.then.62, %if.then.53, %if.then.46, %if.then.27, %if.then.13, %if.then
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal i32 @dictresize(%struct.PyDictObject* %mp, i64 %minused) #0 {
entry:
  %retval = alloca i32, align 4
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %minused.addr = alloca i64, align 8
  %newsize = alloca i64, align 8
  %oldkeys = alloca %struct._dictkeysobject*, align 8
  %oldvalues = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %oldsize = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store i64 %minused, i64* %minused.addr, align 8
  store i64 8, i64* %newsize, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %newsize, align 8
  %1 = load i64, i64* %minused.addr, align 8
  %cmp = icmp sle i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i64, i64* %newsize, align 8
  %cmp1 = icmp sgt i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %newsize, align 8
  %shl = shl i64 %4, 1
  store i64 %shl, i64* %newsize, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load i64, i64* %newsize, align 8
  %cmp2 = icmp sle i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 2
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  store %struct._dictkeysobject* %7, %struct._dictkeysobject** %oldkeys, align 8
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 3
  %9 = load %struct._object**, %struct._object*** %ma_values, align 8
  store %struct._object** %9, %struct._object*** %oldvalues, align 8
  %10 = load i64, i64* %newsize, align 8
  %call3 = call %struct._dictkeysobject* @new_keys_object(i64 %10)
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys4 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  store %struct._dictkeysobject* %call3, %struct._dictkeysobject** %ma_keys4, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys5, align 8
  %cmp6 = icmp eq %struct._dictkeysobject* %13, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %14 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys8 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %15, i32 0, i32 2
  store %struct._dictkeysobject* %14, %struct._dictkeysobject** %ma_keys8, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %16 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %16, i32 0, i32 2
  %17 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %cmp10 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %17, @lookdict
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys12 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %18, i32 0, i32 2
  %19 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys12, align 8
  %dk_lookup13 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %19, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %20 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %20, i32 0, i32 1
  %21 = load i64, i64* %dk_size, align 8
  store i64 %21, i64* %oldsize, align 8
  %22 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values15 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %22, i32 0, i32 3
  store %struct._object** null, %struct._object*** %ma_values15, align 8
  %23 = load i64, i64* %oldsize, align 8
  %cmp16 = icmp eq i64 %23, 1
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %24 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %24, i32 0, i32 0
  %25 = load i64, i64* %dk_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %dk_refcnt, align 8
  %cmp18 = icmp eq i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %26 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %27 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %cmp22 = icmp ne %struct._object** %27, null
  br i1 %cmp22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.end.21
  store i64 0, i64* %i, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.34, %if.then.23
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %oldsize, align 8
  %cmp25 = icmp slt i64 %28, %29
  br i1 %cmp25, label %for.body.26, label %for.end.36

for.body.26:                                      ; preds = %for.cond.24
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %31, i64 %30
  %32 = load %struct._object*, %struct._object** %arrayidx, align 8
  %cmp27 = icmp ne %struct._object* %32, null
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %for.body.26
  %33 = load i64, i64* %i, align 8
  %34 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %34, i32 0, i32 4
  %arrayidx29 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %33
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx29, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %me_key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %arrayidx30 = getelementptr %struct._object*, %struct._object** %38, i64 %37
  %39 = load %struct._object*, %struct._object** %arrayidx30, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_entries31 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %41, i32 0, i32 4
  %arrayidx32 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries31, i32 0, i64 %40
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx32, i32 0, i32 2
  store %struct._object* %39, %struct._object** %me_value, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %for.body.26
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %42 = load i64, i64* %i, align 8
  %inc35 = add i64 %42, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond.24

for.end.36:                                       ; preds = %for.cond.24
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.36, %if.end.21
  store i64 0, i64* %i, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.49, %if.end.37
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %oldsize, align 8
  %cmp39 = icmp slt i64 %43, %44
  br i1 %cmp39, label %for.body.40, label %for.end.51

for.body.40:                                      ; preds = %for.cond.38
  %45 = load i64, i64* %i, align 8
  %46 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_entries41 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %46, i32 0, i32 4
  %arrayidx42 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries41, i32 0, i64 %45
  store %struct.PyDictKeyEntry* %arrayidx42, %struct.PyDictKeyEntry** %ep, align 8
  %47 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value43 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %47, i32 0, i32 2
  %48 = load %struct._object*, %struct._object** %me_value43, align 8
  %cmp44 = icmp ne %struct._object* %48, null
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %for.body.40
  %49 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %50 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key46 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %50, i32 0, i32 1
  %51 = load %struct._object*, %struct._object** %me_key46, align 8
  %52 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %52, i32 0, i32 0
  %53 = load i64, i64* %me_hash, align 8
  %54 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value47 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %54, i32 0, i32 2
  %55 = load %struct._object*, %struct._object** %me_value47, align 8
  call void @insertdict_clean(%struct.PyDictObject* %49, %struct._object* %51, i64 %53, %struct._object* %55)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %for.body.40
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %56 = load i64, i64* %i, align 8
  %inc50 = add i64 %56, 1
  store i64 %inc50, i64* %i, align 8
  br label %for.cond.38

for.end.51:                                       ; preds = %for.cond.38
  %57 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %57, i32 0, i32 1
  %58 = load i64, i64* %ma_used, align 8
  %59 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys52 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %59, i32 0, i32 2
  %60 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys52, align 8
  %dk_usable = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %60, i32 0, i32 3
  %61 = load i64, i64* %dk_usable, align 8
  %sub = sub i64 %61, %58
  store i64 %sub, i64* %dk_usable, align 8
  %62 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %cmp53 = icmp ne %struct._object** %62, null
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %for.end.51
  store i64 0, i64* %i, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.61, %if.then.54
  %63 = load i64, i64* %i, align 8
  %64 = load i64, i64* %oldsize, align 8
  %cmp56 = icmp slt i64 %63, %64
  br i1 %cmp56, label %for.body.57, label %for.end.63

for.body.57:                                      ; preds = %for.cond.55
  %65 = load i64, i64* %i, align 8
  %66 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_entries58 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %66, i32 0, i32 4
  %arrayidx59 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries58, i32 0, i64 %65
  %me_value60 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx59, i32 0, i32 2
  store %struct._object* null, %struct._object** %me_value60, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.57
  %67 = load i64, i64* %i, align 8
  %inc62 = add i64 %67, 1
  store i64 %inc62, i64* %i, align 8
  br label %for.cond.55

for.end.63:                                       ; preds = %for.cond.55
  %68 = load %struct._object**, %struct._object*** %oldvalues, align 8
  %69 = bitcast %struct._object** %68 to i8*
  call void @PyMem_Free(i8* %69)
  %70 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_refcnt64 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %70, i32 0, i32 0
  %71 = load i64, i64* %dk_refcnt64, align 8
  %dec65 = add i64 %71, -1
  store i64 %dec65, i64* %dk_refcnt64, align 8
  %cmp66 = icmp eq i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end.63
  %72 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %72)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %for.end.63
  br label %if.end.92

if.else:                                          ; preds = %for.end.51
  %73 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_lookup69 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %73, i32 0, i32 2
  %74 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup69, align 8
  %cmp70 = icmp ne %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %74, @lookdict_unicode_nodummy
  br i1 %cmp70, label %if.then.71, label %if.end.91

if.then.71:                                       ; preds = %if.else
  %75 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %dk_entries72 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %75, i32 0, i32 4
  %arrayidx73 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries72, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx73, %struct.PyDictKeyEntry** %ep0, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.88, %if.then.71
  %76 = load i64, i64* %i, align 8
  %77 = load i64, i64* %oldsize, align 8
  %cmp75 = icmp slt i64 %76, %77
  br i1 %cmp75, label %for.body.76, label %for.end.90

for.body.76:                                      ; preds = %for.cond.74
  %78 = load i64, i64* %i, align 8
  %79 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx77 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %79, i64 %78
  %me_key78 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx77, i32 0, i32 1
  %80 = load %struct._object*, %struct._object** %me_key78, align 8
  %cmp79 = icmp eq %struct._object* %80, @_dummy_struct
  br i1 %cmp79, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %for.body.76
  br label %do.body

do.body:                                          ; preds = %if.then.80
  store %struct._object* @_dummy_struct, %struct._object** %_py_decref_tmp, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %82, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body
  br label %if.end.86

if.else.85:                                       ; preds = %do.body
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %85(%struct._object* %86)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end

do.end:                                           ; preds = %if.end.86
  br label %if.end.87

if.end.87:                                        ; preds = %do.end, %for.body.76
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %87 = load i64, i64* %i, align 8
  %inc89 = add i64 %87, 1
  store i64 %inc89, i64* %i, align 8
  br label %for.cond.74

for.end.90:                                       ; preds = %for.cond.74
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.else
  %88 = load %struct._dictkeysobject*, %struct._dictkeysobject** %oldkeys, align 8
  %89 = bitcast %struct._dictkeysobject* %88 to i8*
  call void @PyMem_Free(i8* %89)
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.68
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.end.20, %if.then.7, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare %struct._object* @PyMapping_Keys(%struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_Copy(%struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %copy = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %split_copy = alloca %struct.PyDictObject*, align 8
  %newvalues = alloca %struct._object**, align 8
  %value = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2054)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  store %struct.PyDictObject* %5, %struct.PyDictObject** %mp, align 8
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 3
  %7 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp2 = icmp ne %struct._object** %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.60

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 2
  %9 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %9, i32 0, i32 1
  %10 = load i64, i64* %dk_size, align 8
  %cmp4 = icmp ugt i64 %10, 1152921504606846975
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys5, align 8
  %dk_size6 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %12, i32 0, i32 1
  %13 = load i64, i64* %dk_size6, align 8
  %mul = mul i64 %13, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %14 = bitcast i8* %call to %struct._object**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object** [ null, %cond.true ], [ %14, %cond.false ]
  store %struct._object** %cond, %struct._object*** %newvalues, align 8
  %15 = load %struct._object**, %struct._object*** %newvalues, align 8
  %cmp7 = icmp eq %struct._object** %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %cond.end
  %call9 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %call11 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDict_Type)
  %16 = bitcast %struct._object* %call11 to %struct.PyDictObject*
  store %struct.PyDictObject* %16, %struct.PyDictObject** %split_copy, align 8
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %cmp12 = icmp eq %struct.PyDictObject* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %18 = load %struct._object**, %struct._object*** %newvalues, align 8
  %19 = bitcast %struct._object** %18 to i8*
  call void @PyMem_Free(i8* %19)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %20 = load %struct._object**, %struct._object*** %newvalues, align 8
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %ma_values15 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 3
  store %struct._object** %20, %struct._object*** %ma_values15, align 8
  %22 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys16 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %22, i32 0, i32 2
  %23 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys16, align 8
  %24 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %ma_keys17 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %24, i32 0, i32 2
  store %struct._dictkeysobject* %23, %struct._dictkeysobject** %ma_keys17, align 8
  %25 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ma_used, align 8
  %27 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %ma_used18 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %27, i32 0, i32 1
  store i64 %26, i64* %ma_used18, align 8
  %28 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys19 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %28, i32 0, i32 2
  %29 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys19, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %29, i32 0, i32 0
  %30 = load i64, i64* %dk_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %dk_refcnt, align 8
  store i64 0, i64* %i, align 8
  %31 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys20 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %31, i32 0, i32 2
  %32 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys20, align 8
  %dk_size21 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %32, i32 0, i32 1
  %33 = load i64, i64* %dk_size21, align 8
  store i64 %33, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %n, align 8
  %cmp22 = icmp slt i64 %34, %35
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values23 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %37, i32 0, i32 3
  %38 = load %struct._object**, %struct._object*** %ma_values23, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %38, i64 %36
  %39 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %39, %struct._object** %value, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %40 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %40, %struct._object** %_py_xincref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp24 = icmp ne %struct._object* %41, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.body
  %42 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %inc26 = add i64 %43, 1
  store i64 %inc26, i64* %ob_refcnt, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %44 = load %struct._object*, %struct._object** %value, align 8
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %ma_values28 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %46, i32 0, i32 3
  %47 = load %struct._object**, %struct._object*** %ma_values28, align 8
  %arrayidx29 = getelementptr %struct._object*, %struct._object** %47, i64 %45
  store %struct._object* %44, %struct._object** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %48 = load i64, i64* %i, align 8
  %inc30 = add i64 %48, 1
  store i64 %inc30, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %50 = bitcast %struct.PyDictObject* %49 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %50, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %51 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %51, 1
  %cmp31 = icmp ne i64 %shr, -2
  br i1 %cmp31, label %if.then.32, label %if.end.59

if.then.32:                                       ; preds = %for.end
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %52 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %53 = bitcast %struct.PyDictObject* %52 to %union._gc_head*
  %add.ptr34 = getelementptr %union._gc_head, %union._gc_head* %53, i64 -1
  store %union._gc_head* %add.ptr34, %union._gc_head** %g, align 8
  %54 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc35 = bitcast %union._gc_head* %54 to %struct.anon*
  %gc_refs36 = getelementptr inbounds %struct.anon, %struct.anon* %gc35, i32 0, i32 2
  %55 = load i64, i64* %gc_refs36, align 8
  %shr37 = ashr i64 %55, 1
  %cmp38 = icmp ne i64 %shr37, -2
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body.33
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.40:                                        ; preds = %do.body.33
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  %56 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc42 = bitcast %union._gc_head* %56 to %struct.anon*
  %gc_refs43 = getelementptr inbounds %struct.anon, %struct.anon* %gc42, i32 0, i32 2
  %57 = load i64, i64* %gc_refs43, align 8
  %and44 = and i64 %57, 1
  %or = or i64 %and44, -6
  %58 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc45 = bitcast %union._gc_head* %58 to %struct.anon*
  %gc_refs46 = getelementptr inbounds %struct.anon, %struct.anon* %gc45, i32 0, i32 2
  store i64 %or, i64* %gc_refs46, align 8
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.41
  %59 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %60 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc48 = bitcast %union._gc_head* %60 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc48, i32 0, i32 0
  store %union._gc_head* %59, %union._gc_head** %gc_next, align 8
  %61 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc49 = bitcast %union._gc_head* %61 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc49, i32 0, i32 1
  %62 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %63 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc50 = bitcast %union._gc_head* %63 to %struct.anon*
  %gc_prev51 = getelementptr inbounds %struct.anon, %struct.anon* %gc50, i32 0, i32 1
  store %union._gc_head* %62, %union._gc_head** %gc_prev51, align 8
  %64 = load %union._gc_head*, %union._gc_head** %g, align 8
  %65 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc52 = bitcast %union._gc_head* %65 to %struct.anon*
  %gc_prev53 = getelementptr inbounds %struct.anon, %struct.anon* %gc52, i32 0, i32 1
  %66 = load %union._gc_head*, %union._gc_head** %gc_prev53, align 8
  %gc54 = bitcast %union._gc_head* %66 to %struct.anon*
  %gc_next55 = getelementptr inbounds %struct.anon, %struct.anon* %gc54, i32 0, i32 0
  store %union._gc_head* %64, %union._gc_head** %gc_next55, align 8
  %67 = load %union._gc_head*, %union._gc_head** %g, align 8
  %68 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc56 = bitcast %union._gc_head* %68 to %struct.anon*
  %gc_prev57 = getelementptr inbounds %struct.anon, %struct.anon* %gc56, i32 0, i32 1
  store %union._gc_head* %67, %union._gc_head** %gc_prev57, align 8
  br label %do.end.58

do.end.58:                                        ; preds = %do.end.47
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %for.end
  %69 = load %struct.PyDictObject*, %struct.PyDictObject** %split_copy, align 8
  %70 = bitcast %struct.PyDictObject* %69 to %struct._object*
  store %struct._object* %70, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %if.end
  %call61 = call %struct._object* @PyDict_New()
  store %struct._object* %call61, %struct._object** %copy, align 8
  %71 = load %struct._object*, %struct._object** %copy, align 8
  %cmp62 = icmp eq %struct._object* %71, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %72 = load %struct._object*, %struct._object** %copy, align 8
  %73 = load %struct._object*, %struct._object** %o.addr, align 8
  %call65 = call i32 @PyDict_Merge(%struct._object* %72, %struct._object* %73, i32 1)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  %74 = load %struct._object*, %struct._object** %copy, align 8
  store %struct._object* %74, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.68
  %75 = load %struct._object*, %struct._object** %copy, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt70, align 8
  %dec = add i64 %77, -1
  store i64 %dec, i64* %ob_refcnt70, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %do.body.69
  br label %if.end.74

if.else:                                          ; preds = %do.body.69
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %80(%struct._object* %81)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.75, %if.then.67, %if.then.63, %if.end.59, %if.then.13, %if.then.8, %if.then
  %82 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %82
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @PyDict_Size(%struct._object* %mp) #0 {
entry:
  %retval = alloca i64, align 8
  %mp.addr = alloca %struct._object*, align 8
  store %struct._object* %mp, %struct._object** %mp.addr, align 8
  %0 = load %struct._object*, %struct._object** %mp.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mp.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2094)
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mp.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used, align 8
  store i64 %6, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_Keys(%struct._object* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct._object*, align 8
  store %struct._object* %mp, %struct._object** %mp.addr, align 8
  %0 = load %struct._object*, %struct._object** %mp.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mp.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2104)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mp.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  %call = call %struct._object* @dict_keys(%struct.PyDictObject* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_keys(%struct.PyDictObject* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %offset = alloca i64, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  br label %again

again:                                            ; preds = %do.end, %entry
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ma_used, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyList_New(i64 %2)
  store %struct._object* %call, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %again
  %4 = load i64, i64* %n, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used1, align 8
  %cmp2 = icmp ne i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %v, align 8
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
  br label %again

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 2
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep, align 8
  %16 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys8 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %16, i32 0, i32 2
  %17 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys8, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %17, i32 0, i32 1
  %18 = load i64, i64* %dk_size, align 8
  store i64 %18, i64* %size, align 8
  %19 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %19, i32 0, i32 3
  %20 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %20, null
  br i1 %tobool, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end.7
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values10 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 3
  %22 = load %struct._object**, %struct._object*** %ma_values10, align 8
  store %struct._object** %22, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.13

if.else.11:                                       ; preds = %if.end.7
  %23 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %arrayidx12 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %23, i64 0
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx12, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.9
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %size, align 8
  %cmp14 = icmp slt i64 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %27 = load %struct._object*, %struct._object** %26, align 8
  %cmp15 = icmp ne %struct._object* %27, null
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %arrayidx17 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %29, i64 %28
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx17, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %30, %struct._object** %key, align 8
  %31 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt18, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %ob_refcnt18, align 8
  %33 = load %struct._object*, %struct._object** %key, align 8
  %34 = load i64, i64* %j, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %36, i32 0, i32 1
  %37 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx19 = getelementptr %struct._object*, %struct._object** %37, i64 %34
  store %struct._object* %33, %struct._object** %arrayidx19, align 8
  %38 = load i64, i64* %j, align 8
  %inc20 = add i64 %38, 1
  store i64 %inc20, i64* %j, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %for.body
  %39 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %40 = bitcast %struct._object** %39 to i8*
  %41 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %40, i64 %41
  %42 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %42, %struct._object*** %value_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %43 = load i64, i64* %i, align 8
  %inc22 = add i64 %43, 1
  store i64 %inc22, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_Values(%struct._object* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct._object*, align 8
  store %struct._object* %mp, %struct._object** %mp.addr, align 8
  %0 = load %struct._object*, %struct._object** %mp.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mp.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2114)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mp.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  %call = call %struct._object* @dict_values(%struct.PyDictObject* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_values(%struct.PyDictObject* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %offset = alloca i64, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  br label %again

again:                                            ; preds = %do.end, %entry
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ma_used, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyList_New(i64 %2)
  store %struct._object* %call, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %again
  %4 = load i64, i64* %n, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used1, align 8
  %cmp2 = icmp ne i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %v, align 8
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
  br label %again

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 2
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 1
  %16 = load i64, i64* %dk_size, align 8
  store i64 %16, i64* %size, align 8
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %17, i32 0, i32 3
  %18 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %18, null
  br i1 %tobool, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.7
  %19 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %19, i32 0, i32 3
  %20 = load %struct._object**, %struct._object*** %ma_values9, align 8
  store %struct._object** %20, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.12

if.else.10:                                       ; preds = %if.end.7
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys11 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 2
  %22 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys11, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %22, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %size, align 8
  %cmp13 = icmp slt i64 %23, %24
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %26 = load %struct._object*, %struct._object** %25, align 8
  store %struct._object* %26, %struct._object** %value, align 8
  %27 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %28 = bitcast %struct._object** %27 to i8*
  %29 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %28, i64 %29
  %30 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %30, %struct._object*** %value_ptr, align 8
  %31 = load %struct._object*, %struct._object** %value, align 8
  %cmp14 = icmp ne %struct._object* %31, null
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body
  %32 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %34 = load %struct._object*, %struct._object** %value, align 8
  %35 = load i64, i64* %j, align 8
  %36 = load %struct._object*, %struct._object** %v, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %37, i32 0, i32 1
  %38 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx17 = getelementptr %struct._object*, %struct._object** %38, i64 %35
  store %struct._object* %34, %struct._object** %arrayidx17, align 8
  %39 = load i64, i64* %j, align 8
  %inc18 = add i64 %39, 1
  store i64 %inc18, i64* %j, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %40 = load i64, i64* %i, align 8
  %inc20 = add i64 %40, 1
  store i64 %inc20, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_Items(%struct._object* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct._object*, align 8
  store %struct._object* %mp, %struct._object** %mp.addr, align 8
  %0 = load %struct._object*, %struct._object** %mp.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mp.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2124)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mp.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  %call = call %struct._object* @dict_items(%struct.PyDictObject* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_items(%struct.PyDictObject* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  br label %again

again:                                            ; preds = %do.end.22, %entry
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ma_used, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyList_New(i64 %2)
  store %struct._object* %call, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %again
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %n, align 8
  %cmp1 = icmp slt i64 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call2, %struct._object** %item, align 8
  %6 = load %struct._object*, %struct._object** %item, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %item, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct._object*, %struct._object** %v, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1
  %18 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %18, i64 %15
  store %struct._object* %14, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i64, i64* %n, align 8
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ma_used9, align 8
  %cmp10 = icmp ne i64 %20, %22
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %for.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %23 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp13, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %25, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %28(%struct._object* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %again

if.end.23:                                        ; preds = %for.end
  %30 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %30, i32 0, i32 2
  %31 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %31, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i32 0
  store %struct.PyDictKeyEntry* %arraydecay, %struct.PyDictKeyEntry** %ep, align 8
  %32 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys24 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %32, i32 0, i32 2
  %33 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys24, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %33, i32 0, i32 1
  %34 = load i64, i64* %dk_size, align 8
  store i64 %34, i64* %size, align 8
  %35 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %35, i32 0, i32 3
  %36 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %36, null
  br i1 %tobool, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.end.23
  %37 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values26 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %37, i32 0, i32 3
  %38 = load %struct._object**, %struct._object*** %ma_values26, align 8
  store %struct._object** %38, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.29

if.else.27:                                       ; preds = %if.end.23
  %39 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %arrayidx28 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %39, i64 0
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx28, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.25
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.48, %if.end.29
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %size, align 8
  %cmp31 = icmp slt i64 %40, %41
  br i1 %cmp31, label %for.body.32, label %for.end.50

for.body.32:                                      ; preds = %for.cond.30
  %42 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %43 = load %struct._object*, %struct._object** %42, align 8
  store %struct._object* %43, %struct._object** %value, align 8
  %44 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %45 = bitcast %struct._object** %44 to i8*
  %46 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %45, i64 %46
  %47 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %47, %struct._object*** %value_ptr, align 8
  %48 = load %struct._object*, %struct._object** %value, align 8
  %cmp33 = icmp ne %struct._object* %48, null
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %for.body.32
  %49 = load i64, i64* %i, align 8
  %50 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %arrayidx35 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %50, i64 %49
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx35, i32 0, i32 1
  %51 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %51, %struct._object** %key, align 8
  %52 = load i64, i64* %j, align 8
  %53 = load %struct._object*, %struct._object** %v, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyListObject*
  %ob_item36 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %54, i32 0, i32 1
  %55 = load %struct._object**, %struct._object*** %ob_item36, align 8
  %arrayidx37 = getelementptr %struct._object*, %struct._object** %55, i64 %52
  %56 = load %struct._object*, %struct._object** %arrayidx37, align 8
  store %struct._object* %56, %struct._object** %item, align 8
  %57 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %58, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  %59 = load %struct._object*, %struct._object** %key, align 8
  %60 = load %struct._object*, %struct._object** %item, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %61, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 0
  store %struct._object* %59, %struct._object** %arrayidx41, align 8
  %62 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt42, align 8
  %inc43 = add i64 %63, 1
  store i64 %inc43, i64* %ob_refcnt42, align 8
  %64 = load %struct._object*, %struct._object** %value, align 8
  %65 = load %struct._object*, %struct._object** %item, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyTupleObject*
  %ob_item44 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %66, i32 0, i32 1
  %arrayidx45 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item44, i32 0, i64 1
  store %struct._object* %64, %struct._object** %arrayidx45, align 8
  %67 = load i64, i64* %j, align 8
  %inc46 = add i64 %67, 1
  store i64 %inc46, i64* %j, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.34, %for.body.32
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %68 = load i64, i64* %i, align 8
  %inc49 = add i64 %68, 1
  store i64 %inc49, i64* %i, align 8
  br label %for.cond.30

for.end.50:                                       ; preds = %for.cond.30
  %69 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.50, %do.end, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_SetDefault(%struct._object* %d, %struct._object* %key, %struct._object* %defaultobj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %d.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %defaultobj.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %val = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %defaultobj, %struct._object** %defaultobj.addr, align 8
  %0 = load %struct._object*, %struct._object** %d.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %2 = load %struct._object*, %struct._object** %d.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2282)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %hash3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 2
  %9 = load i64, i64* %hash3, align 8
  store i64 %9, i64* %hash, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call, i64* %hash, align 8
  %11 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %lor.lhs.false
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %13, i32 0, i32 2
  %14 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %17 = load i64, i64* %hash, align 8
  %call10 = call %struct.PyDictKeyEntry* %14(%struct.PyDictObject* %15, %struct._object* %16, i64 %17, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call10, %struct.PyDictKeyEntry** %ep, align 8
  %18 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp11 = icmp eq %struct.PyDictKeyEntry* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %19 = load %struct._object**, %struct._object*** %value_addr, align 8
  %20 = load %struct._object*, %struct._object** %19, align 8
  store %struct._object* %20, %struct._object** %val, align 8
  %21 = load %struct._object*, %struct._object** %val, align 8
  %cmp14 = icmp eq %struct._object* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.103

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys16 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %22, i32 0, i32 2
  %23 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys16, align 8
  %dk_usable = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %23, i32 0, i32 3
  %24 = load i64, i64* %dk_usable, align 8
  %cmp17 = icmp sle i64 %24, 0
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.then.15
  %25 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %call19 = call i32 @insertion_resize(%struct.PyDictObject* %25)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.18
  %26 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %28 = load i64, i64* %hash, align 8
  %call23 = call %struct.PyDictKeyEntry* @find_empty_slot(%struct.PyDictObject* %26, %struct._object* %27, i64 %28, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call23, %struct.PyDictKeyEntry** %ep, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.then.15
  %29 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt25, align 8
  %inc26 = add i64 %32, 1
  store i64 %inc26, i64* %ob_refcnt25, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %33 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %34 = bitcast %struct.PyDictObject* %33 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %34, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %35 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %35, 1
  %cmp27 = icmp ne i64 %shr, -2
  br i1 %cmp27, label %if.end.98, label %if.then.28

if.then.28:                                       ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 19
  %38 = load i64, i64* %tp_flags30, align 8
  %and31 = and i64 %38, 16384
  %cmp32 = icmp ne i64 %and31, 0
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false.48

land.lhs.true:                                    ; preds = %if.then.28
  %39 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 39
  %41 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp34 = icmp eq i32 (%struct._object*)* %41, null
  br i1 %cmp34, label %land.lhs.true.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true
  %42 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_is_gc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 39
  %44 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc37, align 8
  %45 = load %struct._object*, %struct._object** %key.addr, align 8
  %call38 = call i32 %44(%struct._object* %45)
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %land.lhs.true.39, label %lor.lhs.false.48

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35, %land.lhs.true
  %46 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %cmp41 = icmp eq %struct._typeobject* %47, @PyTuple_Type
  br i1 %cmp41, label %lor.lhs.false.42, label %if.then.71

lor.lhs.false.42:                                 ; preds = %land.lhs.true.39
  %48 = load %struct._object*, %struct._object** %key.addr, align 8
  %49 = bitcast %struct._object* %48 to %union._gc_head*
  %add.ptr43 = getelementptr %union._gc_head, %union._gc_head* %49, i64 -1
  %gc44 = bitcast %union._gc_head* %add.ptr43 to %struct.anon*
  %gc_refs45 = getelementptr inbounds %struct.anon, %struct.anon* %gc44, i32 0, i32 2
  %50 = load i64, i64* %gc_refs45, align 8
  %shr46 = ashr i64 %50, 1
  %cmp47 = icmp ne i64 %shr46, -2
  br i1 %cmp47, label %if.then.71, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.42, %lor.lhs.false.35, %if.then.28
  %51 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_flags50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 19
  %53 = load i64, i64* %tp_flags50, align 8
  %and51 = and i64 %53, 16384
  %cmp52 = icmp ne i64 %and51, 0
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.97

land.lhs.true.53:                                 ; preds = %lor.lhs.false.48
  %54 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_is_gc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 39
  %56 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc55, align 8
  %cmp56 = icmp eq i32 (%struct._object*)* %56, null
  br i1 %cmp56, label %land.lhs.true.62, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.53
  %57 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_is_gc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 39
  %59 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc59, align 8
  %60 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %call60 = call i32 %59(%struct._object* %60)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.97

land.lhs.true.62:                                 ; preds = %lor.lhs.false.57, %land.lhs.true.53
  %61 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %cmp64 = icmp eq %struct._typeobject* %62, @PyTuple_Type
  br i1 %cmp64, label %lor.lhs.false.65, label %if.then.71

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62
  %63 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %64 = bitcast %struct._object* %63 to %union._gc_head*
  %add.ptr66 = getelementptr %union._gc_head, %union._gc_head* %64, i64 -1
  %gc67 = bitcast %union._gc_head* %add.ptr66 to %struct.anon*
  %gc_refs68 = getelementptr inbounds %struct.anon, %struct.anon* %gc67, i32 0, i32 2
  %65 = load i64, i64* %gc_refs68, align 8
  %shr69 = ashr i64 %65, 1
  %cmp70 = icmp ne i64 %shr69, -2
  br i1 %cmp70, label %if.then.71, label %if.end.97

if.then.71:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.62, %lor.lhs.false.42, %land.lhs.true.39
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %66 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %67 = bitcast %struct.PyDictObject* %66 to %union._gc_head*
  %add.ptr73 = getelementptr %union._gc_head, %union._gc_head* %67, i64 -1
  store %union._gc_head* %add.ptr73, %union._gc_head** %g, align 8
  %68 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc74 = bitcast %union._gc_head* %68 to %struct.anon*
  %gc_refs75 = getelementptr inbounds %struct.anon, %struct.anon* %gc74, i32 0, i32 2
  %69 = load i64, i64* %gc_refs75, align 8
  %shr76 = ashr i64 %69, 1
  %cmp77 = icmp ne i64 %shr76, -2
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %do.body.72
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.79:                                        ; preds = %do.body.72
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %70 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc81 = bitcast %union._gc_head* %70 to %struct.anon*
  %gc_refs82 = getelementptr inbounds %struct.anon, %struct.anon* %gc81, i32 0, i32 2
  %71 = load i64, i64* %gc_refs82, align 8
  %and83 = and i64 %71, 1
  %or = or i64 %and83, -6
  %72 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc84 = bitcast %union._gc_head* %72 to %struct.anon*
  %gc_refs85 = getelementptr inbounds %struct.anon, %struct.anon* %gc84, i32 0, i32 2
  store i64 %or, i64* %gc_refs85, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.80
  %73 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %74 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc86 = bitcast %union._gc_head* %74 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc86, i32 0, i32 0
  store %union._gc_head* %73, %union._gc_head** %gc_next, align 8
  %75 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc87 = bitcast %union._gc_head* %75 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc87, i32 0, i32 1
  %76 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %77 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc88 = bitcast %union._gc_head* %77 to %struct.anon*
  %gc_prev89 = getelementptr inbounds %struct.anon, %struct.anon* %gc88, i32 0, i32 1
  store %union._gc_head* %76, %union._gc_head** %gc_prev89, align 8
  %78 = load %union._gc_head*, %union._gc_head** %g, align 8
  %79 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc90 = bitcast %union._gc_head* %79 to %struct.anon*
  %gc_prev91 = getelementptr inbounds %struct.anon, %struct.anon* %gc90, i32 0, i32 1
  %80 = load %union._gc_head*, %union._gc_head** %gc_prev91, align 8
  %gc92 = bitcast %union._gc_head* %80 to %struct.anon*
  %gc_next93 = getelementptr inbounds %struct.anon, %struct.anon* %gc92, i32 0, i32 0
  store %union._gc_head* %78, %union._gc_head** %gc_next93, align 8
  %81 = load %union._gc_head*, %union._gc_head** %g, align 8
  %82 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc94 = bitcast %union._gc_head* %82 to %struct.anon*
  %gc_prev95 = getelementptr inbounds %struct.anon, %struct.anon* %gc94, i32 0, i32 1
  store %union._gc_head* %81, %union._gc_head** %gc_prev95, align 8
  br label %do.end.96

do.end.96:                                        ; preds = %do.end
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %lor.lhs.false.65, %lor.lhs.false.57, %lor.lhs.false.48
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %do.body
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  %83 = load %struct._object*, %struct._object** %key.addr, align 8
  %84 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %84, i32 0, i32 1
  store %struct._object* %83, %struct._object** %me_key, align 8
  %85 = load i64, i64* %hash, align 8
  %86 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %86, i32 0, i32 0
  store i64 %85, i64* %me_hash, align 8
  %87 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  %88 = load %struct._object**, %struct._object*** %value_addr, align 8
  store %struct._object* %87, %struct._object** %88, align 8
  %89 = load %struct._object*, %struct._object** %defaultobj.addr, align 8
  store %struct._object* %89, %struct._object** %val, align 8
  %90 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys100 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %90, i32 0, i32 2
  %91 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys100, align 8
  %dk_usable101 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %91, i32 0, i32 3
  %92 = load i64, i64* %dk_usable101, align 8
  %dec = add i64 %92, -1
  store i64 %dec, i64* %dk_usable101, align 8
  %93 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %93, i32 0, i32 1
  %94 = load i64, i64* %ma_used, align 8
  %inc102 = add i64 %94, 1
  store i64 %inc102, i64* %ma_used, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.99, %if.end.13
  %95 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %95, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.21, %if.then.12, %if.then.7, %if.then
  %96 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %96
}

; Function Attrs: nounwind uwtable
define internal i32 @insertion_resize(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ma_used, align 8
  %mul = mul i64 %2, 2
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 1
  %5 = load i64, i64* %dk_size, align 8
  %shr = ashr i64 %5, 1
  %add = add i64 %mul, %shr
  %call = call i32 @dictresize(%struct.PyDictObject* %0, i64 %add)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.PyDictKeyEntry* @find_empty_slot(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object*** %value_addr) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value_addr.addr = alloca %struct._object***, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object*** %value_addr, %struct._object**** %value_addr.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %2, 1
  store i64 %sub, i64* %mask, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys2 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys2, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %hash.addr, align 8
  %10 = load i64, i64* %mask, align 8
  %and = and i64 %9, %10
  store i64 %and, i64* %i, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx3 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %12, i64 %11
  store %struct.PyDictKeyEntry* %arrayidx3, %struct.PyDictKeyEntry** %ep, align 8
  %13 = load i64, i64* %hash.addr, align 8
  store i64 %13, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp4 = icmp ne %struct._object* %15, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %shl = shl i64 %16, 2
  %17 = load i64, i64* %i, align 8
  %add = add i64 %shl, %17
  %18 = load i64, i64* %perturb, align 8
  %add5 = add i64 %add, %18
  %add6 = add i64 %add5, 1
  store i64 %add6, i64* %i, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %mask, align 8
  %and7 = and i64 %19, %20
  %21 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx8 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %21, i64 %and7
  store %struct.PyDictKeyEntry* %arrayidx8, %struct.PyDictKeyEntry** %ep, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %22, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %23, i32 0, i32 3
  %24 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %24, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %mask, align 8
  %and10 = and i64 %25, %26
  %27 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values11 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %27, i32 0, i32 3
  %28 = load %struct._object**, %struct._object*** %ma_values11, align 8
  %arrayidx12 = getelementptr %struct._object*, %struct._object** %28, i64 %and10
  %29 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %arrayidx12, %struct._object*** %29, align 8
  br label %if.end.13

if.else:                                          ; preds = %for.end
  %30 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %30, i32 0, i32 2
  %31 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %me_value, %struct._object*** %31, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %32 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  ret %struct.PyDictKeyEntry* %32
}

; Function Attrs: nounwind uwtable
define i64 @_PyDict_KeysSize(%struct._dictkeysobject* %keys) #0 {
entry:
  %keys.addr = alloca %struct._dictkeysobject*, align 8
  store %struct._dictkeysobject* %keys, %struct._dictkeysobject** %keys.addr, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %0, i32 0, i32 1
  %1 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %1, 1
  %mul = mul i64 %sub, 24
  %add = add i64 56, %mul
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_Contains(%struct._object* %op, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %3, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %key.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %hash1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 2
  %6 = load i64, i64* %hash1, align 8
  store i64 %6, i64* %hash, align 8
  %cmp2 = icmp eq i64 %6, -1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %7)
  store i64 %call, i64* %hash, align 8
  %8 = load i64, i64* %hash, align 8
  %cmp3 = icmp eq i64 %8, -1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %lor.lhs.false
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %9, i32 0, i32 2
  %10 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %10, i32 0, i32 2
  %11 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %14 = load i64, i64* %hash, align 8
  %call6 = call %struct.PyDictKeyEntry* %11(%struct.PyDictObject* %12, %struct._object* %13, i64 %14, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call6, %struct.PyDictKeyEntry** %ep, align 8
  %15 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp7 = icmp eq %struct.PyDictKeyEntry* %15, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %16 = load %struct._object**, %struct._object*** %value_addr, align 8
  %17 = load %struct._object*, %struct._object** %16, align 8
  %cmp8 = icmp ne %struct._object* %17, null
  %conv = zext i1 %cmp8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @_PyDict_Contains(%struct._object* %op, %struct._object* %key, i64 %hash) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %2, i32 0, i32 2
  %3 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %3, i32 0, i32 2
  %4 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %6 = load %struct._object*, %struct._object** %key.addr, align 8
  %7 = load i64, i64* %hash.addr, align 8
  %call = call %struct.PyDictKeyEntry* %4(%struct.PyDictObject* %5, %struct._object* %6, i64 %7, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call, %struct.PyDictKeyEntry** %ep, align 8
  %8 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp = icmp eq %struct.PyDictKeyEntry* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct._object**, %struct._object*** %value_addr, align 8
  %10 = load %struct._object*, %struct._object** %9, align 8
  %cmp1 = icmp ne %struct._object* %10, null
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @dict_dealloc(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %values = alloca %struct._object**, align 8
  %keys = alloca %struct._dictkeysobject*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 3
  %1 = load %struct._object**, %struct._object*** %ma_values, align 8
  store %struct._object** %1, %struct._object*** %values, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %2, i32 0, i32 2
  %3 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  store %struct._dictkeysobject* %3, %struct._dictkeysobject** %keys, align 8
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %5 = bitcast %struct.PyDictObject* %4 to i8*
  call void @PyObject_GC_UnTrack(i8* %5)
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %6, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %8 = bitcast %struct._Py_atomic_address* %7 to i8*
  %9 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %8, i32 %9)
  %10 = load i32, i32* %order, align 4
  switch i32 %10, label %sw.default [
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
  %11 = load i8**, i8*** %volatile_data, align 8
  %12 = load volatile i8*, i8** %11, align 8
  store i8* %12, i8** %result, align 8
  %13 = load i32, i32* %order, align 4
  switch i32 %13, label %sw.default.2 [
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
  %14 = load i8*, i8** %result, align 8
  store i8* %14, i8** %tmp
  %15 = load i8*, i8** %tmp
  %16 = bitcast i8* %15 to %struct._ts*
  store %struct._ts* %16, %struct._ts** %_tstate, align 8
  %17 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 23
  %18 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %18, 50
  br i1 %cmp, label %if.then, label %if.else.53

if.then:                                          ; preds = %sw.epilog.3
  %19 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 23
  %20 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  %21 = load %struct._object**, %struct._object*** %values, align 8
  %cmp5 = icmp ne %struct._object** %21, null
  br i1 %cmp5, label %if.then.6, label %if.else.27

if.then.6:                                        ; preds = %if.then
  %22 = load %struct._object**, %struct._object*** %values, align 8
  %cmp7 = icmp ne %struct._object** %22, getelementptr inbounds ([1 x %struct._object*], [1 x %struct._object*]* @empty_values, i32 0, i32 0)
  br i1 %cmp7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %if.then.6
  store i64 0, i64* %i, align 8
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %23, i32 0, i32 2
  %24 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys9, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %24, i32 0, i32 1
  %25 = load i64, i64* %dk_size, align 8
  store i64 %25, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %n, align 8
  %cmp10 = icmp slt i64 %26, %27
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.11

do.body.11:                                       ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load %struct._object**, %struct._object*** %values, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %29, i64 %28
  %30 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %31, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.body.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.15
  br label %if.end

if.else:                                          ; preds = %do.body.15
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %do.body.11
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %do.end.20
  %39 = load i64, i64* %i, align 8
  %inc21 = add i64 %39, 1
  store i64 %inc21, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._object**, %struct._object*** %values, align 8
  %41 = bitcast %struct._object** %40 to i8*
  call void @PyMem_Free(i8* %41)
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then.6
  %42 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %42, i32 0, i32 0
  %43 = load i64, i64* %dk_refcnt, align 8
  %dec23 = add i64 %43, -1
  store i64 %dec23, i64* %dk_refcnt, align 8
  %cmp24 = icmp eq i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %44 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %44)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  br label %if.end.36

if.else.27:                                       ; preds = %if.then
  %45 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %cmp28 = icmp ne %struct._dictkeysobject* %45, null
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.else.27
  %46 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %dk_refcnt30 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %46, i32 0, i32 0
  %47 = load i64, i64* %dk_refcnt30, align 8
  %dec31 = add i64 %47, -1
  store i64 %dec31, i64* %dk_refcnt30, align 8
  %cmp32 = icmp eq i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  %48 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  call void @free_keys_object(%struct._dictkeysobject* %48)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %49 = load i32, i32* @numfree, align 4
  %cmp37 = icmp slt i32 %49, 80
  br i1 %cmp37, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %if.end.36
  %50 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %51 = bitcast %struct.PyDictObject* %50 to %struct._object*
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %cmp39 = icmp eq %struct._typeobject* %52, @PyDict_Type
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %land.lhs.true
  %53 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %54 = load i32, i32* @numfree, align 4
  %inc41 = add i32 %54, 1
  store i32 %inc41, i32* @numfree, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx42 = getelementptr [80 x %struct.PyDictObject*], [80 x %struct.PyDictObject*]* @free_list, i32 0, i64 %idxprom
  store %struct.PyDictObject* %53, %struct.PyDictObject** %arrayidx42, align 8
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true, %if.end.36
  %55 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %56 = bitcast %struct.PyDictObject* %55 to %struct._object*
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 38
  %58 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %59 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %60 = bitcast %struct.PyDictObject* %59 to %struct._object*
  %61 = bitcast %struct._object* %60 to i8*
  call void %58(i8* %61)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.40
  %62 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting46 = getelementptr inbounds %struct._ts, %struct._ts* %62, i32 0, i32 23
  %63 = load i32, i32* %trash_delete_nesting46, align 4
  %dec47 = add i32 %63, -1
  store i32 %dec47, i32* %trash_delete_nesting46, align 4
  %64 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %64, i32 0, i32 24
  %65 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %65, null
  br i1 %tobool, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %if.end.45
  %66 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting49 = getelementptr inbounds %struct._ts, %struct._ts* %66, i32 0, i32 23
  %67 = load i32, i32* %trash_delete_nesting49, align 4
  %cmp50 = icmp sle i32 %67, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %if.end.45
  br label %if.end.54

if.else.53:                                       ; preds = %sw.epilog.3
  %68 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %69 = bitcast %struct.PyDictObject* %68 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %69)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.end.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_repr(%struct.PyDictObject* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  %first = alloca i32, align 4
  %s = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %_py_xdecref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp138 = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* null, %struct._object** %key, align 8
  store %struct._object* null, %struct._object** %value, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %1 = bitcast %struct.PyDictObject* %0 to %struct._object*
  %call = call i32 @Py_ReprEnter(%struct._object* %1)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %i, align 8
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %i, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call4 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call4, %cond.true ], [ null, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ma_used, align 8
  %cmp5 = icmp eq i64 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %7 = bitcast %struct.PyDictObject* %6 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %7)
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %overallocate = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8
  store i8 1, i8* %overallocate, align 1
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used10 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ma_used10, align 8
  %sub = sub i64 %9, 1
  %mul = mul i64 6, %sub
  %add = add i64 5, %mul
  %add11 = add i64 %add, 1
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6
  store i64 %add11, i64* %min_length, align 8
  %call12 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 123)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  br label %error

if.end.16:                                        ; preds = %if.end.9
  store i64 0, i64* %i, align 8
  store i32 1, i32* %first, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.106, %if.end.16
  %10 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %11 = bitcast %struct.PyDictObject* %10 to %struct._object*
  %call17 = call i32 @PyDict_Next(%struct._object* %11, i64* %i, %struct._object** %key, %struct._object** %value)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %15, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %16 = load i32, i32* %first, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end.27, label %if.then.21

if.then.21:                                       ; preds = %while.body
  %call22 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i64 2)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  br label %error

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %while.body
  store i32 0, i32* %first, align 4
  %17 = load %struct._object*, %struct._object** %key, align 8
  %call28 = call %struct._object* @PyObject_Repr(%struct._object* %17)
  store %struct._object* %call28, %struct._object** %s, align 8
  %18 = load %struct._object*, %struct._object** %s, align 8
  %cmp29 = icmp eq %struct._object* %18, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  br label %error

if.end.32:                                        ; preds = %if.end.27
  %19 = load %struct._object*, %struct._object** %s, align 8
  %call33 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %19)
  store i32 %call33, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.32
  %20 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt34, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt34, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %do.body
  br label %if.end.38

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.37
  br label %do.end

do.end:                                           ; preds = %if.end.38
  %27 = load i32, i32* %res, align 4
  %cmp39 = icmp slt i32 %27, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end
  br label %error

if.end.42:                                        ; preds = %do.end
  %call43 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i64 2)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  br label %error

if.end.47:                                        ; preds = %if.end.42
  %28 = load %struct._object*, %struct._object** %value, align 8
  %call48 = call %struct._object* @PyObject_Repr(%struct._object* %28)
  store %struct._object* %call48, %struct._object** %s, align 8
  %29 = load %struct._object*, %struct._object** %s, align 8
  %cmp49 = icmp eq %struct._object* %29, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  br label %error

if.end.52:                                        ; preds = %if.end.47
  %30 = load %struct._object*, %struct._object** %s, align 8
  %call53 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %30)
  store i32 %call53, i32* %res, align 4
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.52
  %31 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp55, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %33, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.54
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.54
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %36(%struct._object* %37)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %38 = load i32, i32* %res, align 4
  %cmp66 = icmp slt i32 %38, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %do.end.65
  br label %error

if.end.69:                                        ; preds = %do.end.65
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %39 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %39, %struct._object** %_py_tmp, align 8
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp71 = icmp ne %struct._object* %40, null
  br i1 %cmp71, label %if.then.73, label %if.end.86

if.then.73:                                       ; preds = %do.body.70
  store %struct._object* null, %struct._object** %key, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %41 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp75, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %43, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.74
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %46(%struct._object* %47)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.70
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %do.body.88

do.body.88:                                       ; preds = %do.end.87
  %48 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %48, %struct._object** %_py_tmp89, align 8
  %49 = load %struct._object*, %struct._object** %_py_tmp89, align 8
  %cmp90 = icmp ne %struct._object* %49, null
  br i1 %cmp90, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %do.body.88
  store %struct._object* null, %struct._object** %value, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %50 = load %struct._object*, %struct._object** %_py_tmp89, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp94, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %52, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %55(%struct._object* %56)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.body.88
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %overallocate107 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8
  store i8 0, i8* %overallocate107, align 1
  %call108 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 125)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %while.end
  br label %error

if.end.112:                                       ; preds = %while.end
  %57 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %58 = bitcast %struct.PyDictObject* %57 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %58)
  %call113 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer)
  store %struct._object* %call113, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.111, %if.then.68, %if.then.51, %if.then.46, %if.then.41, %if.then.31, %if.then.25, %if.then.15
  %59 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %60 = bitcast %struct.PyDictObject* %59 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %60)
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer)
  br label %do.body.114

do.body.114:                                      ; preds = %error
  %61 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp115 = icmp ne %struct._object* %62, null
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %do.body.114
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp119, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %65, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.118
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %68(%struct._object* %69)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.body.114
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %70 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %70, %struct._object** %_py_xdecref_tmp133, align 8
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  %cmp134 = icmp ne %struct._object* %71, null
  br i1 %cmp134, label %if.then.136, label %if.end.149

if.then.136:                                      ; preds = %do.body.132
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.136
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp138, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_refcnt139 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt139, align 8
  %dec140 = add i64 %74, -1
  store i64 %dec140, i64* %ob_refcnt139, align 8
  %cmp141 = icmp ne i64 %dec140, 0
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.137
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.137
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  call void %77(%struct._object* %78)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %if.end.149

if.end.149:                                       ; preds = %do.end.148, %do.body.132
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.150, %if.end.112, %if.then.7, %cond.end
  %79 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %79
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dict_traverse(%struct._object* %op, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %vret = alloca i32, align 4
  %vret24 = alloca i32, align 4
  %vret48 = alloca i32, align 4
  %vret73 = alloca i32, align 4
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %2, i32 0, i32 2
  %3 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %3, i32 0, i32 2
  %4 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %cmp = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %4, @lookdict
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 2
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %7, i32 0, i32 1
  %8 = load i64, i64* %dk_size, align 8
  %cmp2 = icmp slt i64 %5, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys3 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %10, i32 0, i32 2
  %11 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys3, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %11, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %9
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %me_value, align 8
  %cmp4 = icmp ne %struct._object* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.35

if.then.5:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys6 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 2
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys6, align 8
  %dk_entries7 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 4
  %arrayidx8 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries7, i32 0, i64 %13
  %me_value9 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx8, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %me_value9, align 8
  %tobool = icmp ne %struct._object* %16, null
  br i1 %tobool, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body
  %17 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %18 = load i64, i64* %i, align 8
  %19 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys11 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %19, i32 0, i32 2
  %20 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys11, align 8
  %dk_entries12 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %20, i32 0, i32 4
  %arrayidx13 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries12, i32 0, i64 %18
  %me_value14 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx13, i32 0, i32 2
  %21 = load %struct._object*, %struct._object** %me_value14, align 8
  %22 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %17(%struct._object* %21, i8* %22)
  store i32 %call, i32* %vret, align 4
  %23 = load i32, i32* %vret, align 4
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.10
  %24 = load i32, i32* %vret, align 4
  store i32 %24, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys19 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %26, i32 0, i32 2
  %27 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys19, align 8
  %dk_entries20 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %27, i32 0, i32 4
  %arrayidx21 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries20, i32 0, i64 %25
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx21, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %me_key, align 8
  %tobool22 = icmp ne %struct._object* %28, null
  br i1 %tobool22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %do.body.18
  %29 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys25 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %31, i32 0, i32 2
  %32 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys25, align 8
  %dk_entries26 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %32, i32 0, i32 4
  %arrayidx27 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries26, i32 0, i64 %30
  %me_key28 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx27, i32 0, i32 1
  %33 = load %struct._object*, %struct._object** %me_key28, align 8
  %34 = load i8*, i8** %arg.addr, align 8
  %call29 = call i32 %29(%struct._object* %33, i8* %34)
  store i32 %call29, i32* %vret24, align 4
  %35 = load i32, i32* %vret24, align 4
  %tobool30 = icmp ne i32 %35, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.23
  %36 = load i32, i32* %vret24, align 4
  store i32 %36, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body.18
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %37 = load i64, i64* %i, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.88

if.else:                                          ; preds = %entry
  %38 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %38, i32 0, i32 3
  %39 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp36 = icmp ne %struct._object** %39, null
  br i1 %cmp36, label %if.then.37, label %if.else.60

if.then.37:                                       ; preds = %if.else
  store i64 0, i64* %i, align 8
  %40 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys38 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %40, i32 0, i32 2
  %41 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys38, align 8
  %dk_size39 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %41, i32 0, i32 1
  %42 = load i64, i64* %dk_size39, align 8
  store i64 %42, i64* %n, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.57, %if.then.37
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %n, align 8
  %cmp41 = icmp slt i64 %43, %44
  br i1 %cmp41, label %for.body.42, label %for.end.59

for.body.42:                                      ; preds = %for.cond.40
  br label %do.body.43

do.body.43:                                       ; preds = %for.body.42
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values44 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %46, i32 0, i32 3
  %47 = load %struct._object**, %struct._object*** %ma_values44, align 8
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %47, i64 %45
  %48 = load %struct._object*, %struct._object** %arrayidx45, align 8
  %tobool46 = icmp ne %struct._object* %48, null
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %do.body.43
  %49 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values49 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %51, i32 0, i32 3
  %52 = load %struct._object**, %struct._object*** %ma_values49, align 8
  %arrayidx50 = getelementptr %struct._object*, %struct._object** %52, i64 %50
  %53 = load %struct._object*, %struct._object** %arrayidx50, align 8
  %54 = load i8*, i8** %arg.addr, align 8
  %call51 = call i32 %49(%struct._object* %53, i8* %54)
  store i32 %call51, i32* %vret48, align 4
  %55 = load i32, i32* %vret48, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.47
  %56 = load i32, i32* %vret48, align 4
  store i32 %56, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.47
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.body.43
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %for.inc.57

for.inc.57:                                       ; preds = %do.end.56
  %57 = load i64, i64* %i, align 8
  %inc58 = add i64 %57, 1
  store i64 %inc58, i64* %i, align 8
  br label %for.cond.40

for.end.59:                                       ; preds = %for.cond.40
  br label %if.end.87

if.else.60:                                       ; preds = %if.else
  store i64 0, i64* %i, align 8
  %58 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys61 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %58, i32 0, i32 2
  %59 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys61, align 8
  %dk_size62 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %59, i32 0, i32 1
  %60 = load i64, i64* %dk_size62, align 8
  store i64 %60, i64* %n, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.84, %if.else.60
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %n, align 8
  %cmp64 = icmp slt i64 %61, %62
  br i1 %cmp64, label %for.body.65, label %for.end.86

for.body.65:                                      ; preds = %for.cond.63
  br label %do.body.66

do.body.66:                                       ; preds = %for.body.65
  %63 = load i64, i64* %i, align 8
  %64 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys67 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %64, i32 0, i32 2
  %65 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys67, align 8
  %dk_entries68 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %65, i32 0, i32 4
  %arrayidx69 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries68, i32 0, i64 %63
  %me_value70 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx69, i32 0, i32 2
  %66 = load %struct._object*, %struct._object** %me_value70, align 8
  %tobool71 = icmp ne %struct._object* %66, null
  br i1 %tobool71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %do.body.66
  %67 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %68 = load i64, i64* %i, align 8
  %69 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys74 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %69, i32 0, i32 2
  %70 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys74, align 8
  %dk_entries75 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %70, i32 0, i32 4
  %arrayidx76 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries75, i32 0, i64 %68
  %me_value77 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx76, i32 0, i32 2
  %71 = load %struct._object*, %struct._object** %me_value77, align 8
  %72 = load i8*, i8** %arg.addr, align 8
  %call78 = call i32 %67(%struct._object* %71, i8* %72)
  store i32 %call78, i32* %vret73, align 4
  %73 = load i32, i32* %vret73, align 4
  %tobool79 = icmp ne i32 %73, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.72
  %74 = load i32, i32* %vret73, align 4
  store i32 %74, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %do.body.66
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %for.inc.84

for.inc.84:                                       ; preds = %do.end.83
  %75 = load i64, i64* %i, align 8
  %inc85 = add i64 %75, 1
  store i64 %inc85, i64* %i, align 8
  br label %for.cond.63

for.end.86:                                       ; preds = %for.cond.63
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %for.end.59
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.80, %if.then.53, %if.then.31, %if.then.16
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_tp_clear(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  call void @PyDict_Clear(%struct._object* %0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %cmp = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags3, align 8
  %and4 = and i64 %5, 536870912
  %cmp5 = icmp ne i64 %and4, 0
  br i1 %cmp5, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %res, align 8
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %op.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.else
  %7 = load i32, i32* %op.addr, align 4
  %cmp8 = icmp eq i32 %7, 3
  br i1 %cmp8, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %lor.lhs.false.7, %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyDictObject*
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyDictObject*
  %call = call i32 @dict_equal(%struct.PyDictObject* %9, %struct.PyDictObject* %11)
  store i32 %call, i32* %cmp, align 4
  %12 = load i32, i32* %cmp, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  %13 = load i32, i32* %cmp, align 4
  %14 = load i32, i32* %op.addr, align 4
  %cmp12 = icmp eq i32 %14, 2
  %conv = zext i1 %cmp12 to i32
  %cmp13 = icmp eq i32 %13, %conv
  %cond = select i1 %cmp13, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false.7
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %res, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %15 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.11
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_iter(%struct.PyDictObject* %dict) #0 {
entry:
  %dict.addr = alloca %struct.PyDictObject*, align 8
  store %struct.PyDictObject* %dict, %struct.PyDictObject** %dict.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %dict.addr, align 8
  %call = call %struct._object* @dictiter_new(%struct.PyDictObject* %0, %struct._typeobject* @PyDictIterKey_Type)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @dict_update_common(%struct._object* %0, %struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  ret i32 %call
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %d = alloca %struct.PyDictObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  store %struct._object* %call, %struct._object** %self, align 8
  %3 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyDictObject*
  store %struct.PyDictObject* %5, %struct.PyDictObject** %d, align 8
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, @PyDict_Type
  br i1 %cmp1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %8 = bitcast %struct.PyDictObject* %7 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %8, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %10 = load i64, i64* %gc_refs, align 8
  %and = and i64 %10, 1
  %or = or i64 %and, -4
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs5 = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 2
  store i64 %or, i64* %gc_refs5, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.3
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  %13 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 1
  %15 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc8 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 0
  store %union._gc_head* %13, %union._gc_head** %gc_next9, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_prev11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  %17 = load %union._gc_head*, %union._gc_head** %gc_prev11, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_next13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  %19 = load %union._gc_head*, %union._gc_head** %gc_next13, align 8
  %gc14 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  store %union._gc_head* %17, %union._gc_head** %gc_prev15, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_next17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next17, align 8
  br label %do.end.18

do.end.18:                                        ; preds = %do.end
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %if.end
  %21 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %21, i32 0, i32 1
  store i64 0, i64* %ma_used, align 8
  %call20 = call %struct._dictkeysobject* @new_keys_object(i64 8)
  %22 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %22, i32 0, i32 2
  store %struct._dictkeysobject* %call20, %struct._dictkeysobject** %ma_keys, align 8
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys21 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %23, i32 0, i32 2
  %24 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys21, align 8
  %cmp22 = icmp eq %struct._dictkeysobject* %24, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.19
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %25 = load %struct._object*, %struct._object** %self, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.27

if.else:                                          ; preds = %do.body.24
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.19
  %32 = load %struct._object*, %struct._object** %self, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %do.end.28, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyDict_GetItemId(%struct._object* %dp, %struct._Py_Identifier* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dp.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %kv = alloca %struct._object*, align 8
  store %struct._object* %dp, %struct._object** %dp.addr, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %dp.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDict_GetItemString(%struct._object* %v, i8* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %kv = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %rv, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %kv, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyDict_SetItemId(%struct._object* %v, %struct._Py_Identifier* %key, %struct._object* %item) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %item.addr = alloca %struct._object*, align 8
  %kv = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %4 = load %struct._object*, %struct._object** %item.addr, align 8
  %call1 = call i32 @PyDict_SetItem(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_SetItemString(%struct._object* %v, i8* %key, %struct._object* %item) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %item.addr = alloca %struct._object*, align 8
  %kv = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @PyUnicode_InternInPlace(%struct._object** %kv)
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %4 = load %struct._object*, %struct._object** %item.addr, align 8
  %call1 = call i32 @PyDict_SetItem(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store i32 %call1, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %kv, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %err, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @PyUnicode_InternInPlace(%struct._object**) #1

; Function Attrs: nounwind uwtable
define i32 @_PyDict_DelItemId(%struct._object* %v, %struct._Py_Identifier* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %kv = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %call1 = call i32 @PyDict_DelItem(%struct._object* %2, %struct._object* %3)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @PyDict_DelItemString(%struct._object* %v, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %key.addr = alloca i8*, align 8
  %kv = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %kv, align 8
  %1 = load %struct._object*, %struct._object** %kv, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %kv, align 8
  %call1 = call i32 @PyDict_DelItem(%struct._object* %2, %struct._object* %3)
  store i32 %call1, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %kv, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load i32, i32* %err, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @dictiter_dealloc(%struct.dictiterobject* %di) #0 {
entry:
  %di.addr = alloca %struct.dictiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  %2 = bitcast %struct.PyDictObject* %1 to %struct._object*
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
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %11 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_result = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %di_result, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp7, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp11, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %16, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %19(%struct._object* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %21 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %22 = bitcast %struct.dictiterobject* %21 to i8*
  call void @PyObject_GC_Del(i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dictiter_traverse(%struct.dictiterobject* %di, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %di.addr = alloca %struct.dictiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  %tobool = icmp ne %struct.PyDictObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict1 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %3, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict1, align 8
  %5 = bitcast %struct.PyDictObject* %4 to %struct._object*
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_result = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %9, i32 0, i32 4
  %10 = load %struct._object*, %struct._object** %di_result, align 8
  %tobool6 = icmp ne %struct._object* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_result9 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %di_result9, align 8
  %14 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %11(%struct._object* %13, i8* %14)
  store i32 %call10, i32* %vret8, align 4
  %15 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %16 = load i32, i32* %vret8, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_iternextkey(%struct.dictiterobject* %di) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %di.addr = alloca %struct.dictiterobject*, align 8
  %key = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  %offset = alloca i64, align 8
  %k = alloca %struct._dictkeysobject*, align 8
  %d = alloca %struct.PyDictObject*, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  store %struct.PyDictObject* %1, %struct.PyDictObject** %d, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %cmp = icmp eq %struct.PyDictObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %3, i32 0, i32 2
  %4 = load i64, i64* %di_used, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used, align 8
  %cmp1 = icmp ne i64 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0))
  %8 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used3 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %8, i32 0, i32 2
  store i64 -1, i64* %di_used3, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %9, i32 0, i32 3
  %10 = load i64, i64* %di_pos, align 8
  store i64 %10, i64* %i, align 8
  %11 = load i64, i64* %i, align 8
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %fail

if.end.7:                                         ; preds = %if.end.4
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 2
  %13 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  store %struct._dictkeysobject* %13, %struct._dictkeysobject** %k, align 8
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 3
  %15 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %15, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %17, i32 0, i32 3
  %18 = load %struct._object**, %struct._object*** %ma_values9, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %18, i64 %16
  store %struct._object** %arrayidx, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %19 = load i64, i64* %i, align 8
  %20 = load %struct._dictkeysobject*, %struct._dictkeysobject** %k, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %20, i32 0, i32 4
  %arrayidx10 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %19
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx10, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %21 = load %struct._dictkeysobject*, %struct._dictkeysobject** %k, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %21, i32 0, i32 1
  %22 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %22, 1
  store i64 %sub, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.11
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %mask, align 8
  %cmp12 = icmp sle i64 %23, %24
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %26 = load %struct._object*, %struct._object** %25, align 8
  %cmp13 = icmp eq %struct._object* %26, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %29 = bitcast %struct._object** %28 to i8*
  %30 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %30
  %31 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %31, %struct._object*** %value_ptr, align 8
  %32 = load i64, i64* %i, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load i64, i64* %i, align 8
  %add = add i64 %33, 1
  %34 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos14 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %34, i32 0, i32 3
  store i64 %add, i64* %di_pos14, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %mask, align 8
  %cmp15 = icmp sgt i64 %35, %36
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.end
  br label %fail

if.end.17:                                        ; preds = %while.end
  %37 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %len = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %37, i32 0, i32 5
  %38 = load i64, i64* %len, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %len, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._dictkeysobject*, %struct._dictkeysobject** %k, align 8
  %dk_entries18 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %40, i32 0, i32 4
  %arrayidx19 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries18, i32 0, i64 %39
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx19, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %41, %struct._object** %key, align 8
  %42 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %inc20 = add i64 %43, 1
  store i64 %inc20, i64* %ob_refcnt, align 8
  %44 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.16, %if.then.6
  br label %do.body

do.body:                                          ; preds = %fail
  %45 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %46 = bitcast %struct.PyDictObject* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %48, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else.25:                                       ; preds = %do.body
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %51(%struct._object* %52)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %53 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict27 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %53, i32 0, i32 1
  store %struct.PyDictObject* null, %struct.PyDictObject** %di_dict27, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.17, %if.then.2, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_iternextvalue(%struct.dictiterobject* %di) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %di.addr = alloca %struct.dictiterobject*, align 8
  %value = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  %offset = alloca i64, align 8
  %d = alloca %struct.PyDictObject*, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  store %struct.PyDictObject* %1, %struct.PyDictObject** %d, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %cmp = icmp eq %struct.PyDictObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %3, i32 0, i32 2
  %4 = load i64, i64* %di_used, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used, align 8
  %cmp1 = icmp ne i64 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0))
  %8 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used3 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %8, i32 0, i32 2
  store i64 -1, i64* %di_used3, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %9, i32 0, i32 3
  %10 = load i64, i64* %di_pos, align 8
  store i64 %10, i64* %i, align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %12, i32 0, i32 1
  %13 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %13, 1
  store i64 %sub, i64* %mask, align 8
  %14 = load i64, i64* %i, align 8
  %cmp5 = icmp slt i64 %14, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %mask, align 8
  %cmp6 = icmp sgt i64 %15, %16
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  br label %fail

if.end.8:                                         ; preds = %lor.lhs.false
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %17, i32 0, i32 3
  %18 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %18, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.8
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values10 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %20, i32 0, i32 3
  %21 = load %struct._object**, %struct._object*** %ma_values10, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 %19
  store %struct._object** %arrayidx, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.8
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys11 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %23, i32 0, i32 2
  %24 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys11, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %24, i32 0, i32 4
  %arrayidx12 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %22
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx12, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end.13
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %mask, align 8
  %cmp14 = icmp sle i64 %25, %26
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %28 = load %struct._object*, %struct._object** %27, align 8
  %cmp15 = icmp eq %struct._object* %28, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %31 = bitcast %struct._object** %30 to i8*
  %32 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %33, %struct._object*** %value_ptr, align 8
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %mask, align 8
  %cmp16 = icmp sgt i64 %35, %36
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  br label %fail

if.end.18:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load i64, i64* %i, align 8
  %add = add i64 %37, 1
  %38 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos19 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %38, i32 0, i32 3
  store i64 %add, i64* %di_pos19, align 8
  %39 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %len = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %39, i32 0, i32 5
  %40 = load i64, i64* %len, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %len, align 8
  %41 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %42 = load %struct._object*, %struct._object** %41, align 8
  store %struct._object* %42, %struct._object** %value, align 8
  %43 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt, align 8
  %inc20 = add i64 %44, 1
  store i64 %inc20, i64* %ob_refcnt, align 8
  %45 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.17, %if.then.7
  br label %do.body

do.body:                                          ; preds = %fail
  %46 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %47 = bitcast %struct.PyDictObject* %46 to %struct._object*
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %49, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else.25:                                       ; preds = %do.body
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %52(%struct._object* %53)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %54 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict27 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %54, i32 0, i32 1
  store %struct.PyDictObject* null, %struct.PyDictObject** %di_dict27, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %while.end, %if.then.2, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_iternextitem(%struct.dictiterobject* %di) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %di.addr = alloca %struct.dictiterobject*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  %offset = alloca i64, align 8
  %d = alloca %struct.PyDictObject*, align 8
  %value_ptr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_result = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %di_result, align 8
  store %struct._object* %1, %struct._object** %result, align 8
  %2 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %2, i32 0, i32 1
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  store %struct.PyDictObject* %3, %struct.PyDictObject** %d, align 8
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %cmp = icmp eq %struct.PyDictObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %5, i32 0, i32 2
  %6 = load i64, i64* %di_used, align 8
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ma_used, align 8
  %cmp1 = icmp ne i64 %6, %8
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0))
  %10 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used3 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %10, i32 0, i32 2
  store i64 -1, i64* %di_used3, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %11, i32 0, i32 3
  %12 = load i64, i64* %di_pos, align 8
  store i64 %12, i64* %i, align 8
  %13 = load i64, i64* %i, align 8
  %cmp5 = icmp slt i64 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %fail

if.end.7:                                         ; preds = %if.end.4
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 2
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 1
  %16 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %16, 1
  store i64 %sub, i64* %mask, align 8
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %17, i32 0, i32 3
  %18 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %18, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_values9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %20, i32 0, i32 3
  %21 = load %struct._object**, %struct._object*** %ma_values9, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 %19
  store %struct._object** %arrayidx, %struct._object*** %value_ptr, align 8
  store i64 8, i64* %offset, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.7
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys10 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %23, i32 0, i32 2
  %24 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys10, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %24, i32 0, i32 4
  %arrayidx11 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %22
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx11, i32 0, i32 2
  store %struct._object** %me_value, %struct._object*** %value_ptr, align 8
  store i64 24, i64* %offset, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %mask, align 8
  %cmp13 = icmp sle i64 %25, %26
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %28 = load %struct._object*, %struct._object** %27, align 8
  %cmp14 = icmp eq %struct._object* %28, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %31 = bitcast %struct._object** %30 to i8*
  %32 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %33, %struct._object*** %value_ptr, align 8
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i64, i64* %i, align 8
  %add = add i64 %35, 1
  %36 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_pos15 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %36, i32 0, i32 3
  store i64 %add, i64* %di_pos15, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %mask, align 8
  %cmp16 = icmp sgt i64 %37, %38
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  br label %fail

if.end.18:                                        ; preds = %while.end
  %39 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %cmp19 = icmp eq i64 %40, 1
  br i1 %cmp19, label %if.then.20, label %if.else.42

if.then.20:                                       ; preds = %if.end.18
  %41 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %42, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %43 = load %struct._object*, %struct._object** %result, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %45 = load %struct._object*, %struct._object** %arrayidx23, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt24, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ob_refcnt24, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body
  br label %if.end.28

if.else.27:                                       ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %do.body.29

do.body.29:                                       ; preds = %do.end
  %52 = load %struct._object*, %struct._object** %result, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyTupleObject*
  %ob_item31 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %53, i32 0, i32 1
  %arrayidx32 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item31, i32 0, i64 1
  %54 = load %struct._object*, %struct._object** %arrayidx32, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp30, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %56, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.29
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.29
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %59(%struct._object* %60)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.46

if.else.42:                                       ; preds = %if.end.18
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %result, align 8
  %61 = load %struct._object*, %struct._object** %result, align 8
  %cmp43 = icmp eq %struct._object* %61, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.else.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %do.end.41
  %62 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %len = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %62, i32 0, i32 5
  %63 = load i64, i64* %len, align 8
  %dec47 = add i64 %63, -1
  store i64 %dec47, i64* %len, align 8
  %64 = load i64, i64* %i, align 8
  %65 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %ma_keys48 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %65, i32 0, i32 2
  %66 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys48, align 8
  %dk_entries49 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %66, i32 0, i32 4
  %arrayidx50 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries49, i32 0, i64 %64
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx50, i32 0, i32 1
  %67 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %67, %struct._object** %key, align 8
  %68 = load %struct._object**, %struct._object*** %value_ptr, align 8
  %69 = load %struct._object*, %struct._object** %68, align 8
  store %struct._object* %69, %struct._object** %value, align 8
  %70 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt51, align 8
  %inc52 = add i64 %71, 1
  store i64 %inc52, i64* %ob_refcnt51, align 8
  %72 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt53, align 8
  %inc54 = add i64 %73, 1
  store i64 %inc54, i64* %ob_refcnt53, align 8
  %74 = load %struct._object*, %struct._object** %key, align 8
  %75 = load %struct._object*, %struct._object** %result, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyTupleObject*
  %ob_item55 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %76, i32 0, i32 1
  %arrayidx56 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item55, i32 0, i64 0
  store %struct._object* %74, %struct._object** %arrayidx56, align 8
  %77 = load %struct._object*, %struct._object** %value, align 8
  %78 = load %struct._object*, %struct._object** %result, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyTupleObject*
  %ob_item57 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %79, i32 0, i32 1
  %arrayidx58 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item57, i32 0, i64 1
  store %struct._object* %77, %struct._object** %arrayidx58, align 8
  %80 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %80, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.17, %if.then.6
  br label %do.body.59

do.body.59:                                       ; preds = %fail
  %81 = load %struct.PyDictObject*, %struct.PyDictObject** %d, align 8
  %82 = bitcast %struct.PyDictObject* %81 to %struct._object*
  store %struct._object* %82, %struct._object** %_py_decref_tmp60, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %84, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %87(%struct._object* %88)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %89 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict70 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %89, i32 0, i32 1
  store %struct.PyDictObject* null, %struct.PyDictObject** %di_dict70, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.69, %if.end.46, %if.then.44, %if.then.2, %if.then
  %90 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %90
}

; Function Attrs: nounwind uwtable
define internal void @dictview_dealloc(%struct.dictviewobject* %dv) #0 {
entry:
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %2 = bitcast %struct.PyDictObject* %1 to %struct._object*
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
  %11 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %12 = bitcast %struct.dictviewobject* %11 to i8*
  call void @PyObject_GC_Del(i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictview_repr(%struct.dictviewobject* %dv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %seq = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %1 = bitcast %struct.dictviewobject* %0 to %struct._object*
  %call = call %struct._object* @PySequence_List(%struct._object* %1)
  store %struct._object* %call, %struct._object** %seq, align 8
  %2 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %4 = bitcast %struct.dictviewobject* %3 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %7 = load %struct._object*, %struct._object** %seq, align 8
  %call1 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* %6, %struct._object* %7)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @dictview_traverse(%struct.dictviewobject* %dv, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %tobool = icmp ne %struct.PyDictObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %3, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %5 = bitcast %struct.PyDictObject* %4 to %struct._object*
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

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictview_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %len_self = alloca i64, align 8
  %len_other = alloca i64, align 8
  %ok = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.5
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %9, @PyDictKeys_Type
  br i1 %cmp10, label %if.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %11, @PyDictItems_Type
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.11
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11, %land.lhs.true, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %call14 = call i64 @PyObject_Size(%struct._object* %13)
  store i64 %call14, i64* %len_self, align 8
  %14 = load i64, i64* %len_self, align 8
  %cmp15 = icmp slt i64 %14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %other.addr, align 8
  %call18 = call i64 @PyObject_Size(%struct._object* %15)
  store i64 %call18, i64* %len_other, align 8
  %16 = load i64, i64* %len_other, align 8
  %cmp19 = icmp slt i64 %16, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  store i32 0, i32* %ok, align 4
  %17 = load i32, i32* %op.addr, align 4
  switch i32 %17, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb.32
    i32 1, label %sw.bb.37
    i32 4, label %sw.bb.42
    i32 5, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.end.21, %if.end.21
  %18 = load i64, i64* %len_self, align 8
  %19 = load i64, i64* %len_other, align 8
  %cmp22 = icmp eq i64 %18, %19
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb
  %20 = load %struct._object*, %struct._object** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %other.addr, align 8
  %call24 = call i32 @all_contained_in(%struct._object* %20, %struct._object* %21)
  store i32 %call24, i32* %ok, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.bb
  %22 = load i32, i32* %op.addr, align 4
  %cmp26 = icmp eq i32 %22, 3
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.25
  %23 = load i32, i32* %ok, align 4
  %cmp28 = icmp sge i32 %23, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true.27
  %24 = load i32, i32* %ok, align 4
  %tobool30 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ok, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.end.25
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.21
  %25 = load i64, i64* %len_self, align 8
  %26 = load i64, i64* %len_other, align 8
  %cmp33 = icmp slt i64 %25, %26
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %sw.bb.32
  %27 = load %struct._object*, %struct._object** %self.addr, align 8
  %28 = load %struct._object*, %struct._object** %other.addr, align 8
  %call35 = call i32 @all_contained_in(%struct._object* %27, %struct._object* %28)
  store i32 %call35, i32* %ok, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %sw.bb.32
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.21
  %29 = load i64, i64* %len_self, align 8
  %30 = load i64, i64* %len_other, align 8
  %cmp38 = icmp sle i64 %29, %30
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.bb.37
  %31 = load %struct._object*, %struct._object** %self.addr, align 8
  %32 = load %struct._object*, %struct._object** %other.addr, align 8
  %call40 = call i32 @all_contained_in(%struct._object* %31, %struct._object* %32)
  store i32 %call40, i32* %ok, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %sw.bb.37
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.21
  %33 = load i64, i64* %len_self, align 8
  %34 = load i64, i64* %len_other, align 8
  %cmp43 = icmp sgt i64 %33, %34
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %sw.bb.42
  %35 = load %struct._object*, %struct._object** %other.addr, align 8
  %36 = load %struct._object*, %struct._object** %self.addr, align 8
  %call45 = call i32 @all_contained_in(%struct._object* %35, %struct._object* %36)
  store i32 %call45, i32* %ok, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %sw.bb.42
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.21
  %37 = load i64, i64* %len_self, align 8
  %38 = load i64, i64* %len_other, align 8
  %cmp48 = icmp sge i64 %37, %38
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %sw.bb.47
  %39 = load %struct._object*, %struct._object** %other.addr, align 8
  %40 = load %struct._object*, %struct._object** %self.addr, align 8
  %call50 = call i32 @all_contained_in(%struct._object* %39, %struct._object* %40)
  store i32 %call50, i32* %ok, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %sw.bb.47
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.21, %if.end.51, %if.end.46, %if.end.41, %if.end.36, %if.end.31
  %41 = load i32, i32* %ok, align 4
  %cmp52 = icmp slt i32 %41, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %sw.epilog
  %42 = load i32, i32* %ok, align 4
  %tobool55 = icmp ne i32 %42, 0
  %cond = select i1 %tobool55, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %result, align 8
  %43 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt, align 8
  %inc56 = add i64 %44, 1
  store i64 %inc56, i64* %ob_refcnt, align 8
  %45 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.53, %if.then.20, %if.then.16, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictkeys_iter(%struct.dictviewobject* %dv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dv.addr = alloca %struct.dictviewobject*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp eq %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %3, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %call = call %struct._object* @dictiter_new(%struct.PyDictObject* %4, %struct._typeobject* @PyDictIterKey_Type)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictitems_iter(%struct.dictviewobject* %dv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dv.addr = alloca %struct.dictviewobject*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp eq %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %3, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %call = call %struct._object* @dictiter_new(%struct.PyDictObject* %4, %struct._typeobject* @PyDictIterItem_Type)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictvalues_iter(%struct.dictviewobject* %dv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dv.addr = alloca %struct.dictviewobject*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp eq %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %3, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %call = call %struct._object* @dictiter_new(%struct.PyDictObject* %4, %struct._typeobject* @PyDictIterValue_Type)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define %struct._dictkeysobject* @_PyDict_NewKeysForClass() #0 {
entry:
  %keys = alloca %struct._dictkeysobject*, align 8
  %call = call %struct._dictkeysobject* @new_keys_object(i64 4)
  store %struct._dictkeysobject* %call, %struct._dictkeysobject** %keys, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %cmp = icmp eq %struct._dictkeysobject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_split, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys, align 8
  ret %struct._dictkeysobject* %2
}

; Function Attrs: nounwind uwtable
define internal %struct.PyDictKeyEntry* @lookdict_split(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object*** %value_addr) #0 {
entry:
  %retval = alloca %struct.PyDictKeyEntry*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value_addr.addr = alloca %struct._object***, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object*** %value_addr, %struct._object**** %value_addr.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %2, 1
  store i64 %sub, i64* %mask, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 2
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %9 = load i64, i64* %hash.addr, align 8
  %10 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  %call = call %struct.PyDictKeyEntry* @lookdict(%struct.PyDictObject* %7, %struct._object* %8, i64 %9, %struct._object*** %10)
  store %struct.PyDictKeyEntry* %call, %struct.PyDictKeyEntry** %ep, align 8
  %11 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %12 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.PyDictKeyEntry* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.PyDictKeyEntry* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  store i64 %sub.ptr.div, i64* %i, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 3
  %15 = load %struct._object**, %struct._object*** %ma_values, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %15, i64 %13
  %16 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %arrayidx2, %struct._object*** %16, align 8
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %17, %struct.PyDictKeyEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i64, i64* %hash.addr, align 8
  %19 = load i64, i64* %mask, align 8
  %and = and i64 %18, %19
  store i64 %and, i64* %i, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx3 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %21, i64 %20
  store %struct.PyDictKeyEntry* %arrayidx3, %struct.PyDictKeyEntry** %ep, align 8
  %22 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp4 = icmp eq %struct._object* %23, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key5 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %me_key5, align 8
  %26 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp6 = icmp eq %struct._object* %25, %26
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %27 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %27, i32 0, i32 0
  %28 = load i64, i64* %me_hash, align 8
  %29 = load i64, i64* %hash.addr, align 8
  %cmp8 = icmp eq i64 %28, %29
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %30 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key9 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %30, i32 0, i32 1
  %31 = load %struct._object*, %struct._object** %me_key9, align 8
  %32 = load %struct._object*, %struct._object** %key.addr, align 8
  %call10 = call i32 @unicode_eq(%struct._object* %31, %struct._object* %32)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values12 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %34, i32 0, i32 3
  %35 = load %struct._object**, %struct._object*** %ma_values12, align 8
  %arrayidx13 = getelementptr %struct._object*, %struct._object** %35, i64 %33
  %36 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %arrayidx13, %struct._object*** %36, align 8
  %37 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %37, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %lor.lhs.false.7
  %38 = load i64, i64* %hash.addr, align 8
  store i64 %38, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %39 = load i64, i64* %i, align 8
  %shl = shl i64 %39, 2
  %40 = load i64, i64* %i, align 8
  %add = add i64 %shl, %40
  %41 = load i64, i64* %perturb, align 8
  %add15 = add i64 %add, %41
  %add16 = add i64 %add15, 1
  store i64 %add16, i64* %i, align 8
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %mask, align 8
  %and17 = and i64 %42, %43
  %44 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx18 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %44, i64 %and17
  store %struct.PyDictKeyEntry* %arrayidx18, %struct.PyDictKeyEntry** %ep, align 8
  %45 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key19 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %45, i32 0, i32 1
  %46 = load %struct._object*, %struct._object** %me_key19, align 8
  %cmp20 = icmp eq %struct._object* %46, null
  br i1 %cmp20, label %if.then.31, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %for.cond
  %47 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key22 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %47, i32 0, i32 1
  %48 = load %struct._object*, %struct._object** %me_key22, align 8
  %49 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp23 = icmp eq %struct._object* %48, %49
  br i1 %cmp23, label %if.then.31, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %50 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash25 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %50, i32 0, i32 0
  %51 = load i64, i64* %me_hash25, align 8
  %52 = load i64, i64* %hash.addr, align 8
  %cmp26 = icmp eq i64 %51, %52
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %lor.lhs.false.24
  %53 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key28 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %me_key28, align 8
  %55 = load %struct._object*, %struct._object** %key.addr, align 8
  %call29 = call i32 @unicode_eq(%struct._object* %54, %struct._object* %55)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true.27, %lor.lhs.false.21, %for.cond
  %56 = load i64, i64* %i, align 8
  %57 = load i64, i64* %mask, align 8
  %and32 = and i64 %56, %57
  %58 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values33 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %58, i32 0, i32 3
  %59 = load %struct._object**, %struct._object*** %ma_values33, align 8
  %arrayidx34 = getelementptr %struct._object*, %struct._object** %59, i64 %and32
  %60 = load %struct._object***, %struct._object**** %value_addr.addr, align 8
  store %struct._object** %arrayidx34, %struct._object*** %60, align 8
  %61 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  store %struct.PyDictKeyEntry* %61, %struct.PyDictKeyEntry** %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.27, %lor.lhs.false.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %62 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %62, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

return:                                           ; preds = %if.then.31, %if.then.11, %if.then
  %63 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %retval
  ret %struct.PyDictKeyEntry* %63
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GenericGetDict(%struct._object* %obj, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %dict = alloca %struct._object*, align 8
  %dictptr = alloca %struct._object**, align 8
  %tp = alloca %struct._typeobject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object** @_PyObject_GetDictPtr(%struct._object* %0)
  store %struct._object** %call, %struct._object*** %dictptr, align 8
  %1 = load %struct._object**, %struct._object*** %dictptr, align 8
  %cmp = icmp eq %struct._object** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object**, %struct._object*** %dictptr, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  store %struct._object* %4, %struct._object** %dict, align 8
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %7, %struct._typeobject** %tp, align 8
  %8 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 512
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %10 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %11 = bitcast %struct._typeobject* %10 to %struct._heaptypeobject*
  %ht_cached_keys = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %11, i32 0, i32 8
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ht_cached_keys, align 8
  %tobool3 = icmp ne %struct._dictkeysobject* %12, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %13 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %14 = bitcast %struct._typeobject* %13 to %struct._heaptypeobject*
  %ht_cached_keys5 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %14, i32 0, i32 8
  %15 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ht_cached_keys5, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %15, i32 0, i32 0
  %16 = load i64, i64* %dk_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %dk_refcnt, align 8
  %17 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %18 = bitcast %struct._typeobject* %17 to %struct._heaptypeobject*
  %ht_cached_keys6 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %18, i32 0, i32 8
  %19 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ht_cached_keys6, align 8
  %call7 = call %struct._object* @new_dict_with_shared_keys(%struct._dictkeysobject* %19)
  store %struct._object* %call7, %struct._object** %dict, align 8
  %20 = load %struct._object**, %struct._object*** %dictptr, align 8
  store %struct._object* %call7, %struct._object** %20, align 8
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.then.2
  %call8 = call %struct._object* @PyDict_New()
  store %struct._object* %call8, %struct._object** %dict, align 8
  %21 = load %struct._object**, %struct._object*** %dictptr, align 8
  store %struct._object* %call8, %struct._object** %21, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %22 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %22, %struct._object** %_py_xincref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %23, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %inc13 = add i64 %25, 1
  store i64 %inc13, i64* %ob_refcnt, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %26 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare %struct._object** @_PyObject_GetDictPtr(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @new_dict_with_shared_keys(%struct._dictkeysobject* %keys) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %keys.addr = alloca %struct._dictkeysobject*, align 8
  %values = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct._dictkeysobject* %keys, %struct._dictkeysobject** %keys.addr, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %0, i32 0, i32 1
  %1 = load i64, i64* %dk_size, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %2, 1152921504606846975
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %size, align 8
  %mul = mul i64 %3, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %4 = bitcast i8* %call to %struct._object**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object** [ null, %cond.true ], [ %4, %cond.false ]
  store %struct._object** %cond, %struct._object*** %values, align 8
  %5 = load %struct._object**, %struct._object*** %values, align 8
  %cmp1 = icmp eq %struct._object** %5, null
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %cond.end
  %6 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %6, i32 0, i32 0
  %7 = load i64, i64* %dk_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %dk_refcnt, align 8
  %cmp2 = icmp eq i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  call void @free_keys_object(%struct._dictkeysobject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %size, align 8
  %cmp6 = icmp slt i64 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object**, %struct._object*** %values, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %12, i64 %11
  store %struct._object* null, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %15 = load %struct._object**, %struct._object*** %values, align 8
  %call7 = call %struct._object* @new_dict(%struct._dictkeysobject* %14, %struct._object** %15)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define i32 @_PyObjectDict_SetItem(%struct._typeobject* %tp, %struct._object** %dictptr, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %tp.addr = alloca %struct._typeobject*, align 8
  %dictptr.addr = alloca %struct._object**, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %cached = alloca %struct._dictkeysobject*, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  store %struct._object** %dictptr, %struct._object*** %dictptr.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 19
  %1 = load i64, i64* %tp_flags, align 8
  %and = and i64 %1, 512
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %3 = bitcast %struct._typeobject* %2 to %struct._heaptypeobject*
  %ht_cached_keys = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %3, i32 0, i32 8
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ht_cached_keys, align 8
  store %struct._dictkeysobject* %4, %struct._dictkeysobject** %cached, align 8
  %tobool1 = icmp ne %struct._dictkeysobject* %4, null
  br i1 %tobool1, label %if.then, label %if.else.43

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._object**, %struct._object*** %dictptr.addr, align 8
  %6 = load %struct._object*, %struct._object** %5, align 8
  store %struct._object* %6, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 0
  %9 = load i64, i64* %dk_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %dk_refcnt, align 8
  %10 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %call = call %struct._object* @new_dict_with_shared_keys(%struct._dictkeysobject* %10)
  store %struct._object* %call, %struct._object** %dict, align 8
  %11 = load %struct._object*, %struct._object** %dict, align 8
  %cmp3 = icmp eq %struct._object* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %12 = load %struct._object*, %struct._object** %dict, align 8
  %13 = load %struct._object**, %struct._object*** %dictptr.addr, align 8
  store %struct._object* %12, %struct._object** %13, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp6 = icmp eq %struct._object* %14, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %call8 = call i32 @PyDict_DelItem(%struct._object* %15, %struct._object* %16)
  store i32 %call8, i32* %res, align 4
  %17 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %18 = load %struct._object*, %struct._object** %dict, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyDictObject*
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %19, i32 0, i32 2
  %20 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %cmp9 = icmp ne %struct._dictkeysobject* %17, %20
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.then.7
  %21 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %22 = bitcast %struct._typeobject* %21 to %struct._heaptypeobject*
  %ht_cached_keys11 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %22, i32 0, i32 8
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %ht_cached_keys11, align 8
  %23 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %dk_refcnt12 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %23, i32 0, i32 0
  %24 = load i64, i64* %dk_refcnt12, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %dk_refcnt12, align 8
  %cmp13 = icmp eq i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %25 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  call void @free_keys_object(%struct._dictkeysobject* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.7
  br label %if.end.42

if.else:                                          ; preds = %if.end.5
  %26 = load %struct._object*, %struct._object** %dict, align 8
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %28 = load %struct._object*, %struct._object** %value.addr, align 8
  %call17 = call i32 @PyDict_SetItem(%struct._object* %26, %struct._object* %27, %struct._object* %28)
  store i32 %call17, i32* %res, align 4
  %29 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %30 = load %struct._object*, %struct._object** %dict, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyDictObject*
  %ma_keys18 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %31, i32 0, i32 2
  %32 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys18, align 8
  %cmp19 = icmp ne %struct._dictkeysobject* %29, %32
  br i1 %cmp19, label %if.then.20, label %if.end.41

if.then.20:                                       ; preds = %if.else
  %33 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %dk_refcnt21 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %33, i32 0, i32 0
  %34 = load i64, i64* %dk_refcnt21, align 8
  %cmp22 = icmp eq i64 %34, 1
  br i1 %cmp22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.then.20
  %35 = load %struct._object*, %struct._object** %dict, align 8
  %call24 = call %struct._dictkeysobject* @make_keys_shared(%struct._object* %35)
  %36 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %37 = bitcast %struct._typeobject* %36 to %struct._heaptypeobject*
  %ht_cached_keys25 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %37, i32 0, i32 8
  store %struct._dictkeysobject* %call24, %struct._dictkeysobject** %ht_cached_keys25, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %if.then.20
  %38 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %39 = bitcast %struct._typeobject* %38 to %struct._heaptypeobject*
  %ht_cached_keys27 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %39, i32 0, i32 8
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %ht_cached_keys27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.23
  %40 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  %dk_refcnt29 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %40, i32 0, i32 0
  %41 = load i64, i64* %dk_refcnt29, align 8
  %dec30 = add i64 %41, -1
  store i64 %dec30, i64* %dk_refcnt29, align 8
  %cmp31 = icmp eq i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %42 = load %struct._dictkeysobject*, %struct._dictkeysobject** %cached, align 8
  call void @free_keys_object(%struct._dictkeysobject* %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %43 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %44 = bitcast %struct._typeobject* %43 to %struct._heaptypeobject*
  %ht_cached_keys34 = getelementptr inbounds %struct._heaptypeobject, %struct._heaptypeobject* %44, i32 0, i32 8
  %45 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ht_cached_keys34, align 8
  %cmp35 = icmp eq %struct._dictkeysobject* %45, null
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.40

land.lhs.true.36:                                 ; preds = %if.end.33
  %call37 = call %struct._object* @PyErr_Occurred()
  %tobool38 = icmp ne %struct._object* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.36
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.36, %if.end.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.16
  br label %if.end.57

if.else.43:                                       ; preds = %land.lhs.true, %entry
  %46 = load %struct._object**, %struct._object*** %dictptr.addr, align 8
  %47 = load %struct._object*, %struct._object** %46, align 8
  store %struct._object* %47, %struct._object** %dict, align 8
  %48 = load %struct._object*, %struct._object** %dict, align 8
  %cmp44 = icmp eq %struct._object* %48, null
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.else.43
  %call46 = call %struct._object* @PyDict_New()
  store %struct._object* %call46, %struct._object** %dict, align 8
  %49 = load %struct._object*, %struct._object** %dict, align 8
  %cmp47 = icmp eq %struct._object* %49, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.45
  %50 = load %struct._object*, %struct._object** %dict, align 8
  %51 = load %struct._object**, %struct._object*** %dictptr.addr, align 8
  store %struct._object* %50, %struct._object** %51, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.else.43
  %52 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp51 = icmp eq %struct._object* %52, null
  br i1 %cmp51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.end.50
  %53 = load %struct._object*, %struct._object** %dict, align 8
  %54 = load %struct._object*, %struct._object** %key.addr, align 8
  %call53 = call i32 @PyDict_DelItem(%struct._object* %53, %struct._object* %54)
  store i32 %call53, i32* %res, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %if.end.50
  %55 = load %struct._object*, %struct._object** %dict, align 8
  %56 = load %struct._object*, %struct._object** %key.addr, align 8
  %57 = load %struct._object*, %struct._object** %value.addr, align 8
  %call55 = call i32 @PyDict_SetItem(%struct._object* %55, %struct._object* %56, %struct._object* %57)
  store i32 %call55, i32* %res, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.42
  %58 = load i32, i32* %res, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.48, %if.then.39, %if.then.4
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal %struct._dictkeysobject* @make_keys_shared(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._dictkeysobject*, align 8
  %op.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %values = alloca %struct._object**, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDictObject*
  store %struct.PyDictObject* %1, %struct.PyDictObject** %mp, align 8
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %3, @PyDict_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %4, i32 0, i32 3
  %5 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp1 = icmp ne %struct._object** %5, null
  br i1 %cmp1, label %if.end.30, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 2
  %7 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %7, i32 0, i32 2
  %8 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %cmp3 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %8, @lookdict
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %9, i32 0, i32 2
  %10 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys5, align 8
  %dk_lookup6 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %10, i32 0, i32 2
  %11 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup6, align 8
  %cmp7 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %11, @lookdict_unicode
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.else
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %13 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %13, i32 0, i32 2
  %14 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys9, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %14, i32 0, i32 1
  %15 = load i64, i64* %dk_size, align 8
  %call = call i32 @dictresize(%struct.PyDictObject* %12, i64 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %16 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys14 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %16, i32 0, i32 2
  %17 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys14, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %17, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %18 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys15 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %18, i32 0, i32 2
  %19 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys15, align 8
  %dk_size16 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %19, i32 0, i32 1
  %20 = load i64, i64* %dk_size16, align 8
  store i64 %20, i64* %size, align 8
  %21 = load i64, i64* %size, align 8
  %cmp17 = icmp ugt i64 %21, 1152921504606846975
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %22 = load i64, i64* %size, align 8
  %mul = mul i64 %22, 8
  %call18 = call i8* @PyMem_Malloc(i64 %mul)
  %23 = bitcast i8* %call18 to %struct._object**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object** [ null, %cond.true ], [ %23, %cond.false ]
  store %struct._object** %cond, %struct._object*** %values, align 8
  %24 = load %struct._object**, %struct._object*** %values, align 8
  %cmp19 = icmp eq %struct._object** %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  %25 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.46, i32 0, i32 0))
  store %struct._dictkeysobject* null, %struct._dictkeysobject** %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %size, align 8
  %cmp22 = icmp slt i64 %26, %27
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx23 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %29, i64 %28
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx23, i32 0, i32 2
  %30 = load %struct._object*, %struct._object** %me_value, align 8
  %31 = load i64, i64* %i, align 8
  %32 = load %struct._object**, %struct._object*** %values, align 8
  %arrayidx24 = getelementptr %struct._object*, %struct._object** %32, i64 %31
  store %struct._object* %30, %struct._object** %arrayidx24, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx25 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %34, i64 %33
  %me_value26 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx25, i32 0, i32 2
  store %struct._object* null, %struct._object** %me_value26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys27 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %36, i32 0, i32 2
  %37 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys27, align 8
  %dk_lookup28 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %37, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_split, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup28, align 8
  %38 = load %struct._object**, %struct._object*** %values, align 8
  %39 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_values29 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %39, i32 0, i32 3
  store %struct._object** %38, %struct._object*** %ma_values29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %if.end
  %40 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys31 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %40, i32 0, i32 2
  %41 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys31, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %41, i32 0, i32 0
  %42 = load i64, i64* %dk_refcnt, align 8
  %inc32 = add i64 %42, 1
  store i64 %inc32, i64* %dk_refcnt, align 8
  %43 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys33 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %43, i32 0, i32 2
  %44 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys33, align 8
  store %struct._dictkeysobject* %44, %struct._dictkeysobject** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.20, %if.then.10, %if.then.4, %if.then
  %45 = load %struct._dictkeysobject*, %struct._dictkeysobject** %retval
  ret %struct._dictkeysobject* %45
}

; Function Attrs: nounwind uwtable
define void @_PyDictKeys_DecRef(%struct._dictkeysobject* %keys) #0 {
entry:
  %keys.addr = alloca %struct._dictkeysobject*, align 8
  store %struct._dictkeysobject* %keys, %struct._dictkeysobject** %keys.addr, align 8
  %0 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %0, i32 0, i32 0
  %1 = load i64, i64* %dk_refcnt, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %dk_refcnt, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._dictkeysobject*, %struct._dictkeysobject** %keys.addr, align 8
  call void @free_keys_object(%struct._dictkeysobject* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @unicode_eq(%struct._object* %aa, %struct._object* %bb) #2 {
entry:
  %retval = alloca i32, align 4
  %aa.addr = alloca %struct._object*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %a = alloca %struct.PyUnicodeObject*, align 8
  %b = alloca %struct.PyUnicodeObject*, align 8
  store %struct._object* %aa, %struct._object** %aa.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %aa.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeObject*
  store %struct.PyUnicodeObject* %1, %struct.PyUnicodeObject** %a, align 8
  %2 = load %struct._object*, %struct._object** %bb.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyUnicodeObject*
  store %struct.PyUnicodeObject* %3, %struct.PyUnicodeObject** %b, align 8
  %4 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %5 = bitcast %struct.PyUnicodeObject* %4 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %8 = bitcast %struct.PyUnicodeObject* %7 to %struct._object*
  %call = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %10 = bitcast %struct.PyUnicodeObject* %9 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3
  %11 = bitcast %struct.anon.0* %state1 to i32*
  %bf.load2 = load i32, i32* %11, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 7
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %lor.lhs.false
  br label %cond.end.9

cond.false.7:                                     ; preds = %lor.lhs.false
  %12 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %13 = bitcast %struct.PyUnicodeObject* %12 to %struct._object*
  %call8 = call i32 @_PyUnicode_Ready(%struct._object* %13)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.6
  %cond10 = phi i32 [ 0, %cond.true.6 ], [ %call8, %cond.false.7 ]
  %cmp11 = icmp eq i32 %cond10, -1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9, %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.9
  %14 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %15 = bitcast %struct.PyUnicodeObject* %14 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 1
  %16 = load i64, i64* %length, align 8
  %17 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %18 = bitcast %struct.PyUnicodeObject* %17 to %struct.PyASCIIObject*
  %length12 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 1
  %19 = load i64, i64* %length12, align 8
  %cmp13 = icmp ne i64 %16, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %20 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %21 = bitcast %struct.PyUnicodeObject* %20 to %struct.PyASCIIObject*
  %length16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 1
  %22 = load i64, i64* %length16, align 8
  %cmp17 = icmp eq i64 %22, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %23 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %24 = bitcast %struct.PyUnicodeObject* %23 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon.0* %state20 to i32*
  %bf.load21 = load i32, i32* %25, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  %26 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %27 = bitcast %struct.PyUnicodeObject* %26 to %struct.PyASCIIObject*
  %state24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3
  %28 = bitcast %struct.anon.0* %state24 to i32*
  %bf.load25 = load i32, i32* %28, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 2
  %bf.clear27 = and i32 %bf.lshr26, 7
  %cmp28 = icmp ne i32 %bf.clear23, %bf.clear27
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.19
  %29 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %30 = bitcast %struct.PyUnicodeObject* %29 to %struct.PyASCIIObject*
  %state31 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3
  %31 = bitcast %struct.anon.0* %state31 to i32*
  %bf.load32 = load i32, i32* %31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 5
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.47

cond.true.36:                                     ; preds = %if.end.30
  %32 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %33 = bitcast %struct.PyUnicodeObject* %32 to %struct.PyASCIIObject*
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i32 0, i32 3
  %34 = bitcast %struct.anon.0* %state37 to i32*
  %bf.load38 = load i32, i32* %34, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 6
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.true.36
  %35 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %36 = bitcast %struct.PyUnicodeObject* %35 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %36, i64 1
  %37 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.true.36
  %38 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %39 = bitcast %struct.PyUnicodeObject* %38 to %struct.PyCompactUnicodeObject*
  %add.ptr44 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %39, i64 1
  %40 = bitcast %struct.PyCompactUnicodeObject* %add.ptr44 to i8*
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi i8* [ %37, %cond.true.42 ], [ %40, %cond.false.43 ]
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.end.30
  %41 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %41, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %42 = load i8*, i8** %any, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.end.45
  %cond49 = phi i8* [ %cond46, %cond.end.45 ], [ %42, %cond.false.47 ]
  %43 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %44 = bitcast %struct.PyUnicodeObject* %43 to %struct.PyASCIIObject*
  %state50 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i32 0, i32 3
  %45 = bitcast %struct.anon.0* %state50 to i32*
  %bf.load51 = load i32, i32* %45, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 5
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.67

cond.true.55:                                     ; preds = %cond.end.48
  %46 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %47 = bitcast %struct.PyUnicodeObject* %46 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 3
  %48 = bitcast %struct.anon.0* %state56 to i32*
  %bf.load57 = load i32, i32* %48, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 6
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.true.55
  %49 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %50 = bitcast %struct.PyUnicodeObject* %49 to %struct.PyASCIIObject*
  %add.ptr62 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i64 1
  %51 = bitcast %struct.PyASCIIObject* %add.ptr62 to i8*
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.true.55
  %52 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %53 = bitcast %struct.PyUnicodeObject* %52 to %struct.PyCompactUnicodeObject*
  %add.ptr64 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %53, i64 1
  %54 = bitcast %struct.PyCompactUnicodeObject* %add.ptr64 to i8*
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i8* [ %51, %cond.true.61 ], [ %54, %cond.false.63 ]
  br label %cond.end.70

cond.false.67:                                    ; preds = %cond.end.48
  %55 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %data68 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %55, i32 0, i32 1
  %any69 = bitcast %union.anon* %data68 to i8**
  %56 = load i8*, i8** %any69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.end.65
  %cond71 = phi i8* [ %cond66, %cond.end.65 ], [ %56, %cond.false.67 ]
  %57 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %58 = bitcast %struct.PyUnicodeObject* %57 to %struct.PyASCIIObject*
  %length72 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %58, i32 0, i32 1
  %59 = load i64, i64* %length72, align 8
  %60 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %61 = bitcast %struct.PyUnicodeObject* %60 to %struct.PyASCIIObject*
  %state73 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %61, i32 0, i32 3
  %62 = bitcast %struct.anon.0* %state73 to i32*
  %bf.load74 = load i32, i32* %62, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 2
  %bf.clear76 = and i32 %bf.lshr75, 7
  %conv = zext i32 %bf.clear76 to i64
  %mul = mul i64 %59, %conv
  %call77 = call i32 @memcmp(i8* %cond49, i8* %cond71, i64 %mul) #7
  %cmp78 = icmp eq i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  store i32 %conv79, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.70, %if.then.29, %if.then.18, %if.then.14, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @insertdict_clean(%struct.PyDictObject* %mp, %struct._object* %key, i64 %hash, %struct._object* %value) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %value.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %perturb = alloca i64, align 8
  %k = alloca %struct._dictkeysobject*, align 8
  %mask = alloca i64, align 8
  %ep0 = alloca %struct.PyDictKeyEntry*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  store %struct._dictkeysobject* %1, %struct._dictkeysobject** %k, align 8
  %2 = load %struct._dictkeysobject*, %struct._dictkeysobject** %k, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %2, i32 0, i32 1
  %3 = load i64, i64* %dk_size, align 8
  %sub = sub i64 %3, 1
  store i64 %sub, i64* %mask, align 8
  %4 = load %struct._dictkeysobject*, %struct._dictkeysobject** %k, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep0, align 8
  %5 = load i64, i64* %hash.addr, align 8
  %6 = load i64, i64* %mask, align 8
  %and = and i64 %5, %6
  store i64 %and, i64* %i, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx1 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %8, i64 %7
  store %struct.PyDictKeyEntry* %arrayidx1, %struct.PyDictKeyEntry** %ep, align 8
  %9 = load i64, i64* %hash.addr, align 8
  store i64 %9, i64* %perturb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %me_key, align 8
  %cmp = icmp ne %struct._object* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %shl = shl i64 %12, 2
  %13 = load i64, i64* %i, align 8
  %add = add i64 %shl, %13
  %14 = load i64, i64* %perturb, align 8
  %add2 = add i64 %add, %14
  %add3 = add i64 %add2, 1
  store i64 %add3, i64* %i, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %mask, align 8
  %and4 = and i64 %15, %16
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep0, align 8
  %arrayidx5 = getelementptr %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i64 %and4
  store %struct.PyDictKeyEntry* %arrayidx5, %struct.PyDictKeyEntry** %ep, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %18, 5
  store i64 %shr, i64* %perturb, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %key.addr, align 8
  %20 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key6 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %me_key6, align 8
  %21 = load i64, i64* %hash.addr, align 8
  %22 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %22, i32 0, i32 0
  store i64 %21, i64* %me_hash, align 8
  %23 = load %struct._object*, %struct._object** %value.addr, align 8
  %24 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %24, i32 0, i32 2
  store %struct._object* %23, %struct._object** %me_value, align 8
  ret void
}

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyTuple_New(i64) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #1

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #1

declare i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter*, i8*, i64) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #1

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #1

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #1

; Function Attrs: nounwind uwtable
define internal i64 @dict_length(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ma_used, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_subscript(%struct.PyDictObject* %mp, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  %missing = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %hash1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 2
  %4 = load i64, i64* %hash1, align 8
  store i64 %4, i64* %hash, align 8
  %cmp2 = icmp eq i64 %4, -1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %5)
  store i64 %call, i64* %hash, align 8
  %6 = load i64, i64* %hash, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %lor.lhs.false
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 2
  %9 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %10 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %11 = load %struct._object*, %struct._object** %key.addr, align 8
  %12 = load i64, i64* %hash, align 8
  %call6 = call %struct.PyDictKeyEntry* %9(%struct.PyDictObject* %10, %struct._object* %11, i64 %12, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call6, %struct.PyDictKeyEntry** %ep, align 8
  %13 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp7 = icmp eq %struct.PyDictKeyEntry* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %14 = load %struct._object**, %struct._object*** %value_addr, align 8
  %15 = load %struct._object*, %struct._object** %14, align 8
  store %struct._object* %15, %struct._object** %v, align 8
  %16 = load %struct._object*, %struct._object** %v, align 8
  %cmp10 = icmp eq %struct._object* %16, null
  br i1 %cmp10, label %if.then.11, label %if.else.29

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %18 = bitcast %struct.PyDictObject* %17 to %struct._object*
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %19, @PyDict_Type
  br i1 %cmp13, label %if.end.28, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  %20 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %21 = bitcast %struct.PyDictObject* %20 to %struct._object*
  %call15 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %21, %struct._Py_Identifier* @dict_subscript.PyId___missing__)
  store %struct._object* %call15, %struct._object** %missing, align 8
  %22 = load %struct._object*, %struct._object** %missing, align 8
  %cmp16 = icmp ne %struct._object* %22, null
  br i1 %cmp16, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.then.14
  %23 = load %struct._object*, %struct._object** %missing, align 8
  %24 = load %struct._object*, %struct._object** %key.addr, align 8
  %call18 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %23, %struct._object* %24, i8* null)
  store %struct._object* %call18, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %25 = load %struct._object*, %struct._object** %missing, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %32 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

if.else.23:                                       ; preds = %if.then.14
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call24, null
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.else.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.11
  %33 = load %struct._object*, %struct._object** %key.addr, align 8
  call void @_PyErr_SetKeyError(%struct._object* %33)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.29:                                       ; preds = %if.end.9
  %34 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt30, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %ob_refcnt30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29
  %36 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.end.28, %if.then.25, %do.end, %if.then.8, %if.then.4
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_ass_sub(%struct.PyDictObject* %mp, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %2 = bitcast %struct.PyDictObject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyDict_DelItem(%struct._object* %2, %struct._object* %3)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %5 = bitcast %struct.PyDictObject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = load %struct._object*, %struct._object** %w.addr, align 8
  %call1 = call i32 @PyDict_SetItem(%struct._object* %5, %struct._object* %6, %struct._object* %7)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @dict_equal(%struct.PyDictObject* %a, %struct.PyDictObject* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.PyDictObject*, align 8
  %b.addr = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %aval = alloca %struct._object*, align 8
  %cmp10 = alloca i32, align 4
  %bval = alloca %struct._object*, align 8
  %vaddr = alloca %struct._object**, align 8
  %key = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct.PyDictObject* %a, %struct.PyDictObject** %a.addr, align 8
  store %struct.PyDictObject* %b, %struct.PyDictObject** %b.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %a.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ma_used, align 8
  %2 = load %struct.PyDictObject*, %struct.PyDictObject** %b.addr, align 8
  %ma_used1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ma_used1, align 8
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %a.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 2
  %6 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %6, i32 0, i32 1
  %7 = load i64, i64* %dk_size, align 8
  %cmp2 = icmp slt i64 %4, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.PyDictObject*, %struct.PyDictObject** %a.addr, align 8
  %ma_keys3 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %9, i32 0, i32 2
  %10 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys3, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %10, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 %8
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep, align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %a.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 3
  %12 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %12, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %a.addr, align 8
  %ma_values5 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %14, i32 0, i32 3
  %15 = load %struct._object**, %struct._object*** %ma_values5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %15, i64 %13
  %16 = load %struct._object*, %struct._object** %arrayidx6, align 8
  store %struct._object* %16, %struct._object** %aval, align 8
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %17 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %me_value, align 8
  store %struct._object* %18, %struct._object** %aval, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %19 = load %struct._object*, %struct._object** %aval, align 8
  %cmp8 = icmp ne %struct._object* %19, null
  br i1 %cmp8, label %if.then.9, label %if.end.56

if.then.9:                                        ; preds = %if.end.7
  %20 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %21, %struct._object** %key, align 8
  %22 = load %struct._object*, %struct._object** %aval, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %24 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %25, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %26 = load %struct.PyDictObject*, %struct.PyDictObject** %b.addr, align 8
  %ma_keys13 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %26, i32 0, i32 2
  %27 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys13, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %27, i32 0, i32 2
  %28 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %29 = load %struct.PyDictObject*, %struct.PyDictObject** %b.addr, align 8
  %30 = load %struct._object*, %struct._object** %key, align 8
  %31 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %31, i32 0, i32 0
  %32 = load i64, i64* %me_hash, align 8
  %call = call %struct.PyDictKeyEntry* %28(%struct.PyDictObject* %29, %struct._object* %30, i64 %32, %struct._object*** %vaddr)
  %cmp14 = icmp eq %struct.PyDictKeyEntry* %call, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %bval, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.9
  %33 = load %struct._object**, %struct._object*** %vaddr, align 8
  %34 = load %struct._object*, %struct._object** %33, align 8
  store %struct._object* %34, %struct._object** %bval, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %35 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt18, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt18, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else.21:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %42 = load %struct._object*, %struct._object** %bval, align 8
  %cmp23 = icmp eq %struct._object* %42, null
  br i1 %cmp23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %do.end
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %43 = load %struct._object*, %struct._object** %aval, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp26, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %45, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %48(%struct._object* %49)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %call36 = call %struct._object* @PyErr_Occurred()
  %tobool37 = icmp ne %struct._object* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %do.end.35
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.end
  %50 = load %struct._object*, %struct._object** %aval, align 8
  %51 = load %struct._object*, %struct._object** %bval, align 8
  %call41 = call i32 @PyObject_RichCompareBool(%struct._object* %50, %struct._object* %51, i32 2)
  store i32 %call41, i32* %cmp10, align 4
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.40
  %52 = load %struct._object*, %struct._object** %aval, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp43, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %54, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %57(%struct._object* %58)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %59 = load i32, i32* %cmp10, align 4
  %cmp53 = icmp sle i32 %59, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.end.52
  %60 = load i32, i32* %cmp10, align 4
  store i32 %60, i32* %retval
  br label %return

if.end.55:                                        ; preds = %do.end.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %61 = load i64, i64* %i, align 8
  %inc57 = add i64 %61, 1
  store i64 %inc57, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.54, %if.end.39, %if.then.38, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_new(%struct.PyDictObject* %dict, %struct._typeobject* %itertype) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dict.addr = alloca %struct.PyDictObject*, align 8
  %itertype.addr = alloca %struct._typeobject*, align 8
  %di = alloca %struct.dictiterobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyDictObject* %dict, %struct.PyDictObject** %dict.addr, align 8
  store %struct._typeobject* %itertype, %struct._typeobject** %itertype.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %itertype.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* %0)
  %1 = bitcast %struct._object* %call to %struct.dictiterobject*
  store %struct.dictiterobject* %1, %struct.dictiterobject** %di, align 8
  %2 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %cmp = icmp eq %struct.dictiterobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %dict.addr, align 8
  %4 = bitcast %struct.PyDictObject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.PyDictObject*, %struct.PyDictObject** %dict.addr, align 8
  %7 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %7, i32 0, i32 1
  store %struct.PyDictObject* %6, %struct.PyDictObject** %di_dict, align 8
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %dict.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ma_used, align 8
  %10 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_used = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %10, i32 0, i32 2
  store i64 %9, i64* %di_used, align 8
  %11 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_pos = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %11, i32 0, i32 3
  store i64 0, i64* %di_pos, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %dict.addr, align 8
  %ma_used1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ma_used1, align 8
  %14 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %len = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %14, i32 0, i32 5
  store i64 %13, i64* %len, align 8
  %15 = load %struct._typeobject*, %struct._typeobject** %itertype.addr, align 8
  %cmp2 = icmp eq %struct._typeobject* %15, @PyDictIterItem_Type
  br i1 %cmp2, label %if.then.3, label %if.else.13

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct)
  %16 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_result = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %16, i32 0, i32 4
  store %struct._object* %call4, %struct._object** %di_result, align 8
  %17 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_result5 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %17, i32 0, i32 4
  %18 = load %struct._object*, %struct._object** %di_result5, align 8
  %cmp6 = icmp eq %struct._object* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.3
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %19 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %20 = bitcast %struct.dictiterobject* %19 to %struct._object*
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.3
  br label %if.end.15

if.else.13:                                       ; preds = %if.end
  %27 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %di_result14 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %27, i32 0, i32 4
  store %struct._object* null, %struct._object** %di_result14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.end.12
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %28 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %29 = bitcast %struct.dictiterobject* %28 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %29, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %30 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %30 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %31 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %31, 1
  %cmp17 = icmp ne i64 %shr, -2
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body.16
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.19:                                        ; preds = %do.body.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %32 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %32 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  %33 = load i64, i64* %gc_refs22, align 8
  %and = and i64 %33, 1
  %or = or i64 %and, -6
  %34 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc23 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_refs24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 2
  store i64 %or, i64* %gc_refs24, align 8
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.20
  %35 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %36 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc26 = bitcast %union._gc_head* %36 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc26, i32 0, i32 0
  store %union._gc_head* %35, %union._gc_head** %gc_next, align 8
  %37 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc27 = bitcast %union._gc_head* %37 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc27, i32 0, i32 1
  %38 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc28 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_prev29 = getelementptr inbounds %struct.anon, %struct.anon* %gc28, i32 0, i32 1
  store %union._gc_head* %38, %union._gc_head** %gc_prev29, align 8
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc30 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_prev31 = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 1
  %42 = load %union._gc_head*, %union._gc_head** %gc_prev31, align 8
  %gc32 = bitcast %union._gc_head* %42 to %struct.anon*
  %gc_next33 = getelementptr inbounds %struct.anon, %struct.anon* %gc32, i32 0, i32 0
  store %union._gc_head* %40, %union._gc_head** %gc_next33, align 8
  %43 = load %union._gc_head*, %union._gc_head** %g, align 8
  %44 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc34 = bitcast %union._gc_head* %44 to %struct.anon*
  %gc_prev35 = getelementptr inbounds %struct.anon, %struct.anon* %gc34, i32 0, i32 1
  store %union._gc_head* %43, %union._gc_head** %gc_prev35, align 8
  br label %do.end.36

do.end.36:                                        ; preds = %do.end.25
  %45 = load %struct.dictiterobject*, %struct.dictiterobject** %di, align 8
  %46 = bitcast %struct.dictiterobject* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.36, %do.end, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

declare %struct._object* @PyTuple_Pack(i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict___contains__(%struct.PyDictObject* %self, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyDictObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %mp = alloca %struct.PyDictObject*, align 8
  %hash = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  store %struct.PyDictObject* %self, %struct.PyDictObject** %self.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %self.addr, align 8
  store %struct.PyDictObject* %0, %struct.PyDictObject** %mp, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %hash1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 2
  %5 = load i64, i64* %hash1, align 8
  store i64 %5, i64* %hash, align 8
  %cmp2 = icmp eq i64 %5, -1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %6)
  store i64 %call, i64* %hash, align 8
  %7 = load i64, i64* %hash, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %lor.lhs.false
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 2
  %9 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %9, i32 0, i32 2
  %10 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %12 = load %struct._object*, %struct._object** %key.addr, align 8
  %13 = load i64, i64* %hash, align 8
  %call6 = call %struct.PyDictKeyEntry* %10(%struct.PyDictObject* %11, %struct._object* %12, i64 %13, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call6, %struct.PyDictKeyEntry** %ep, align 8
  %14 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp7 = icmp eq %struct.PyDictKeyEntry* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %15 = load %struct._object**, %struct._object*** %value_addr, align 8
  %16 = load %struct._object*, %struct._object** %15, align 8
  %cmp10 = icmp ne %struct._object* %16, null
  %conv = zext i1 %cmp10 to i32
  %conv11 = sext i32 %conv to i64
  %call12 = call %struct._object* @PyBool_FromLong(i64 %conv11)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_sizeof(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %size = alloca i64, align 8
  %res = alloca i64, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %0, i32 0, i32 2
  %1 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %1, i32 0, i32 1
  %2 = load i64, i64* %dk_size, align 8
  store i64 %2, i64* %size, align 8
  store i64 40, i64* %res, align 8
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 3
  %4 = load %struct._object**, %struct._object*** %ma_values, align 8
  %tobool = icmp ne %struct._object** %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %size, align 8
  %mul = mul i64 %5, 8
  %6 = load i64, i64* %res, align 8
  %add = add i64 %6, %mul
  store i64 %add, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys1 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %7, i32 0, i32 2
  %8 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys1, align 8
  %dk_refcnt = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %8, i32 0, i32 0
  %9 = load i64, i64* %dk_refcnt, align 8
  %cmp = icmp eq i64 %9, 1
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %10 = load i64, i64* %size, align 8
  %sub = sub i64 %10, 1
  %mul3 = mul i64 %sub, 24
  %add4 = add i64 56, %mul3
  %11 = load i64, i64* %res, align 8
  %add5 = add i64 %11, %add4
  store i64 %add5, i64* %res, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %12 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_get(%struct.PyDictObject* %mp, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %failobj = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %failobj, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i64 1, i64 2, %struct._object** %key, %struct._object** %failobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %key, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %hash1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 2
  %5 = load i64, i64* %hash1, align 8
  store i64 %5, i64* %hash, align 8
  %cmp2 = icmp eq i64 %5, -1
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct._object*, %struct._object** %key, align 8
  %call4 = call i64 @PyObject_Hash(%struct._object* %6)
  store i64 %call4, i64* %hash, align 8
  %7 = load i64, i64* %hash, align 8
  %cmp5 = icmp eq i64 %7, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %lor.lhs.false
  %8 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %8, i32 0, i32 2
  %9 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %9, i32 0, i32 2
  %10 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %12 = load %struct._object*, %struct._object** %key, align 8
  %13 = load i64, i64* %hash, align 8
  %call9 = call %struct.PyDictKeyEntry* %10(%struct.PyDictObject* %11, %struct._object* %12, i64 %13, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call9, %struct.PyDictKeyEntry** %ep, align 8
  %14 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp10 = icmp eq %struct.PyDictKeyEntry* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %15 = load %struct._object**, %struct._object*** %value_addr, align 8
  %16 = load %struct._object*, %struct._object** %15, align 8
  store %struct._object* %16, %struct._object** %val, align 8
  %17 = load %struct._object*, %struct._object** %val, align 8
  %cmp13 = icmp eq %struct._object* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %18 = load %struct._object*, %struct._object** %failobj, align 8
  store %struct._object* %18, %struct._object** %val, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %19 = load %struct._object*, %struct._object** %val, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.11, %if.then.6, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_setdefault(%struct.PyDictObject* %mp, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %defaultobj = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %defaultobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64 1, i64 2, %struct._object** %key, %struct._object** %defaultobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %2 = bitcast %struct.PyDictObject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %defaultobj, align 8
  %call1 = call %struct._object* @PyDict_SetDefault(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %val, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

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
  %9 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_pop(%struct.PyDictObject* %mp, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %old_value = alloca %struct._object*, align 8
  %old_key = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %deflt = alloca %struct._object*, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %value_addr = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %deflt, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 1, i64 2, %struct._object** %key, %struct._object** %deflt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ma_used, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %deflt, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %deflt, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %deflt, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %key, align 8
  call void @_PyErr_SetKeyError(%struct._object* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp6 = icmp eq %struct._typeobject* %9, @PyUnicode_Type
  br i1 %cmp6, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %key, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %hash7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 2
  %12 = load i64, i64* %hash7, align 8
  store i64 %12, i64* %hash, align 8
  %cmp8 = icmp eq i64 %12, -1
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.5
  %13 = load %struct._object*, %struct._object** %key, align 8
  %call10 = call i64 @PyObject_Hash(%struct._object* %13)
  store i64 %call10, i64* %hash, align 8
  %14 = load i64, i64* %hash, align 8
  %cmp11 = icmp eq i64 %14, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %lor.lhs.false
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %15, i32 0, i32 2
  %16 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %16, i32 0, i32 2
  %17 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %18 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %19 = load %struct._object*, %struct._object** %key, align 8
  %20 = load i64, i64* %hash, align 8
  %call15 = call %struct.PyDictKeyEntry* %17(%struct.PyDictObject* %18, %struct._object* %19, i64 %20, %struct._object*** %value_addr)
  store %struct.PyDictKeyEntry* %call15, %struct.PyDictKeyEntry** %ep, align 8
  %21 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %cmp16 = icmp eq %struct.PyDictKeyEntry* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %22 = load %struct._object**, %struct._object*** %value_addr, align 8
  %23 = load %struct._object*, %struct._object** %22, align 8
  store %struct._object* %23, %struct._object** %old_value, align 8
  %24 = load %struct._object*, %struct._object** %old_value, align 8
  %cmp19 = icmp eq %struct._object* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %deflt, align 8
  %tobool21 = icmp ne %struct._object* %25, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.20
  %26 = load %struct._object*, %struct._object** %deflt, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %inc24 = add i64 %27, 1
  store i64 %inc24, i64* %ob_refcnt23, align 8
  %28 = load %struct._object*, %struct._object** %deflt, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  %29 = load %struct._object*, %struct._object** %key, align 8
  call void @_PyErr_SetKeyError(%struct._object* %29)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %30 = load %struct._object**, %struct._object*** %value_addr, align 8
  store %struct._object* null, %struct._object** %30, align 8
  %31 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used27 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ma_used27, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ma_used27, align 8
  %33 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_values = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %33, i32 0, i32 3
  %34 = load %struct._object**, %struct._object*** %ma_values, align 8
  %cmp28 = icmp ne %struct._object** %34, null
  br i1 %cmp28, label %if.end.45, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %35 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys30 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %35, i32 0, i32 2
  %36 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys30, align 8
  %dk_lookup31 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %36, i32 0, i32 2
  %37 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup31, align 8
  %cmp32 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %37, @lookdict_unicode_nodummy
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.29
  %38 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys34 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %38, i32 0, i32 2
  %39 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys34, align 8
  %dk_lookup35 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %39, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_unicode, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.29
  %40 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %40, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %me_key, align 8
  store %struct._object* %41, %struct._object** %old_key, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %inc37 = add i64 %42, 1
  store i64 %inc37, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %43 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key38 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %43, i32 0, i32 1
  store %struct._object* @_dummy_struct, %struct._object** %me_key38, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.36
  %44 = load %struct._object*, %struct._object** %old_key, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %46, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %do.body
  br label %if.end.44

if.else:                                          ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.42
  br label %do.end

do.end:                                           ; preds = %if.end.44
  br label %if.end.45

if.end.45:                                        ; preds = %do.end, %if.end.26
  %51 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.end.25, %if.then.22, %if.then.17, %if.then.12, %if.end.4, %if.then.3, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_popitem(%struct.PyDictObject* %mp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mp.addr = alloca %struct.PyDictObject*, align 8
  %i = alloca i64, align 8
  %ep = alloca %struct.PyDictKeyEntry*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %mask = alloca i64, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  store i64 0, i64* %i, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %res, align 8
  %0 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ma_used, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %11, i32 0, i32 2
  %12 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys, align 8
  %dk_lookup = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %12, i32 0, i32 2
  %13 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup, align 8
  %cmp7 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %13, @lookdict_split
  br i1 %cmp7, label %if.then.8, label %if.end.24

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys9 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %15, i32 0, i32 2
  %16 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys9, align 8
  %dk_size = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %16, i32 0, i32 1
  %17 = load i64, i64* %dk_size, align 8
  %call10 = call i32 @dictresize(%struct.PyDictObject* %14, i64 %17)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.then.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %18 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp13, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %20, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %23(%struct._object* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.6
  %25 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys25 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %25, i32 0, i32 2
  %26 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys25, align 8
  %dk_lookup26 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %26, i32 0, i32 2
  %27 = load %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)*, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup26, align 8
  %cmp27 = icmp eq %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* %27, @lookdict_unicode_nodummy
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.24
  %28 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys29 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %28, i32 0, i32 2
  %29 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys29, align 8
  %dk_lookup30 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %29, i32 0, i32 2
  store %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)* @lookdict_unicode, %struct.PyDictKeyEntry* (%struct.PyDictObject*, %struct._object*, i64, %struct._object***)** %dk_lookup30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.24
  %30 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys32 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %30, i32 0, i32 2
  %31 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys32, align 8
  %dk_entries = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %31, i32 0, i32 4
  %arrayidx = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries, i32 0, i64 0
  store %struct.PyDictKeyEntry* %arrayidx, %struct.PyDictKeyEntry** %ep, align 8
  %32 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %32, i32 0, i32 2
  %33 = load %struct._object*, %struct._object** %me_value, align 8
  %cmp33 = icmp eq %struct._object* %33, null
  br i1 %cmp33, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %if.end.31
  %34 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys35 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %34, i32 0, i32 2
  %35 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys35, align 8
  %dk_size36 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %35, i32 0, i32 1
  %36 = load i64, i64* %dk_size36, align 8
  %sub = sub i64 %36, 1
  store i64 %sub, i64* %mask, align 8
  %37 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_hash = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %37, i32 0, i32 0
  %38 = load i64, i64* %me_hash, align 8
  store i64 %38, i64* %i, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load i64, i64* %mask, align 8
  %cmp37 = icmp sgt i64 %39, %40
  br i1 %cmp37, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %41 = load i64, i64* %i, align 8
  %cmp38 = icmp slt i64 %41, 1
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %if.then.34
  store i64 1, i64* %i, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end.40
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys41 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %43, i32 0, i32 2
  %44 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys41, align 8
  %dk_entries42 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %44, i32 0, i32 4
  %arrayidx43 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries42, i32 0, i64 %42
  store %struct.PyDictKeyEntry* %arrayidx43, %struct.PyDictKeyEntry** %ep, align 8
  %me_value44 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx43, i32 0, i32 2
  %45 = load %struct._object*, %struct._object** %me_value44, align 8
  %cmp45 = icmp eq %struct._object* %45, null
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i64, i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %mask, align 8
  %cmp46 = icmp sgt i64 %47, %48
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.body
  store i64 1, i64* %i, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.49

if.end.49:                                        ; preds = %while.end, %if.end.31
  %49 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %49, i32 0, i32 1
  %50 = load %struct._object*, %struct._object** %me_key, align 8
  %51 = load %struct._object*, %struct._object** %res, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx50 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %50, %struct._object** %arrayidx50, align 8
  %53 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value51 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %53, i32 0, i32 2
  %54 = load %struct._object*, %struct._object** %me_value51, align 8
  %55 = load %struct._object*, %struct._object** %res, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyTupleObject*
  %ob_item52 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %56, i32 0, i32 1
  %arrayidx53 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item52, i32 0, i64 1
  store %struct._object* %54, %struct._object** %arrayidx53, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %inc54 = add i64 %57, 1
  store i64 %inc54, i64* getelementptr inbounds (%struct._object, %struct._object* @_dummy_struct, i32 0, i32 0), align 8
  %58 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_key55 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %58, i32 0, i32 1
  store %struct._object* @_dummy_struct, %struct._object** %me_key55, align 8
  %59 = load %struct.PyDictKeyEntry*, %struct.PyDictKeyEntry** %ep, align 8
  %me_value56 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %59, i32 0, i32 2
  store %struct._object* null, %struct._object** %me_value56, align 8
  %60 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_used57 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %60, i32 0, i32 1
  %61 = load i64, i64* %ma_used57, align 8
  %dec58 = add i64 %61, -1
  store i64 %dec58, i64* %ma_used57, align 8
  %62 = load i64, i64* %i, align 8
  %add = add i64 %62, 1
  %63 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %ma_keys59 = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %63, i32 0, i32 2
  %64 = load %struct._dictkeysobject*, %struct._dictkeysobject** %ma_keys59, align 8
  %dk_entries60 = getelementptr inbounds %struct._dictkeysobject, %struct._dictkeysobject* %64, i32 0, i32 4
  %arrayidx61 = getelementptr [1 x %struct.PyDictKeyEntry], [1 x %struct.PyDictKeyEntry]* %dk_entries60, i32 0, i64 0
  %me_hash62 = getelementptr inbounds %struct.PyDictKeyEntry, %struct.PyDictKeyEntry* %arrayidx61, i32 0, i32 0
  store i64 %add, i64* %me_hash62, align 8
  %65 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.49, %do.end.22, %do.end, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictkeys_new(%struct._object* %dict) #0 {
entry:
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call = call %struct._object* @dictview_new(%struct._object* %0, %struct._typeobject* @PyDictKeys_Type)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictitems_new(%struct._object* %dict) #0 {
entry:
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call = call %struct._object* @dictview_new(%struct._object* %0, %struct._typeobject* @PyDictItems_Type)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictvalues_new(%struct._object* %dict) #0 {
entry:
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call = call %struct._object* @dictview_new(%struct._object* %0, %struct._typeobject* @PyDictValues_Type)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_update(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @dict_update_common(%struct._object* %0, %struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_fromkeys(%struct._typeobject* %type, %struct._object* %args) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 1, i64 2, %struct._object** %iterable, %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %2 = load %struct._object*, %struct._object** %iterable, align 8
  %3 = load %struct._object*, %struct._object** %value, align 8
  %call1 = call %struct._object* @dict_fromkeys_impl(%struct._typeobject* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_clear(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %1 = bitcast %struct.PyDictObject* %0 to %struct._object*
  call void @PyDict_Clear(%struct._object* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_copy(%struct.PyDictObject* %mp) #0 {
entry:
  %mp.addr = alloca %struct.PyDictObject*, align 8
  store %struct.PyDictObject* %mp, %struct.PyDictObject** %mp.addr, align 8
  %0 = load %struct.PyDictObject*, %struct.PyDictObject** %mp.addr, align 8
  %1 = bitcast %struct.PyDictObject* %0 to %struct._object*
  %call = call %struct._object* @PyDict_Copy(%struct._object* %1)
  ret %struct._object* %call
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictview_new(%struct._object* %dict, %struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %dv = alloca %struct.dictviewobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 3217)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %dict.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %7 = load %struct._object*, %struct._object** %dict.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name4, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i8* %6, i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %10 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call6 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* %10)
  %11 = bitcast %struct._object* %call6 to %struct.dictviewobject*
  store %struct.dictviewobject* %11, %struct.dictviewobject** %dv, align 8
  %12 = load %struct.dictviewobject*, %struct.dictviewobject** %dv, align 8
  %cmp7 = icmp eq %struct.dictviewobject* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %dict.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %dict.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyDictObject*
  %17 = load %struct.dictviewobject*, %struct.dictviewobject** %dv, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %17, i32 0, i32 1
  store %struct.PyDictObject* %16, %struct.PyDictObject** %dv_dict, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %18 = load %struct.dictviewobject*, %struct.dictviewobject** %dv, align 8
  %19 = bitcast %struct.dictviewobject* %18 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %19, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %21 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %21, 1
  %cmp10 = icmp ne i64 %shr, -2
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.12:                                        ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_refs15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 2
  %23 = load i64, i64* %gc_refs15, align 8
  %and16 = and i64 %23, 1
  %or = or i64 %and16, -6
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2
  store i64 %or, i64* %gc_refs18, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.13
  %25 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %26 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0
  store %union._gc_head* %25, %union._gc_head** %gc_next, align 8
  %27 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc20 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 1
  %28 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1
  store %union._gc_head* %28, %union._gc_head** %gc_prev22, align 8
  %30 = load %union._gc_head*, %union._gc_head** %g, align 8
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc23 = bitcast %union._gc_head* %31 to %struct.anon*
  %gc_prev24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 1
  %32 = load %union._gc_head*, %union._gc_head** %gc_prev24, align 8
  %gc25 = bitcast %union._gc_head* %32 to %struct.anon*
  %gc_next26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 0
  store %union._gc_head* %30, %union._gc_head** %gc_next26, align 8
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %34 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc27 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_prev28 = getelementptr inbounds %struct.anon, %struct.anon* %gc27, i32 0, i32 1
  store %union._gc_head* %33, %union._gc_head** %gc_prev28, align 8
  br label %do.end.29

do.end.29:                                        ; preds = %do.end
  %35 = load %struct.dictviewobject*, %struct.dictviewobject** %dv, align 8
  %36 = bitcast %struct.dictviewobject* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.29, %if.then.8, %if.then.2, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_update_common(%struct._object* %self, %struct._object* %args, %struct._object* %kwds, i8* %methname) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %methname.addr = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i8* %methname, i8** %methname.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %methname.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* %1, i64 0, i64 1, %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %result, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call i32 @_PyObject_HasAttrId(%struct._object* %3, %struct._Py_Identifier* @dict_update_common.PyId_keys)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %arg, align 8
  %call5 = call i32 @PyDict_Merge(%struct._object* %4, %struct._object* %5, i32 1)
  store i32 %call5, i32* %result, align 4
  br label %if.end

if.else.6:                                        ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call i32 @PyDict_MergeFromSeq2(%struct._object* %6, %struct._object* %7, i32 1)
  store i32 %call7, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  %8 = load i32, i32* %result, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.9
  %9 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp11 = icmp ne %struct._object* %9, null
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call13 = call i32 @PyArg_ValidateKeywordArguments(%struct._object* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.then.12
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %12 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call16 = call i32 @PyDict_Merge(%struct._object* %11, %struct._object* %12, i32 1)
  store i32 %call16, i32* %result, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %if.then.12
  store i32 -1, i32* %result, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.end.9
  %13 = load i32, i32* %result, align 4
  ret i32 %13
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyArg_ValidateKeywordArguments(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dict_fromkeys_impl(%struct._typeobject* %type, %struct._object* %iterable, %struct._object* %value) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %mp = alloca %struct.PyDictObject*, align 8
  %oldvalue = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %key7 = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %mp38 = alloca %struct.PyDictObject*, align 8
  %pos39 = alloca i64, align 8
  %key40 = alloca %struct._object*, align 8
  %hash41 = alloca i64, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %_py_decref_tmp166 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = bitcast %struct._typeobject* %0 to %struct._object*
  %call = call %struct._object* @PyObject_CallObject(%struct._object* %1, %struct._object* null)
  store %struct._object* %call, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %d, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %4, @PyDict_Type
  br i1 %cmp1, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %d, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyDictObject*
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ma_used, align 8
  %cmp2 = icmp eq i64 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.78

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %9, @PyDict_Type
  br i1 %cmp5, label %if.then.6, label %if.end.32

if.then.6:                                        ; preds = %if.then.3
  %10 = load %struct._object*, %struct._object** %d, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyDictObject*
  store %struct.PyDictObject* %11, %struct.PyDictObject** %mp, align 8
  store i64 0, i64* %pos, align 8
  %12 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %13 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %call8 = call i32 @dictresize(%struct.PyDictObject* %12, i64 %15)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.then.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end.14
  %23 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call15 = call i32 @_PyDict_Next(%struct._object* %23, i64* %pos, %struct._object** %key7, %struct._object** %oldvalue, i64* %hash)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.PyDictObject*, %struct.PyDictObject** %mp, align 8
  %25 = load %struct._object*, %struct._object** %key7, align 8
  %26 = load i64, i64* %hash, align 8
  %27 = load %struct._object*, %struct._object** %value.addr, align 8
  %call17 = call i32 @insertdict(%struct.PyDictObject* %24, %struct._object* %25, i64 %26, %struct._object* %27)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %while.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %28 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %30, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %33(%struct._object* %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.3
  %36 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %cmp34 = icmp eq %struct._typeobject* %37, @PySet_Type
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %38 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %cmp36 = icmp eq %struct._typeobject* %39, @PyFrozenSet_Type
  br i1 %cmp36, label %if.then.37, label %if.end.77

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.32
  %40 = load %struct._object*, %struct._object** %d, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyDictObject*
  store %struct.PyDictObject* %41, %struct.PyDictObject** %mp38, align 8
  store i64 0, i64* %pos39, align 8
  %42 = load %struct.PyDictObject*, %struct.PyDictObject** %mp38, align 8
  %43 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %44, i32 0, i32 2
  %45 = load i64, i64* %used, align 8
  %call42 = call i32 @dictresize(%struct.PyDictObject* %42, i64 %45)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.then.37
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %46 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp46, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %48, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %51(%struct._object* %52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.37
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.75, %if.end.56
  %53 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call58 = call i32 @_PySet_NextEntry(%struct._object* %53, i64* %pos39, %struct._object** %key40, i64* %hash41)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %while.body.60, label %while.end.76

while.body.60:                                    ; preds = %while.cond.57
  %54 = load %struct.PyDictObject*, %struct.PyDictObject** %mp38, align 8
  %55 = load %struct._object*, %struct._object** %key40, align 8
  %56 = load i64, i64* %hash41, align 8
  %57 = load %struct._object*, %struct._object** %value.addr, align 8
  %call61 = call i32 @insertdict(%struct.PyDictObject* %54, %struct._object* %55, i64 %56, %struct._object* %57)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %while.body.60
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %58 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp65, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %60, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %63(%struct._object* %64)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %while.body.60
  br label %while.cond.57

while.end.76:                                     ; preds = %while.cond.57
  %65 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %lor.lhs.false
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true, %if.end
  %66 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call79 = call %struct._object* @PyObject_GetIter(%struct._object* %66)
  store %struct._object* %call79, %struct._object** %it, align 8
  %67 = load %struct._object*, %struct._object** %it, align 8
  %cmp80 = icmp eq %struct._object* %67, null
  br i1 %cmp80, label %if.then.81, label %if.end.93

if.then.81:                                       ; preds = %if.end.78
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %68 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp83, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %70, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %73(%struct._object* %74)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.93:                                        ; preds = %if.end.78
  %75 = load %struct._object*, %struct._object** %d, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %cmp95 = icmp eq %struct._typeobject* %76, @PyDict_Type
  br i1 %cmp95, label %if.then.96, label %if.else.117

if.then.96:                                       ; preds = %if.end.93
  br label %while.cond.97

while.cond.97:                                    ; preds = %if.end.115, %if.then.96
  %77 = load %struct._object*, %struct._object** %it, align 8
  %call98 = call %struct._object* @PyIter_Next(%struct._object* %77)
  store %struct._object* %call98, %struct._object** %key, align 8
  %cmp99 = icmp ne %struct._object* %call98, null
  br i1 %cmp99, label %while.body.100, label %while.end.116

while.body.100:                                   ; preds = %while.cond.97
  %78 = load %struct._object*, %struct._object** %d, align 8
  %79 = load %struct._object*, %struct._object** %key, align 8
  %80 = load %struct._object*, %struct._object** %value.addr, align 8
  %call101 = call i32 @PyDict_SetItem(%struct._object* %78, %struct._object* %79, %struct._object* %80)
  store i32 %call101, i32* %status, align 4
  br label %do.body.102

do.body.102:                                      ; preds = %while.body.100
  %81 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp103, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %83, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %86(%struct._object* %87)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  %88 = load i32, i32* %status, align 4
  %cmp113 = icmp slt i32 %88, 0
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %do.end.112
  br label %Fail

if.end.115:                                       ; preds = %do.end.112
  br label %while.cond.97

while.end.116:                                    ; preds = %while.cond.97
  br label %if.end.138

if.else.117:                                      ; preds = %if.end.93
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.136, %if.else.117
  %89 = load %struct._object*, %struct._object** %it, align 8
  %call119 = call %struct._object* @PyIter_Next(%struct._object* %89)
  store %struct._object* %call119, %struct._object** %key, align 8
  %cmp120 = icmp ne %struct._object* %call119, null
  br i1 %cmp120, label %while.body.121, label %while.end.137

while.body.121:                                   ; preds = %while.cond.118
  %90 = load %struct._object*, %struct._object** %d, align 8
  %91 = load %struct._object*, %struct._object** %key, align 8
  %92 = load %struct._object*, %struct._object** %value.addr, align 8
  %call122 = call i32 @PyObject_SetItem(%struct._object* %90, %struct._object* %91, %struct._object* %92)
  store i32 %call122, i32* %status, align 4
  br label %do.body.123

do.body.123:                                      ; preds = %while.body.121
  %93 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp124, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt125, align 8
  %dec126 = add i64 %95, -1
  store i64 %dec126, i64* %ob_refcnt125, align 8
  %cmp127 = icmp ne i64 %dec126, 0
  br i1 %cmp127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.123
  br label %if.end.132

if.else.129:                                      ; preds = %do.body.123
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %98(%struct._object* %99)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  %100 = load i32, i32* %status, align 4
  %cmp134 = icmp slt i32 %100, 0
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %do.end.133
  br label %Fail

if.end.136:                                       ; preds = %do.end.133
  br label %while.cond.118

while.end.137:                                    ; preds = %while.cond.118
  br label %if.end.138

if.end.138:                                       ; preds = %while.end.137, %while.end.116
  %call139 = call %struct._object* @PyErr_Occurred()
  %tobool140 = icmp ne %struct._object* %call139, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.138
  br label %Fail

if.end.142:                                       ; preds = %if.end.138
  br label %do.body.143

do.body.143:                                      ; preds = %if.end.142
  %101 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp144, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %103, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.143
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.143
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %106(%struct._object* %107)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  %108 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %108, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.141, %if.then.135, %if.then.114
  br label %do.body.154

do.body.154:                                      ; preds = %Fail
  %109 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp155, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %111, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.154
  br label %if.end.163

if.else.160:                                      ; preds = %do.body.154
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %114(%struct._object* %115)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %116 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp166, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt167, align 8
  %dec168 = add i64 %118, -1
  store i64 %dec168, i64* %ob_refcnt167, align 8
  %cmp169 = icmp ne i64 %dec168, 0
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.165
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.165
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  call void %121(%struct._object* %122)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.175, %do.end.153, %do.end.92, %while.end.76, %do.end.74, %do.end.55, %while.end, %do.end.30, %do.end, %if.then
  %123 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %123
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare i32 @_PySet_NextEntry(%struct._object*, i64*, %struct._object**, i64*) #1

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_len(%struct.dictiterobject* %di) #0 {
entry:
  %di.addr = alloca %struct.dictiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  %cmp = icmp ne %struct.PyDictObject* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_used = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %2, i32 0, i32 2
  %3 = load i64, i64* %di_used, align 8
  %4 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %di_dict1 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %4, i32 0, i32 1
  %5 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict1, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ma_used, align 8
  %cmp2 = icmp eq i64 %3, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %len3 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %7, i32 0, i32 5
  %8 = load i64, i64* %len3, align 8
  store i64 %8, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSize_t(i64 %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictiter_reduce(%struct.dictiterobject* %di) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %di.addr = alloca %struct.dictiterobject*, align 8
  %list = alloca %struct._object*, align 8
  %tmp = alloca %struct.dictiterobject, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %element = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_xdecref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp106 = alloca %struct._object*, align 8
  store %struct.dictiterobject* %di, %struct.dictiterobject** %di.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %2 = bitcast %struct.dictiterobject* %tmp to i8*
  %3 = bitcast %struct.dictiterobject* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 56, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end
  %di_dict = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %tmp, i32 0, i32 1
  %4 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict, align 8
  %5 = bitcast %struct.PyDictObject* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

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
  br label %for.cond

for.cond:                                         ; preds = %if.end.80, %do.end
  store %struct._object* null, %struct._object** %element, align 8
  %9 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %10 = bitcast %struct.dictiterobject* %9 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp5 = icmp eq %struct._typeobject* %11, @PyDictIterItem_Type
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.cond
  %call7 = call %struct._object* @dictiter_iternextitem(%struct.dictiterobject* %tmp)
  store %struct._object* %call7, %struct._object** %element, align 8
  br label %if.end.20

if.else:                                          ; preds = %for.cond
  %12 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %13 = bitcast %struct.dictiterobject* %12 to %struct._object*
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %cmp9 = icmp eq %struct._typeobject* %14, @PyDictIterKey_Type
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %call11 = call %struct._object* @dictiter_iternextkey(%struct.dictiterobject* %tmp)
  store %struct._object* %call11, %struct._object** %element, align 8
  br label %if.end.19

if.else.12:                                       ; preds = %if.else
  %15 = load %struct.dictiterobject*, %struct.dictiterobject** %di.addr, align 8
  %16 = bitcast %struct.dictiterobject* %15 to %struct._object*
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %17, @PyDictIterValue_Type
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.12
  %call16 = call %struct._object* @dictiter_iternextvalue(%struct.dictiterobject* %tmp)
  store %struct._object* %call16, %struct._object** %element, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.else.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  %18 = load %struct._object*, %struct._object** %element, align 8
  %tobool21 = icmp ne %struct._object* %18, null
  br i1 %tobool21, label %if.then.22, label %if.else.79

if.then.22:                                       ; preds = %if.end.20
  %19 = load %struct._object*, %struct._object** %list, align 8
  %20 = load %struct._object*, %struct._object** %element, align 8
  %call23 = call i32 @PyList_Append(%struct._object* %19, %struct._object* %20)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.66

if.then.25:                                       ; preds = %if.then.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %21 = load %struct._object*, %struct._object** %element, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt28, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt28, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.26
  br label %if.end.33

if.else.31:                                       ; preds = %do.body.26
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %28 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %30, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.35
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.35
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %33(%struct._object* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %di_dict49 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %tmp, i32 0, i32 1
  %35 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict49, align 8
  %36 = bitcast %struct.PyDictObject* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp50 = icmp ne %struct._object* %37, null
  br i1 %cmp50, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %do.body.47
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp54, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %40, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.52
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.52
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %43(%struct._object* %44)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.47
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.22
  br label %do.body.67

do.body.67:                                       ; preds = %if.end.66
  %45 = load %struct._object*, %struct._object** %element, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp69, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %47, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %50(%struct._object* %51)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.20
  br label %for.end

if.end.80:                                        ; preds = %do.end.78
  br label %for.cond

for.end:                                          ; preds = %if.else.79
  br label %do.body.81

do.body.81:                                       ; preds = %for.end
  %di_dict84 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %tmp, i32 0, i32 1
  %52 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict84, align 8
  %53 = bitcast %struct.PyDictObject* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp83, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp83, align 8
  %cmp85 = icmp ne %struct._object* %54, null
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %do.body.81
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp83, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp89, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %57, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.87
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %60(%struct._object* %61)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.81
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  %di_dict101 = getelementptr inbounds %struct.dictiterobject, %struct.dictiterobject* %tmp, i32 0, i32 1
  %62 = load %struct.PyDictObject*, %struct.PyDictObject** %di_dict101, align 8
  %cmp102 = icmp ne %struct.PyDictObject* %62, null
  br i1 %cmp102, label %if.then.103, label %if.end.116

if.then.103:                                      ; preds = %do.end.100
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %63 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp106, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_refcnt107 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt107, align 8
  %dec108 = add i64 %65, -1
  store i64 %dec108, i64* %ob_refcnt107, align 8
  %cmp109 = icmp ne i64 %dec108, 0
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.104
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  call void %68(%struct._object* %69)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.116:                                       ; preds = %do.end.100
  %call117 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %70 = load %struct._object*, %struct._object** %list, align 8
  %call118 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* %call117, %struct._object* %70)
  store %struct._object* %call118, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.116, %do.end.115, %do.end.65, %if.then
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

declare %struct._object* @PyLong_FromSize_t(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare %struct._object* @PySequence_List(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictviews_sub(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @dictviews_sub.PyId_difference_update, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %3)
  store %struct._object* %call1, %struct._object** %tmp, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp11, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %14, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.9
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %do.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictviews_and(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @dictviews_and.PyId_intersection_update, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %3)
  store %struct._object* %call1, %struct._object** %tmp, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp11, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %14, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.9
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %do.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictviews_xor(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @dictviews_xor.PyId_symmetric_difference_update, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %3)
  store %struct._object* %call1, %struct._object** %tmp, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp11, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %14, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.9
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %do.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictviews_or(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @dictviews_or.PyId_update, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %3)
  store %struct._object* %call1, %struct._object** %tmp, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp11, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %14, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.9
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %do.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

declare %struct._object* @PySet_New(%struct._object*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @dictview_len(%struct.dictviewobject* %dv) #0 {
entry:
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %len = alloca i64, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp ne %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %2, i32 0, i32 1
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %ma_used = getelementptr inbounds %struct.PyDictObject, %struct.PyDictObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ma_used, align 8
  store i64 %4, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %len, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @dictkeys_contains(%struct.dictviewobject* %dv, %struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp eq %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict1 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %2, i32 0, i32 1
  %3 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict1, align 8
  %4 = bitcast %struct.PyDictObject* %3 to %struct._object*
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyDict_Contains(%struct._object* %4, %struct._object* %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @all_contained_in(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %iter = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %next = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %iter, align 8
  store i32 1, i32* %ok, align 4
  %1 = load %struct._object*, %struct._object** %iter, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.14, %if.end
  %2 = load %struct._object*, %struct._object** %iter, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %next, align 8
  %3 = load %struct._object*, %struct._object** %next, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.cond
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store i32 -1, i32* %ok, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  br label %for.end

if.end.7:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %5 = load %struct._object*, %struct._object** %next, align 8
  %call8 = call i32 @PySequence_Contains(%struct._object* %4, %struct._object* %5)
  store i32 %call8, i32* %ok, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** %next, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load i32, i32* %ok, align 4
  %cmp12 = icmp sle i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %for.end

if.end.14:                                        ; preds = %do.end
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %if.end.6
  br label %do.body.15

do.body.15:                                       ; preds = %for.end
  %14 = load %struct._object*, %struct._object** %iter, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %21 = load i32, i32* %ok, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %do.end.25, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @dictviews_isdisjoint(%struct._object* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %len_self = alloca i64, align 8
  %len_other = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  %contains = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store %struct._object* null, %struct._object** %item, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp = icmp eq %struct._object* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.dictviewobject*
  %call = call i64 @dictview_len(%struct.dictviewobject* %3)
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc3 = add i64 %5, 1
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %7, @PySet_Type
  br i1 %cmp4, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %cmp6 = icmp eq %struct._typeobject* %9, @PyFrozenSet_Type
  br i1 %cmp6, label %if.then.20, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %call9 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.20, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFrozenSet_Type)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %cmp16 = icmp eq %struct._typeobject* %15, @PyDictKeys_Type
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %cmp19 = icmp eq %struct._typeobject* %17, @PyDictItems_Type
  br i1 %cmp19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %if.end
  %18 = load %struct._object*, %struct._object** %self.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.dictviewobject*
  %call21 = call i64 @dictview_len(%struct.dictviewobject* %19)
  store i64 %call21, i64* %len_self, align 8
  %20 = load %struct._object*, %struct._object** %other.addr, align 8
  %call22 = call i64 @PyObject_Size(%struct._object* %20)
  store i64 %call22, i64* %len_other, align 8
  %21 = load i64, i64* %len_other, align 8
  %cmp23 = icmp eq i64 %21, -1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  %22 = load i64, i64* %len_other, align 8
  %23 = load i64, i64* %len_self, align 8
  %cmp26 = icmp sgt i64 %22, %23
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %24 = load %struct._object*, %struct._object** %other.addr, align 8
  store %struct._object* %24, %struct._object** %tmp, align 8
  %25 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %25, %struct._object** %other.addr, align 8
  %26 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %26, %struct._object** %self.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false.17
  %27 = load %struct._object*, %struct._object** %other.addr, align 8
  %call30 = call %struct._object* @PyObject_GetIter(%struct._object* %27)
  store %struct._object* %call30, %struct._object** %it, align 8
  %28 = load %struct._object*, %struct._object** %it, align 8
  %cmp31 = icmp eq %struct._object* %28, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  br label %while.cond

while.cond:                                       ; preds = %if.end.74, %if.end.33
  %29 = load %struct._object*, %struct._object** %it, align 8
  %call34 = call %struct._object* @PyIter_Next(%struct._object* %29)
  store %struct._object* %call34, %struct._object** %item, align 8
  %cmp35 = icmp ne %struct._object* %call34, null
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct._object*, %struct._object** %self.addr, align 8
  %31 = load %struct._object*, %struct._object** %item, align 8
  %call37 = call i32 @PySequence_Contains(%struct._object* %30, %struct._object* %31)
  store i32 %call37, i32* %contains, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %32 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body
  br label %if.end.43

if.else.41:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.43
  %39 = load i32, i32* %contains, align 4
  %cmp44 = icmp eq i32 %39, -1
  br i1 %cmp44, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %do.end
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %40 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp48, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %42, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.46
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %45(%struct._object* %46)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %do.end
  %47 = load i32, i32* %contains, align 4
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.then.60, label %if.end.74

if.then.60:                                       ; preds = %if.end.58
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %48 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp63, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %50, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.61
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %53(%struct._object* %54)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %55 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc73 = add i64 %55, 1
  store i64 %inc73, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.58
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.75

do.body.75:                                       ; preds = %while.end
  %56 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp77, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %58, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.75
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %61(%struct._object* %62)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %call87 = call %struct._object* @PyErr_Occurred()
  %tobool88 = icmp ne %struct._object* %call87, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.90:                                        ; preds = %do.end.86
  %63 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc91 = add i64 %63, 1
  store i64 %inc91, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.89, %do.end.72, %do.end.57, %if.then.32, %if.then.24, %if.else, %if.then.2
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal i32 @dictitems_contains(%struct.dictviewobject* %dv, %struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %dv.addr = alloca %struct.dictviewobject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %found = alloca %struct._object*, align 8
  store %struct.dictviewobject* %dv, %struct.dictviewobject** %dv.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %0, i32 0, i32 1
  %1 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict, align 8
  %cmp = icmp eq %struct.PyDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 67108864
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp ne i64 %7, 2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %10, %struct._object** %key, align 8
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 1
  %13 = load %struct._object*, %struct._object** %arrayidx6, align 8
  store %struct._object* %13, %struct._object** %value, align 8
  %14 = load %struct.dictviewobject*, %struct.dictviewobject** %dv.addr, align 8
  %dv_dict7 = getelementptr inbounds %struct.dictviewobject, %struct.dictviewobject* %14, i32 0, i32 1
  %15 = load %struct.PyDictObject*, %struct.PyDictObject** %dv_dict7, align 8
  %16 = bitcast %struct.PyDictObject* %15 to %struct._object*
  %17 = load %struct._object*, %struct._object** %key, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call, %struct._object** %found, align 8
  %18 = load %struct._object*, %struct._object** %found, align 8
  %cmp8 = icmp eq %struct._object* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.4
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call10, null
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %19 = load %struct._object*, %struct._object** %value, align 8
  %20 = load %struct._object*, %struct._object** %found, align 8
  %call14 = call i32 @PyObject_RichCompareBool(%struct._object* %19, %struct._object* %20, i32 2)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.end.12, %if.then.11, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @dummy_dealloc(%struct._object* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct._object*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  call void @Py_FatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dummy_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  ret %struct._object* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139726}
!2 = !{i32 139566}
